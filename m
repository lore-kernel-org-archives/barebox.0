Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZp-00079c-Qn
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:14 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RvSZb-0004RX-2r
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 12:53:59 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RvSZb-0005DP-1Y
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 12:53:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:43 +0100
Message-Id: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mmc/sd patches
To: barebox@lists.infradead.org

Here are several patches to clean up the sd/mmc layer.

Sascha Hauer (15):
      mci: Add complete definitions for the card type
      mci: use card type definitions
      mci: fix high capacity detection
      mci mxs: do not use external define for internal use
      mci core: replace discrete ios values with struct ios
      mci s3c: Do not mess with struct mci_host
      mci s3c: allocate host struct dynamically
      mci s3c: pass around the right pointer
      mci: remove unused device argument from set_ios
      mci core: fix mixup of max write/read block len
      mci: Use struct mci for internal argument passing
      mci: replace pr_debug with dev_dbg
      mci: factor out mci/sd specific startup functions
      mci: cdev_find_free_index won't fail, no need to check
      mci: Be more verbose on what device is associated to which disk

 drivers/mci/atmel_mci.c  |   19 +-
 drivers/mci/imx-esdhc.c  |   17 +-
 drivers/mci/imx.c        |   19 +-
 drivers/mci/mci-core.c   |  503 +++++++++++++++++++++++-----------------------
 drivers/mci/mci_spi.c    |    3 +-
 drivers/mci/mxs.c        |   17 +-
 drivers/mci/omap_hsmmc.c |   20 +-
 drivers/mci/pxamci.c     |   20 ++-
 drivers/mci/s3c.c        |  165 +++++++---------
 include/mci.h            |   52 ++++-
 10 files changed, 437 insertions(+), 398 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
