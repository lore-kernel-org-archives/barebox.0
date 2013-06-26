Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrkEa-0005Pp-Ap
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 07:33:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 09:33:16 +0200
Message-Id: <1372231996-1042-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
References: <1372231996-1042-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] ARM: i.MX: use device_detect_by_name where applicable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/board.c      | 6 +-----
 arch/arm/boards/freescale-mx53-loco/board.c | 4 +---
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/dmo-mx6-realq7/board.c
index b2a27a4..7983b88 100644
--- a/arch/arm/boards/dmo-mx6-realq7/board.c
+++ b/arch/arm/boards/dmo-mx6-realq7/board.c
@@ -117,11 +117,7 @@ static int realq7_env_init(void)
 {
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		if (!IS_ENABLED(CONFIG_MCI_STARTUP)) {
-			struct device_d *dev = get_device_by_name("mmc3");
-			if (dev)
-				device_detect(dev);
-		}
+		device_detect_by_name("mmc3");
 		devfs_add_partition("mmc3", 0, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.barebox");
 		devfs_add_partition("mmc3", SZ_1M, SZ_1M, DEVFS_PARTITION_FIXED, "mmc3.bareboxenv");
 		default_environment_path = "/dev/mmc3.bareboxenv";
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 2f51128..aaf5db4 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -81,12 +81,10 @@ static void loco_fec_reset(void)
 
 static int loco_late_init(void)
 {
-	struct device_d *dev = get_device_by_name("mmc0");
 	struct mc34708 *mc34708;
 	int rev;
 
-	if (dev)
-		device_detect(dev);
+	device_detect_by_name("mmc0");
 
 	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
