Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0Tt-0004Qh-4d
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:53:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Ui0TQ-0007nq-Lo
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:52:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Ui0TQ-00069L-Ki
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:52:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:52:45 +0200
Message-Id: <1369911168-15654-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add devicetree support to i.MX chipidea driver
To: barebox@lists.infradead.org

This adds devicetree support to the i.MX chipidea USB driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      usb: Add devicetree helpers
      usb: i.MX chipidea: Add devicetree support
      usb: i.MX chipidea: Add overcurrent disable flag for i.MX6

 drivers/usb/core/Makefile      |   1 +
 drivers/usb/core/of.c          |  91 +++++++++++++++++++++++++++
 drivers/usb/imx/chipidea-imx.c | 136 +++++++++++++++++++++++++++++++++--------
 drivers/usb/imx/imx-usb-misc.c |  59 +++++++++++++++++-
 drivers/usb/imx/imx-usb-phy.c  |  11 +++-
 include/usb/chipidea-imx.h     |   2 +
 include/usb/usb.h              |  21 +++++++
 7 files changed, 293 insertions(+), 28 deletions(-)
 create mode 100644 drivers/usb/core/of.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
