#! /bin/bash

cd ../client
ember build --environment production
divshot push production
