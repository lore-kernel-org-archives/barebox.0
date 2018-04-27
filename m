Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGt-00070o-AX
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:17 +0000
Received: by mail-pf0-x244.google.com with SMTP id v63so656614pfk.8
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:43 -0700
Message-Id: <20180427054946.11687-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] ARM: i.MX: Make imx6_reset_reasons global
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both i.MX51 and i.MX53 have exactly the same reset source mapping, so
rename imx6_reset_reasons to imx_reset_reasons and make it a globally
visible constant so it could be shared.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx.c                       |  9 +++++++++
 arch/arm/mach-imx/imx6.c                      | 11 +----------
 arch/arm/mach-imx/include/mach/reset-reason.h |  2 ++
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index bf15f0b06..1b4c1b3df 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -153,6 +153,15 @@ static int imx_init(void)
 }
 postcore_initcall(imx_init);
 
+const struct imx_reset_reason imx_reset_reasons[] = {
+	{ IMX_SRC_SRSR_IPP_RESET,     RESET_POR,  0 },
+	{ IMX_SRC_SRSR_WDOG1_RESET,   RESET_WDG,  0 },
+	{ IMX_SRC_SRSR_JTAG_RESET,    RESET_JTAG, 0 },
+	{ IMX_SRC_SRSR_JTAG_SW_RESET, RESET_JTAG, 0 },
+	{ IMX_SRC_SRSR_WARM_BOOT,     RESET_RST,  0 },
+	{ /* sentinel */ }
+};
+
 void imx_set_reset_reason(void __iomem *srsr,
 			  const struct imx_reset_reason *reasons)
 {
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 49610bf08..dc09088ab 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -174,15 +174,6 @@ int imx6_cpu_revision(void)
 	return soc_revision;
 }
 
-static const struct imx_reset_reason imx6_reset_reasons[] = {
-	{ IMX_SRC_SRSR_IPP_RESET,     RESET_POR,  0 },
-	{ IMX_SRC_SRSR_WDOG1_RESET,   RESET_WDG,  0 },
-	{ IMX_SRC_SRSR_JTAG_RESET,    RESET_JTAG, 0 },
-	{ IMX_SRC_SRSR_JTAG_SW_RESET, RESET_JTAG, 0 },
-	{ IMX_SRC_SRSR_WARM_BOOT,     RESET_RST,  0 },
-	{ /* sentinel */ }
-};
-
 int imx6_init(void)
 {
 	const char *cputypestr;
@@ -232,7 +223,7 @@ int imx6_init(void)
 	}
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
-	imx_set_reset_reason(src + IMX6_SRC_SRSR, imx6_reset_reasons);
+	imx_set_reset_reason(src + IMX6_SRC_SRSR, imx_reset_reasons);
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();
 
diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 23e73d3b5..0894b95ab 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -34,4 +34,6 @@ struct imx_reset_reason {
 
 void imx_set_reset_reason(void __iomem *, const struct imx_reset_reason *);
 
+extern const struct imx_reset_reason imx_reset_reasons[];
+
 #endif /* __MACH_RESET_REASON_H__ */
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
