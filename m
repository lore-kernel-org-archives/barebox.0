Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGx-0007dP-Ja
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:21 +0000
Received: by mail-pg0-x244.google.com with SMTP id p10-v6so713602pgn.1
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:46 -0700
Message-Id: <20180427054946.11687-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] ARM: i.MX51: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx51.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 13444ccdb..ec8cdd868 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -21,6 +21,7 @@
 #include <mach/revision.h>
 #include <mach/clock-imx51_53.h>
 #include <mach/generic.h>
+#include <mach/reset-reason.h>
 
 #define IIM_SREV 0x24
 
@@ -57,7 +58,10 @@ static void imx51_ipu_mipi_setup(void)
 
 int imx51_init(void)
 {
+	void __iomem *src = IOMEM(MX51_SRC_BASE_ADDR);
+
 	imx_set_silicon_revision("i.MX51", imx51_silicon_revision());
+	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
 	imx51_boot_save_loc();
 	add_generic_device("imx51-esdctl", 0, NULL, MX51_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	imx51_ipu_mipi_setup();
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
