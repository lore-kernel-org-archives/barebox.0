Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrA8a-0007Lx-6c
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 17:01:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 19:00:41 +0200
Message-Id: <1372093242-11699-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
References: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: i.MX51 efikasb: add flash environment support
To: barebox@lists.infradead.org

The Efikasb has a m25p80 SPI NOR flash. Add support for putting
the environment on it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/board.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 98f9dcd..58600e3 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -475,11 +475,20 @@ device_initcall(efikamx_devices_init);
 
 static int efikamx_part_init(void)
 {
-	if (bootsource_get() == BOOTSOURCE_MMC) {
+	enum bootsource bootsource = bootsource_get();
+
+	switch (bootsource) {
+	case BOOTSOURCE_MMC:
 		devfs_add_partition("mmc_left", 0x00000, 0x80000,
 				DEVFS_PARTITION_FIXED, "self0");
 		devfs_add_partition("mmc_left", 0x80000, 0x80000,
 				DEVFS_PARTITION_FIXED, "env0");
+		break;
+	case BOOTSOURCE_SPI:
+	default:
+		devfs_add_partition("m25p0", 0x80000, 0x20000,
+				DEVFS_PARTITION_FIXED, "env0");
+		break;
 	}
 
 	return 0;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
