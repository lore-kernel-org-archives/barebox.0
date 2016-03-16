Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ag2EJ-0000xV-Hg
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:40 +0000
Received: by mail-pf0-x229.google.com with SMTP id n5so56134621pfn.2
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:45 -0700
Message-Id: <1458099232-9050-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/16] i.MX: Add revision detection for i.MX6D/Q Plus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 0fdd785..f80334d 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -123,7 +123,8 @@ int imx6_init(void)
 	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
 
 	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
-	switch (rev & 0xff) {
+
+	switch (rev & 0xfff) {
 	case 0x00:
 		mx6_silicon_revision = IMX_CHIP_REV_1_0;
 		break;
@@ -148,16 +149,26 @@ int imx6_init(void)
 		mx6_silicon_revision = IMX_CHIP_REV_1_5;
 		break;
 
+	case 0x100:
+		mx6_silicon_revision = IMX_CHIP_REV_2_0;
+		break;
+
 	default:
 		mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
 	}
 
 	switch (imx6_cpu_type()) {
 	case IMX6_CPUTYPE_IMX6Q:
-		cputypestr = "i.MX6 Quad";
+		if (mx6_silicon_revision >= IMX_CHIP_REV_2_0)
+			cputypestr = "i.MX6 Quad Plus";
+		else
+			cputypestr = "i.MX6 Quad";
 		break;
 	case IMX6_CPUTYPE_IMX6D:
-		cputypestr = "i.MX6 Dual";
+		if (mx6_silicon_revision >= IMX_CHIP_REV_2_0)
+			cputypestr = "i.MX6 Dual Plus";
+		else
+			cputypestr = "i.MX6 Dual";
 		break;
 	case IMX6_CPUTYPE_IMX6DL:
 		cputypestr = "i.MX6 DualLite";
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
