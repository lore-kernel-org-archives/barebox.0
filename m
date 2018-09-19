Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2eiw-0004A9-6A
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:49:12 +0000
Received: by mail-pg1-f173.google.com with SMTP id r1-v6so2935369pgp.11
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:48:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:48:46 -0700
Message-Id: <20180919154847.1543-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: i.MX: boot: Make use of FIELD_GET() in
 imx51_get_boot_source()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index f1fc40479..830ea08f3 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -167,10 +167,10 @@ void imx27_boot_save_loc(void)
 	imx_boot_save_loc(imx27_get_boot_source);
 }
 
-#define IMX51_SRC_SBMR			0x4
-#define IMX51_SBMR_BT_MEM_TYPE_SHIFT	7
-#define IMX51_SBMR_BT_MEM_CTL_SHIFT	0
-#define IMX51_SBMR_BMOD_SHIFT		14
+#define IMX51_SRC_SBMR		0x4
+#define IMX51_SBMR_BT_MEM_TYPE	GENMASK(8, 7)
+#define IMX51_SBMR_BT_MEM_CTL	GENMASK(1, 0)
+#define IMX51_SBMR_BMOD		GENMASK(15, 14)
 
 void imx51_get_boot_source(enum bootsource *src, int *instance)
 {
@@ -180,12 +180,12 @@ void imx51_get_boot_source(enum bootsource *src, int *instance)
 
 	reg = readl(src_base + IMX51_SRC_SBMR);
 
-	switch ((reg >> IMX51_SBMR_BMOD_SHIFT) & 0x3) {
+	switch (FIELD_GET(IMX51_SBMR_BMOD, reg)) {
 	case 0:
 	case 2:
 		/* internal boot */
-		ctrl = (reg >> IMX51_SBMR_BT_MEM_CTL_SHIFT) & 0x3;
-		type = (reg >> IMX51_SBMR_BT_MEM_TYPE_SHIFT) & 0x3;
+		ctrl = FIELD_GET(IMX51_SBMR_BT_MEM_CTL, reg);
+		type = FIELD_GET(IMX51_SBMR_BT_MEM_TYPE, reg);
 
 		*src = locations[ctrl][type];
 		break;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
