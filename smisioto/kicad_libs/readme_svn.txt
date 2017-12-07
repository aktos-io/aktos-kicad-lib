2014/02/09
This is the svn repository for my Kicad libraries.

The library files are compressed together since the uncompressed volume would have been too much for my connection poor upload capacity.

As an example, just one medium sized DF12 connector, uncompressed, would take up about 500K. The full DF12 library is about 38.5MB,
 while the compressed archive is a bit less than 3MB. So, at the band price of 6 medium sized connectors, I can put online (and you
 can download) the full 80 connectors library.

The problem is that all the files, expecially the vrml ones, get quite heavy quite fast, since they are text files (you can just open
 them with a text editor, even the vrml aren't in a binary format). The advantage of the compressed files should be evident in the
 repository dimensions (40MB vs 340MB, it is about 8.5 times smaller), and it is more so because often I create entire libraries of
 new components, not just one component at a time. Also, in this way the same files can be downloaded either via the SVN or via the
 library web page, thus saving other space and simplifying the library release procedure. I just have to commit the changes, then
 upload the new screenshots and update the italian and english web pages with the informations about the new components/libraries.
 Keeping the repository as single uncompressed library files would have added also the step of uploading the various library archives
 to their respective folders.

I know that there are drawbacks too, but I balanced the good and the bad things and decided that this would be the better way for
 my situation.

And yes, I know that using the svn tree directly as the library tree would have been great, not only for you but also for me. But there
 is a lot of people who doesn't use SVN (apparently there is also a lot of people who wants to do electronic design without knowing a bit
 about electronics, but that is another matter) and they deserve to be able to download the libraries too. Also, I still think that the
 web pages with the screenshots are way nicer that a stupid repository.


You can find more detailed informations about the libraries on the library web page:
http://www.smisioto.eu/elettronica/kicad


Walter Lain - kcswalter@tiscali.it

Note 1: the repository is also accessible via webdav
Note 2: in order to use the libraries without problem, a recent version of Kicad (at least 2013-03) is required. I keep my Kicad updated
        to the latest version in order to take advantage of any improvement, so if you experience problems with some component just try
        with a newer version.
Note 3: as of 2013/07/14, windows and linux modules are no more kept apart. It seems that recent versions of Kicad took care of the
        different path format, so there is no more need for the additional work of keeping 2 different libraries updated. I also took the
        opportunity to simplify the directory structure for the 3d modules.
Note 4: as of 2014/02/09, I've transfered the hosting to an OVH VCS. I've also added a brand new GIT repository to retrieve the libraries 
        in an uncompressed format. In the GIT repository, the pcb libraries are also available in the new "pretty" format. From now on 
        I'll keep svn for the compressed libraries that are also available on the web page, and git for the uncompressed version.
