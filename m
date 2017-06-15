Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x22d.google.com ([2a00:1450:400c:c0c::22d])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dLSo7-0005h8-P3
 for barebox@lists.infradead.org; Thu, 15 Jun 2017 11:19:25 +0000
Received: by mail-wr0-x22d.google.com with SMTP id 36so17239858wry.3
 for <barebox@lists.infradead.org>; Thu, 15 Jun 2017 04:19:03 -0700 (PDT)
MIME-Version: 1.0
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu, 15 Jun 2017 13:18:41 +0200
Message-ID: <CAAP7uc+itatZvN+dwD9TKfSFr=HXOQ0OWT6JUz9dBxbW+1G1FQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: libratp, libratp-barebox and ratp-barebox-cli
To: barebox@lists.infradead.org

Hey,

For anyone interested, I ended up preparing a pair of C libraries and
a CLI tool that allow controlling barebox remotely using RATP, in the
same way as bbremote does it. The libraries would allow easy
integration on C applications that may want to remotely control
barebox.

Repositories:
  https://github.com/aleksander0m/libratp
  https://github.com/aleksander0m/libratp-barebox

Some initial 0.0.2 tagged versions here:
  https://aleksander.es/software/libratp-0.0.2.tar.xz
  https://aleksander.es/software/libratp-barebox-0.0.2.tar.xz

APIs:
  https://aleksander0m.github.io/libratp
  https://aleksander0m.github.io/libratp-barebox

The libratp library provides a generic RATP implementation, much like
barebox' lib/ratp.c:
  * The library currently supports creating ratp_t objects for TTYs or
FIFO pairs (e.g. for barebox sandbox testing).
  * The library launches a background thread running a libevent main
loop, which takes care of all the async reading from the TTY (or
FIFO). all the timers in the RATP logic and all the link management
state machine.
  * Callbacks may be registered by the user to get reported when new
data arrives or when RATP link state changes. Worth noting that these
callbacks are called from within the support thread.
  * The ratp_close() and ratp_establish() operations in barebox'
lib/ratp.c are blocking, they will not return until the desired final
state has been reached or a timeout happened. In the libratp library
the equivalent operations would be ratp_link_active_open_sync() and
ratp_link_close_sync(); but the library also includes support for just
sending the active open or close requests, without waiting for the
final state to be reached, via ratp_link_active_open() and
ratp_link_close(). This allows to e.g. request an active open and
queue data to be sent, so that the data is directly sent on the ACK
finishing the establishment.
  * The library doesn't make any assumption on the maximum data length
chosen by each peer, so a peer may choose a MDL<255 to receive data in
shorter chunks or even choose MDL=0 to indicate no data may be
received.

The libratp-barebox library "extends" the libratp library with barebox
specific operations. Right now, these are implemented:
 * ratp_barebox_link_ping()
 * ratp_barebox_link_command()
 * ratp_barebox_link_getenv()

The ratp-barebox-cli implements the barebox specific operations in a
CLI, just a simple way to exercise the library APIs:

$ ratp-barebox-cli -t /dev/ttyUSB3 --ping
Sending PING...
PONG received...

$ ratp-barebox-cli -t /dev/ttyUSB3 --getenv global.boot.default
Sending getenv request: global.boot.default
global.boot.default: net

$ ratp-barebox-cli -t /dev/ttyUSB3 --command "ls /dev"
Sending command: ls /dev
Received response (errno Success):
cs0              eeprom0          eeprom1          full
imx-ocotp        mem              netconsole-1     null
prng             ram0             ratpconsole-1    serial0-1
serial1-1        serial2-1        zero

Cheers!

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
