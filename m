Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fv0Uf-0000v0-VX
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 13:26:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1fv0UU-0001QH-9G
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 15:26:34 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mgr@pengutronix.de>) id 1fv0UU-0008Rt-1G
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 15:26:34 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 29 Aug 2018 15:26:32 +0200
Message-Id: <20180829132632.28601-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] arm: mach-imx: remove unused header
To: barebox@lists.infradead.org

The defines are also in mach/clocks-imx6.h prefixed
with MXC instead of MX6.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 .../flash-header-nitrogen6dl-1g.imxcfg        |  1 -
 .../flash-header-nitrogen6dl-2g.imxcfg        |  1 -
 .../flash-header-nitrogen6q-1g.imxcfg         |  1 -
 .../flash-header-nitrogen6q-2g.imxcfg         |  1 -
 .../flash-header-nitrogen6qp-max.imxcfg       |  1 -
 .../flash-header-ventana-quad-1gx64.imxcfg    |  1 -
 .../karo-tx6x/flash-header-tx6dl-1g.imxcfg    |  1 -
 .../arm/mach-imx/include/mach/imx6-ccm-regs.h | 24 -------------------
 8 files changed, 31 deletions(-)
 delete mode 100644 arch/arm/mach-imx/include/mach/imx6-ccm-regs.h

diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
index 0773f4d276..47b572db46 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-1g.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "800mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
index 6622c517fa..cf3716dbaa 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6dl-2g.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "800mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
index bd4134f8a9..8ed987daa8 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-1g.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
index 89aa21c300..e6d97d11c1 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6q-2g.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x256mx16.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
index 66f0e1a860..50bbfc5bdd 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6/flash-header-nitrogen6qp-max.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1066mhz_4x512mx16-qp.imxcfg"
diff --git a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
index f4506f1da5..b9a6fc12ff 100644
--- a/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
+++ b/arch/arm/boards/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6q-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "quad_128x64.imxcfg"
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
index 2a1c42aeed..b7a914fba5 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-1g.imxcfg
@@ -4,7 +4,6 @@ dcdofs 0x400
 
 #include <mach/imx6-ddr-regs.h>
 #include <mach/imx6dl-ddr-regs.h>
-#include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
 #include "1600mhz_4x128mx16.imxcfg"
diff --git a/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
deleted file mode 100644
index 099d5621de..0000000000
--- a/arch/arm/mach-imx/include/mach/imx6-ccm-regs.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/*
- * Copyright (C) Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#define MX6_CCM_CCOSR		0x020c4060
-#define MX6_CCM_CCGR0		0x020C4068
-#define MX6_CCM_CCGR1		0x020C406c
-#define MX6_CCM_CCGR2		0x020C4070
-#define MX6_CCM_CCGR3		0x020C4074
-#define MX6_CCM_CCGR4		0x020C4078
-#define MX6_CCM_CCGR5		0x020C407c
-#define MX6_CCM_CCGR6		0x020C4080
-
-#define MX6_PMU_MISC2		0x020C8170
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
