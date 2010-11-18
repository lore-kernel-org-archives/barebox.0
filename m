Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WE-0005aS-Da
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:19 +0000
Received: by fxm1 with SMTP id 1so1559311fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:16 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:26 +0100
Message-Id: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 0/5] Various sparse fixes.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

This patch series fix some of warnings found by sparse tool.
There was intorduced new macro IOMEM which make casting for
address pointers to avoid sparse warnings.

Marek Belisko (5):
  common: Add define for IOMEM helper macro.
  fs: Fix sparse warning.
  mtd: Fix sparse warning.
  nand_s3c2410: Fix sparse warnings.
  smc91111: Various sparse fixes.

 drivers/mtd/nand/nand_s3c2410.c |   26 ++++++++++++------------
 drivers/net/smc91111.c          |   40 +++++++++++++++++++-------------------
 fs/fs.c                         |    2 +-
 include/common.h                |    2 +
 include/linux/mtd/nand.h        |    6 ++--
 5 files changed, 39 insertions(+), 37 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
