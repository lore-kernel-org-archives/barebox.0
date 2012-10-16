Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo4.mail-out.ovh.net ([178.33.251.8]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO8wt-0007Ts-LX
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 15:20:52 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id DF9A4104FDED
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 17:27:27 +0200 (CEST)
Date: Tue, 16 Oct 2012 17:18:31 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016151831.GB30038@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] mtd add parent support and use pure device
To: barebox@lists.infradead.org

HI,

The following changes since commit 11e1a135a989427fbb8920890ba6d824789a02e8:

  Merge branch 'for-next-1/bbu' into next (2012-10-16 09:38:45 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/mtd

for you to fetch changes up to 5a1bf8453e1a82200d24007394e4016cfe2bee48:

  mtd: add parent support (2012-10-16 14:23:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      mtd: register device a pure device
      mtd: add parent support

 drivers/mtd/core.c                  |    6 +++++-
 drivers/mtd/devices/docg3.c         |    1 +
 drivers/mtd/devices/mtd_dataflash.c |    2 ++
 drivers/mtd/nand/atmel_nand.c       |    1 +
 drivers/mtd/nand/nand_imx.c         |    2 +-
 drivers/mtd/nand/nand_mxs.c         |    1 +
 drivers/mtd/nand/nand_omap_gpmc.c   |    1 +
 drivers/mtd/nand/nand_s3c24xx.c     |    1 +
 drivers/mtd/nand/nomadik_nand.c     |    1 +
 include/linux/mtd/mtd.h             |    2 +-
 10 files changed, 15 insertions(+), 3 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
