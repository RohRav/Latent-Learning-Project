if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo "Usage: `basename $0` (directory in which to download the miniconda installer) (directory in which to install miniconda)";
    exit 0;
fi

if [ -z "$1" ] || [ -z "$2" ]; then
    $0 --help;
    exit 1;
fi

DOWNLOAD_DIRECTORY="$1";
INSTALL_DIRECTORY="$2";
wget 'https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh' -O $DOWNLOAD_DIRECTORY/miniconda.sh;
sh $DOWNLOAD_DIRECTORY/miniconda.sh -b -p $INSTALL_DIRECTORY/miniconda;
rm $DOWNLOAD_DIRECTORY/miniconda.sh;
