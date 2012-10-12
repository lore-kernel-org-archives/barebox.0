Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiTp-0002Ao-4H
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:52:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:52:54 +0200
Message-Id: <1350060774-24779-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
References: <1350060774-24779-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX Karo tx53: Add env depending on bootsource
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx53/board.c |   21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/karo-tx53/board.c b/arch/arm/boards/karo-tx53/board.c
index 28840ff..99ddcec 100644
--- a/arch/arm/boards/karo-tx53/board.c
+++ b/arch/arm/boards/karo-tx53/board.c
@@ -224,8 +224,25 @@ device_initcall(tx53_devices_init);
 
 static int tx53_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
+	const char *envdev;
+
+	switch (imx_bootsource()) {
+	case bootsource_mmc:
+		devfs_add_partition("disk0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("disk0", SZ_512K, SZ_1M, DEVFS_PARTITION_FIXED, "env0");
+		envdev = "MMC";
+		break;
+	case bootsource_nand:
+	default:
+		devfs_add_partition("nand0", 0x00000, 0x80000, DEVFS_PARTITION_FIXED, "self_raw");
+		dev_add_bb_dev("self_raw", "self0");
+		devfs_add_partition("nand0", 0x80000, 0x100000, DEVFS_PARTITION_FIXED, "env_raw");
+		dev_add_bb_dev("env_raw", "env0");
+		envdev = "NAND";
+		break;
+	}
+
+	printf("Using environment in %s\n", envdev);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
