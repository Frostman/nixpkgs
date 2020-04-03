{ lib
, buildPythonPackage
, fetchPypi
}:

buildPythonPackage rec {
  pname = "hachoir";
  version = "3.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "030lffprlw371ciplsf2mszc55jx2pyzx192j1jkwbf3z0wim9qa";
  };

  doCheck = false;

  meta = with lib; {
    homepage = "https://hachoir.readthedocs.io";
    description = "Hachoir is a Python library to view and edit a binary stream field by field";
    license = licenses.gpl2;
    maintainers = with maintainers; [ Frostman ];
  };
}
