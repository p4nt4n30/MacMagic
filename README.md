# macmagic

Dependancies:
	Ruby must be installed as this is a ruby program.  The install.sh script will check to see if ruby is installed.  If it is not installed it will install ruby for you.

Follow these steps.

Change the root directory name: sudo mv MacMagic-master/ MacMagic

cd into the root MacMagic directory: cd MacMagic

run this cmd: sudo chmod +x install.sh

then while still in the root MacMagic directory run: sudo ./install.sh

After the install is complete run: sudo macmagic -h (this will display the help menu)

HELP MENU:

Usage: (sudo) macmagic [options]
    -h, --help                       Prints this help
    -V, --Version                    Displays version and date of release
    -i, --interface=INTERFACE        Interface
    -s, --search-oui=Vendor          Search OUI List for vendor Example: ASUS*
    -l, --list-oui                   List oui's (Vendor ID)
    -m, --mac=MAC                    MAC Address. FORMAT 00:00:00:00:00:00
    -p, --mac-prefix=MACPREFIX       First 3 octets of MAC Address (OUI). The last 3 octets will be random. FORMAT 00:00:00

Enjoy the Application!!!!!

