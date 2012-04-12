Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPsL-00081J-IZ
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:40:14 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SIPsE-0003De-Gk
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 21:40:06 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SIPsE-0005if-Ev
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 21:40:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 21:40:01 +0200
Message-Id: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ehci patches
To: barebox@lists.infradead.org

The following patches contain some changes for the ehci driver.
Most interesting for all ehci users is the speed up on initialization
based on a patch I found on the U-Boot list. Also, the i.MX53 LOCO
gets USB support.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      USB ehci: make cache handling simpler
      USB ehci: speed up initialization
      ARM i.MX53: Setup USB clocks
      ARM i.MX53 LOCO: Add USB support

 arch/arm/boards/freescale-mx53-loco/board.c |   17 +++++
 arch/arm/mach-imx/imx53.c                   |   17 ++++-
 drivers/usb/core/usb.c                      |    2 +-
 drivers/usb/host/ehci-hcd.c                 |   98 +++++++++------------------
 4 files changed, 63 insertions(+), 71 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
