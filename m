Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui2A2-0006d0-Nl
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:40:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Ui29f-00045C-T6
 for barebox@lists.infradead.org; Thu, 30 May 2013 14:40:31 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Ui29f-0006j9-Ro
 for barebox@lists.infradead.org; Thu, 30 May 2013 14:40:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 14:40:28 +0200
Message-Id: <1369917631-31436-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] 'detect' command to detect devices
To: barebox@lists.infradead.org

This adds a 'detect' callback for devices which can be used for
MMC/ATA/USB and maybe other stuff. See the first patch for details.

In short with this series we get a 'detect' command to trigger
a devices detect callback to detect SD/MMC cards. Currently only
SD/MMC is implemented, but this should also be used for USB/ATA
aswell later.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      devices: add detect mechanism
      mci: implement detect driver callback
      mci fsl-esdhc: implement detect driver callback

 commands/Kconfig        |  9 +++++++
 commands/Makefile       |  1 +
 commands/detect.c       | 70 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c   |  7 +++++
 drivers/mci/imx-esdhc.c | 13 +++++++--
 drivers/mci/mci-core.c  | 21 +++++++++++++++
 include/driver.h        |  8 ++++++
 include/mci.h           |  6 +++--
 8 files changed, 131 insertions(+), 4 deletions(-)
 create mode 100644 commands/detect.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
