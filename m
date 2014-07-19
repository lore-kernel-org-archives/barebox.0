Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003ir-Ah
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:34 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X8QkS-0004UJ-5q
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 11:16:08 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X8QkS-0006Q0-4R
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 11:16:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:15:55 +0200
Message-Id: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB Host patches
To: barebox@lists.infradead.org

The following series contains USB Host patches based on the USB
patches sent earlier.

With this series the 'usb' command becomes a rescan command. When
invoked the USB stack will properly detect new devices and remove
old devices.

Also the USB hub support becomes a real driver and the USB device
hierarchy in in devinfo now matches the real USB topology.

Sascha

----------------------------------------------------------------
Antony Pavlov (1):
      commands: usb: add tree view capability

Sascha Hauer (11):
      USB: i.MX chipidea: Implement OTG support for the poor
      USB: host: simplify usb_new_device
      USB: host: hub: Turn into a driver
      USB: host: fixup USB device hierarchy
      USB: host: hub: Use dev_dbg
      USB: host: hub: Use usb_hub_power_on from U-Boot
      USB: host: factor out port configuration to separate function
      USB: host: hub: only configure hub once
      USB: host: implement usb_remove_device
      USB: host: detect port change only once in usb_hub_configure_port
      USB: host: drop force rescan

 commands/usb.c                 | 108 ++++++++-
 drivers/usb/core/Makefile      |   3 +-
 drivers/usb/core/hub.c         | 481 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/core/hub.h         |   7 +
 drivers/usb/core/usb.c         | 504 ++++-------------------------------------
 drivers/usb/core/usb.h         |   8 +
 drivers/usb/host/ehci-hcd.c    |   2 +-
 drivers/usb/imx/chipidea-imx.c | 101 ++++++++-
 include/usb/chipidea-imx.h     |   1 +
 include/usb/usb.h              |   9 +-
 10 files changed, 745 insertions(+), 479 deletions(-)
 create mode 100644 drivers/usb/core/hub.c
 create mode 100644 drivers/usb/core/hub.h
 create mode 100644 drivers/usb/core/usb.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
