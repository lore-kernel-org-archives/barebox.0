Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StgHP-0004ZO-SX
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 14:40:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 04E41BF0E8
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 16:39:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 24 Jul 2012 16:39:53 +0200
Message-Id: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 0/3] nand: autodetect buswith
To: barebox@lists.infradead.org

Add flag NAND_BUSWIDTH_UNKNOWN to allow the nand driver to detect the buswidth.
Driver must provide callback set_buswidth which configure buswidth set in
(struct nand_chip) nand->options

Jan Weitzel (3):
  nand: base: Add autodetect buswidth
  OMAP GPMC NAND: add set_buswidth callback
  PCA-A_XL2 PCM049: Use autodetection for NAND width

 arch/arm/boards/pcm049/board.c            |    4 +-
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    3 +-
 arch/arm/mach-omap/devices-gpmc-nand.c    |    8 ++---
 arch/arm/mach-omap/gpmc.c                 |   19 ++++++++++++
 arch/arm/mach-omap/include/mach/gpmc.h    |    8 +++++
 drivers/mtd/nand/nand_base.c              |   45 ++++++++++++++++++++++++++--
 drivers/mtd/nand/nand_omap_gpmc.c         |   43 ++++++++++++++++++++++++---
 include/linux/mtd/nand.h                  |    4 ++
 8 files changed, 117 insertions(+), 17 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
