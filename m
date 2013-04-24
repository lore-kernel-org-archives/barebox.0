Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUuDf-0001rS-4Z
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 07:34:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UUuDc-0003Vx-PL
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:34:20 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UUuDc-00037D-OE
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 09:34:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2013 09:34:17 +0200
Message-Id: <1366788859-11565-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci: factor out common SDHCI register defines
To: barebox@lists.infradead.org

The SDHCI controller core is implemented by different SoC vendors.
All these implementations are quite different which makes it hard
to write and maintain a common driver.
These patches factor out the common register layout so that this
can be shared by drivers which makes them more comparable and makes
it possible to share code between SDHCI drivers.

Sascha


----------------------------------------------------------------
Sascha Hauer (2):
      mci: imx-esdhc: remove cache snoop register access
      mci: imx-esdhc: factor out common sdhci registers

 drivers/mci/imx-esdhc.c | 190 ++++++++++++++++++++++--------------------------
 drivers/mci/imx-esdhc.h |  89 -----------------------
 drivers/mci/sdhci.h     |  88 ++++++++++++++++++++++
 3 files changed, 175 insertions(+), 192 deletions(-)
 create mode 100644 drivers/mci/sdhci.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
