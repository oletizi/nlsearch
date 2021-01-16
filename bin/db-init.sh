#!/usr/bin/env sh

csvsql --insert --db-schema bsd --db "mysql://bsd:bsd@localhost/bsd?charset=utf8mb4"
