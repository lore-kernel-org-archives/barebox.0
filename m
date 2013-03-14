Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7C-0003fV-5e
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:39:00 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:43 +0100
Message-Id: <1363282729-18545-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 04/10] ARM i.MX bootsource: rename imx_27_boot_save_loc ->
 imx27_boot_save_loc
To: barebox@lists.infradead.org

This patch renames imx_27_boot_save_loc() to imx27_boot_save_loc(), so that all
imx*_boot_save_loc() functions follow the same nameing sheme.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/boot.c                 | 2 +-
 arch/arm/mach-imx/imx27.c                | 2 +-
 arch/arm/mach-imx/include/mach/generic.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 37f1180..473b9d1 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -114,7 +114,7 @@ void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type)
 #define IMX27_GPCR_BOOT_32BIT_CS0		6
 #define IMX27_GPCR_BOOT_8BIT_NAND_512		7
 
-void imx_27_boot_save_loc(void __iomem *sysctrl_base)
+void imx27_boot_save_loc(void __iomem *sysctrl_base)
 {
 	enum imx_bootsource src;
 	uint32_t val;
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 6d30276..7615b98 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -99,7 +99,7 @@ static void imx27_init_max(void)
 static int imx27_init(void)
 {
 	imx27_silicon_revision();
-	imx_27_boot_save_loc((void *)MX27_SYSCTRL_BASE_ADDR);
+	imx27_boot_save_loc((void *)MX27_SYSCTRL_BASE_ADDR);
 
 	imx_iomuxv1_init((void *)MX27_GPIO1_BASE_ADDR);
 
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index e6edb94..d39369b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -17,7 +17,7 @@ enum imx_bootsource imx_bootsource(void);
 void imx_set_bootsource(enum imx_bootsource src);
 
 void imx_25_35_boot_save_loc(unsigned int ctrl, unsigned int type);
-void imx_27_boot_save_loc(void __iomem *sysctrl_base);
+void imx27_boot_save_loc(void __iomem *sysctrl_base);
 void imx51_boot_save_loc(void __iomem *src_base);
 void imx53_boot_save_loc(void __iomem *src_base);
 void imx6_boot_save_loc(void __iomem *src_base);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
