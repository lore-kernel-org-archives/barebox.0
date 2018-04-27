Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGw-0007OW-1N
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:19 +0000
Received: by mail-pf0-x241.google.com with SMTP id a11so655543pfn.9
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:45 -0700
Message-Id: <20180427054946.11687-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180427054946.11687-1-andrew.smirnov@gmail.com>
References: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] ARM: i.MX53: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx53.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 2758f1bbc..56f1bda75 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -21,6 +21,7 @@
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
+#include <mach/reset-reason.h>
 
 #define SI_REV 0x48
 
@@ -52,7 +53,10 @@ static int imx53_silicon_revision(void)
 
 int imx53_init(void)
 {
+	void __iomem *src = IOMEM(MX53_SRC_BASE_ADDR);
+
 	imx53_silicon_revision();
+	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
 	imx53_boot_save_loc();
 	add_generic_device("imx53-esdctl", 0, NULL, MX53_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
