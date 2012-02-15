Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZqb-00052R-8q
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:04:18 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RxZqP-0000hK-Sq
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:04:05 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RxZqP-0002dH-Re
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 09:04:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:03:58 +0100
Message-Id: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: USB/network unregistration patches
To: barebox@lists.infradead.org

Registering devices works fine on barebox, unregistration often not so.
This series cleans up unregistration of network/USB devices.

Sascha Hauer (6):
      usb net smsc95xx: remove unused variable
      usb net smsc95xx: add missing mii_unregister
      usb net: fix unregistration
      net: fix eth device unregistration
      net: set enetaddr to invalid address when an invalid string is passed
      USB storage: fix disconnect

 drivers/net/usb/smsc95xx.c |    7 +++----
 drivers/net/usb/usbnet.c   |    6 ++----
 drivers/usb/storage/usb.c  |   23 ++++++-----------------
 drivers/usb/storage/usb.h  |    1 +
 net/eth.c                  |    5 ++++-
 net/net.c                  |    6 ++++--
 6 files changed, 20 insertions(+), 28 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
