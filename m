Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034m-B5
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:17 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-JU
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:36 +0100
Message-Id: <1446827139-339-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/7] ARM: microsom: import DCD from SolidRun U-Boot
To: barebox@lists.infradead.org

This is a complete set of DRAM configuration values for all of the
MicroSOM variants extracted from SolidRun U-Boot.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../solidrun-microsom/1066mhz-4x128mx16.imxcfg     | 70 +++++++++++++++++++
 .../solidrun-microsom/1066mhz-4x256mx16.imxcfg     | 70 +++++++++++++++++++
 .../boards/solidrun-microsom/1066mhz-64b.imxcfg    | 58 ++++++++++++++++
 .../solidrun-microsom/800mhz-2x128mx16.imxcfg      | 55 +++++++++++++++
 .../arm/boards/solidrun-microsom/800mhz-32b.imxcfg | 59 ++++++++++++++++
 .../solidrun-microsom/800mhz-4x128mx16.imxcfg      | 64 ++++++++++++++++++
 .../arm/boards/solidrun-microsom/800mhz-64b.imxcfg | 57 ++++++++++++++++
 .../flash-header-microsom-i1.imxcfg                |  9 +++
 .../flash-header-microsom-i2.imxcfg                |  9 +++
 .../flash-header-microsom-i2eX.imxcfg              |  9 +++
 .../flash-header-microsom-i4.imxcfg                |  9 +++
 .../flash-header-solidrun-hummingboard.imxcfg      | 79 ----------------------
 images/Makefile.imx                                |  2 +-
 13 files changed, 470 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm/boards/solidrun-microsom/1066mhz-4x128mx16.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/1066mhz-4x256mx16.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/1066mhz-64b.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/800mhz-2x128mx16.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/800mhz-32b.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/800mhz-4x128mx16.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/800mhz-64b.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
 create mode 100644 arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
 delete mode 100644 arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg

diff --git a/arch/arm/boards/solidrun-microsom/1066mhz-4x128mx16.imxcfg b/arch/arm/boards/solidrun-microsom/1066mhz-4x128mx16.imxcfg
new file mode 100644
index 000000000000..6902fe113f5c
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/1066mhz-4x128mx16.imxcfg
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x00000000
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x00000000
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x00000000
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x00000000
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x0314031c
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x023e0304
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x03240330
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x03180260
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x3630323c
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x3436283a
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x36344038
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x422a423c
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDPDC 0x00025576
+wm 32 MX6_MMDC_P0_MDOTC 0x09444040
+wm 32 MX6_MMDC_P0_MDCFG0 0x54597955
+wm 32 MX6_MMDC_P0_MDCFG1 0xFF328F64
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDMISC 0x00011740
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+wm 32 MX6_MMDC_P0_MDRWD 0x000026d2
+wm 32 MX6_MMDC_P0_MDOR 0x005B0E21
+wm 32 MX6_MMDC_P0_MDASP 0x00000027
+wm 32 MX6_MMDC_P0_MAARCR 0x11420000
+wm 32 MX6_MMDC_P0_MDCTL 0x831A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x02088032
+wm 32 MX6_MMDC_P0_MDSCR 0x0208803A
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x0000803B
+wm 32 MX6_MMDC_P0_MDSCR 0x00408031
+wm 32 MX6_MMDC_P0_MDSCR 0x00408039
+wm 32 MX6_MMDC_P0_MDSCR 0x09408030
+wm 32 MX6_MMDC_P0_MDSCR 0x09408038
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MDSCR 0x04008048
+wm 32 MX6_MMDC_P0_MDREF 0x00005800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/solidrun-microsom/1066mhz-4x256mx16.imxcfg b/arch/arm/boards/solidrun-microsom/1066mhz-4x256mx16.imxcfg
new file mode 100644
index 000000000000..ac336e532b4b
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/1066mhz-4x256mx16.imxcfg
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x00000000
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x00000000
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x00000000
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x00000000
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x0314031c
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x023e0304
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x03240330
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x03180260
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x3630323c
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x3436283a
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x36344038
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x422a423c
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDPDC 0x00025576
+wm 32 MX6_MMDC_P0_MDOTC 0x09444040
+wm 32 MX6_MMDC_P0_MDCFG0 0x898E7975
+wm 32 MX6_MMDC_P0_MDCFG1 0xFF328F64
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDMISC 0x00011740
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+wm 32 MX6_MMDC_P0_MDRWD 0x000026d2
+wm 32 MX6_MMDC_P0_MDOR 0x005B0E21
+wm 32 MX6_MMDC_P0_MDASP 0x00000047
+wm 32 MX6_MMDC_P0_MAARCR 0x11420000
+wm 32 MX6_MMDC_P0_MDCTL 0x841A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x02088032
+wm 32 MX6_MMDC_P0_MDSCR 0x0208803A
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x0000803B
+wm 32 MX6_MMDC_P0_MDSCR 0x00408031
+wm 32 MX6_MMDC_P0_MDSCR 0x00408039
+wm 32 MX6_MMDC_P0_MDSCR 0x09408030
+wm 32 MX6_MMDC_P0_MDSCR 0x09408038
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MDSCR 0x04008048
+wm 32 MX6_MMDC_P0_MDREF 0x00005800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
diff --git a/arch/arm/boards/solidrun-microsom/1066mhz-64b.imxcfg b/arch/arm/boards/solidrun-microsom/1066mhz-64b.imxcfg
new file mode 100644
index 000000000000..c8e5a0ced153
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/1066mhz-64b.imxcfg
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
+wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
+wm 32 MX6_IOM_DRAM_SDCLK_0 0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_1 0x00020030
+wm 32 MX6_IOM_DRAM_CAS 0x00020030
+wm 32 MX6_IOM_DRAM_RAS 0x00020030
+wm 32 MX6_IOM_GRP_ADDDS 0x00000030
+wm 32 MX6_IOM_DRAM_RESET 0x00020030
+wm 32 MX6_IOM_DRAM_SDCKE0 0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1 0x00003000
+wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
+wm 32 MX6_IOM_DRAM_SDODT0 0x00003030
+wm 32 MX6_IOM_DRAM_SDODT1 0x00003030
+wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
+wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS1 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS2 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS3 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS4 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS5 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS6 0x00000030
+wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
+wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
+wm 32 MX6_IOM_GRP_B0DS 0x00000030
+wm 32 MX6_IOM_GRP_B1DS 0x00000030
+wm 32 MX6_IOM_GRP_B2DS 0x00000030
+wm 32 MX6_IOM_GRP_B3DS 0x00000030
+wm 32 MX6_IOM_GRP_B4DS 0x00000030
+wm 32 MX6_IOM_GRP_B5DS 0x00000030
+wm 32 MX6_IOM_GRP_B6DS 0x00000030
+wm 32 MX6_IOM_GRP_B7DS 0x00000030
+wm 32 MX6_IOM_DRAM_DQM0 0x00020030
+wm 32 MX6_IOM_DRAM_DQM1 0x00020030
+wm 32 MX6_IOM_DRAM_DQM2 0x00020030
+wm 32 MX6_IOM_DRAM_DQM3 0x00020030
+wm 32 MX6_IOM_DRAM_DQM4 0x00020030
+wm 32 MX6_IOM_DRAM_DQM5 0x00020030
+wm 32 MX6_IOM_DRAM_DQM6 0x00020030
+wm 32 MX6_IOM_DRAM_DQM7 0x00020030
diff --git a/arch/arm/boards/solidrun-microsom/800mhz-2x128mx16.imxcfg b/arch/arm/boards/solidrun-microsom/800mhz-2x128mx16.imxcfg
new file mode 100644
index 000000000000..affb011dd9c0
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/800mhz-2x128mx16.imxcfg
@@ -0,0 +1,55 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x005a0057
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x004a0052
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x02480240
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x02340230
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x40404440
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x38343034
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002d
+wm 32 MX6_MMDC_P0_MDOTC 0x00333040
+wm 32 MX6_MMDC_P0_MDCFG0 0x3f435313
+wm 32 MX6_MMDC_P0_MDCFG1 0xb66e8b63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00db
+wm 32 MX6_MMDC_P0_MDMISC 0x00011740
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+wm 32 MX6_MMDC_P0_MDRWD 0x000026d2
+wm 32 MX6_MMDC_P0_MDOR 0x00431023
+wm 32 MX6_MMDC_P0_MDASP 0x00000017
+wm 32 MX6_MMDC_P0_MAARCR 0x11420000
+wm 32 MX6_MMDC_P0_MDCTL 0x83190000
+wm 32 MX6_MMDC_P0_MDSCR 0x00008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x00008031
+wm 32 MX6_MMDC_P0_MDSCR 0x05208030
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MDREF 0x00007800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556d
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
diff --git a/arch/arm/boards/solidrun-microsom/800mhz-32b.imxcfg b/arch/arm/boards/solidrun-microsom/800mhz-32b.imxcfg
new file mode 100644
index 000000000000..91322f460396
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/800mhz-32b.imxcfg
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
+wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
+wm 32 MX6_IOM_DRAM_SDCLK_0 0x00000028
+wm 32 MX6_IOM_DRAM_SDCLK_1 0x00000028
+wm 32 MX6_IOM_DRAM_CAS 0x00000010
+wm 32 MX6_IOM_DRAM_RAS 0x00000010
+wm 32 MX6_IOM_GRP_ADDDS 0x00000010
+wm 32 MX6_IOM_DRAM_RESET 0x00000010
+wm 32 MX6_IOM_DRAM_SDCKE0 0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1 0x00003000
+wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
+wm 32 MX6_IOM_DRAM_SDODT0 0x00000010
+wm 32 MX6_IOM_DRAM_SDODT1 0x00000010
+wm 32 MX6_IOM_GRP_CTLDS 0x00000010
+wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
+wm 32 MX6_IOM_DRAM_SDQS0 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS1 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS2 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS3 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS4 0x00000000
+wm 32 MX6_IOM_DRAM_SDQS5 0x00000000
+wm 32 MX6_IOM_DRAM_SDQS6 0x00000000
+wm 32 MX6_IOM_DRAM_SDQS7 0x00000000
+wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
+wm 32 MX6_IOM_GRP_B0DS 0x00000028
+wm 32 MX6_IOM_GRP_B1DS 0x00000028
+wm 32 MX6_IOM_GRP_B2DS 0x00000028
+wm 32 MX6_IOM_GRP_B3DS 0x00000028
+wm 32 MX6_IOM_GRP_B4DS 0x00000000
+wm 32 MX6_IOM_GRP_B5DS 0x00000000
+wm 32 MX6_IOM_GRP_B6DS 0x00000000
+wm 32 MX6_IOM_GRP_B7DS 0x00000000
+wm 32 MX6_IOM_DRAM_DQM0 0x00000028
+wm 32 MX6_IOM_DRAM_DQM1 0x00000028
+wm 32 MX6_IOM_DRAM_DQM2 0x00000028
+wm 32 MX6_IOM_DRAM_DQM3 0x00000028
+wm 32 MX6_IOM_DRAM_DQM4 0x00000000
+wm 32 MX6_IOM_DRAM_DQM5 0x00000000
+wm 32 MX6_IOM_DRAM_DQM6 0x00000000
+wm 32 MX6_IOM_DRAM_DQM7 0x00000000
diff --git a/arch/arm/boards/solidrun-microsom/800mhz-4x128mx16.imxcfg b/arch/arm/boards/solidrun-microsom/800mhz-4x128mx16.imxcfg
new file mode 100644
index 000000000000..384e6fde429d
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/800mhz-4x128mx16.imxcfg
@@ -0,0 +1,64 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390003
+wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x0045004D
+wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x003A0047
+wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x001F001F
+wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x00210035
+wm 32 MX6_MMDC_P0_MPDGCTRL0 0x023C0224
+wm 32 MX6_MMDC_P0_MPDGCTRL1 0x02000220
+wm 32 MX6_MMDC_P1_MPDGCTRL0 0x02200220
+wm 32 MX6_MMDC_P1_MPDGCTRL1 0x02040208
+wm 32 MX6_MMDC_P0_MPRDDLCTL 0x44444846
+wm 32 MX6_MMDC_P1_MPRDDLCTL 0x4042463C
+wm 32 MX6_MMDC_P0_MPWRDLCTL 0x32343032
+wm 32 MX6_MMDC_P1_MPWRDLCTL 0x36363430
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
+wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
+wm 32 MX6_MMDC_P0_MDPDC 0x0002002d
+wm 32 MX6_MMDC_P0_MDOTC 0x00333040
+wm 32 MX6_MMDC_P0_MDCFG0 0x3F4352F3
+wm 32 MX6_MMDC_P0_MDCFG1 0xB66D8B63
+wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
+wm 32 MX6_MMDC_P0_MDMISC 0x00011740
+wm 32 MX6_MMDC_P0_MDSCR 0x00008000
+wm 32 MX6_MMDC_P0_MDRWD 0x000026d2
+wm 32 MX6_MMDC_P0_MDOR 0x00431023
+wm 32 MX6_MMDC_P0_MDASP 0x00000027
+wm 32 MX6_MMDC_P0_MDCTL 0x831A0000
+wm 32 MX6_MMDC_P0_MDSCR 0x02008032
+wm 32 MX6_MMDC_P0_MDSCR 0x00008033
+wm 32 MX6_MMDC_P0_MDSCR 0x04008031
+wm 32 MX6_MMDC_P0_MDSCR 0x05208030
+wm 32 MX6_MMDC_P0_MDSCR 0x04008040
+wm 32 MX6_MMDC_P0_MDREF 0x00007800
+wm 32 MX6_MMDC_P0_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P1_MPODTCTRL 0x00000007
+wm 32 MX6_MMDC_P0_MDPDC 0x0002556d
+wm 32 MX6_MMDC_P0_MAPSR 0x00011006
+wm 32 MX6_MMDC_P0_MDSCR 0x00000000
diff --git a/arch/arm/boards/solidrun-microsom/800mhz-64b.imxcfg b/arch/arm/boards/solidrun-microsom/800mhz-64b.imxcfg
new file mode 100644
index 000000000000..021b40b9ef2a
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/800mhz-64b.imxcfg
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Boundary Devices
+ * Copyright (C) 2013 SolidRun ltd.
+ * Copyright (C) 2013 Jon Nettleton <jon.nettleton@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+wm 32 MX6_IOM_GRP_DDR_TYPE 0x000c0000
+wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
+wm 32 MX6_IOM_DRAM_SDCLK_0 0x00000028
+wm 32 MX6_IOM_DRAM_SDCLK_1 0x00000028
+wm 32 MX6_IOM_DRAM_CAS 0x00000028
+wm 32 MX6_IOM_DRAM_RAS 0x00000028
+wm 32 MX6_IOM_GRP_ADDDS 0x00000028
+wm 32 MX6_IOM_DRAM_RESET 0x00000028
+wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
+wm 32 MX6_IOM_DRAM_SDODT0 0x00000028
+wm 32 MX6_IOM_DRAM_SDODT1 0x00000028
+wm 32 MX6_IOM_GRP_CTLDS 0x00000028
+wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
+wm 32 MX6_IOM_DRAM_SDQS0 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS1 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS2 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS3 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS4 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS5 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS6 0x00000028
+wm 32 MX6_IOM_DRAM_SDQS7 0x00000028
+wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
+wm 32 MX6_IOM_GRP_B0DS 0x00000028
+wm 32 MX6_IOM_GRP_B1DS 0x00000028
+wm 32 MX6_IOM_GRP_B2DS 0x00000028
+wm 32 MX6_IOM_GRP_B3DS 0x00000028
+wm 32 MX6_IOM_GRP_B4DS 0x00000028
+wm 32 MX6_IOM_GRP_B5DS 0x00000028
+wm 32 MX6_IOM_GRP_B6DS 0x00000028
+wm 32 MX6_IOM_GRP_B7DS 0x00000028
+wm 32 MX6_IOM_DRAM_DQM0 0x00000028
+wm 32 MX6_IOM_DRAM_DQM1 0x00000028
+wm 32 MX6_IOM_DRAM_DQM2 0x00000028
+wm 32 MX6_IOM_DRAM_DQM3 0x00000028
+wm 32 MX6_IOM_DRAM_DQM4 0x00000028
+wm 32 MX6_IOM_DRAM_DQM5 0x00000028
+wm 32 MX6_IOM_DRAM_DQM6 0x00000028
+wm 32 MX6_IOM_DRAM_DQM7 0x00000028
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
new file mode 100644
index 000000000000..eb7bc8486dae
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i1.imxcfg
@@ -0,0 +1,9 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6dl-ddr-regs.h>
+
+#include "800mhz-32b.imxcfg"
+#include "800mhz-2x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
new file mode 100644
index 000000000000..8930012885a9
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2.imxcfg
@@ -0,0 +1,9 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6dl-ddr-regs.h>
+
+#include "800mhz-64b.imxcfg"
+#include "800mhz-4x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
new file mode 100644
index 000000000000..4eb937a71797
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i2eX.imxcfg
@@ -0,0 +1,9 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6q-ddr-regs.h>
+
+#include "1066mhz-64b.imxcfg"
+#include "1066mhz-4x128mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
new file mode 100644
index 000000000000..438bd8ea4d7c
--- /dev/null
+++ b/arch/arm/boards/solidrun-microsom/flash-header-microsom-i4.imxcfg
@@ -0,0 +1,9 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6q-ddr-regs.h>
+
+#include "1066mhz-64b.imxcfg"
+#include "1066mhz-4x256mx16.imxcfg"
diff --git a/arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg b/arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
deleted file mode 100644
index b1856b49ce1b..000000000000
--- a/arch/arm/boards/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
+++ /dev/null
@@ -1,79 +0,0 @@
-loadaddr 0x10000000
-soc imx6
-dcdofs 0x400
-wm 32 0x020e0774 0x000c0000
-wm 32 0x020e0754 0x00000000
-wm 32 0x020e04ac 0x00000030
-wm 32 0x020e04b0 0x00000030
-wm 32 0x020e0464 0x00000030
-wm 32 0x020e0490 0x00000030
-wm 32 0x020e074c 0x00000030
-wm 32 0x020e0494 0x00000030
-wm 32 0x020e04a4 0x00003000
-wm 32 0x020e04a8 0x00003000
-wm 32 0x020e04a0 0x00000000
-wm 32 0x020e04b4 0x00003030
-wm 32 0x020e04b8 0x00003030
-wm 32 0x020e076c 0x00000030
-wm 32 0x020e0750 0x00000000
-wm 32 0x020e04bc 0x00000030
-wm 32 0x020e04c0 0x00000030
-wm 32 0x020e04c4 0x00000030
-wm 32 0x020e04c8 0x00000030
-wm 32 0x020e04cc 0x00000000
-wm 32 0x020e04d0 0x00000000
-wm 32 0x020e04d4 0x00000000
-wm 32 0x020e04d8 0x00000000
-wm 32 0x020e0760 0x00000000
-wm 32 0x020e0764 0x00000030
-wm 32 0x020e0770 0x00000030
-wm 32 0x020e0778 0x00000030
-wm 32 0x020e077c 0x00000030
-wm 32 0x020e0780 0x00000000
-wm 32 0x020e0784 0x00000000
-wm 32 0x020e078c 0x00000000
-wm 32 0x020e0748 0x00000000
-wm 32 0x020e0470 0x00000030
-wm 32 0x020e0474 0x00000030
-wm 32 0x020e0478 0x00000030
-wm 32 0x020e047c 0x00000030
-wm 32 0x020e0480 0x00000000
-wm 32 0x020e0484 0x00000000
-wm 32 0x020e0488 0x00000000
-wm 32 0x020e048c 0x00000000
-wm 32 0x021b0800 0xa1390003
-wm 32 0x021b4800 0xa1390003
-wm 32 0x021b080c 0x000F0011
-wm 32 0x021b0810 0x000E000F
-wm 32 0x021b083c 0x42240229
-wm 32 0x021b0840 0x021a0219
-wm 32 0x021b0848 0x4e4f5150
-wm 32 0x021b0850 0x35363136
-wm 32 0x021b081c 0x33333333
-wm 32 0x021b0820 0x33333333
-wm 32 0x021b0824 0x33333333
-wm 32 0x021b0828 0x33333333
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-wm 32 0x021b0004 0x0002002d
-wm 32 0x021b0008 0x00333030
-wm 32 0x021b000c 0x40445323
-wm 32 0x021b0010 0xb68e8c63
-wm 32 0x021b0014 0x01ff00db
-wm 32 0x021b0018 0x00001740
-wm 32 0x021b001c 0x00008000
-wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x00440e21
-wm 32 0x021b0040 0x00000017
-wm 32 0x021b0400 0x11420000
-wm 32 0x021b0000 0x83190000
-wm 32 0x021b001c 0x04008032
-wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x07208030
-wm 32 0x021b001c 0x04008040
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00000007
-wm 32 0x021b0004 0x0002556d
-wm 32 0x021b0404 0x00011006
-wm 32 0x021b001c 0x00000000
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e47b7a40594d..3b8d6577ed99 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -203,7 +203,7 @@ FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
 
 pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
-CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
+CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-microsom-i1.imxcfg
 FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
