# VirtKick. Cloud made easy.

[![GPA](https://img.shields.io/codeclimate/github/CovertLamp/virtkick-webapp.svg)](https://codeclimate.com/github/CovertLamp/virtkick-webapp)
[![Build status](https://img.shields.io/travis/CovertLamp/virtkick-webapp.svg)](https://travis-ci.org/CovertLamp/virtkick-webapp)
[![Dependencies status](http://img.shields.io/gemnasium/CovertLamp/virtkick-webapp.svg)](https://gemnasium.com/CovertLamp/virtkick-webapp)

VirtKick is a simple, open source orchestrator.
Managing virtual machines or Docker containers has never been easier.

That's the VirtKick web application.

## Issues

Report bugs and feature requests in [virtkick](https://github.com/CovertLamp/virtkick) project.

## Requirements

- [RVM](https://rvm.io/)
- Ruby 2.1 from RVM
- Linux or Mac

## One time setup

```
rvm get stable
rvm install 2.1
rvm use 2.1 --default
gem install bundler
```

## Development

```
bundle install
bundle exec rails s
bundle exec guard
xdg-open http://0.0.0.0:3000/ # open a browser
```

## Deployment

There are a variety of ways to run a production Rails website.
You can gor for Passenger, Thin or just WEBrick ([yes](http://stackoverflow.com/a/20941090/504845)).


## Contributing

See [CONTRIBUTING.md](https://github.com/CovertLamp/virtkick-website/blob/master/CONTRIBUTING.md). Thanks!





# License

VirtKick, a simple orchestrator.
Copyright (C) 2014 StratusHost Damian Nowak

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see https://www.gnu.org/licenses/agpl-3.0.html.
