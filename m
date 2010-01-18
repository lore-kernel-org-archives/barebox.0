Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEI-0006OA-Bo
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:15 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:29 +0100
Message-Id: <1263815791-10839-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-6-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-4-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-5-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/8] i.MX35 3stack: increase env partition to hold splash image
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 board/freescale-mx35-3-stack/3stack.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index d87808a..e6fa0f0 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -171,13 +171,13 @@ static int f3s_devices_init(void)
 	case 0x01:		/* NAND is the source */
 		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED, "env_raw");
+		devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		break;
 
 	case 0x00:		/* NOR is the source */
 		devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-		devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+		devfs_add_partition("nor0", 0x40000, 0x80000, PARTITION_FIXED, "env0");
 		protect_file("/dev/env0", 1);
 		break;
 	}
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
