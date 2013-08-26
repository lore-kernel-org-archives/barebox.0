Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bt-1B
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:52 +0200
Message-Id: <1377500163-28962-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/22] ARM: am33xx: set bootsource instance correctly for MMC1
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_generic.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index c1e63cd..67e4a45 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -100,6 +100,7 @@ u32 running_in_sdram(void)
 static int am33xx_bootsource(void)
 {
 	enum bootsource src;
+	int instance = 0;
 
 	switch (omap_bootinfo[2] & 0xFF) {
 	case 0x05:
@@ -107,6 +108,11 @@ static int am33xx_bootsource(void)
 		break;
 	case 0x08:
 		src = BOOTSOURCE_MMC;
+		instance = 0;
+		break;
+	case 0x09:
+		src = BOOTSOURCE_MMC;
+		instance = 1;
 		break;
 	case 0x0b:
 		src = BOOTSOURCE_SPI;
@@ -115,7 +121,7 @@ static int am33xx_bootsource(void)
 		src = BOOTSOURCE_UNKNOWN;
 	}
 	bootsource_set(src);
-	bootsource_set_instance(0);
+	bootsource_set_instance(instance);
 	return 0;
 }
 postcore_initcall(am33xx_bootsource);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
