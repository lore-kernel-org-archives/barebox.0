Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTVY-0001Rd-KP
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 12:37:43 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 63F33BF0E7
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2012 14:37:17 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 18 Jul 2012 14:37:10 +0200
Message-Id: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 0/3] omap gpmc nand autodetect
To: barebox@lists.infradead.org


Jan Weitzel (3):
  OMAP GPMC NAND: use buswidth from GPMC
  gpmc: Add reset to gpmc_generic_init
  mtd omap nand: reconfigure buswidth

 arch/arm/boards/pcm049/board.c         |    4 ++--
 arch/arm/mach-omap/devices-gpmc-nand.c |   23 ++++++++++++++++++-----
 arch/arm/mach-omap/gpmc.c              |   29 ++++++++++++++++++++++++++++-
 arch/arm/mach-omap/include/mach/gpmc.h |    8 ++++++++
 drivers/mtd/nand/nand_omap_gpmc.c      |   30 ++++++++++++++++++++++++++++--
 5 files changed, 84 insertions(+), 10 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
