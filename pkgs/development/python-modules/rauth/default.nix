{ lib
, buildPythonPackage
, fetchPypi
, requests
}:

buildPythonPackage rec {
  pname = "rauth";
  version = "0.7.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "02kv8w8l98ky223avyq7vw7x1f2ya9chrm59r77ylq45qb0xnk2j";
  };

  propagatedBuildInputs = [ requests ];

  doCheck = false;

  meta = with lib; {
    homepage = "https://rauth.readthedocs.io";
    description = "A Python library for OAuth 1.0/a, 2.0, and Ofly.";
    license = licenses.mit;
    maintainers = with maintainers; [ Frostman ];
  };
}
