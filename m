Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StgHP-0004ZP-JE
 for barebox@lists.infradead.org; Tue, 24 Jul 2012 14:40:23 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 238F2BF0EB
 for <barebox@lists.infradead.org>; Tue, 24 Jul 2012 16:39:57 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 24 Jul 2012 16:39:56 +0200
Message-Id: <1343140796-21934-4-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
References: <1343140796-21934-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 3/3] PCA-A_XL2 PCM049: Use autodetection for NAND width
To: barebox@lists.infradead.org


Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm049/board.c            |    4 ++--
 arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |    3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 8718d2b..006e924 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -111,9 +111,9 @@ static int pcm049_devices_init(void)
 
 	pcm049_network_init();
 
-	gpmc_generic_nand_devices_init(0, 8,
+	/* Autodetect buswidth */
+	gpmc_generic_nand_devices_init(0, 0,
 			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
-
 #ifdef CONFIG_PARTITION
 	devfs_add_partition("nand0", 0x00000, SZ_128K, PARTITION_FIXED, "xload_raw");
 	dev_add_bb_dev("xload_raw", "xload");
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
index 9bbb054..f246f86 100644
--- a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
+++ b/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
@@ -124,7 +124,8 @@ static int pcaaxl2_devices_init(void)
 
 	pcaaxl2_network_init();
 
-	gpmc_generic_nand_devices_init(0, 16,
+	/* Autodetect buswidth */
+	gpmc_generic_nand_devices_init(0, 0,
 			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
 
 #ifdef CONFIG_PARTITION
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
