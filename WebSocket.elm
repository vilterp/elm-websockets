module WebSocket where

import Task
import Signal

import Native.WebSocket


type alias URL =
  String


type alias Message =
  String


type WebSocket =
  WebSocket


type SocketEvent
  = Message Message
  | Close


type InvalidStateError
  = SocketNotOpenError


create : URL -> Signal.Address SocketEvent -> Task.Task x WebSocket
create =
  Native.WebSocket.create


send : WebSocket -> Message -> Task.Task InvalidStateError ()
send =
  Native.WebSocket.send


close : WebSocket -> Task.Task x ()
close =
  Native.WebSocket.close
