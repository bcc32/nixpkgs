{ lib
, buildPythonPackage
, fetchPypi
, numpy
, pyopengl
, pyqt5
, scipy
}:

buildPythonPackage rec {
  pname = "pyqtgraph";
  version = "0.11.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "7d1417f36b5b92d1365671633a91711513e5afbcc82f32475d0690317607714e";
  };

  propagatedBuildInputs = [ numpy pyopengl pyqt5 scipy ];

  doCheck = false;  # tries to create windows (QApps) on collection, which fails (probably due to no display)

  pythonImportsCheck = [ "pyqtgraph" ];

  meta = with lib; {
    description = "Scientific Graphics and GUI Library for Python";
    homepage = "http://www.pyqtgraph.org/";
    changelog = "https://github.com/pyqtgraph/pyqtgraph/blob/master/CHANGELOG";
    license = licenses.mit;
    platforms = platforms.unix;
    maintainers = with maintainers; [ koral ];
  };

}
