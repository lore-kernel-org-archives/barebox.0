Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9w4z-0002CG-RB
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 10:46:30 +0000
Received: by wgbdt14 with SMTP id dt14so1624063wgb.18
 for <barebox@lists.infradead.org>; Fri, 07 Sep 2012 03:46:27 -0700 (PDT)
From: Alex Gershgorin <alexgershgorin@gmail.com>
Date: Fri,  7 Sep 2012 13:46:20 +0300
Message-Id: <1347014780-23446-1-git-send-email-alexg@meprolight.com>
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
Subject: [PATCH] mtd: nand: Add K9LBG08U0D chip to flash ids
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alex Gershgorin <alexg@meprolight.com>

Signed-off-by: Alex Gershgorin <alexg@meprolight.com>
---
 drivers/mtd/nand/nand_ids.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
index cb53fc6..469e8dd 100644
--- a/drivers/mtd/nand/nand_ids.c
+++ b/drivers/mtd/nand/nand_ids.c
@@ -118,6 +118,9 @@ struct nand_flash_dev nand_flash_ids[] = {
 	{__NANDSTR("NAND 2GiB 1,8V 16-bit"),	0xB5, 0, 2048, 0, LP_OPTIONS16},
 	{__NANDSTR("NAND 2GiB 3,3V 16-bit"),	0xC5, 0, 2048, 0, LP_OPTIONS16},
 
+	/* 32 Gigabit */
+	{__NANDSTR("NAND 4GiB 3,3V 8-bit"),	0xD7, 0, 4096, 0, LP_OPTIONS},
+
 	/*
 	 * Renesas AND 1 Gigabit. Those chips do not support extended id and
 	 * have a strange page/block layout !  The chosen minimum erasesize is
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
