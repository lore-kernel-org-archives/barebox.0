Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EDW-00037H-Sw
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:05:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1a6ED9-0003W5-Py
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 10:05:27 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1a6EDM-0001YC-O3
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 10:05:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Dec 2015 10:05:35 +0100
Message-Id: <1449565539-29374-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] iodevice support
To: Barebox List <barebox@lists.infradead.org>

The following is something like a mixture of Linux IIO and hwmon support
for the poor. I called it iodevice, but better names are appreciated.
A iodevice has multiple channels, each providing a value like for
example a temperature or a voltage. For each iodevice we provide device
parameters to access the values from the commandline. The C API for a
consumer consists of iochannel_get() to get a iochannel, and
iochannel_get_value() to actually read a value.
As drivers we currently have a LM75 temperature driver and a MCP342x ADC
driver. Also there is a PT100 driver which itself is a consumer of
another iodevice, a MCP342x in my case. This is more meant as an example
since the voltage to temperature conversion function is board specific.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      misc: Add iodevice support
      misc: Add basic LM75 temperature driver
      misc: Add Microchip MCP342x support
      misc: Add PT100 temperature sensor support

 drivers/misc/Kconfig    |  18 ++++
 drivers/misc/Makefile   |   5 +
 drivers/misc/iodevice.c | 109 ++++++++++++++++++++
 drivers/misc/lm75.c     | 262 ++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/misc/mcp342x.c  | 259 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/misc/pt100.c    | 145 +++++++++++++++++++++++++++
 include/iodevice.h      |  33 ++++++
 7 files changed, 831 insertions(+)
 create mode 100644 drivers/misc/iodevice.c
 create mode 100644 drivers/misc/lm75.c
 create mode 100644 drivers/misc/mcp342x.c
 create mode 100644 drivers/misc/pt100.c
 create mode 100644 include/iodevice.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
