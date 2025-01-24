Name:           script_caunter
Version:        1.0
Release:        1%{?dist}
Summary:        A script to count files in /etc directory

License:        GPL
Source0:        script_caunter.sh
BuildArch:      noarch

%description
This script counts the number of files (excluding directories and symlinks) in the /etc directory.

%prep


%install
mkdir -p %{buildroot}/usr/local/bin
cp %{SOURCE0} %{buildroot}/usr/local/bin/script_caunter.sh


%files
/usr/local/bin/script_caunter.sh