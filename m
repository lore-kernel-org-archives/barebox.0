Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006fi-U0
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:03 +0000
Received: by mail-pf0-x243.google.com with SMTP id q17so525690pfh.7
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:31 -0700
Message-Id: <20180421010538.16488-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/10] ARM: i.MX6: Record reset reason as a part of startup
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c                      | 13 ++++++++++++-
 arch/arm/mach-imx/include/mach/reset-reason.h |  2 ++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 88165adee..49610bf08 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -19,6 +19,7 @@
 #include <mach/imx6.h>
 #include <mach/generic.h>
 #include <mach/revision.h>
+#include <mach/reset-reason.h>
 #include <mach/imx6-anadig.h>
 #include <mach/imx6-regs.h>
 #include <mach/generic.h>
@@ -173,10 +174,20 @@ int imx6_cpu_revision(void)
 	return soc_revision;
 }
 
+static const struct imx_reset_reason imx6_reset_reasons[] = {
+	{ IMX_SRC_SRSR_IPP_RESET,     RESET_POR,  0 },
+	{ IMX_SRC_SRSR_WDOG1_RESET,   RESET_WDG,  0 },
+	{ IMX_SRC_SRSR_JTAG_RESET,    RESET_JTAG, 0 },
+	{ IMX_SRC_SRSR_JTAG_SW_RESET, RESET_JTAG, 0 },
+	{ IMX_SRC_SRSR_WARM_BOOT,     RESET_RST,  0 },
+	{ /* sentinel */ }
+};
+
 int imx6_init(void)
 {
 	const char *cputypestr;
 	u32 mx6_silicon_revision;
+	void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
 
 	imx6_init_lowlevel();
 
@@ -221,7 +232,7 @@ int imx6_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
-
+	imx_set_reset_reason(src + IMX6_SRC_SRSR, imx6_reset_reasons);
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();
 
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 39afc4b28..f2544a303 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -14,6 +14,8 @@
 #define IMX_SRC_SRSR_TEMPSENSE_RESET	BIT(9)
 #define IMX_SRC_SRSR_WARM_BOOT		BIT(16)
 
+#define IMX6_SRC_SRSR	0x008
+
 struct imx_reset_reason {
 	uint32_t mask;
 	enum reset_src_type type;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
