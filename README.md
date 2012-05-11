# Synapses RubyCAS-Server

## Copyright

Forked From RubyCAS-Server, by Matt Zukowski are copyright (c) 2011 Urbacon Ltd.
Other portions are copyright of their respective authors.

## Authors

* Tiago Machado (tiago@synapses.com.br)
* João Lucas (joaolucas@synapses.com.br

## Differences between Synapses CAS and the original RubyCAS

[0001] Fixed the location of translations path at "localization.rb"

[0002] Configuration default_locale parameter is used now.

[0003] You can switch between locales clicking on flags at login page. The locale is passed by parameters (?locale=pt) in URL.

[0004] The selected locale is saved in current session.

[0005] To start the cas server, you must type "synapses-cas" instead of "rubycas-server"

[0006] Default theme has been completely rewrite to use twitter bootstrap, including flash messages (error, success and info).

![Default theme](https://dl.dropbox.com/s/e7sunyjrja63tv0/synapses-cas-theme.png)


## License

Synapses RubyCAS-Server is licensed for use under the terms of the MIT License.
See the LICENSE file bundled with the official RubyCAS-Server distribution for details.