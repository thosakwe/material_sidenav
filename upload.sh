#!/usr/bin/env bash
git add build/web && git commit -m "Updated example"
git subtree push --prefix build/web origin gh-pages