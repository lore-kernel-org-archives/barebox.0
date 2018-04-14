Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PKi-0001w6-0G
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:51:32 +0000
Received: by mail-pf0-x241.google.com with SMTP id y69so8520719pfb.5
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:51:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:55 -0700
Message-Id: <20180414175103.10125-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180414175103.10125-1-andrew.smirnov@gmail.com>
References: <20180414175103.10125-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/17] ARM: i.MX: boot: Move magic values into small functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move code to extract appropiate BOOT_CFG bits to decode booutsource on
i.MX53, 6, and 7 into small functions for clarity and to allow sharing
the code between i.MX53 and i.MX6.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index cc54ea15a..66e1a9254 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -180,6 +180,11 @@ static unsigned int imx53_get_bmod(uint32_t r)
 	return sbmr(r, 25, 24);
 }
 
+static int imx53_bootsource_internal(uint32_t r)
+{
+	return sbmr(r, 7, 4);	/* BOOT_CFG1[7:4] */
+}
+
 void imx53_get_boot_source(enum bootsource *src, int *instance)
 {
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
@@ -191,7 +196,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	switch ((cfg1 & 0xff) >> 4) {
+	switch (imx53_bootsource_internal(cfg1)) {
 	case 2:
 		*src = BOOTSOURCE_HD;
 		break;
@@ -266,8 +271,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	/* BOOT_CFG1[7:4] */
-	switch ((sbmr1 >> 4) & 0xf) {
+	switch (imx53_bootsource_internal(sbmr1)) {
 	case 2:
 		*src = BOOTSOURCE_HD;
 		break;
@@ -307,6 +311,11 @@ void imx6_get_boot_source(enum bootsource *src, int *instance)
 #define IMX_BOOT_SW_INFO_POINTER_ADDR	0x000001E8
 #define IMX_BOOT_SW_INFO_BDT_SD		0x1
 
+static unsigned int imx7_bootsource_internal(uint32_t r)
+{
+	return sbmr(r, 15, 12);	/* BOOT_CFG[15:12] */
+}
+
 struct imx_boot_sw_info {
 	uint8_t  reserved_1;
 	uint8_t  boot_device_instance;
@@ -358,7 +367,7 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
-	switch ((sbmr1 >> 12) & 0xf) {
+	switch (imx7_bootsource_internal(sbmr1)) {
 	case 1:
 	case 2:
 		*src = BOOTSOURCE_MMC;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
