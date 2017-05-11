Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k6f-0006MN-Gy
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:09:58 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D447AA0022F
 for <barebox@lists.infradead.org>; Thu, 11 May 2017 11:10:18 +0200 (CEST)
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Thu, 11 May 2017 11:09:26 +0200
Message-Id: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 1/3] ARM: i.MX: Add i.MX6 ULL support
To: barebox@lists.infradead.org

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/mach-imx/imx.c               | 2 ++
 arch/arm/mach-imx/imx6.c              | 3 +++
 arch/arm/mach-imx/include/mach/imx6.h | 2 ++
 3 files changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 1990739..9400105 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -67,6 +67,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx6ul"))
 		return IMX_CPU_IMX6;
+	if (of_machine_is_compatible("fsl,imx6ull"))
+		return IMX_CPU_IMX6;
 	if (of_machine_is_compatible("fsl,imx7s"))
 		return IMX_CPU_IMX7;
 	if (of_machine_is_compatible("fsl,imx7d"))
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 44a8dbe..7b3fc1d 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -160,6 +160,9 @@ int imx6_init(void)
 	case IMX6_CPUTYPE_IMX6UL:
 		cputypestr = "i.MX6 UltraLite";
 		break;
+	case IMX6_CPUTYPE_IMX6ULL:
+		cputypestr = "i.MX6 ULL";
+		break;
 	default:
 		cputypestr = "unknown i.MX6";
 		break;
diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 327676b..6ad5343 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -18,6 +18,7 @@ void imx6_init_lowlevel(void);
 #define IMX6_CPUTYPE_IMX6D	0x263
 #define IMX6_CPUTYPE_IMX6Q	0x463
 #define IMX6_CPUTYPE_IMX6UL	0x164
+#define IMX6_CPUTYPE_IMX6ULL	0x165
 
 #define SCU_CONFIG              0x04
 
@@ -82,6 +83,7 @@ DEFINE_MX6_CPU_TYPE(mx6d, IMX6_CPUTYPE_IMX6D);
 DEFINE_MX6_CPU_TYPE(mx6sx, IMX6_CPUTYPE_IMX6SX);
 DEFINE_MX6_CPU_TYPE(mx6sl, IMX6_CPUTYPE_IMX6SL);
 DEFINE_MX6_CPU_TYPE(mx6ul, IMX6_CPUTYPE_IMX6UL);
+DEFINE_MX6_CPU_TYPE(mx6ull, IMX6_CPUTYPE_IMX6ULL);
 
 static inline int __imx6_cpu_revision(void)
 {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
