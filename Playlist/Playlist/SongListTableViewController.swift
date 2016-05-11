//
//  SongListTableViewController.swift
//  Playlist
//
//  Created by Kevin Hartley on 5/11/16.
//  Copyright © 2016 BigNerdRanch. All rights reserved.
//

import UIKit

class SongListTableViewController: UITableViewController {

    
    @IBOutlet weak var SongTitleTextField: UITextField!
    @IBOutlet weak var ArtistTextField: UITextField!
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let unwrappedPlaylsit = playlist {
            self.title = unwrappedPlaylsit.name
        }
    }
    
    //MARK: - IBActions
    
    @IBAction func addButtonTapped(sender: AnyObject) {

    if let title = SongTitleTextField.text, artist = ArtistTextField.text, let playlist = playlist {
        SongController.createSong(title, artist: artist, playlist: playlist)
        tableView.reloadData()
        SongTitleTextField.text = ""
        ArtistTextField.text = ""
    }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return playlist?.songs.count ?? 0
        
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SongCell", forIndexPath: indexPath)

        let song = playlist?.songs[indexPath.row]
        
        cell.textLabel?.text = song?.title
        cell.detailTextLabel?.text = song?.artist

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
