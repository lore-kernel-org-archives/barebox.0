Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkJM1-0008Ve-Tm
 for barebox@lists.infradead.org; Sat, 23 Nov 2013 19:58:58 +0000
Received: by mail-wi0-f178.google.com with SMTP id ca18so3952659wib.17
 for <barebox@lists.infradead.org>; Sat, 23 Nov 2013 11:58:34 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 23 Nov 2013 20:58:24 +0100
Message-Id: <1385236704-2309-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
References: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/2] OMAP4: fix omap4_bootsource regression
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

---
 arch/arm/mach-omap/omap4_generic.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 64b0024..6da5cae 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -499,20 +499,18 @@ static int omap_vector_init(void)
 	return 0;
 }
 
-#define OMAP4_TRACING_VECTOR3 0x4030d048
-
 static int omap4_bootsource(void)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
+	enum bootsource src;
 
 	switch (omap_bootinfo[2] & 0xFF) {
-	case 0x03:
+	case OMAP44XX_SAR_BOOT_NAND:
 		src = BOOTSOURCE_NAND;
 		break;
-	case 0x05:
+	case OMAP44XX_SAR_BOOT_MMC1:
 		src = BOOTSOURCE_MMC;
 		break;
-	case 0x20:
+	case OMAP44XX_SAR_BOOT_USB_1:
 		src = BOOTSOURCE_USB;
 		break;
 	default:
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
