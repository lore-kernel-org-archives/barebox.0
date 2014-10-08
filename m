Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xbrqx-0006Ga-Uj
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:04:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:03:59 +0200
Message-Id: <1412777041-23714-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
References: <1412777041-23714-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: nitrogen6x: Fix Duallite RAM Timing
To: barebox@lists.infradead.org

The i.MX6DL only supports up to 800MHz RAM timing, so add the corresponding
file from U-Boot and use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../800mhz_4x128mx16.imxcfg                        | 50 ++++++++++++++++++++++
 .../flash-header-nitrogen6dl-1g.imxcfg             |  2 +-
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg
new file mode 100644
index 0000000..936a2f5
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/800mhz_4x128mx16.imxcfg
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002D
+wm 32 MX6_MMDC_P0_MDCFG0 0x40435323
+wm 32 MX6_MMDC_P0_MDCFG1 0xB66E8D63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
+wm 32 MX6_MMDC_P0_MDOR 0x00431023
+wm 32 MX6_MMDC_P0_MDOTC 0x00333030
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556D
+wm 32 MX6_MMDC_P0_MDASP 0x00000027
+wm 32 MX6_MMDC_P0_MDCTL 0x831A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x04008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00048031
+wm 32 MX6_MMDC_P0_MDSCR 0x13208030
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xA1390003
+wm 32 MX6_MMDC_P0_MDREF 0x00005800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00022227
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x420F020F
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x01760175
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x41640171
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x015E0160
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x45464B4A
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x49484A46
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x40402E32
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x3A3A3231
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x003A003A
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x0030002F
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x002F0038
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x00270039
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
index 76fad11..d077a65 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
@@ -7,5 +7,5 @@ dcdofs 0x400
 #include <mach/imx6-ccm-regs.h>
 
 #include "ram-base.imxcfg"
-#include "1066mhz_4x128mx16.imxcfg"
+#include "800mhz_4x128mx16.imxcfg"
 #include "clocks.imxcfg"
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
