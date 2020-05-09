# makla

A new Flutter application.

## Getting Started

Project Theme:
	Mobile Application to manage restaurant order locally using a local server and a mobile application that we suppose that the client already has.
the client should receive a push notification when connected to the local wifi,
once clicked it should either scan his table's QRcode ( not implemented yet) or write his table number
once it's done, the app send a websocket request to the server to ask for the available menu,
it should get it with json (thats where we have encountered a problem)
one the costumer has made his choice, the app opens the sink, send data and closes it once the bill is confirmed.
UPDATE---------------------------------------------------------------------------------------
The REST API was written in Dart ( not functional yet).
