#!/bin/sh
echo "=> Installing tools by Go... "
echo "=> "

go install github.com/hanksudo/gotitler@latest
go install github.com/cosmtrek/air@latest
go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@latest
