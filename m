Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKSo-0001Fv-5l
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:28:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id BF10B18B4250
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:55 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:36 +0200
Message-Id: <1397395668-9325-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 06/18] tegra: add Tegra3 ramsize detection
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h  | 21 +++++++++++++++++++++
 arch/arm/mach-tegra/tegra_maincomplex_init.c |  6 +++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index cc346a023d2c..d7b6f1e994fc 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -39,6 +39,7 @@
 
 #define T20_ODMDATA_RAMSIZE_SHIFT	28
 #define T20_ODMDATA_RAMSIZE_MASK	(3 << T20_ODMDATA_RAMSIZE_SHIFT)
+#define T30_ODMDATA_RAMSIZE_MASK	(0xf << T20_ODMDATA_RAMSIZE_SHIFT)
 #define T20_ODMDATA_UARTTYPE_SHIFT	18
 #define T20_ODMDATA_UARTTYPE_MASK	(3 << T20_ODMDATA_UARTTYPE_SHIFT)
 #define T20_ODMDATA_UARTID_SHIFT	15
@@ -124,6 +125,26 @@ uint32_t tegra20_get_ramsize(void)
 	}
 }
 
+static __always_inline
+uint32_t tegra30_get_ramsize(void)
+{
+	switch ((tegra_get_odmdata() & T30_ODMDATA_RAMSIZE_MASK) >>
+			T20_ODMDATA_RAMSIZE_SHIFT) {
+	case 0:
+	case 1:
+	default:
+		return SZ_256M;
+	case 2:
+		return SZ_512M;
+	case 3:
+		return SZ_512M + SZ_256M;
+	case 4:
+		return SZ_1G;
+	case 8:
+		return SZ_2G - SZ_1M;
+	}
+}
+
 static long uart_id_to_base[] = {
 	TEGRA_UARTA_BASE,
 	TEGRA_UARTB_BASE,
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 5aad1dd65eaa..776af64aeab9 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
@@ -41,6 +41,10 @@ void tegra_maincomplex_entry(void)
 		rambase = 0x0;
 		ramsize = tegra20_get_ramsize();
 		break;
+	case TEGRA30:
+		rambase = SZ_2G;
+		ramsize = tegra30_get_ramsize();
+		break;
 	default:
 		/* If we don't know the chiptype, better bail out */
 		unreachable();
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
