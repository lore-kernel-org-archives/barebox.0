Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052s-1k
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U5umv-0007lH-Do
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 10:07:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U5umv-0006RR-Cl
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 10:07:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:22 +0100
Message-Id: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB i.MX: Add i.MX6 HSIC support
To: barebox@lists.infradead.org

The following adds USB HSIC support for i.MX6.

The special thing about HSIC on i.MX is that we have to configure
a pullup on the Strobe line *after* the USB port is initialized, so
the bulk of this series deals with adding post init hooks to the
imx-usb-misc and ehci driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      ARM i.MX6: Fix HSIC pad definitions
      USB chipidea i.MX: Fix PTS mask for HSIC
      USB ehci: Add platform specific init calls
      USB i.MX chipidea: implement post init support
      USB i.MX6: Add HSIC support

 arch/arm/mach-imx/include/mach/iomux-mx6.h |   19 +++--
 drivers/usb/host/ehci-hcd.c                |   14 ++++
 drivers/usb/imx/chipidea-imx.c             |   45 ++++++++--
 drivers/usb/imx/imx-usb-misc.c             |  123 +++++++++++++++++++++++++---
 include/usb/chipidea-imx.h                 |    3 +
 include/usb/ehci.h                         |    5 ++
 6 files changed, 181 insertions(+), 28 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
