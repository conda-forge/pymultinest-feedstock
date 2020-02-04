${PYTHON} -m pip install . --no-deps -vv

# PyMultinest contains also wrappers for Cuba and PolyChord,
# which require separate binary libraries unrelated to multinest
# This package only contains multinest, other packages will be provided
# for cuba and PolyChord if needed
# Let's remove the packages pyCuba and pypolychord that wouldn't work
# anyway

site_packages_dir=$(python -c "import site; print(site.getsitepackages()[0])")

rm -rf $site_packages_dir/pycuba

# Copy also the demo, might be useful for testing and for
# understanding how to use pymultinest
# mkdir ${PREFIX}/share/pymultinest
# cp pymultinest_demo_minimal.py ${PREFIX}/share/pymultinest/pymultinest_demo_minimal.py
