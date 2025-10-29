#!/bin/bash
set -ex

echo '--- DIAGNOSTIC BUILD START ---'
echo "PWD:"; pwd
echo "ROOT LS:"; ls -la
echo "PY:"; python --version
echo "PIP:"; pip --version

echo "--- INSTALLING ---"
pip install -r requirements.txt

echo "--- AFTER PIP ---"
echo "RUNNING COLLECTSTATIC"
python manage.py collectstatic --no-input --clear

echo "--- AFTER COLLECTSTATIC ---"
echo "LS staticfiles:"; ls -la staticfiles || true

echo "CREATING /vercel/output/staticfiles"
mkdir -p /vercel/output/staticfiles
cp -a staticfiles/. /vercel/output/staticfiles/ || true

echo "LS /vercel/output:"
ls -la /vercel/output || true
echo '--- DIAGNOSTIC BUILD END ---'
