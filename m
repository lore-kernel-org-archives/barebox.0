Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUER-000645-Am
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:15 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RvUEB-0000o8-7T
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 14:39:59 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RvUEB-0000c7-6N
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 14:39:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:53 +0100
Message-Id: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] more mci related stuff
To: barebox@lists.infradead.org

The following is needed to make my board work with 8bit eMMC properly.
Well, mostly properly as I didn't manage to get the eMMC work in DDR
mode.

Sascha Hauer (5):
      Add a timeout polling loop convenience wrapper
      mci i.MX esdhc: use timeout loops
      mci: Add a complete list of EXT_CSD_* fields from the kernel
      mci: Fix 8 bit mmc cards
      mci i.MX esdhc: make 8bit modes platform dependent

 arch/arm/mach-imx/include/mach/esdhc.h |    2 +
 drivers/mci/imx-esdhc.c                |   33 ++++++--
 drivers/mci/mci-core.c                 |  133 +++++++++++++++++++++++++------
 include/clock.h                        |   19 +++++
 include/mci.h                          |   51 +++++++++++-
 5 files changed, 199 insertions(+), 39 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
