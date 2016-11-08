Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4A3W-00062J-On
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 17:19:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2016 18:19:01 +0100
Message-Id: <20161108171907.20726-2-s.hauer@pengutronix.de>
In-Reply-To: <20161108171907.20726-1-s.hauer@pengutronix.de>
References: <20161108171907.20726-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] ARM: i.MX: beginning i.MX6ul support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig             | 4 ++++
 arch/arm/mach-imx/imx.c               | 2 ++
 arch/arm/mach-imx/imx6.c              | 3 +++
 arch/arm/mach-imx/include/mach/imx6.h | 2 ++
 4 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a80bc6b..b315f7d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -149,6 +149,10 @@ config ARCH_IMX6SX
 	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
 
+config ARCH_IMX6UL
+	bool
+	select ARCH_IMX6
+
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 5ab6afc..1d3f18c 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -63,6 +63,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6qp"))
 		return IMX_CPU_IMX6;
+	if (of_machine_is_compatible("fsl,imx6ul"))
+		return IMX_CPU_IMX6;
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 18509a7..b242230 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -179,6 +179,9 @@ int imx6_init(void)
 	case IMX6_CPUTYPE_IMX6SX:
 		cputypestr = "i.MX6 SoloX";
 		break;
+	case IMX6_CPUTYPE_IMX6UL:
+		cputypestr = "i.MX6 UltraLite";
+		break;
 	default:
 		cputypestr = "unknown i.MX6";
 		break;
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index e8ffa47..1d70d39 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -14,6 +14,7 @@ void imx6_init_lowlevel(void);
 #define IMX6_CPUTYPE_IMX6SX	0x462
 #define IMX6_CPUTYPE_IMX6D	0x263
 #define IMX6_CPUTYPE_IMX6Q	0x463
+#define IMX6_CPUTYPE_IMX6UL	0x164
 
 #define SCU_CONFIG              0x04
 
@@ -66,5 +67,6 @@ DEFINE_MX6_CPU_TYPE(mx6dl, IMX6_CPUTYPE_IMX6DL);
 DEFINE_MX6_CPU_TYPE(mx6q, IMX6_CPUTYPE_IMX6Q);
 DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
 DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
+DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
 
 #endif /* __MACH_IMX6_H */
-- 
2.10.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
