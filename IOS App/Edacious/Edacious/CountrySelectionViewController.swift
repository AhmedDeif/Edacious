//
//  CountrySelectionViewController.swift
//  Edacious
//
//  Created by Ahmed Abodeif on 3/25/18.
//  Copyright © 2018 Ahmed Abodeif. All rights reserved.
//

import UIKit

class CountrySelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var countryListTable: UITableView!
    var isSearching: Bool = false
    var sortedCountries: [String] = []
    var filteredCountries: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initCountryList()
        countryListTable.dataSource = self;
        countryListTable.delegate = self;
        searchBar.delegate = self;
        searchBar.returnKeyType = UIReturnKeyType.done
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (isSearching) {
            return filteredCountries.count
        }
        return sortedCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "CountryNameCell", for: indexPath) as! CountryListCell
        if (isSearching) {
            tableViewCell.setText(Country: filteredCountries[indexPath.row])
            return tableViewCell
        }
        tableViewCell.setText(Country: sortedCountries[indexPath.row])
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // save country choice and navigate back to previous view
        
    }
    
    func initCountryList() {
        let locale = NSLocale.current
        let unsortedCountries = NSLocale.isoCountryCodes.map { locale.localizedString(forRegionCode: $0)! }
        sortedCountries = unsortedCountries.sorted()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // filter countries
        if (searchBar.text == nil || searchBar.text == "") {
            isSearching = false
            view.endEditing(true)
            countryListTable.reloadData()
        }
        else {
            isSearching = true
            filteredCountries = sortedCountries.filter({$0.hasPrefix(searchBar.text!)})
            countryListTable.reloadData()
        }
    }

}
