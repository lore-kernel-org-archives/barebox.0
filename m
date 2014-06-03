Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-00057B-LU
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:12 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 75D2618B425A
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:34 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:16 +0200
Message-Id: <1401827717-6420-30-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 29/30] tegra: add NVIDIA Jetson-TK1 board support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                           |    1 +
 arch/arm/boards/nvidia-jetson-tk1/Makefile         |    7 +
 arch/arm/boards/nvidia-jetson-tk1/entry.c          |   39 +
 .../nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg  | 1287 ++++++++++++++
 arch/arm/dts/Makefile                              |    4 +-
 arch/arm/dts/tegra124-jetson-tk1.dts               | 1828 ++++++++++++++++++++
 arch/arm/dts/tegra124.dtsi                         |    1 +
 arch/arm/mach-tegra/Kconfig                        |    4 +
 images/Makefile.tegra                              |   10 +
 9 files changed, 3180 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/Makefile
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/entry.c
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg
 create mode 100644 arch/arm/dts/tegra124-jetson-tk1.dts
 create mode 100644 arch/arm/dts/tegra124.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 91e0f30..39a5f31 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2/
 obj-$(CONFIG_MACH_NESO)				+= guf-neso/
 obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
 obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
+obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
 obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
diff --git a/arch/arm/boards/nvidia-jetson-tk1/Makefile b/arch/arm/boards/nvidia-jetson-tk1/Makefile
new file mode 100644
index 0000000..f1e4620
--- /dev/null
+++ b/arch/arm/boards/nvidia-jetson-tk1/Makefile
@@ -0,0 +1,7 @@
+CFLAGS_pbl-entry.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
+soc := tegra124
+lwl-y += entry.o
+#obj-y += board.o
+extra-y += jetson-tk1-2gb-emmc.bct
diff --git a/arch/arm/boards/nvidia-jetson-tk1/entry.c b/arch/arm/boards/nvidia-jetson-tk1/entry.c
new file mode 100644
index 0000000..76c95a8
--- /dev/null
+++ b/arch/arm/boards/nvidia-jetson-tk1/entry.c
@@ -0,0 +1,39 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+#include <mach/lowlevel-dvc.h>
+
+extern char __dtb_tegra124_jetson_tk1_start[];
+
+ENTRY_FUNCTION(start_nvidia_jetson, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	tegra_cpu_lowlevel_setup();
+
+	tegra_dvc_init();
+	tegra124_dvc_pinmux();
+	tegra124_as3722_enable_essential_rails(0x3c00);
+
+	fdt = (uint32_t)__dtb_tegra124_jetson_tk1_start - get_runtime_offset();
+
+	tegra_avp_reset_vector(fdt);
+}
diff --git a/arch/arm/boards/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg b/arch/arm/boards/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg
new file mode 100644
index 0000000..4bac7b0
--- /dev/null
+++ b/arch/arm/boards/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct.cfg
@@ -0,0 +1,1287 @@
+# Copyright (c) 2013-2014, NVIDIA CORPORATION.  All rights reserved.
+#
+# This software is provided 'as-is', without any express or implied
+# warranty. In no event will the authors be held liable for any damages
+# arising from the use of this software.
+#
+# Permission is granted to anyone to use this software for any purpose,
+# including commercial applications, and to alter it and redistribute it
+# freely, subject to the following restrictions:
+#
+# 1. The origin of this software must not be misrepresented; you must not
+#    claim that you wrote the original software. If you use this software
+#    in a product, an acknowledgment in the product documentation would be
+#    appreciated but is not required.
+# 2. Altered source versions must be plainly marked as such, and must not be
+#    misrepresented as being the original software.
+# 3. This notice may not be removed or altered from any source distribution.
+
+Version       = 0x00400001;
+BlockSize     = 0x00004000;
+PageSize      = 0x00000200;
+PartitionSize = 0x01000000;
+OdmData       = 0x800d8000;
+
+DevType[0] = NvBootDevType_Sdmmc;
+DeviceParam[0].SdmmcParams.ClockDivider           = 0x00000009;
+DeviceParam[0].SdmmcParams.DataWidth              = NvBootSdmmcDataWidth_8Bit;
+DeviceParam[0].SdmmcParams.MaxPowerClassSupported = 0x00000000;
+DeviceParam[0].SdmmcParams.MultiPageSupport       = 0x00000000;
+
+DevType[1] = NvBootDevType_Sdmmc;
+DeviceParam[1].SdmmcParams.ClockDivider           = 0x00000009;
+DeviceParam[1].SdmmcParams.DataWidth              = NvBootSdmmcDataWidth_8Bit;
+DeviceParam[1].SdmmcParams.MaxPowerClassSupported = 0x00000000;
+DeviceParam[1].SdmmcParams.MultiPageSupport       = 0x00000000;
+
+DevType[2] = NvBootDevType_Sdmmc;
+DeviceParam[2].SdmmcParams.ClockDivider           = 0x00000009;
+DeviceParam[2].SdmmcParams.DataWidth              = NvBootSdmmcDataWidth_8Bit;
+DeviceParam[2].SdmmcParams.MaxPowerClassSupported = 0x00000000;
+DeviceParam[2].SdmmcParams.MultiPageSupport       = 0x00000000;
+
+DevType[3] = NvBootDevType_Sdmmc;
+DeviceParam[3].SdmmcParams.ClockDivider           = 0x00000009;
+DeviceParam[3].SdmmcParams.DataWidth              = NvBootSdmmcDataWidth_8Bit;
+DeviceParam[3].SdmmcParams.MaxPowerClassSupported = 0x00000000;
+DeviceParam[3].SdmmcParams.MultiPageSupport       = 0x00000000;
+
+SDRAM[0].MemoryType                               = NvBootMemoryType_Ddr3;
+SDRAM[0].PllMInputDivider                         = 0x00000001;
+SDRAM[0].PllMFeedbackDivider                      = 0x0000004d;
+SDRAM[0].PllMStableTime                           = 0x0000012c;
+SDRAM[0].PllMSetupControl                         = 0x00000000;
+SDRAM[0].PllMSelectDiv2                           = 0x00000000;
+SDRAM[0].PllMPDLshiftPh45                         = 0x00000001;
+SDRAM[0].PllMPDLshiftPh90                         = 0x00000001;
+SDRAM[0].PllMPDLshiftPh135                        = 0x00000001;
+SDRAM[0].PllMKCP                                  = 0x00000000;
+SDRAM[0].PllMKVCO                                 = 0x00000000;
+SDRAM[0].EmcBctSpare0                             = 0x00000000;
+SDRAM[0].EmcBctSpare1                             = 0x00000000;
+SDRAM[0].EmcBctSpare2                             = 0x00000000;
+SDRAM[0].EmcBctSpare3                             = 0x00000000;
+SDRAM[0].EmcBctSpare4                             = 0x00000000;
+SDRAM[0].EmcBctSpare5                             = 0x00000000;
+SDRAM[0].EmcBctSpare6                             = 0x00000000;
+SDRAM[0].EmcBctSpare7                             = 0x00000000;
+SDRAM[0].EmcBctSpare8                             = 0x00000000;
+SDRAM[0].EmcBctSpare9                             = 0x00000000;
+SDRAM[0].EmcBctSpare10                            = 0x00000000;
+SDRAM[0].EmcBctSpare11                            = 0x00000000;
+SDRAM[0].EmcClockSource                           = 0x80000000;
+SDRAM[0].EmcAutoCalInterval                       = 0x001fffff;
+SDRAM[0].EmcAutoCalConfig                         = 0xa1430303;
+SDRAM[0].EmcAutoCalConfig2                        = 0x00000000;
+SDRAM[0].EmcAutoCalConfig3                        = 0x00000000;
+SDRAM[0].EmcAutoCalWait                           = 0x00000190;
+SDRAM[0].EmcAdrCfg                                = 0x00000000;
+SDRAM[0].EmcPinProgramWait                        = 0x00000001;
+SDRAM[0].EmcPinExtraWait                          = 0x00000000;
+SDRAM[0].EmcTimingControlWait                     = 0x00000000;
+SDRAM[0].EmcRc                                    = 0x0000002b;
+SDRAM[0].EmcRfc                                   = 0x000000f0;
+SDRAM[0].EmcRfcSlr                                = 0x00000000;
+SDRAM[0].EmcRas                                   = 0x0000001e;
+SDRAM[0].EmcRp                                    = 0x0000000b;
+SDRAM[0].EmcR2r                                   = 0x00000000;
+SDRAM[0].EmcW2w                                   = 0x00000000;
+SDRAM[0].EmcR2w                                   = 0x00000009;
+SDRAM[0].EmcW2r                                   = 0x0000000f;
+SDRAM[0].EmcR2p                                   = 0x00000005;
+SDRAM[0].EmcW2p                                   = 0x00000016;
+SDRAM[0].EmcRdRcd                                 = 0x0000000b;
+SDRAM[0].EmcWrRcd                                 = 0x0000000b;
+SDRAM[0].EmcRrd                                   = 0x00000004;
+SDRAM[0].EmcRext                                  = 0x00000002;
+SDRAM[0].EmcWext                                  = 0x00000000;
+SDRAM[0].EmcWdv                                   = 0x00000007;
+SDRAM[0].EmcWdvMask                               = 0x00000007;
+SDRAM[0].EmcQUse                                  = 0x0000000d;
+SDRAM[0].EmcQuseWidth                             = 0x00000002;
+SDRAM[0].EmcIbdly                                 = 0x00000000;
+SDRAM[0].EmcEInput                                = 0x00000002;
+SDRAM[0].EmcEInputDuration                        = 0x0000000f;
+SDRAM[0].EmcPutermExtra                           = 0x000a0000;
+SDRAM[0].EmcPutermWidth                           = 0x00000004;
+SDRAM[0].EmcPutermAdj                             = 0x00000000;
+SDRAM[0].EmcCdbCntl1                              = 0x00000000;
+SDRAM[0].EmcCdbCntl2                              = 0x00000000;
+SDRAM[0].EmcCdbCntl3                              = 0x00000000;
+SDRAM[0].EmcQRst                                  = 0x00000001;
+SDRAM[0].EmcQSafe                                 = 0x00000016;
+SDRAM[0].EmcRdv                                   = 0x0000001a;
+SDRAM[0].EmcRdvMask                               = 0x0000001c;
+SDRAM[0].EmcQpop                                  = 0x00000011;
+SDRAM[0].EmcCtt                                   = 0x00000000;
+SDRAM[0].EmcCttDuration                           = 0x00000004;
+SDRAM[0].EmcRefresh                               = 0x00001be7;
+SDRAM[0].EmcBurstRefreshNum                       = 0x00000000;
+SDRAM[0].EmcPreRefreshReqCnt                      = 0x000006f9;
+SDRAM[0].EmcPdEx2Wr                               = 0x00000004;
+SDRAM[0].EmcPdEx2Rd                               = 0x00000015;
+SDRAM[0].EmcPChg2Pden                             = 0x00000001;
+SDRAM[0].EmcAct2Pden                              = 0x00000000;
+SDRAM[0].EmcAr2Pden                               = 0x000000e7;
+SDRAM[0].EmcRw2Pden                               = 0x0000001b;
+SDRAM[0].EmcTxsr                                  = 0x000000fb;
+SDRAM[0].EmcTxsrDll                               = 0x00000200;
+SDRAM[0].EmcTcke                                  = 0x00000006;
+SDRAM[0].EmcTckesr                                = 0x00000007;
+SDRAM[0].EmcTpd                                   = 0x00000006;
+SDRAM[0].EmcTfaw                                  = 0x00000022;
+SDRAM[0].EmcTrpab                                 = 0x00000000;
+SDRAM[0].EmcTClkStable                            = 0x0000000a;
+SDRAM[0].EmcTClkStop                              = 0x0000000a;
+SDRAM[0].EmcTRefBw                                = 0x00001c28;
+SDRAM[0].EmcFbioCfg5                              = 0x104ab898;
+SDRAM[0].EmcFbioCfg6                              = 0x00000000;
+SDRAM[0].EmcFbioSpare                             = 0x00000000;
+SDRAM[0].EmcCfgRsv                                = 0xff00ff00;
+SDRAM[0].EmcMrs                                   = 0x80000f15;
+SDRAM[0].EmcEmrs                                  = 0x80100002;
+SDRAM[0].EmcEmrs2                                 = 0x80200020;
+SDRAM[0].EmcEmrs3                                 = 0x80300000;
+SDRAM[0].EmcMrw1                                  = 0x00000000;
+SDRAM[0].EmcMrw2                                  = 0x00000000;
+SDRAM[0].EmcMrw3                                  = 0x00000000;
+SDRAM[0].EmcMrw4                                  = 0x00000000;
+SDRAM[0].EmcMrwExtra                              = 0x00000000;
+SDRAM[0].EmcWarmBootMrwExtra                      = 0x00000000;
+SDRAM[0].EmcWarmBootExtraModeRegWriteEnable       = 0x00000000;
+SDRAM[0].EmcExtraModeRegWriteEnable               = 0x00000000;
+SDRAM[0].EmcMrwResetCommand                       = 0x00000000;
+SDRAM[0].EmcMrwResetNInitWait                     = 0x00000000;
+SDRAM[0].EmcMrsWaitCnt                            = 0x00cd000e;
+SDRAM[0].EmcMrsWaitCnt2                           = 0x00cd000e;
+SDRAM[0].EmcCfg                                   = 0x73300000;
+SDRAM[0].EmcCfg2                                  = 0x0000089d;
+SDRAM[0].EmcCfgPipe                               = 0x00004080;
+SDRAM[0].EmcDbg                                   = 0x01000c00;
+SDRAM[0].EmcCmdQ                                  = 0x10004408;
+SDRAM[0].EmcMc2EmcQ                               = 0x06000404;
+SDRAM[0].EmcDynSelfRefControl                     = 0x800037ea;
+SDRAM[0].AhbArbitrationXbarCtrlMemInitDone        = 0x00000001;
+SDRAM[0].EmcCfgDigDll                             = 0xe00400b1;
+SDRAM[0].EmcCfgDigDllPeriod                       = 0x00008000;
+SDRAM[0].EmcDevSelect                             = 0x00000002;
+SDRAM[0].EmcSelDpdCtrl                            = 0x00040000;
+SDRAM[0].EmcDllXformDqs0                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs1                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs2                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs3                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs4                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs5                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs6                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs7                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs8                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs9                          = 0x007f800a;
+SDRAM[0].EmcDllXformDqs10                         = 0x007f800a;
+SDRAM[0].EmcDllXformDqs11                         = 0x007f800a;
+SDRAM[0].EmcDllXformDqs12                         = 0x007f800a;
+SDRAM[0].EmcDllXformDqs13                         = 0x007f800a;
+SDRAM[0].EmcDllXformDqs14                         = 0x007f800a;
+SDRAM[0].EmcDllXformDqs15                         = 0x007f800a;
+SDRAM[0].EmcDllXformQUse0                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse1                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse2                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse3                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse4                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse5                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse6                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse7                         = 0x00000000;
+SDRAM[0].EmcDllXformAddr0                         = 0x0002c000;
+SDRAM[0].EmcDllXformAddr1                         = 0x0002c000;
+SDRAM[0].EmcDllXformAddr2                         = 0x00000000;
+SDRAM[0].EmcDllXformAddr3                         = 0x0002c000;
+SDRAM[0].EmcDllXformAddr4                         = 0x0002c000;
+SDRAM[0].EmcDllXformAddr5                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse8                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse9                         = 0x00000000;
+SDRAM[0].EmcDllXformQUse10                        = 0x00000000;
+SDRAM[0].EmcDllXformQUse11                        = 0x00000000;
+SDRAM[0].EmcDllXformQUse12                        = 0x00000000;
+SDRAM[0].EmcDllXformQUse13                        = 0x00000000;
+SDRAM[0].EmcDllXformQUse14                        = 0x00000000;
+SDRAM[0].EmcDllXformQUse15                        = 0x00000000;
+SDRAM[0].EmcDliTrimTxDqs0                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs1                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs2                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs3                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs4                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs5                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs6                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs7                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs8                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs9                         = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs10                        = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs11                        = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs12                        = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs13                        = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs14                        = 0x00000005;
+SDRAM[0].EmcDliTrimTxDqs15                        = 0x00000005;
+SDRAM[0].EmcDllXformDq0                           = 0x00000008;
+SDRAM[0].EmcDllXformDq1                           = 0x00000008;
+SDRAM[0].EmcDllXformDq2                           = 0x00000008;
+SDRAM[0].EmcDllXformDq3                           = 0x00000008;
+SDRAM[0].EmcDllXformDq4                           = 0x00000008;
+SDRAM[0].EmcDllXformDq5                           = 0x00000008;
+SDRAM[0].EmcDllXformDq6                           = 0x00000008;
+SDRAM[0].EmcDllXformDq7                           = 0x00000008;
+SDRAM[0].WarmBootWait                             = 0x00000002;
+SDRAM[0].EmcCttTermCtrl                           = 0x00000802;
+SDRAM[0].EmcOdtWrite                              = 0x00000000;
+SDRAM[0].EmcOdtRead                               = 0x00000000;
+SDRAM[0].EmcZcalInterval                          = 0x00020000;
+SDRAM[0].EmcZcalWaitCnt                           = 0x0000004c;
+SDRAM[0].EmcZcalMrwCmd                            = 0x80000000;
+SDRAM[0].EmcMrsResetDll                           = 0x00000000;
+SDRAM[0].EmcZcalInitDev0                          = 0x80000011;
+SDRAM[0].EmcZcalInitDev1                          = 0x00000000;
+SDRAM[0].EmcZcalInitWait                          = 0x00000001;
+SDRAM[0].EmcZcalWarmColdBootEnables               = 0x00000003;
+SDRAM[0].EmcMrwLpddr2ZcalWarmBoot                 = 0x040a00ab;
+SDRAM[0].EmcZqCalDdr3WarmBoot                     = 0x00000000;
+SDRAM[0].EmcZcalWarmBootWait                      = 0x00000001;
+SDRAM[0].EmcMrsWarmBootEnable                     = 0x00000001;
+SDRAM[0].EmcMrsResetDllWait                       = 0x00000000;
+SDRAM[0].EmcMrsExtra                              = 0x80000f15;
+SDRAM[0].EmcWarmBootMrsExtra                      = 0x80100002;
+SDRAM[0].EmcEmrsDdr2DllEnable                     = 0x00000000;
+SDRAM[0].EmcMrsDdr2DllReset                       = 0x00000000;
+SDRAM[0].EmcEmrsDdr2OcdCalib                      = 0x00000000;
+SDRAM[0].EmcDdr2Wait                              = 0x00000000;
+SDRAM[0].EmcClkenOverride                         = 0x00000000;
+SDRAM[0].McDisExtraSnapLevels                     = 0x00000000;
+SDRAM[0].EmcExtraRefreshNum                       = 0x00000002;
+SDRAM[0].EmcClkenOverrideAllWarmBoot              = 0x00000000;
+SDRAM[0].McClkenOverrideAllWarmBoot               = 0x00000000;
+SDRAM[0].EmcCfgDigDllPeriodWarmBoot               = 0x00000003;
+SDRAM[0].PmcVddpSel                               = 0x00000002;
+SDRAM[0].PmcVddpSelWait                           = 0x00000002;
+SDRAM[0].PmcDdrPwr                                = 0x00000003;
+SDRAM[0].PmcDdrCfg                                = 0x00002002;
+SDRAM[0].PmcIoDpd3Req                             = 0x4fff2f97;
+SDRAM[0].PmcIoDpd3ReqWait                         = 0x00000000;
+SDRAM[0].PmcRegShort                              = 0x00000000;
+SDRAM[0].PmcNoIoPower                             = 0x00000000;
+SDRAM[0].PmcPorDpdCtrlWait                        = 0x00000000;
+SDRAM[0].EmcXm2CmdPadCtrl                         = 0x100002a0;
+SDRAM[0].EmcXm2CmdPadCtrl2                        = 0x770c0000;
+SDRAM[0].EmcXm2CmdPadCtrl3                        = 0x050c0000;
+SDRAM[0].EmcXm2CmdPadCtrl4                        = 0x00000000;
+SDRAM[0].EmcXm2CmdPadCtrl5                        = 0x00111111;
+SDRAM[0].EmcXm2DqsPadCtrl                         = 0x770c1414;
+SDRAM[0].EmcXm2DqsPadCtrl2                        = 0x0120113d;
+SDRAM[0].EmcXm2DqsPadCtrl3                        = 0x5d75d720;
+SDRAM[0].EmcXm2DqsPadCtrl4                        = 0x00514514;
+SDRAM[0].EmcXm2DqsPadCtrl5                        = 0x00514514;
+SDRAM[0].EmcXm2DqsPadCtrl6                        = 0x5d75d700;
+SDRAM[0].EmcXm2DqPadCtrl                          = 0x770c2990;
+SDRAM[0].EmcXm2DqPadCtrl2                         = 0x00000000;
+SDRAM[0].EmcXm2DqPadCtrl3                         = 0x00000000;
+SDRAM[0].EmcXm2ClkPadCtrl                         = 0x77ffc085;
+SDRAM[0].EmcXm2ClkPadCtrl2                        = 0x00000000;
+SDRAM[0].EmcXm2CompPadCtrl                        = 0x81f1f108;
+SDRAM[0].EmcXm2VttGenPadCtrl                      = 0x07070004;
+SDRAM[0].EmcXm2VttGenPadCtrl2                     = 0x00000000;
+SDRAM[0].EmcXm2VttGenPadCtrl3                     = 0x016eeeee;
+SDRAM[0].EmcAcpdControl                           = 0x00000000;
+SDRAM[0].EmcSwizzleRank0ByteCfg                   = 0x00003120;
+SDRAM[0].EmcSwizzleRank0Byte0                     = 0x25143067;
+SDRAM[0].EmcSwizzleRank0Byte1                     = 0x45367102;
+SDRAM[0].EmcSwizzleRank0Byte2                     = 0x47106253;
+SDRAM[0].EmcSwizzleRank0Byte3                     = 0x04362175;
+SDRAM[0].EmcSwizzleRank1ByteCfg                   = 0x00003120;
+SDRAM[0].EmcSwizzleRank1Byte0                     = 0x71546032;
+SDRAM[0].EmcSwizzleRank1Byte1                     = 0x35104276;
+SDRAM[0].EmcSwizzleRank1Byte2                     = 0x27043615;
+SDRAM[0].EmcSwizzleRank1Byte3                     = 0x72306145;
+SDRAM[0].EmcDsrVttgenDrv                          = 0x0606003f;
+SDRAM[0].EmcTxdsrvttgen                           = 0x00000000;
+SDRAM[0].EmcBgbiasCtl0                            = 0x00000000;
+SDRAM[0].McEmemAdrCfg                             = 0x00000000;
+SDRAM[0].McEmemAdrCfgDev0                         = 0x00080303;
+SDRAM[0].McEmemAdrCfgDev1                         = 0x00080303;
+SDRAM[0].McEmemAdrCfgBankMask0                    = 0x00001248;
+SDRAM[0].McEmemAdrCfgBankMask1                    = 0x00002490;
+SDRAM[0].McEmemAdrCfgBankMask2                    = 0x00000920;
+SDRAM[0].McEmemAdrCfgBankSwizzle3                 = 0x00000001;
+SDRAM[0].McEmemCfg                                = 0x00000800;
+SDRAM[0].McEmemArbCfg                             = 0x0e00000d;
+SDRAM[0].McEmemArbOutstandingReq                  = 0x80000040;
+SDRAM[0].McEmemArbTimingRcd                       = 0x00000005;
+SDRAM[0].McEmemArbTimingRp                        = 0x00000006;
+SDRAM[0].McEmemArbTimingRc                        = 0x00000016;
+SDRAM[0].McEmemArbTimingRas                       = 0x0000000e;
+SDRAM[0].McEmemArbTimingFaw                       = 0x00000011;
+SDRAM[0].McEmemArbTimingRrd                       = 0x00000002;
+SDRAM[0].McEmemArbTimingRap2Pre                   = 0x00000004;
+SDRAM[0].McEmemArbTimingWap2Pre                   = 0x0000000e;
+SDRAM[0].McEmemArbTimingR2R                       = 0x00000002;
+SDRAM[0].McEmemArbTimingW2W                       = 0x00000002;
+SDRAM[0].McEmemArbTimingR2W                       = 0x00000006;
+SDRAM[0].McEmemArbTimingW2R                       = 0x00000009;
+SDRAM[0].McEmemArbDaTurns                         = 0x09060202;
+SDRAM[0].McEmemArbDaCovers                        = 0x001a1016;
+SDRAM[0].McEmemArbMisc0                           = 0x734e2a17;
+SDRAM[0].McEmemArbMisc1                           = 0x70000f02;
+SDRAM[0].McEmemArbRing1Throttle                   = 0x001f0000;
+SDRAM[0].McEmemArbOverride                        = 0x10000000;
+SDRAM[0].McEmemArbOverride1                       = 0x00000000;
+SDRAM[0].McEmemArbRsv                             = 0xff00ff00;
+SDRAM[0].McClkenOverride                          = 0x00000000;
+SDRAM[0].McStatControl                            = 0x00000000;
+SDRAM[0].McDisplaySnapRing                        = 0x00000003;
+SDRAM[0].McVideoProtectBom                        = 0xfff00000;
+SDRAM[0].McVideoProtectBomAdrHi                   = 0x00000000;
+SDRAM[0].McVideoProtectSizeMb                     = 0x00000000;
+SDRAM[0].McVideoProtectVprOverride                = 0xe4bac743;
+SDRAM[0].McVideoProtectVprOverride1               = 0x00000013;
+SDRAM[0].McVideoProtectGpuOverride0               = 0x00000000;
+SDRAM[0].McVideoProtectGpuOverride1               = 0x00000000;
+SDRAM[0].McSecCarveoutBom                         = 0xfff00000;
+SDRAM[0].McSecCarveoutAdrHi                       = 0x00000000;
+SDRAM[0].McSecCarveoutSizeMb                      = 0x00000000;
+SDRAM[0].McVideoProtectWriteAccess                = 0x00000000;
+SDRAM[0].McSecCarveoutProtectWriteAccess          = 0x00000000;
+SDRAM[0].EmcCaTrainingEnable                      = 0x00000000;
+SDRAM[0].EmcCaTrainingTimingCntl1                 = 0x1f7df7df;
+SDRAM[0].EmcCaTrainingTimingCntl2                 = 0x0000001f;
+SDRAM[0].SwizzleRankByteEncode                    = 0x0000006f;
+SDRAM[0].BootRomPatchControl                      = 0x00000000;
+SDRAM[0].BootRomPatchData                         = 0x00000000;
+SDRAM[0].McMtsCarveoutBom                         = 0xfff00000;
+SDRAM[0].McMtsCarveoutAdrHi                       = 0x00000000;
+SDRAM[0].McMtsCarveoutSizeMb                      = 0x00000000;
+SDRAM[0].McMtsCarveoutRegCtrl                     = 0x00000000;
+
+SDRAM[1].MemoryType                               = NvBootMemoryType_Ddr3;
+SDRAM[1].PllMInputDivider                         = 0x00000001;
+SDRAM[1].PllMFeedbackDivider                      = 0x0000004d;
+SDRAM[1].PllMStableTime                           = 0x0000012c;
+SDRAM[1].PllMSetupControl                         = 0x00000000;
+SDRAM[1].PllMSelectDiv2                           = 0x00000000;
+SDRAM[1].PllMPDLshiftPh45                         = 0x00000001;
+SDRAM[1].PllMPDLshiftPh90                         = 0x00000001;
+SDRAM[1].PllMPDLshiftPh135                        = 0x00000001;
+SDRAM[1].PllMKCP                                  = 0x00000000;
+SDRAM[1].PllMKVCO                                 = 0x00000000;
+SDRAM[1].EmcBctSpare0                             = 0x00000000;
+SDRAM[1].EmcBctSpare1                             = 0x00000000;
+SDRAM[1].EmcBctSpare2                             = 0x00000000;
+SDRAM[1].EmcBctSpare3                             = 0x00000000;
+SDRAM[1].EmcBctSpare4                             = 0x00000000;
+SDRAM[1].EmcBctSpare5                             = 0x00000000;
+SDRAM[1].EmcBctSpare6                             = 0x00000000;
+SDRAM[1].EmcBctSpare7                             = 0x00000000;
+SDRAM[1].EmcBctSpare8                             = 0x00000000;
+SDRAM[1].EmcBctSpare9                             = 0x00000000;
+SDRAM[1].EmcBctSpare10                            = 0x00000000;
+SDRAM[1].EmcBctSpare11                            = 0x00000000;
+SDRAM[1].EmcClockSource                           = 0x80000000;
+SDRAM[1].EmcAutoCalInterval                       = 0x001fffff;
+SDRAM[1].EmcAutoCalConfig                         = 0xa1430303;
+SDRAM[1].EmcAutoCalConfig2                        = 0x00000000;
+SDRAM[1].EmcAutoCalConfig3                        = 0x00000000;
+SDRAM[1].EmcAutoCalWait                           = 0x00000190;
+SDRAM[1].EmcAdrCfg                                = 0x00000000;
+SDRAM[1].EmcPinProgramWait                        = 0x00000001;
+SDRAM[1].EmcPinExtraWait                          = 0x00000000;
+SDRAM[1].EmcTimingControlWait                     = 0x00000000;
+SDRAM[1].EmcRc                                    = 0x0000002b;
+SDRAM[1].EmcRfc                                   = 0x000000f0;
+SDRAM[1].EmcRfcSlr                                = 0x00000000;
+SDRAM[1].EmcRas                                   = 0x0000001e;
+SDRAM[1].EmcRp                                    = 0x0000000b;
+SDRAM[1].EmcR2r                                   = 0x00000000;
+SDRAM[1].EmcW2w                                   = 0x00000000;
+SDRAM[1].EmcR2w                                   = 0x00000009;
+SDRAM[1].EmcW2r                                   = 0x0000000f;
+SDRAM[1].EmcR2p                                   = 0x00000005;
+SDRAM[1].EmcW2p                                   = 0x00000016;
+SDRAM[1].EmcRdRcd                                 = 0x0000000b;
+SDRAM[1].EmcWrRcd                                 = 0x0000000b;
+SDRAM[1].EmcRrd                                   = 0x00000004;
+SDRAM[1].EmcRext                                  = 0x00000002;
+SDRAM[1].EmcWext                                  = 0x00000000;
+SDRAM[1].EmcWdv                                   = 0x00000007;
+SDRAM[1].EmcWdvMask                               = 0x00000007;
+SDRAM[1].EmcQUse                                  = 0x0000000d;
+SDRAM[1].EmcQuseWidth                             = 0x00000002;
+SDRAM[1].EmcIbdly                                 = 0x00000000;
+SDRAM[1].EmcEInput                                = 0x00000002;
+SDRAM[1].EmcEInputDuration                        = 0x0000000f;
+SDRAM[1].EmcPutermExtra                           = 0x000a0000;
+SDRAM[1].EmcPutermWidth                           = 0x00000004;
+SDRAM[1].EmcPutermAdj                             = 0x00000000;
+SDRAM[1].EmcCdbCntl1                              = 0x00000000;
+SDRAM[1].EmcCdbCntl2                              = 0x00000000;
+SDRAM[1].EmcCdbCntl3                              = 0x00000000;
+SDRAM[1].EmcQRst                                  = 0x00000001;
+SDRAM[1].EmcQSafe                                 = 0x00000016;
+SDRAM[1].EmcRdv                                   = 0x0000001a;
+SDRAM[1].EmcRdvMask                               = 0x0000001c;
+SDRAM[1].EmcQpop                                  = 0x00000011;
+SDRAM[1].EmcCtt                                   = 0x00000000;
+SDRAM[1].EmcCttDuration                           = 0x00000004;
+SDRAM[1].EmcRefresh                               = 0x00001be7;
+SDRAM[1].EmcBurstRefreshNum                       = 0x00000000;
+SDRAM[1].EmcPreRefreshReqCnt                      = 0x000006f9;
+SDRAM[1].EmcPdEx2Wr                               = 0x00000004;
+SDRAM[1].EmcPdEx2Rd                               = 0x00000015;
+SDRAM[1].EmcPChg2Pden                             = 0x00000001;
+SDRAM[1].EmcAct2Pden                              = 0x00000000;
+SDRAM[1].EmcAr2Pden                               = 0x000000e7;
+SDRAM[1].EmcRw2Pden                               = 0x0000001b;
+SDRAM[1].EmcTxsr                                  = 0x000000fb;
+SDRAM[1].EmcTxsrDll                               = 0x00000200;
+SDRAM[1].EmcTcke                                  = 0x00000006;
+SDRAM[1].EmcTckesr                                = 0x00000007;
+SDRAM[1].EmcTpd                                   = 0x00000006;
+SDRAM[1].EmcTfaw                                  = 0x00000022;
+SDRAM[1].EmcTrpab                                 = 0x00000000;
+SDRAM[1].EmcTClkStable                            = 0x0000000a;
+SDRAM[1].EmcTClkStop                              = 0x0000000a;
+SDRAM[1].EmcTRefBw                                = 0x00001c28;
+SDRAM[1].EmcFbioCfg5                              = 0x104ab898;
+SDRAM[1].EmcFbioCfg6                              = 0x00000000;
+SDRAM[1].EmcFbioSpare                             = 0x00000000;
+SDRAM[1].EmcCfgRsv                                = 0xff00ff00;
+SDRAM[1].EmcMrs                                   = 0x80000f15;
+SDRAM[1].EmcEmrs                                  = 0x80100002;
+SDRAM[1].EmcEmrs2                                 = 0x80200020;
+SDRAM[1].EmcEmrs3                                 = 0x80300000;
+SDRAM[1].EmcMrw1                                  = 0x00000000;
+SDRAM[1].EmcMrw2                                  = 0x00000000;
+SDRAM[1].EmcMrw3                                  = 0x00000000;
+SDRAM[1].EmcMrw4                                  = 0x00000000;
+SDRAM[1].EmcMrwExtra                              = 0x00000000;
+SDRAM[1].EmcWarmBootMrwExtra                      = 0x00000000;
+SDRAM[1].EmcWarmBootExtraModeRegWriteEnable       = 0x00000000;
+SDRAM[1].EmcExtraModeRegWriteEnable               = 0x00000000;
+SDRAM[1].EmcMrwResetCommand                       = 0x00000000;
+SDRAM[1].EmcMrwResetNInitWait                     = 0x00000000;
+SDRAM[1].EmcMrsWaitCnt                            = 0x00cd000e;
+SDRAM[1].EmcMrsWaitCnt2                           = 0x00cd000e;
+SDRAM[1].EmcCfg                                   = 0x73300000;
+SDRAM[1].EmcCfg2                                  = 0x0000089d;
+SDRAM[1].EmcCfgPipe                               = 0x00004080;
+SDRAM[1].EmcDbg                                   = 0x01000c00;
+SDRAM[1].EmcCmdQ                                  = 0x10004408;
+SDRAM[1].EmcMc2EmcQ                               = 0x06000404;
+SDRAM[1].EmcDynSelfRefControl                     = 0x800037ea;
+SDRAM[1].AhbArbitrationXbarCtrlMemInitDone        = 0x00000001;
+SDRAM[1].EmcCfgDigDll                             = 0xe00400b1;
+SDRAM[1].EmcCfgDigDllPeriod                       = 0x00008000;
+SDRAM[1].EmcDevSelect                             = 0x00000002;
+SDRAM[1].EmcSelDpdCtrl                            = 0x00040000;
+SDRAM[1].EmcDllXformDqs0                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs1                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs2                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs3                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs4                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs5                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs6                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs7                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs8                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs9                          = 0x007f800a;
+SDRAM[1].EmcDllXformDqs10                         = 0x007f800a;
+SDRAM[1].EmcDllXformDqs11                         = 0x007f800a;
+SDRAM[1].EmcDllXformDqs12                         = 0x007f800a;
+SDRAM[1].EmcDllXformDqs13                         = 0x007f800a;
+SDRAM[1].EmcDllXformDqs14                         = 0x007f800a;
+SDRAM[1].EmcDllXformDqs15                         = 0x007f800a;
+SDRAM[1].EmcDllXformQUse0                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse1                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse2                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse3                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse4                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse5                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse6                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse7                         = 0x00000000;
+SDRAM[1].EmcDllXformAddr0                         = 0x0002c000;
+SDRAM[1].EmcDllXformAddr1                         = 0x0002c000;
+SDRAM[1].EmcDllXformAddr2                         = 0x00000000;
+SDRAM[1].EmcDllXformAddr3                         = 0x0002c000;
+SDRAM[1].EmcDllXformAddr4                         = 0x0002c000;
+SDRAM[1].EmcDllXformAddr5                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse8                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse9                         = 0x00000000;
+SDRAM[1].EmcDllXformQUse10                        = 0x00000000;
+SDRAM[1].EmcDllXformQUse11                        = 0x00000000;
+SDRAM[1].EmcDllXformQUse12                        = 0x00000000;
+SDRAM[1].EmcDllXformQUse13                        = 0x00000000;
+SDRAM[1].EmcDllXformQUse14                        = 0x00000000;
+SDRAM[1].EmcDllXformQUse15                        = 0x00000000;
+SDRAM[1].EmcDliTrimTxDqs0                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs1                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs2                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs3                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs4                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs5                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs6                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs7                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs8                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs9                         = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs10                        = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs11                        = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs12                        = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs13                        = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs14                        = 0x00000005;
+SDRAM[1].EmcDliTrimTxDqs15                        = 0x00000005;
+SDRAM[1].EmcDllXformDq0                           = 0x00000008;
+SDRAM[1].EmcDllXformDq1                           = 0x00000008;
+SDRAM[1].EmcDllXformDq2                           = 0x00000008;
+SDRAM[1].EmcDllXformDq3                           = 0x00000008;
+SDRAM[1].EmcDllXformDq4                           = 0x00000008;
+SDRAM[1].EmcDllXformDq5                           = 0x00000008;
+SDRAM[1].EmcDllXformDq6                           = 0x00000008;
+SDRAM[1].EmcDllXformDq7                           = 0x00000008;
+SDRAM[1].WarmBootWait                             = 0x00000002;
+SDRAM[1].EmcCttTermCtrl                           = 0x00000802;
+SDRAM[1].EmcOdtWrite                              = 0x00000000;
+SDRAM[1].EmcOdtRead                               = 0x00000000;
+SDRAM[1].EmcZcalInterval                          = 0x00020000;
+SDRAM[1].EmcZcalWaitCnt                           = 0x0000004c;
+SDRAM[1].EmcZcalMrwCmd                            = 0x80000000;
+SDRAM[1].EmcMrsResetDll                           = 0x00000000;
+SDRAM[1].EmcZcalInitDev0                          = 0x80000011;
+SDRAM[1].EmcZcalInitDev1                          = 0x00000000;
+SDRAM[1].EmcZcalInitWait                          = 0x00000001;
+SDRAM[1].EmcZcalWarmColdBootEnables               = 0x00000003;
+SDRAM[1].EmcMrwLpddr2ZcalWarmBoot                 = 0x040a00ab;
+SDRAM[1].EmcZqCalDdr3WarmBoot                     = 0x00000000;
+SDRAM[1].EmcZcalWarmBootWait                      = 0x00000001;
+SDRAM[1].EmcMrsWarmBootEnable                     = 0x00000001;
+SDRAM[1].EmcMrsResetDllWait                       = 0x00000000;
+SDRAM[1].EmcMrsExtra                              = 0x80000f15;
+SDRAM[1].EmcWarmBootMrsExtra                      = 0x80100002;
+SDRAM[1].EmcEmrsDdr2DllEnable                     = 0x00000000;
+SDRAM[1].EmcMrsDdr2DllReset                       = 0x00000000;
+SDRAM[1].EmcEmrsDdr2OcdCalib                      = 0x00000000;
+SDRAM[1].EmcDdr2Wait                              = 0x00000000;
+SDRAM[1].EmcClkenOverride                         = 0x00000000;
+SDRAM[1].McDisExtraSnapLevels                     = 0x00000000;
+SDRAM[1].EmcExtraRefreshNum                       = 0x00000002;
+SDRAM[1].EmcClkenOverrideAllWarmBoot              = 0x00000000;
+SDRAM[1].McClkenOverrideAllWarmBoot               = 0x00000000;
+SDRAM[1].EmcCfgDigDllPeriodWarmBoot               = 0x00000003;
+SDRAM[1].PmcVddpSel                               = 0x00000002;
+SDRAM[1].PmcVddpSelWait                           = 0x00000002;
+SDRAM[1].PmcDdrPwr                                = 0x00000003;
+SDRAM[1].PmcDdrCfg                                = 0x00002002;
+SDRAM[1].PmcIoDpd3Req                             = 0x4fff2f97;
+SDRAM[1].PmcIoDpd3ReqWait                         = 0x00000000;
+SDRAM[1].PmcRegShort                              = 0x00000000;
+SDRAM[1].PmcNoIoPower                             = 0x00000000;
+SDRAM[1].PmcPorDpdCtrlWait                        = 0x00000000;
+SDRAM[1].EmcXm2CmdPadCtrl                         = 0x100002a0;
+SDRAM[1].EmcXm2CmdPadCtrl2                        = 0x770c0000;
+SDRAM[1].EmcXm2CmdPadCtrl3                        = 0x050c0000;
+SDRAM[1].EmcXm2CmdPadCtrl4                        = 0x00000000;
+SDRAM[1].EmcXm2CmdPadCtrl5                        = 0x00111111;
+SDRAM[1].EmcXm2DqsPadCtrl                         = 0x770c1414;
+SDRAM[1].EmcXm2DqsPadCtrl2                        = 0x0120113d;
+SDRAM[1].EmcXm2DqsPadCtrl3                        = 0x5d75d720;
+SDRAM[1].EmcXm2DqsPadCtrl4                        = 0x00514514;
+SDRAM[1].EmcXm2DqsPadCtrl5                        = 0x00514514;
+SDRAM[1].EmcXm2DqsPadCtrl6                        = 0x5d75d700;
+SDRAM[1].EmcXm2DqPadCtrl                          = 0x770c2990;
+SDRAM[1].EmcXm2DqPadCtrl2                         = 0x00000000;
+SDRAM[1].EmcXm2DqPadCtrl3                         = 0x00000000;
+SDRAM[1].EmcXm2ClkPadCtrl                         = 0x77ffc085;
+SDRAM[1].EmcXm2ClkPadCtrl2                        = 0x00000000;
+SDRAM[1].EmcXm2CompPadCtrl                        = 0x81f1f108;
+SDRAM[1].EmcXm2VttGenPadCtrl                      = 0x07070004;
+SDRAM[1].EmcXm2VttGenPadCtrl2                     = 0x00000000;
+SDRAM[1].EmcXm2VttGenPadCtrl3                     = 0x016eeeee;
+SDRAM[1].EmcAcpdControl                           = 0x00000000;
+SDRAM[1].EmcSwizzleRank0ByteCfg                   = 0x00003120;
+SDRAM[1].EmcSwizzleRank0Byte0                     = 0x25143067;
+SDRAM[1].EmcSwizzleRank0Byte1                     = 0x45367102;
+SDRAM[1].EmcSwizzleRank0Byte2                     = 0x47106253;
+SDRAM[1].EmcSwizzleRank0Byte3                     = 0x04362175;
+SDRAM[1].EmcSwizzleRank1ByteCfg                   = 0x00003120;
+SDRAM[1].EmcSwizzleRank1Byte0                     = 0x71546032;
+SDRAM[1].EmcSwizzleRank1Byte1                     = 0x35104276;
+SDRAM[1].EmcSwizzleRank1Byte2                     = 0x27043615;
+SDRAM[1].EmcSwizzleRank1Byte3                     = 0x72306145;
+SDRAM[1].EmcDsrVttgenDrv                          = 0x0606003f;
+SDRAM[1].EmcTxdsrvttgen                           = 0x00000000;
+SDRAM[1].EmcBgbiasCtl0                            = 0x00000000;
+SDRAM[1].McEmemAdrCfg                             = 0x00000000;
+SDRAM[1].McEmemAdrCfgDev0                         = 0x00080303;
+SDRAM[1].McEmemAdrCfgDev1                         = 0x00080303;
+SDRAM[1].McEmemAdrCfgBankMask0                    = 0x00001248;
+SDRAM[1].McEmemAdrCfgBankMask1                    = 0x00002490;
+SDRAM[1].McEmemAdrCfgBankMask2                    = 0x00000920;
+SDRAM[1].McEmemAdrCfgBankSwizzle3                 = 0x00000001;
+SDRAM[1].McEmemCfg                                = 0x00000800;
+SDRAM[1].McEmemArbCfg                             = 0x0e00000d;
+SDRAM[1].McEmemArbOutstandingReq                  = 0x80000040;
+SDRAM[1].McEmemArbTimingRcd                       = 0x00000005;
+SDRAM[1].McEmemArbTimingRp                        = 0x00000006;
+SDRAM[1].McEmemArbTimingRc                        = 0x00000016;
+SDRAM[1].McEmemArbTimingRas                       = 0x0000000e;
+SDRAM[1].McEmemArbTimingFaw                       = 0x00000011;
+SDRAM[1].McEmemArbTimingRrd                       = 0x00000002;
+SDRAM[1].McEmemArbTimingRap2Pre                   = 0x00000004;
+SDRAM[1].McEmemArbTimingWap2Pre                   = 0x0000000e;
+SDRAM[1].McEmemArbTimingR2R                       = 0x00000002;
+SDRAM[1].McEmemArbTimingW2W                       = 0x00000002;
+SDRAM[1].McEmemArbTimingR2W                       = 0x00000006;
+SDRAM[1].McEmemArbTimingW2R                       = 0x00000009;
+SDRAM[1].McEmemArbDaTurns                         = 0x09060202;
+SDRAM[1].McEmemArbDaCovers                        = 0x001a1016;
+SDRAM[1].McEmemArbMisc0                           = 0x734e2a17;
+SDRAM[1].McEmemArbMisc1                           = 0x70000f02;
+SDRAM[1].McEmemArbRing1Throttle                   = 0x001f0000;
+SDRAM[1].McEmemArbOverride                        = 0x10000000;
+SDRAM[1].McEmemArbOverride1                       = 0x00000000;
+SDRAM[1].McEmemArbRsv                             = 0xff00ff00;
+SDRAM[1].McClkenOverride                          = 0x00000000;
+SDRAM[1].McStatControl                            = 0x00000000;
+SDRAM[1].McDisplaySnapRing                        = 0x00000003;
+SDRAM[1].McVideoProtectBom                        = 0xfff00000;
+SDRAM[1].McVideoProtectBomAdrHi                   = 0x00000000;
+SDRAM[1].McVideoProtectSizeMb                     = 0x00000000;
+SDRAM[1].McVideoProtectVprOverride                = 0xe4bac743;
+SDRAM[1].McVideoProtectVprOverride1               = 0x00000013;
+SDRAM[1].McVideoProtectGpuOverride0               = 0x00000000;
+SDRAM[1].McVideoProtectGpuOverride1               = 0x00000000;
+SDRAM[1].McSecCarveoutBom                         = 0xfff00000;
+SDRAM[1].McSecCarveoutAdrHi                       = 0x00000000;
+SDRAM[1].McSecCarveoutSizeMb                      = 0x00000000;
+SDRAM[1].McVideoProtectWriteAccess                = 0x00000000;
+SDRAM[1].McSecCarveoutProtectWriteAccess          = 0x00000000;
+SDRAM[1].EmcCaTrainingEnable                      = 0x00000000;
+SDRAM[1].EmcCaTrainingTimingCntl1                 = 0x1f7df7df;
+SDRAM[1].EmcCaTrainingTimingCntl2                 = 0x0000001f;
+SDRAM[1].SwizzleRankByteEncode                    = 0x0000006f;
+SDRAM[1].BootRomPatchControl                      = 0x00000000;
+SDRAM[1].BootRomPatchData                         = 0x00000000;
+SDRAM[1].McMtsCarveoutBom                         = 0xfff00000;
+SDRAM[1].McMtsCarveoutAdrHi                       = 0x00000000;
+SDRAM[1].McMtsCarveoutSizeMb                      = 0x00000000;
+SDRAM[1].McMtsCarveoutRegCtrl                     = 0x00000000;
+
+SDRAM[2].MemoryType                               = NvBootMemoryType_Ddr3;
+SDRAM[2].PllMInputDivider                         = 0x00000001;
+SDRAM[2].PllMFeedbackDivider                      = 0x0000004d;
+SDRAM[2].PllMStableTime                           = 0x0000012c;
+SDRAM[2].PllMSetupControl                         = 0x00000000;
+SDRAM[2].PllMSelectDiv2                           = 0x00000000;
+SDRAM[2].PllMPDLshiftPh45                         = 0x00000001;
+SDRAM[2].PllMPDLshiftPh90                         = 0x00000001;
+SDRAM[2].PllMPDLshiftPh135                        = 0x00000001;
+SDRAM[2].PllMKCP                                  = 0x00000000;
+SDRAM[2].PllMKVCO                                 = 0x00000000;
+SDRAM[2].EmcBctSpare0                             = 0x00000000;
+SDRAM[2].EmcBctSpare1                             = 0x00000000;
+SDRAM[2].EmcBctSpare2                             = 0x00000000;
+SDRAM[2].EmcBctSpare3                             = 0x00000000;
+SDRAM[2].EmcBctSpare4                             = 0x00000000;
+SDRAM[2].EmcBctSpare5                             = 0x00000000;
+SDRAM[2].EmcBctSpare6                             = 0x00000000;
+SDRAM[2].EmcBctSpare7                             = 0x00000000;
+SDRAM[2].EmcBctSpare8                             = 0x00000000;
+SDRAM[2].EmcBctSpare9                             = 0x00000000;
+SDRAM[2].EmcBctSpare10                            = 0x00000000;
+SDRAM[2].EmcBctSpare11                            = 0x00000000;
+SDRAM[2].EmcClockSource                           = 0x80000000;
+SDRAM[2].EmcAutoCalInterval                       = 0x001fffff;
+SDRAM[2].EmcAutoCalConfig                         = 0xa1430303;
+SDRAM[2].EmcAutoCalConfig2                        = 0x00000000;
+SDRAM[2].EmcAutoCalConfig3                        = 0x00000000;
+SDRAM[2].EmcAutoCalWait                           = 0x00000190;
+SDRAM[2].EmcAdrCfg                                = 0x00000000;
+SDRAM[2].EmcPinProgramWait                        = 0x00000001;
+SDRAM[2].EmcPinExtraWait                          = 0x00000000;
+SDRAM[2].EmcTimingControlWait                     = 0x00000000;
+SDRAM[2].EmcRc                                    = 0x0000002b;
+SDRAM[2].EmcRfc                                   = 0x000000f0;
+SDRAM[2].EmcRfcSlr                                = 0x00000000;
+SDRAM[2].EmcRas                                   = 0x0000001e;
+SDRAM[2].EmcRp                                    = 0x0000000b;
+SDRAM[2].EmcR2r                                   = 0x00000000;
+SDRAM[2].EmcW2w                                   = 0x00000000;
+SDRAM[2].EmcR2w                                   = 0x00000009;
+SDRAM[2].EmcW2r                                   = 0x0000000f;
+SDRAM[2].EmcR2p                                   = 0x00000005;
+SDRAM[2].EmcW2p                                   = 0x00000016;
+SDRAM[2].EmcRdRcd                                 = 0x0000000b;
+SDRAM[2].EmcWrRcd                                 = 0x0000000b;
+SDRAM[2].EmcRrd                                   = 0x00000004;
+SDRAM[2].EmcRext                                  = 0x00000002;
+SDRAM[2].EmcWext                                  = 0x00000000;
+SDRAM[2].EmcWdv                                   = 0x00000007;
+SDRAM[2].EmcWdvMask                               = 0x00000007;
+SDRAM[2].EmcQUse                                  = 0x0000000d;
+SDRAM[2].EmcQuseWidth                             = 0x00000002;
+SDRAM[2].EmcIbdly                                 = 0x00000000;
+SDRAM[2].EmcEInput                                = 0x00000002;
+SDRAM[2].EmcEInputDuration                        = 0x0000000f;
+SDRAM[2].EmcPutermExtra                           = 0x000a0000;
+SDRAM[2].EmcPutermWidth                           = 0x00000004;
+SDRAM[2].EmcPutermAdj                             = 0x00000000;
+SDRAM[2].EmcCdbCntl1                              = 0x00000000;
+SDRAM[2].EmcCdbCntl2                              = 0x00000000;
+SDRAM[2].EmcCdbCntl3                              = 0x00000000;
+SDRAM[2].EmcQRst                                  = 0x00000001;
+SDRAM[2].EmcQSafe                                 = 0x00000016;
+SDRAM[2].EmcRdv                                   = 0x0000001a;
+SDRAM[2].EmcRdvMask                               = 0x0000001c;
+SDRAM[2].EmcQpop                                  = 0x00000011;
+SDRAM[2].EmcCtt                                   = 0x00000000;
+SDRAM[2].EmcCttDuration                           = 0x00000004;
+SDRAM[2].EmcRefresh                               = 0x00001be7;
+SDRAM[2].EmcBurstRefreshNum                       = 0x00000000;
+SDRAM[2].EmcPreRefreshReqCnt                      = 0x000006f9;
+SDRAM[2].EmcPdEx2Wr                               = 0x00000004;
+SDRAM[2].EmcPdEx2Rd                               = 0x00000015;
+SDRAM[2].EmcPChg2Pden                             = 0x00000001;
+SDRAM[2].EmcAct2Pden                              = 0x00000000;
+SDRAM[2].EmcAr2Pden                               = 0x000000e7;
+SDRAM[2].EmcRw2Pden                               = 0x0000001b;
+SDRAM[2].EmcTxsr                                  = 0x000000fb;
+SDRAM[2].EmcTxsrDll                               = 0x00000200;
+SDRAM[2].EmcTcke                                  = 0x00000006;
+SDRAM[2].EmcTckesr                                = 0x00000007;
+SDRAM[2].EmcTpd                                   = 0x00000006;
+SDRAM[2].EmcTfaw                                  = 0x00000022;
+SDRAM[2].EmcTrpab                                 = 0x00000000;
+SDRAM[2].EmcTClkStable                            = 0x0000000a;
+SDRAM[2].EmcTClkStop                              = 0x0000000a;
+SDRAM[2].EmcTRefBw                                = 0x00001c28;
+SDRAM[2].EmcFbioCfg5                              = 0x104ab898;
+SDRAM[2].EmcFbioCfg6                              = 0x00000000;
+SDRAM[2].EmcFbioSpare                             = 0x00000000;
+SDRAM[2].EmcCfgRsv                                = 0xff00ff00;
+SDRAM[2].EmcMrs                                   = 0x80000f15;
+SDRAM[2].EmcEmrs                                  = 0x80100002;
+SDRAM[2].EmcEmrs2                                 = 0x80200020;
+SDRAM[2].EmcEmrs3                                 = 0x80300000;
+SDRAM[2].EmcMrw1                                  = 0x00000000;
+SDRAM[2].EmcMrw2                                  = 0x00000000;
+SDRAM[2].EmcMrw3                                  = 0x00000000;
+SDRAM[2].EmcMrw4                                  = 0x00000000;
+SDRAM[2].EmcMrwExtra                              = 0x00000000;
+SDRAM[2].EmcWarmBootMrwExtra                      = 0x00000000;
+SDRAM[2].EmcWarmBootExtraModeRegWriteEnable       = 0x00000000;
+SDRAM[2].EmcExtraModeRegWriteEnable               = 0x00000000;
+SDRAM[2].EmcMrwResetCommand                       = 0x00000000;
+SDRAM[2].EmcMrwResetNInitWait                     = 0x00000000;
+SDRAM[2].EmcMrsWaitCnt                            = 0x00cd000e;
+SDRAM[2].EmcMrsWaitCnt2                           = 0x00cd000e;
+SDRAM[2].EmcCfg                                   = 0x73300000;
+SDRAM[2].EmcCfg2                                  = 0x0000089d;
+SDRAM[2].EmcCfgPipe                               = 0x00004080;
+SDRAM[2].EmcDbg                                   = 0x01000c00;
+SDRAM[2].EmcCmdQ                                  = 0x10004408;
+SDRAM[2].EmcMc2EmcQ                               = 0x06000404;
+SDRAM[2].EmcDynSelfRefControl                     = 0x800037ea;
+SDRAM[2].AhbArbitrationXbarCtrlMemInitDone        = 0x00000001;
+SDRAM[2].EmcCfgDigDll                             = 0xe00400b1;
+SDRAM[2].EmcCfgDigDllPeriod                       = 0x00008000;
+SDRAM[2].EmcDevSelect                             = 0x00000002;
+SDRAM[2].EmcSelDpdCtrl                            = 0x00040000;
+SDRAM[2].EmcDllXformDqs0                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs1                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs2                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs3                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs4                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs5                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs6                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs7                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs8                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs9                          = 0x007f800a;
+SDRAM[2].EmcDllXformDqs10                         = 0x007f800a;
+SDRAM[2].EmcDllXformDqs11                         = 0x007f800a;
+SDRAM[2].EmcDllXformDqs12                         = 0x007f800a;
+SDRAM[2].EmcDllXformDqs13                         = 0x007f800a;
+SDRAM[2].EmcDllXformDqs14                         = 0x007f800a;
+SDRAM[2].EmcDllXformDqs15                         = 0x007f800a;
+SDRAM[2].EmcDllXformQUse0                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse1                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse2                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse3                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse4                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse5                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse6                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse7                         = 0x00000000;
+SDRAM[2].EmcDllXformAddr0                         = 0x0002c000;
+SDRAM[2].EmcDllXformAddr1                         = 0x0002c000;
+SDRAM[2].EmcDllXformAddr2                         = 0x00000000;
+SDRAM[2].EmcDllXformAddr3                         = 0x0002c000;
+SDRAM[2].EmcDllXformAddr4                         = 0x0002c000;
+SDRAM[2].EmcDllXformAddr5                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse8                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse9                         = 0x00000000;
+SDRAM[2].EmcDllXformQUse10                        = 0x00000000;
+SDRAM[2].EmcDllXformQUse11                        = 0x00000000;
+SDRAM[2].EmcDllXformQUse12                        = 0x00000000;
+SDRAM[2].EmcDllXformQUse13                        = 0x00000000;
+SDRAM[2].EmcDllXformQUse14                        = 0x00000000;
+SDRAM[2].EmcDllXformQUse15                        = 0x00000000;
+SDRAM[2].EmcDliTrimTxDqs0                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs1                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs2                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs3                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs4                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs5                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs6                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs7                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs8                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs9                         = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs10                        = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs11                        = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs12                        = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs13                        = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs14                        = 0x00000005;
+SDRAM[2].EmcDliTrimTxDqs15                        = 0x00000005;
+SDRAM[2].EmcDllXformDq0                           = 0x00000008;
+SDRAM[2].EmcDllXformDq1                           = 0x00000008;
+SDRAM[2].EmcDllXformDq2                           = 0x00000008;
+SDRAM[2].EmcDllXformDq3                           = 0x00000008;
+SDRAM[2].EmcDllXformDq4                           = 0x00000008;
+SDRAM[2].EmcDllXformDq5                           = 0x00000008;
+SDRAM[2].EmcDllXformDq6                           = 0x00000008;
+SDRAM[2].EmcDllXformDq7                           = 0x00000008;
+SDRAM[2].WarmBootWait                             = 0x00000002;
+SDRAM[2].EmcCttTermCtrl                           = 0x00000802;
+SDRAM[2].EmcOdtWrite                              = 0x00000000;
+SDRAM[2].EmcOdtRead                               = 0x00000000;
+SDRAM[2].EmcZcalInterval                          = 0x00020000;
+SDRAM[2].EmcZcalWaitCnt                           = 0x0000004c;
+SDRAM[2].EmcZcalMrwCmd                            = 0x80000000;
+SDRAM[2].EmcMrsResetDll                           = 0x00000000;
+SDRAM[2].EmcZcalInitDev0                          = 0x80000011;
+SDRAM[2].EmcZcalInitDev1                          = 0x00000000;
+SDRAM[2].EmcZcalInitWait                          = 0x00000001;
+SDRAM[2].EmcZcalWarmColdBootEnables               = 0x00000003;
+SDRAM[2].EmcMrwLpddr2ZcalWarmBoot                 = 0x040a00ab;
+SDRAM[2].EmcZqCalDdr3WarmBoot                     = 0x00000000;
+SDRAM[2].EmcZcalWarmBootWait                      = 0x00000001;
+SDRAM[2].EmcMrsWarmBootEnable                     = 0x00000001;
+SDRAM[2].EmcMrsResetDllWait                       = 0x00000000;
+SDRAM[2].EmcMrsExtra                              = 0x80000f15;
+SDRAM[2].EmcWarmBootMrsExtra                      = 0x80100002;
+SDRAM[2].EmcEmrsDdr2DllEnable                     = 0x00000000;
+SDRAM[2].EmcMrsDdr2DllReset                       = 0x00000000;
+SDRAM[2].EmcEmrsDdr2OcdCalib                      = 0x00000000;
+SDRAM[2].EmcDdr2Wait                              = 0x00000000;
+SDRAM[2].EmcClkenOverride                         = 0x00000000;
+SDRAM[2].McDisExtraSnapLevels                     = 0x00000000;
+SDRAM[2].EmcExtraRefreshNum                       = 0x00000002;
+SDRAM[2].EmcClkenOverrideAllWarmBoot              = 0x00000000;
+SDRAM[2].McClkenOverrideAllWarmBoot               = 0x00000000;
+SDRAM[2].EmcCfgDigDllPeriodWarmBoot               = 0x00000003;
+SDRAM[2].PmcVddpSel                               = 0x00000002;
+SDRAM[2].PmcVddpSelWait                           = 0x00000002;
+SDRAM[2].PmcDdrPwr                                = 0x00000003;
+SDRAM[2].PmcDdrCfg                                = 0x00002002;
+SDRAM[2].PmcIoDpd3Req                             = 0x4fff2f97;
+SDRAM[2].PmcIoDpd3ReqWait                         = 0x00000000;
+SDRAM[2].PmcRegShort                              = 0x00000000;
+SDRAM[2].PmcNoIoPower                             = 0x00000000;
+SDRAM[2].PmcPorDpdCtrlWait                        = 0x00000000;
+SDRAM[2].EmcXm2CmdPadCtrl                         = 0x100002a0;
+SDRAM[2].EmcXm2CmdPadCtrl2                        = 0x770c0000;
+SDRAM[2].EmcXm2CmdPadCtrl3                        = 0x050c0000;
+SDRAM[2].EmcXm2CmdPadCtrl4                        = 0x00000000;
+SDRAM[2].EmcXm2CmdPadCtrl5                        = 0x00111111;
+SDRAM[2].EmcXm2DqsPadCtrl                         = 0x770c1414;
+SDRAM[2].EmcXm2DqsPadCtrl2                        = 0x0120113d;
+SDRAM[2].EmcXm2DqsPadCtrl3                        = 0x5d75d720;
+SDRAM[2].EmcXm2DqsPadCtrl4                        = 0x00514514;
+SDRAM[2].EmcXm2DqsPadCtrl5                        = 0x00514514;
+SDRAM[2].EmcXm2DqsPadCtrl6                        = 0x5d75d700;
+SDRAM[2].EmcXm2DqPadCtrl                          = 0x770c2990;
+SDRAM[2].EmcXm2DqPadCtrl2                         = 0x00000000;
+SDRAM[2].EmcXm2DqPadCtrl3                         = 0x00000000;
+SDRAM[2].EmcXm2ClkPadCtrl                         = 0x77ffc085;
+SDRAM[2].EmcXm2ClkPadCtrl2                        = 0x00000000;
+SDRAM[2].EmcXm2CompPadCtrl                        = 0x81f1f108;
+SDRAM[2].EmcXm2VttGenPadCtrl                      = 0x07070004;
+SDRAM[2].EmcXm2VttGenPadCtrl2                     = 0x00000000;
+SDRAM[2].EmcXm2VttGenPadCtrl3                     = 0x016eeeee;
+SDRAM[2].EmcAcpdControl                           = 0x00000000;
+SDRAM[2].EmcSwizzleRank0ByteCfg                   = 0x00003120;
+SDRAM[2].EmcSwizzleRank0Byte0                     = 0x25143067;
+SDRAM[2].EmcSwizzleRank0Byte1                     = 0x45367102;
+SDRAM[2].EmcSwizzleRank0Byte2                     = 0x47106253;
+SDRAM[2].EmcSwizzleRank0Byte3                     = 0x04362175;
+SDRAM[2].EmcSwizzleRank1ByteCfg                   = 0x00003120;
+SDRAM[2].EmcSwizzleRank1Byte0                     = 0x71546032;
+SDRAM[2].EmcSwizzleRank1Byte1                     = 0x35104276;
+SDRAM[2].EmcSwizzleRank1Byte2                     = 0x27043615;
+SDRAM[2].EmcSwizzleRank1Byte3                     = 0x72306145;
+SDRAM[2].EmcDsrVttgenDrv                          = 0x0606003f;
+SDRAM[2].EmcTxdsrvttgen                           = 0x00000000;
+SDRAM[2].EmcBgbiasCtl0                            = 0x00000000;
+SDRAM[2].McEmemAdrCfg                             = 0x00000000;
+SDRAM[2].McEmemAdrCfgDev0                         = 0x00080303;
+SDRAM[2].McEmemAdrCfgDev1                         = 0x00080303;
+SDRAM[2].McEmemAdrCfgBankMask0                    = 0x00001248;
+SDRAM[2].McEmemAdrCfgBankMask1                    = 0x00002490;
+SDRAM[2].McEmemAdrCfgBankMask2                    = 0x00000920;
+SDRAM[2].McEmemAdrCfgBankSwizzle3                 = 0x00000001;
+SDRAM[2].McEmemCfg                                = 0x00000800;
+SDRAM[2].McEmemArbCfg                             = 0x0e00000d;
+SDRAM[2].McEmemArbOutstandingReq                  = 0x80000040;
+SDRAM[2].McEmemArbTimingRcd                       = 0x00000005;
+SDRAM[2].McEmemArbTimingRp                        = 0x00000006;
+SDRAM[2].McEmemArbTimingRc                        = 0x00000016;
+SDRAM[2].McEmemArbTimingRas                       = 0x0000000e;
+SDRAM[2].McEmemArbTimingFaw                       = 0x00000011;
+SDRAM[2].McEmemArbTimingRrd                       = 0x00000002;
+SDRAM[2].McEmemArbTimingRap2Pre                   = 0x00000004;
+SDRAM[2].McEmemArbTimingWap2Pre                   = 0x0000000e;
+SDRAM[2].McEmemArbTimingR2R                       = 0x00000002;
+SDRAM[2].McEmemArbTimingW2W                       = 0x00000002;
+SDRAM[2].McEmemArbTimingR2W                       = 0x00000006;
+SDRAM[2].McEmemArbTimingW2R                       = 0x00000009;
+SDRAM[2].McEmemArbDaTurns                         = 0x09060202;
+SDRAM[2].McEmemArbDaCovers                        = 0x001a1016;
+SDRAM[2].McEmemArbMisc0                           = 0x734e2a17;
+SDRAM[2].McEmemArbMisc1                           = 0x70000f02;
+SDRAM[2].McEmemArbRing1Throttle                   = 0x001f0000;
+SDRAM[2].McEmemArbOverride                        = 0x10000000;
+SDRAM[2].McEmemArbOverride1                       = 0x00000000;
+SDRAM[2].McEmemArbRsv                             = 0xff00ff00;
+SDRAM[2].McClkenOverride                          = 0x00000000;
+SDRAM[2].McStatControl                            = 0x00000000;
+SDRAM[2].McDisplaySnapRing                        = 0x00000003;
+SDRAM[2].McVideoProtectBom                        = 0xfff00000;
+SDRAM[2].McVideoProtectBomAdrHi                   = 0x00000000;
+SDRAM[2].McVideoProtectSizeMb                     = 0x00000000;
+SDRAM[2].McVideoProtectVprOverride                = 0xe4bac743;
+SDRAM[2].McVideoProtectVprOverride1               = 0x00000013;
+SDRAM[2].McVideoProtectGpuOverride0               = 0x00000000;
+SDRAM[2].McVideoProtectGpuOverride1               = 0x00000000;
+SDRAM[2].McSecCarveoutBom                         = 0xfff00000;
+SDRAM[2].McSecCarveoutAdrHi                       = 0x00000000;
+SDRAM[2].McSecCarveoutSizeMb                      = 0x00000000;
+SDRAM[2].McVideoProtectWriteAccess                = 0x00000000;
+SDRAM[2].McSecCarveoutProtectWriteAccess          = 0x00000000;
+SDRAM[2].EmcCaTrainingEnable                      = 0x00000000;
+SDRAM[2].EmcCaTrainingTimingCntl1                 = 0x1f7df7df;
+SDRAM[2].EmcCaTrainingTimingCntl2                 = 0x0000001f;
+SDRAM[2].SwizzleRankByteEncode                    = 0x0000006f;
+SDRAM[2].BootRomPatchControl                      = 0x00000000;
+SDRAM[2].BootRomPatchData                         = 0x00000000;
+SDRAM[2].McMtsCarveoutBom                         = 0xfff00000;
+SDRAM[2].McMtsCarveoutAdrHi                       = 0x00000000;
+SDRAM[2].McMtsCarveoutSizeMb                      = 0x00000000;
+SDRAM[2].McMtsCarveoutRegCtrl                     = 0x00000000;
+
+SDRAM[3].MemoryType                               = NvBootMemoryType_Ddr3;
+SDRAM[3].PllMInputDivider                         = 0x00000001;
+SDRAM[3].PllMFeedbackDivider                      = 0x0000004d;
+SDRAM[3].PllMStableTime                           = 0x0000012c;
+SDRAM[3].PllMSetupControl                         = 0x00000000;
+SDRAM[3].PllMSelectDiv2                           = 0x00000000;
+SDRAM[3].PllMPDLshiftPh45                         = 0x00000001;
+SDRAM[3].PllMPDLshiftPh90                         = 0x00000001;
+SDRAM[3].PllMPDLshiftPh135                        = 0x00000001;
+SDRAM[3].PllMKCP                                  = 0x00000000;
+SDRAM[3].PllMKVCO                                 = 0x00000000;
+SDRAM[3].EmcBctSpare0                             = 0x00000000;
+SDRAM[3].EmcBctSpare1                             = 0x00000000;
+SDRAM[3].EmcBctSpare2                             = 0x00000000;
+SDRAM[3].EmcBctSpare3                             = 0x00000000;
+SDRAM[3].EmcBctSpare4                             = 0x00000000;
+SDRAM[3].EmcBctSpare5                             = 0x00000000;
+SDRAM[3].EmcBctSpare6                             = 0x00000000;
+SDRAM[3].EmcBctSpare7                             = 0x00000000;
+SDRAM[3].EmcBctSpare8                             = 0x00000000;
+SDRAM[3].EmcBctSpare9                             = 0x00000000;
+SDRAM[3].EmcBctSpare10                            = 0x00000000;
+SDRAM[3].EmcBctSpare11                            = 0x00000000;
+SDRAM[3].EmcClockSource                           = 0x80000000;
+SDRAM[3].EmcAutoCalInterval                       = 0x001fffff;
+SDRAM[3].EmcAutoCalConfig                         = 0xa1430303;
+SDRAM[3].EmcAutoCalConfig2                        = 0x00000000;
+SDRAM[3].EmcAutoCalConfig3                        = 0x00000000;
+SDRAM[3].EmcAutoCalWait                           = 0x00000190;
+SDRAM[3].EmcAdrCfg                                = 0x00000000;
+SDRAM[3].EmcPinProgramWait                        = 0x00000001;
+SDRAM[3].EmcPinExtraWait                          = 0x00000000;
+SDRAM[3].EmcTimingControlWait                     = 0x00000000;
+SDRAM[3].EmcRc                                    = 0x0000002b;
+SDRAM[3].EmcRfc                                   = 0x000000f0;
+SDRAM[3].EmcRfcSlr                                = 0x00000000;
+SDRAM[3].EmcRas                                   = 0x0000001e;
+SDRAM[3].EmcRp                                    = 0x0000000b;
+SDRAM[3].EmcR2r                                   = 0x00000000;
+SDRAM[3].EmcW2w                                   = 0x00000000;
+SDRAM[3].EmcR2w                                   = 0x00000009;
+SDRAM[3].EmcW2r                                   = 0x0000000f;
+SDRAM[3].EmcR2p                                   = 0x00000005;
+SDRAM[3].EmcW2p                                   = 0x00000016;
+SDRAM[3].EmcRdRcd                                 = 0x0000000b;
+SDRAM[3].EmcWrRcd                                 = 0x0000000b;
+SDRAM[3].EmcRrd                                   = 0x00000004;
+SDRAM[3].EmcRext                                  = 0x00000002;
+SDRAM[3].EmcWext                                  = 0x00000000;
+SDRAM[3].EmcWdv                                   = 0x00000007;
+SDRAM[3].EmcWdvMask                               = 0x00000007;
+SDRAM[3].EmcQUse                                  = 0x0000000d;
+SDRAM[3].EmcQuseWidth                             = 0x00000002;
+SDRAM[3].EmcIbdly                                 = 0x00000000;
+SDRAM[3].EmcEInput                                = 0x00000002;
+SDRAM[3].EmcEInputDuration                        = 0x0000000f;
+SDRAM[3].EmcPutermExtra                           = 0x000a0000;
+SDRAM[3].EmcPutermWidth                           = 0x00000004;
+SDRAM[3].EmcPutermAdj                             = 0x00000000;
+SDRAM[3].EmcCdbCntl1                              = 0x00000000;
+SDRAM[3].EmcCdbCntl2                              = 0x00000000;
+SDRAM[3].EmcCdbCntl3                              = 0x00000000;
+SDRAM[3].EmcQRst                                  = 0x00000001;
+SDRAM[3].EmcQSafe                                 = 0x00000016;
+SDRAM[3].EmcRdv                                   = 0x0000001a;
+SDRAM[3].EmcRdvMask                               = 0x0000001c;
+SDRAM[3].EmcQpop                                  = 0x00000011;
+SDRAM[3].EmcCtt                                   = 0x00000000;
+SDRAM[3].EmcCttDuration                           = 0x00000004;
+SDRAM[3].EmcRefresh                               = 0x00001be7;
+SDRAM[3].EmcBurstRefreshNum                       = 0x00000000;
+SDRAM[3].EmcPreRefreshReqCnt                      = 0x000006f9;
+SDRAM[3].EmcPdEx2Wr                               = 0x00000004;
+SDRAM[3].EmcPdEx2Rd                               = 0x00000015;
+SDRAM[3].EmcPChg2Pden                             = 0x00000001;
+SDRAM[3].EmcAct2Pden                              = 0x00000000;
+SDRAM[3].EmcAr2Pden                               = 0x000000e7;
+SDRAM[3].EmcRw2Pden                               = 0x0000001b;
+SDRAM[3].EmcTxsr                                  = 0x000000fb;
+SDRAM[3].EmcTxsrDll                               = 0x00000200;
+SDRAM[3].EmcTcke                                  = 0x00000006;
+SDRAM[3].EmcTckesr                                = 0x00000007;
+SDRAM[3].EmcTpd                                   = 0x00000006;
+SDRAM[3].EmcTfaw                                  = 0x00000022;
+SDRAM[3].EmcTrpab                                 = 0x00000000;
+SDRAM[3].EmcTClkStable                            = 0x0000000a;
+SDRAM[3].EmcTClkStop                              = 0x0000000a;
+SDRAM[3].EmcTRefBw                                = 0x00001c28;
+SDRAM[3].EmcFbioCfg5                              = 0x104ab898;
+SDRAM[3].EmcFbioCfg6                              = 0x00000000;
+SDRAM[3].EmcFbioSpare                             = 0x00000000;
+SDRAM[3].EmcCfgRsv                                = 0xff00ff00;
+SDRAM[3].EmcMrs                                   = 0x80000f15;
+SDRAM[3].EmcEmrs                                  = 0x80100002;
+SDRAM[3].EmcEmrs2                                 = 0x80200020;
+SDRAM[3].EmcEmrs3                                 = 0x80300000;
+SDRAM[3].EmcMrw1                                  = 0x00000000;
+SDRAM[3].EmcMrw2                                  = 0x00000000;
+SDRAM[3].EmcMrw3                                  = 0x00000000;
+SDRAM[3].EmcMrw4                                  = 0x00000000;
+SDRAM[3].EmcMrwExtra                              = 0x00000000;
+SDRAM[3].EmcWarmBootMrwExtra                      = 0x00000000;
+SDRAM[3].EmcWarmBootExtraModeRegWriteEnable       = 0x00000000;
+SDRAM[3].EmcExtraModeRegWriteEnable               = 0x00000000;
+SDRAM[3].EmcMrwResetCommand                       = 0x00000000;
+SDRAM[3].EmcMrwResetNInitWait                     = 0x00000000;
+SDRAM[3].EmcMrsWaitCnt                            = 0x00cd000e;
+SDRAM[3].EmcMrsWaitCnt2                           = 0x00cd000e;
+SDRAM[3].EmcCfg                                   = 0x73300000;
+SDRAM[3].EmcCfg2                                  = 0x0000089d;
+SDRAM[3].EmcCfgPipe                               = 0x00004080;
+SDRAM[3].EmcDbg                                   = 0x01000c00;
+SDRAM[3].EmcCmdQ                                  = 0x10004408;
+SDRAM[3].EmcMc2EmcQ                               = 0x06000404;
+SDRAM[3].EmcDynSelfRefControl                     = 0x800037ea;
+SDRAM[3].AhbArbitrationXbarCtrlMemInitDone        = 0x00000001;
+SDRAM[3].EmcCfgDigDll                             = 0xe00400b1;
+SDRAM[3].EmcCfgDigDllPeriod                       = 0x00008000;
+SDRAM[3].EmcDevSelect                             = 0x00000002;
+SDRAM[3].EmcSelDpdCtrl                            = 0x00040000;
+SDRAM[3].EmcDllXformDqs0                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs1                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs2                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs3                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs4                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs5                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs6                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs7                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs8                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs9                          = 0x007f800a;
+SDRAM[3].EmcDllXformDqs10                         = 0x007f800a;
+SDRAM[3].EmcDllXformDqs11                         = 0x007f800a;
+SDRAM[3].EmcDllXformDqs12                         = 0x007f800a;
+SDRAM[3].EmcDllXformDqs13                         = 0x007f800a;
+SDRAM[3].EmcDllXformDqs14                         = 0x007f800a;
+SDRAM[3].EmcDllXformDqs15                         = 0x007f800a;
+SDRAM[3].EmcDllXformQUse0                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse1                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse2                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse3                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse4                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse5                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse6                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse7                         = 0x00000000;
+SDRAM[3].EmcDllXformAddr0                         = 0x0002c000;
+SDRAM[3].EmcDllXformAddr1                         = 0x0002c000;
+SDRAM[3].EmcDllXformAddr2                         = 0x00000000;
+SDRAM[3].EmcDllXformAddr3                         = 0x0002c000;
+SDRAM[3].EmcDllXformAddr4                         = 0x0002c000;
+SDRAM[3].EmcDllXformAddr5                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse8                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse9                         = 0x00000000;
+SDRAM[3].EmcDllXformQUse10                        = 0x00000000;
+SDRAM[3].EmcDllXformQUse11                        = 0x00000000;
+SDRAM[3].EmcDllXformQUse12                        = 0x00000000;
+SDRAM[3].EmcDllXformQUse13                        = 0x00000000;
+SDRAM[3].EmcDllXformQUse14                        = 0x00000000;
+SDRAM[3].EmcDllXformQUse15                        = 0x00000000;
+SDRAM[3].EmcDliTrimTxDqs0                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs1                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs2                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs3                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs4                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs5                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs6                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs7                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs8                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs9                         = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs10                        = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs11                        = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs12                        = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs13                        = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs14                        = 0x00000005;
+SDRAM[3].EmcDliTrimTxDqs15                        = 0x00000005;
+SDRAM[3].EmcDllXformDq0                           = 0x00000008;
+SDRAM[3].EmcDllXformDq1                           = 0x00000008;
+SDRAM[3].EmcDllXformDq2                           = 0x00000008;
+SDRAM[3].EmcDllXformDq3                           = 0x00000008;
+SDRAM[3].EmcDllXformDq4                           = 0x00000008;
+SDRAM[3].EmcDllXformDq5                           = 0x00000008;
+SDRAM[3].EmcDllXformDq6                           = 0x00000008;
+SDRAM[3].EmcDllXformDq7                           = 0x00000008;
+SDRAM[3].WarmBootWait                             = 0x00000002;
+SDRAM[3].EmcCttTermCtrl                           = 0x00000802;
+SDRAM[3].EmcOdtWrite                              = 0x00000000;
+SDRAM[3].EmcOdtRead                               = 0x00000000;
+SDRAM[3].EmcZcalInterval                          = 0x00020000;
+SDRAM[3].EmcZcalWaitCnt                           = 0x0000004c;
+SDRAM[3].EmcZcalMrwCmd                            = 0x80000000;
+SDRAM[3].EmcMrsResetDll                           = 0x00000000;
+SDRAM[3].EmcZcalInitDev0                          = 0x80000011;
+SDRAM[3].EmcZcalInitDev1                          = 0x00000000;
+SDRAM[3].EmcZcalInitWait                          = 0x00000001;
+SDRAM[3].EmcZcalWarmColdBootEnables               = 0x00000003;
+SDRAM[3].EmcMrwLpddr2ZcalWarmBoot                 = 0x040a00ab;
+SDRAM[3].EmcZqCalDdr3WarmBoot                     = 0x00000000;
+SDRAM[3].EmcZcalWarmBootWait                      = 0x00000001;
+SDRAM[3].EmcMrsWarmBootEnable                     = 0x00000001;
+SDRAM[3].EmcMrsResetDllWait                       = 0x00000000;
+SDRAM[3].EmcMrsExtra                              = 0x80000f15;
+SDRAM[3].EmcWarmBootMrsExtra                      = 0x80100002;
+SDRAM[3].EmcEmrsDdr2DllEnable                     = 0x00000000;
+SDRAM[3].EmcMrsDdr2DllReset                       = 0x00000000;
+SDRAM[3].EmcEmrsDdr2OcdCalib                      = 0x00000000;
+SDRAM[3].EmcDdr2Wait                              = 0x00000000;
+SDRAM[3].EmcClkenOverride                         = 0x00000000;
+SDRAM[3].McDisExtraSnapLevels                     = 0x00000000;
+SDRAM[3].EmcExtraRefreshNum                       = 0x00000002;
+SDRAM[3].EmcClkenOverrideAllWarmBoot              = 0x00000000;
+SDRAM[3].McClkenOverrideAllWarmBoot               = 0x00000000;
+SDRAM[3].EmcCfgDigDllPeriodWarmBoot               = 0x00000003;
+SDRAM[3].PmcVddpSel                               = 0x00000002;
+SDRAM[3].PmcVddpSelWait                           = 0x00000002;
+SDRAM[3].PmcDdrPwr                                = 0x00000003;
+SDRAM[3].PmcDdrCfg                                = 0x00002002;
+SDRAM[3].PmcIoDpd3Req                             = 0x4fff2f97;
+SDRAM[3].PmcIoDpd3ReqWait                         = 0x00000000;
+SDRAM[3].PmcRegShort                              = 0x00000000;
+SDRAM[3].PmcNoIoPower                             = 0x00000000;
+SDRAM[3].PmcPorDpdCtrlWait                        = 0x00000000;
+SDRAM[3].EmcXm2CmdPadCtrl                         = 0x100002a0;
+SDRAM[3].EmcXm2CmdPadCtrl2                        = 0x770c0000;
+SDRAM[3].EmcXm2CmdPadCtrl3                        = 0x050c0000;
+SDRAM[3].EmcXm2CmdPadCtrl4                        = 0x00000000;
+SDRAM[3].EmcXm2CmdPadCtrl5                        = 0x00111111;
+SDRAM[3].EmcXm2DqsPadCtrl                         = 0x770c1414;
+SDRAM[3].EmcXm2DqsPadCtrl2                        = 0x0120113d;
+SDRAM[3].EmcXm2DqsPadCtrl3                        = 0x5d75d720;
+SDRAM[3].EmcXm2DqsPadCtrl4                        = 0x00514514;
+SDRAM[3].EmcXm2DqsPadCtrl5                        = 0x00514514;
+SDRAM[3].EmcXm2DqsPadCtrl6                        = 0x5d75d700;
+SDRAM[3].EmcXm2DqPadCtrl                          = 0x770c2990;
+SDRAM[3].EmcXm2DqPadCtrl2                         = 0x00000000;
+SDRAM[3].EmcXm2DqPadCtrl3                         = 0x00000000;
+SDRAM[3].EmcXm2ClkPadCtrl                         = 0x77ffc085;
+SDRAM[3].EmcXm2ClkPadCtrl2                        = 0x00000000;
+SDRAM[3].EmcXm2CompPadCtrl                        = 0x81f1f108;
+SDRAM[3].EmcXm2VttGenPadCtrl                      = 0x07070004;
+SDRAM[3].EmcXm2VttGenPadCtrl2                     = 0x00000000;
+SDRAM[3].EmcXm2VttGenPadCtrl3                     = 0x016eeeee;
+SDRAM[3].EmcAcpdControl                           = 0x00000000;
+SDRAM[3].EmcSwizzleRank0ByteCfg                   = 0x00003120;
+SDRAM[3].EmcSwizzleRank0Byte0                     = 0x25143067;
+SDRAM[3].EmcSwizzleRank0Byte1                     = 0x45367102;
+SDRAM[3].EmcSwizzleRank0Byte2                     = 0x47106253;
+SDRAM[3].EmcSwizzleRank0Byte3                     = 0x04362175;
+SDRAM[3].EmcSwizzleRank1ByteCfg                   = 0x00003120;
+SDRAM[3].EmcSwizzleRank1Byte0                     = 0x71546032;
+SDRAM[3].EmcSwizzleRank1Byte1                     = 0x35104276;
+SDRAM[3].EmcSwizzleRank1Byte2                     = 0x27043615;
+SDRAM[3].EmcSwizzleRank1Byte3                     = 0x72306145;
+SDRAM[3].EmcDsrVttgenDrv                          = 0x0606003f;
+SDRAM[3].EmcTxdsrvttgen                           = 0x00000000;
+SDRAM[3].EmcBgbiasCtl0                            = 0x00000000;
+SDRAM[3].McEmemAdrCfg                             = 0x00000000;
+SDRAM[3].McEmemAdrCfgDev0                         = 0x00080303;
+SDRAM[3].McEmemAdrCfgDev1                         = 0x00080303;
+SDRAM[3].McEmemAdrCfgBankMask0                    = 0x00001248;
+SDRAM[3].McEmemAdrCfgBankMask1                    = 0x00002490;
+SDRAM[3].McEmemAdrCfgBankMask2                    = 0x00000920;
+SDRAM[3].McEmemAdrCfgBankSwizzle3                 = 0x00000001;
+SDRAM[3].McEmemCfg                                = 0x00000800;
+SDRAM[3].McEmemArbCfg                             = 0x0e00000d;
+SDRAM[3].McEmemArbOutstandingReq                  = 0x80000040;
+SDRAM[3].McEmemArbTimingRcd                       = 0x00000005;
+SDRAM[3].McEmemArbTimingRp                        = 0x00000006;
+SDRAM[3].McEmemArbTimingRc                        = 0x00000016;
+SDRAM[3].McEmemArbTimingRas                       = 0x0000000e;
+SDRAM[3].McEmemArbTimingFaw                       = 0x00000011;
+SDRAM[3].McEmemArbTimingRrd                       = 0x00000002;
+SDRAM[3].McEmemArbTimingRap2Pre                   = 0x00000004;
+SDRAM[3].McEmemArbTimingWap2Pre                   = 0x0000000e;
+SDRAM[3].McEmemArbTimingR2R                       = 0x00000002;
+SDRAM[3].McEmemArbTimingW2W                       = 0x00000002;
+SDRAM[3].McEmemArbTimingR2W                       = 0x00000006;
+SDRAM[3].McEmemArbTimingW2R                       = 0x00000009;
+SDRAM[3].McEmemArbDaTurns                         = 0x09060202;
+SDRAM[3].McEmemArbDaCovers                        = 0x001a1016;
+SDRAM[3].McEmemArbMisc0                           = 0x734e2a17;
+SDRAM[3].McEmemArbMisc1                           = 0x70000f02;
+SDRAM[3].McEmemArbRing1Throttle                   = 0x001f0000;
+SDRAM[3].McEmemArbOverride                        = 0x10000000;
+SDRAM[3].McEmemArbOverride1                       = 0x00000000;
+SDRAM[3].McEmemArbRsv                             = 0xff00ff00;
+SDRAM[3].McClkenOverride                          = 0x00000000;
+SDRAM[3].McStatControl                            = 0x00000000;
+SDRAM[3].McDisplaySnapRing                        = 0x00000003;
+SDRAM[3].McVideoProtectBom                        = 0xfff00000;
+SDRAM[3].McVideoProtectBomAdrHi                   = 0x00000000;
+SDRAM[3].McVideoProtectSizeMb                     = 0x00000000;
+SDRAM[3].McVideoProtectVprOverride                = 0xe4bac743;
+SDRAM[3].McVideoProtectVprOverride1               = 0x00000013;
+SDRAM[3].McVideoProtectGpuOverride0               = 0x00000000;
+SDRAM[3].McVideoProtectGpuOverride1               = 0x00000000;
+SDRAM[3].McSecCarveoutBom                         = 0xfff00000;
+SDRAM[3].McSecCarveoutAdrHi                       = 0x00000000;
+SDRAM[3].McSecCarveoutSizeMb                      = 0x00000000;
+SDRAM[3].McVideoProtectWriteAccess                = 0x00000000;
+SDRAM[3].McSecCarveoutProtectWriteAccess          = 0x00000000;
+SDRAM[3].EmcCaTrainingEnable                      = 0x00000000;
+SDRAM[3].EmcCaTrainingTimingCntl1                 = 0x1f7df7df;
+SDRAM[3].EmcCaTrainingTimingCntl2                 = 0x0000001f;
+SDRAM[3].SwizzleRankByteEncode                    = 0x0000006f;
+SDRAM[3].BootRomPatchControl                      = 0x00000000;
+SDRAM[3].BootRomPatchData                         = 0x00000000;
+SDRAM[3].McMtsCarveoutBom                         = 0xfff00000;
+SDRAM[3].McMtsCarveoutAdrHi                       = 0x00000000;
+SDRAM[3].McMtsCarveoutSizeMb                      = 0x00000000;
+SDRAM[3].McMtsCarveoutRegCtrl                     = 0x00000000;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 63d59f7..ef65302 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -37,7 +37,8 @@ dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 dtb-$(CONFIG_ARCH_TEGRA) += \
 	tegra20-colibri-iris.dtb \
 	tegra20-paz00.dtb \
-	tegra30-beaver.dtb
+	tegra30-beaver.dtb \
+	tegra124-jetson-tk1.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
@@ -50,6 +51,7 @@ pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
+pbl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
new file mode 100644
index 0000000..16082c0
--- /dev/null
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -0,0 +1,1828 @@
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include "tegra124.dtsi"
+
+/ {
+	model = "NVIDIA Tegra124 Jetson TK1";
+	compatible = "nvidia,jetson-tk1", "nvidia,tegra124";
+
+	aliases {
+		rtc0 = "/i2c@0,7000d000/pmic@40";
+		rtc1 = "/rtc@0,7000e000";
+	};
+
+	memory {
+		reg = <0x0 0x80000000 0x0 0x80000000>;
+	};
+
+	host1x@0,50000000 {
+		hdmi@0,54280000 {
+			status = "okay";
+
+			hdmi-supply = <&vdd_5v0_hdmi>;
+			pll-supply = <&vdd_hdmi_pll>;
+			vdd-supply = <&vdd_3v3_hdmi>;
+
+			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
+			nvidia,hpd-gpio =
+				<&gpio TEGRA_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	pinmux: pinmux@0,70000868 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&state_default>;
+
+		state_default: pinmux {
+			clk_32k_out_pa0 {
+				nvidia,pins = "clk_32k_out_pa0";
+				nvidia,function = "soc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			uart3_cts_n_pa1 {
+				nvidia,pins = "uart3_cts_n_pa1";
+				nvidia,function = "uartc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap2_fs_pa2 {
+				nvidia,pins = "dap2_fs_pa2";
+				nvidia,function = "i2s1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap2_sclk_pa3 {
+				nvidia,pins = "dap2_sclk_pa3";
+				nvidia,function = "i2s1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap2_din_pa4 {
+				nvidia,pins = "dap2_din_pa4";
+				nvidia,function = "i2s1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap2_dout_pa5 {
+				nvidia,pins = "dap2_dout_pa5";
+				nvidia,function = "i2s1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_clk_pa6 {
+				nvidia,pins = "sdmmc3_clk_pa6";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc3_cmd_pa7 {
+				nvidia,pins = "sdmmc3_cmd_pa7";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pb0 {
+				nvidia,pins = "pb0";
+				nvidia,function = "uartd";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pb1 {
+				nvidia,pins = "pb1";
+				nvidia,function = "uartd";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_dat3_pb4 {
+				nvidia,pins = "sdmmc3_dat3_pb4";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_dat2_pb5 {
+				nvidia,pins = "sdmmc3_dat2_pb5";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_dat1_pb6 {
+				nvidia,pins = "sdmmc3_dat1_pb6";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_dat0_pb7 {
+				nvidia,pins = "sdmmc3_dat0_pb7";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			uart3_rts_n_pc0 {
+				nvidia,pins = "uart3_rts_n_pc0";
+				nvidia,function = "uartc";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			uart2_txd_pc2 {
+				nvidia,pins = "uart2_txd_pc2";
+				nvidia,function = "irda";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			uart2_rxd_pc3 {
+				nvidia,pins = "uart2_rxd_pc3";
+				nvidia,function = "irda";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gen1_i2c_scl_pc4 {
+				nvidia,pins = "gen1_i2c_scl_pc4";
+				nvidia,function = "i2c1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			gen1_i2c_sda_pc5 {
+				nvidia,pins = "gen1_i2c_sda_pc5";
+				nvidia,function = "i2c1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			pc7 {
+				nvidia,pins = "pc7";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pg0 {
+				nvidia,pins = "pg0";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pg1 {
+				nvidia,pins = "pg1";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pg2 {
+				nvidia,pins = "pg2";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pg3 {
+				nvidia,pins = "pg3";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pg4 {
+				nvidia,pins = "pg4";
+				nvidia,function = "spi4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pg5 {
+				nvidia,pins = "pg5";
+				nvidia,function = "spi4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pg6 {
+				nvidia,pins = "pg6";
+				nvidia,function = "spi4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pg7 {
+				nvidia,pins = "pg7";
+				nvidia,function = "spi4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ph0 {
+				nvidia,pins = "ph0";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ph1 {
+				nvidia,pins = "ph1";
+				nvidia,function = "pwm1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ph2 {
+				nvidia,pins = "ph2";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ph3 {
+				nvidia,pins = "ph3";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ph4 {
+				nvidia,pins = "ph4";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ph5 {
+				nvidia,pins = "ph5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ph6 {
+				nvidia,pins = "ph6";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ph7 {
+				nvidia,pins = "ph7";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi0 {
+				nvidia,pins = "pi0";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi1 {
+				nvidia,pins = "pi1";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi2 {
+				nvidia,pins = "pi2";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi3 {
+				nvidia,pins = "pi3";
+				nvidia,function = "spi4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi4 {
+				nvidia,pins = "pi4";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pi5 {
+				nvidia,pins = "pi5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pi6 {
+				nvidia,pins = "pi6";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pi7 {
+				nvidia,pins = "pi7";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pj0 {
+				nvidia,pins = "pj0";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pj2 {
+				nvidia,pins = "pj2";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			uart2_cts_n_pj5 {
+				nvidia,pins = "uart2_cts_n_pj5";
+				nvidia,function = "uartb";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			uart2_rts_n_pj6 {
+				nvidia,pins = "uart2_rts_n_pj6";
+				nvidia,function = "uartb";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pj7 {
+				nvidia,pins = "pj7";
+				nvidia,function = "uartd";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pk0 {
+				nvidia,pins = "pk0";
+				nvidia,function = "soc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pk1 {
+				nvidia,pins = "pk1";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pk2 {
+				nvidia,pins = "pk2";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pk3 {
+				nvidia,pins = "pk3";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pk4 {
+				nvidia,pins = "pk4";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			spdif_out_pk5 {
+				nvidia,pins = "spdif_out_pk5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			spdif_in_pk6 {
+				nvidia,pins = "spdif_in_pk6";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pk7 {
+				nvidia,pins = "pk7";
+				nvidia,function = "uartd";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap1_fs_pn0 {
+				nvidia,pins = "dap1_fs_pn0";
+				nvidia,function = "i2s0";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap1_din_pn1 {
+				nvidia,pins = "dap1_din_pn1";
+				nvidia,function = "i2s0";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap1_dout_pn2 {
+				nvidia,pins = "dap1_dout_pn2";
+				nvidia,function = "sata";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap1_sclk_pn3 {
+				nvidia,pins = "dap1_sclk_pn3";
+				nvidia,function = "i2s0";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			usb_vbus_en0_pn4 {
+				nvidia,pins = "usb_vbus_en0_pn4";
+				nvidia,function = "usb";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			usb_vbus_en1_pn5 {
+				nvidia,pins = "usb_vbus_en1_pn5";
+				nvidia,function = "usb";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			hdmi_int_pn7 {
+				nvidia,pins = "hdmi_int_pn7";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,rcv-sel = <TEGRA_PIN_DISABLE>;
+			};
+			ulpi_data7_po0 {
+				nvidia,pins = "ulpi_data7_po0";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data0_po1 {
+				nvidia,pins = "ulpi_data0_po1";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data1_po2 {
+				nvidia,pins = "ulpi_data1_po2";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data2_po3 {
+				nvidia,pins = "ulpi_data2_po3";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data3_po4 {
+				nvidia,pins = "ulpi_data3_po4";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data4_po5 {
+				nvidia,pins = "ulpi_data4_po5";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_data5_po6 {
+				nvidia,pins = "ulpi_data5_po6";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ulpi_data6_po7 {
+				nvidia,pins = "ulpi_data6_po7";
+				nvidia,function = "ulpi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap3_fs_pp0 {
+				nvidia,pins = "dap3_fs_pp0";
+				nvidia,function = "i2s2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap3_din_pp1 {
+				nvidia,pins = "dap3_din_pp1";
+				nvidia,function = "i2s2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap3_dout_pp2 {
+				nvidia,pins = "dap3_dout_pp2";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap3_sclk_pp3 {
+				nvidia,pins = "dap3_sclk_pp3";
+				nvidia,function = "rsvd3";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap4_fs_pp4 {
+				nvidia,pins = "dap4_fs_pp4";
+				nvidia,function = "i2s3";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap4_din_pp5 {
+				nvidia,pins = "dap4_din_pp5";
+				nvidia,function = "i2s3";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap4_dout_pp6 {
+				nvidia,pins = "dap4_dout_pp6";
+				nvidia,function = "i2s3";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap4_sclk_pp7 {
+				nvidia,pins = "dap4_sclk_pp7";
+				nvidia,function = "i2s3";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col0_pq0 {
+				nvidia,pins = "kb_col0_pq0";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col1_pq1 {
+				nvidia,pins = "kb_col1_pq1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col2_pq2 {
+				nvidia,pins = "kb_col2_pq2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col3_pq3 {
+				nvidia,pins = "kb_col3_pq3";
+				nvidia,function = "kbc";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_col4_pq4 {
+				nvidia,pins = "kb_col4_pq4";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col5_pq5 {
+				nvidia,pins = "kb_col5_pq5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col6_pq6 {
+				nvidia,pins = "kb_col6_pq6";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_col7_pq7 {
+				nvidia,pins = "kb_col7_pq7";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row0_pr0 {
+				nvidia,pins = "kb_row0_pr0";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row1_pr1 {
+				nvidia,pins = "kb_row1_pr1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row2_pr2 {
+				nvidia,pins = "kb_row2_pr2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row3_pr3 {
+				nvidia,pins = "kb_row3_pr3";
+				nvidia,function = "sys";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row4_pr4 {
+				nvidia,pins = "kb_row4_pr4";
+				nvidia,function = "rsvd3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row5_pr5 {
+				nvidia,pins = "kb_row5_pr5";
+				nvidia,function = "rsvd3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row6_pr6 {
+				nvidia,pins = "kb_row6_pr6";
+				nvidia,function = "displaya_alt";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row7_pr7 {
+				nvidia,pins = "kb_row7_pr7";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row8_ps0 {
+				nvidia,pins = "kb_row8_ps0";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row9_ps1 {
+				nvidia,pins = "kb_row9_ps1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row10_ps2 {
+				nvidia,pins = "kb_row10_ps2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row11_ps3 {
+				nvidia,pins = "kb_row11_ps3";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row12_ps4 {
+				nvidia,pins = "kb_row12_ps4";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row13_ps5 {
+				nvidia,pins = "kb_row13_ps5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row14_ps6 {
+				nvidia,pins = "kb_row14_ps6";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row15_ps7 {
+				nvidia,pins = "kb_row15_ps7";
+				nvidia,function = "soc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			kb_row16_pt0 {
+				nvidia,pins = "kb_row16_pt0";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			kb_row17_pt1 {
+				nvidia,pins = "kb_row17_pt1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			gen2_i2c_scl_pt5 {
+				nvidia,pins = "gen2_i2c_scl_pt5";
+				nvidia,function = "i2c2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			gen2_i2c_sda_pt6 {
+				nvidia,pins = "gen2_i2c_sda_pt6";
+				nvidia,function = "i2c2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_cmd_pt7 {
+				nvidia,pins = "sdmmc4_cmd_pt7";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pu0 {
+				nvidia,pins = "pu0";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pu1 {
+				nvidia,pins = "pu1";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pu2 {
+				nvidia,pins = "pu2";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pu3 {
+				nvidia,pins = "pu3";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pu4 {
+				nvidia,pins = "pu4";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pu5 {
+				nvidia,pins = "pu5";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pu6 {
+				nvidia,pins = "pu6";
+				nvidia,function = "rsvd3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pv0 {
+				nvidia,pins = "pv0";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pv1 {
+				nvidia,pins = "pv1";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_cd_n_pv2 {
+				nvidia,pins = "sdmmc3_cd_n_pv2";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_wp_n_pv3 {
+				nvidia,pins = "sdmmc1_wp_n_pv3";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ddc_scl_pv4 {
+				nvidia,pins = "ddc_scl_pv4";
+				nvidia,function = "i2c4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,rcv-sel = <TEGRA_PIN_DISABLE>;
+			};
+			ddc_sda_pv5 {
+				nvidia,pins = "ddc_sda_pv5";
+				nvidia,function = "i2c4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,rcv-sel = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_w2_aud_pw2 {
+				nvidia,pins = "gpio_w2_aud_pw2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_w3_aud_pw3 {
+				nvidia,pins = "gpio_w3_aud_pw3";
+				nvidia,function = "spi6";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dap_mclk1_pw4 {
+				nvidia,pins = "dap_mclk1_pw4";
+				nvidia,function = "extperiph1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			clk2_out_pw5 {
+				nvidia,pins = "clk2_out_pw5";
+				nvidia,function = "extperiph2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			uart3_txd_pw6 {
+				nvidia,pins = "uart3_txd_pw6";
+				nvidia,function = "uartc";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			uart3_rxd_pw7 {
+				nvidia,pins = "uart3_rxd_pw7";
+				nvidia,function = "uartc";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dvfs_pwm_px0 {
+				nvidia,pins = "dvfs_pwm_px0";
+				nvidia,function = "cldvfs";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_x1_aud_px1 {
+				nvidia,pins = "gpio_x1_aud_px1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dvfs_clk_px2 {
+				nvidia,pins = "dvfs_clk_px2";
+				nvidia,function = "cldvfs";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_x3_aud_px3 {
+				nvidia,pins = "gpio_x3_aud_px3";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_x4_aud_px4 {
+				nvidia,pins = "gpio_x4_aud_px4";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			gpio_x5_aud_px5 {
+				nvidia,pins = "gpio_x5_aud_px5";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_x6_aud_px6 {
+				nvidia,pins = "gpio_x6_aud_px6";
+				nvidia,function = "gmi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			gpio_x7_aud_px7 {
+				nvidia,pins = "gpio_x7_aud_px7";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ulpi_clk_py0 {
+				nvidia,pins = "ulpi_clk_py0";
+				nvidia,function = "spi1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ulpi_dir_py1 {
+				nvidia,pins = "ulpi_dir_py1";
+				nvidia,function = "spi1";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			ulpi_nxt_py2 {
+				nvidia,pins = "ulpi_nxt_py2";
+				nvidia,function = "spi1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			ulpi_stp_py3 {
+				nvidia,pins = "ulpi_stp_py3";
+				nvidia,function = "spi1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			sdmmc1_dat3_py4 {
+				nvidia,pins = "sdmmc1_dat3_py4";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_dat2_py5 {
+				nvidia,pins = "sdmmc1_dat2_py5";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_dat1_py6 {
+				nvidia,pins = "sdmmc1_dat1_py6";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_dat0_py7 {
+				nvidia,pins = "sdmmc1_dat0_py7";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_clk_pz0 {
+				nvidia,pins = "sdmmc1_clk_pz0";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc1_cmd_pz1 {
+				nvidia,pins = "sdmmc1_cmd_pz1";
+				nvidia,function = "sdmmc1";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pwr_i2c_scl_pz6 {
+				nvidia,pins = "pwr_i2c_scl_pz6";
+				nvidia,function = "i2cpwr";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			pwr_i2c_sda_pz7 {
+				nvidia,pins = "pwr_i2c_sda_pz7";
+				nvidia,function = "i2cpwr";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat0_paa0 {
+				nvidia,pins = "sdmmc4_dat0_paa0";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat1_paa1 {
+				nvidia,pins = "sdmmc4_dat1_paa1";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat2_paa2 {
+				nvidia,pins = "sdmmc4_dat2_paa2";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat3_paa3 {
+				nvidia,pins = "sdmmc4_dat3_paa3";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat4_paa4 {
+				nvidia,pins = "sdmmc4_dat4_paa4";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat5_paa5 {
+				nvidia,pins = "sdmmc4_dat5_paa5";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat6_paa6 {
+				nvidia,pins = "sdmmc4_dat6_paa6";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_dat7_paa7 {
+				nvidia,pins = "sdmmc4_dat7_paa7";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pbb0 {
+				nvidia,pins = "pbb0";
+				nvidia,function = "vimclk2_alt";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			cam_i2c_scl_pbb1 {
+				nvidia,pins = "cam_i2c_scl_pbb1";
+				nvidia,function = "i2c3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			cam_i2c_sda_pbb2 {
+				nvidia,pins = "cam_i2c_sda_pbb2";
+				nvidia,function = "i2c3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			pbb3 {
+				nvidia,pins = "pbb3";
+				nvidia,function = "vgp3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pbb4 {
+				nvidia,pins = "pbb4";
+				nvidia,function = "vgp4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pbb5 {
+				nvidia,pins = "pbb5";
+				nvidia,function = "rsvd3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pbb6 {
+				nvidia,pins = "pbb6";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pbb7 {
+				nvidia,pins = "pbb7";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			cam_mclk_pcc0 {
+				nvidia,pins = "cam_mclk_pcc0";
+				nvidia,function = "vi_alt3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pcc1 {
+				nvidia,pins = "pcc1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			pcc2 {
+				nvidia,pins = "pcc2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc4_clk_pcc4 {
+				nvidia,pins = "sdmmc4_clk_pcc4";
+				nvidia,function = "sdmmc4";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			clk2_req_pcc5 {
+				nvidia,pins = "clk2_req_pcc5";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			clk3_out_pee0 {
+				nvidia,pins = "clk3_out_pee0";
+				nvidia,function = "extperiph3";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			clk3_req_pee1 {
+				nvidia,pins = "clk3_req_pee1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			dap_mclk1_req_pee2 {
+				nvidia,pins = "dap_mclk1_req_pee2";
+				nvidia,function = "sata";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			hdmi_cec_pee3 {
+				nvidia,pins = "hdmi_cec_pee3";
+				nvidia,function = "cec";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_clk_lb_out_pee4 {
+				nvidia,pins = "sdmmc3_clk_lb_out_pee4";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			sdmmc3_clk_lb_in_pee5 {
+				nvidia,pins = "sdmmc3_clk_lb_in_pee5";
+				nvidia,function = "sdmmc3";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			dp_hpd_pff0 {
+				nvidia,pins = "dp_hpd_pff0";
+				nvidia,function = "dp";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			usb_vbus_en2_pff1 {
+				nvidia,pins = "usb_vbus_en2_pff1";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+				nvidia,open-drain = <TEGRA_PIN_DISABLE>;
+			};
+			pff2 {
+				nvidia,pins = "pff2";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+				nvidia,open-drain = <TEGRA_PIN_DISABLE>;
+			};
+			core_pwr_req {
+				nvidia,pins = "core_pwr_req";
+				nvidia,function = "pwron";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			cpu_pwr_req {
+				nvidia,pins = "cpu_pwr_req";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			pwr_int_n {
+				nvidia,pins = "pwr_int_n";
+				nvidia,function = "pmi";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			reset_out_n {
+				nvidia,pins = "reset_out_n";
+				nvidia,function = "reset_out_n";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+			owr {
+				nvidia,pins = "owr";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+				nvidia,rcv-sel = <TEGRA_PIN_DISABLE>;
+			};
+			clk_32k_in {
+				nvidia,pins = "clk_32k_in";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_ENABLE>;
+			};
+			jtag_rtck {
+				nvidia,pins = "jtag_rtck";
+				nvidia,function = "rtck";
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
+				nvidia,enable-input = <TEGRA_PIN_DISABLE>;
+			};
+		};
+	};
+
+	/* DB9 serial port */
+	serial@0,70006300 {
+		status = "okay";
+	};
+
+	/* Expansion GEN1_I2C_*, mini-PCIe I2C, on-board components */
+	i2c@0,7000c000 {
+		status = "okay";
+		clock-frequency = <100000>;
+
+		rt5639: audio-codec@1c {
+			compatible = "realtek,rt5639";
+			reg = <0x1c>;
+			interrupt-parent = <&gpio>;
+			interrupts = <TEGRA_GPIO(H, 4) GPIO_ACTIVE_HIGH>;
+			realtek,ldo1-en-gpios =
+				<&gpio TEGRA_GPIO(R, 2) GPIO_ACTIVE_HIGH>;
+		};
+
+		temperature-sensor@4c {
+			compatible = "ti,tmp451";
+			reg = <0x4c>;
+			interrupt-parent = <&gpio>;
+			interrupts = <TEGRA_GPIO(I, 6) IRQ_TYPE_LEVEL_LOW>;
+		};
+
+		eeprom@56 {
+			compatible = "atmel,24c02";
+			reg = <0x56>;
+			pagesize = <8>;
+		};
+	};
+
+	/* Expansion GEN2_I2C_* */
+	i2c@0,7000c400 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	/* Expansion CAM_I2C_* */
+	i2c@0,7000c500 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	/* HDMI DDC */
+	hdmi_ddc: i2c@0,7000c700 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	/* Expansion PWR_I2C_*, on-board components */
+	i2c@0,7000d000 {
+		status = "okay";
+		clock-frequency = <400000>;
+
+		pmic: pmic@40 {
+			compatible = "ams,as3722";
+			reg = <0x40>;
+			interrupts = <0 86 IRQ_TYPE_LEVEL_HIGH>;
+
+			ams,system-power-controller;
+
+			#interrupt-cells = <2>;
+			interrupt-controller;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&as3722_default>;
+
+			as3722_default: pinmux {
+				gpio0 {
+					pins = "gpio0";
+					function = "gpio";
+					bias-pull-down;
+				};
+
+				gpio1_2_4_7 {
+					pins = "gpio1", "gpio2", "gpio4", "gpio7";
+					function = "gpio";
+					bias-pull-up;
+				};
+
+				gpio3_5_6 {
+					pins = "gpio3", "gpio5", "gpio6";
+					bias-high-impedance;
+				};
+			};
+
+			regulators {
+				vsup-sd2-supply = <&vdd_5v0_sys>;
+				vsup-sd3-supply = <&vdd_5v0_sys>;
+				vsup-sd4-supply = <&vdd_5v0_sys>;
+				vsup-sd5-supply = <&vdd_5v0_sys>;
+				vin-ldo0-supply = <&vdd_1v35_lp0>;
+				vin-ldo1-6-supply = <&vdd_3v3_run>;
+				vin-ldo2-5-7-supply = <&vddio_1v8>;
+				vin-ldo3-4-supply = <&vdd_3v3_sys>;
+				vin-ldo9-10-supply = <&vdd_5v0_sys>;
+				vin-ldo11-supply = <&vdd_3v3_run>;
+
+				sd0 {
+					regulator-name = "+VDD_CPU_AP";
+					regulator-min-microvolt = <700000>;
+					regulator-max-microvolt = <1400000>;
+					regulator-min-microamp = <3500000>;
+					regulator-max-microamp = <3500000>;
+					regulator-always-on;
+					regulator-boot-on;
+					ams,external-control = <2>;
+				};
+
+				sd1 {
+					regulator-name = "+VDD_CORE";
+					regulator-min-microvolt = <700000>;
+					regulator-max-microvolt = <1350000>;
+					regulator-min-microamp = <2500000>;
+					regulator-max-microamp = <2500000>;
+					regulator-always-on;
+					regulator-boot-on;
+					ams,external-control = <1>;
+				};
+
+				vdd_1v35_lp0: sd2 {
+					regulator-name = "+1.35V_LP0(sd2)";
+					regulator-min-microvolt = <1350000>;
+					regulator-max-microvolt = <1350000>;
+					regulator-always-on;
+					regulator-boot-on;
+				};
+
+				sd3 {
+					regulator-name = "+1.35V_LP0(sd3)";
+					regulator-min-microvolt = <1350000>;
+					regulator-max-microvolt = <1350000>;
+					regulator-always-on;
+					regulator-boot-on;
+				};
+
+				vdd_1v05_run: sd4 {
+					regulator-name = "+1.05V_RUN";
+					regulator-min-microvolt = <1050000>;
+					regulator-max-microvolt = <1050000>;
+				};
+
+				vddio_1v8: sd5 {
+					regulator-name = "+1.8V_VDDIO";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+					regulator-boot-on;
+					regulator-always-on;
+				};
+
+				sd6 {
+					regulator-name = "+VDD_GPU_AP";
+					regulator-min-microvolt = <650000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-min-microamp = <3500000>;
+					regulator-max-microamp = <3500000>;
+					regulator-boot-on;
+					regulator-always-on;
+				};
+
+				ldo0 {
+					regulator-name = "+1.05V_RUN_AVDD";
+					regulator-min-microvolt = <1050000>;
+					regulator-max-microvolt = <1050000>;
+					regulator-boot-on;
+					regulator-always-on;
+					ams,external-control = <1>;
+				};
+
+				ldo1 {
+					regulator-name = "+1.8V_RUN_CAM";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+
+				ldo2 {
+					regulator-name = "+1.2V_GEN_AVDD";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-boot-on;
+					regulator-always-on;
+				};
+
+				ldo3 {
+					regulator-name = "+1.05V_LP0_VDD_RTC";
+					regulator-min-microvolt = <1000000>;
+					regulator-max-microvolt = <1000000>;
+					regulator-boot-on;
+					regulator-always-on;
+					ams,enable-tracking;
+				};
+
+				ldo4 {
+					regulator-name = "+2.8V_RUN_CAM";
+					regulator-min-microvolt = <2800000>;
+					regulator-max-microvolt = <2800000>;
+				};
+
+				ldo5 {
+					regulator-name = "+1.2V_RUN_CAM_FRONT";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+				};
+
+				vddio_sdmmc3: ldo6 {
+					regulator-name = "+VDDIO_SDMMC3";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <3300000>;
+				};
+
+				ldo7 {
+					regulator-name = "+1.05V_RUN_CAM_REAR";
+					regulator-min-microvolt = <1050000>;
+					regulator-max-microvolt = <1050000>;
+				};
+
+				ldo9 {
+					regulator-name = "+3.3V_RUN_TOUCH";
+					regulator-min-microvolt = <2800000>;
+					regulator-max-microvolt = <2800000>;
+				};
+
+				ldo10 {
+					regulator-name = "+2.8V_RUN_CAM_AF";
+					regulator-min-microvolt = <2800000>;
+					regulator-max-microvolt = <2800000>;
+				};
+
+				ldo11 {
+					regulator-name = "+1.8V_RUN_VPP_FUSE";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+			};
+		};
+	};
+
+	/* Expansion TS_SPI_* */
+	spi@0,7000d400 {
+		status = "okay";
+	};
+
+	/* Internal SPI */
+	spi@0,7000da00 {
+		status = "okay";
+		spi-max-frequency = <25000000>;
+		spi-flash@0 {
+			compatible = "winbond,w25q32dw";
+			reg = <0>;
+			spi-max-frequency = <20000000>;
+		};
+	};
+
+	pmc@0,7000e400 {
+		nvidia,invert-interrupt;
+		nvidia,suspend-mode = <1>;
+		nvidia,cpu-pwr-good-time = <500>;
+		nvidia,cpu-pwr-off-time = <300>;
+		nvidia,core-pwr-good-time = <641 3845>;
+		nvidia,core-pwr-off-time = <61036>;
+		nvidia,core-power-req-active-high;
+		nvidia,sys-clock-req-active-high;
+	};
+
+	/* SD card */
+	sdhci@0,700b0400 {
+		status = "okay";
+		cd-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_LOW>;
+		power-gpios = <&gpio TEGRA_GPIO(R, 0) GPIO_ACTIVE_HIGH>;
+		wp-gpios = <&gpio TEGRA_GPIO(Q, 4) GPIO_ACTIVE_HIGH>;
+		bus-width = <4>;
+		vqmmc-supply = <&vddio_sdmmc3>;
+	};
+
+	/* eMMC */
+	sdhci@0,700b0600 {
+		status = "okay";
+		bus-width = <8>;
+		non-removable;
+	};
+
+	ahub@0,70300000 {
+		i2s@0,70301100 {
+			status = "okay";
+		};
+	};
+
+	/* mini-PCIe USB */
+	usb@0,7d004000 {
+		status = "okay";
+	};
+
+	usb-phy@0,7d004000 {
+		status = "okay";
+	};
+
+	/* USB A connector */
+	usb@0,7d008000 {
+		status = "okay";
+	};
+
+	usb-phy@0,7d008000 {
+		status = "okay";
+		vbus-supply = <&vdd_usb3_vbus>;
+	};
+
+	clocks {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		clk32k_in: clock@0 {
+			compatible = "fixed-clock";
+			reg = <0>;
+			#clock-cells = <0>;
+			clock-frequency = <32768>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power";
+			gpios = <&gpio TEGRA_GPIO(Q, 0) GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+			debounce-interval = <10>;
+			gpio-key,wakeup;
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vdd_mux: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "+VDD_MUX";
+			regulator-min-microvolt = <12000000>;
+			regulator-max-microvolt = <12000000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
+
+		vdd_5v0_sys: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "+5V_SYS";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+			regulator-boot-on;
+			vin-supply = <&vdd_mux>;
+		};
+
+		vdd_3v3_sys: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "+3.3V_SYS";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			regulator-boot-on;
+			vin-supply = <&vdd_mux>;
+		};
+
+		vdd_3v3_run: regulator@3 {
+			compatible = "regulator-fixed";
+			reg = <3>;
+			regulator-name = "+3.3V_RUN";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			vin-supply = <&vdd_3v3_sys>;
+		};
+
+		vdd_3v3_hdmi: regulator@4 {
+			compatible = "regulator-fixed";
+			reg = <4>;
+			regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			vin-supply = <&vdd_3v3_run>;
+		};
+
+		vdd_usb1_vbus: regulator@7 {
+			compatible = "regulator-fixed";
+			reg = <7>;
+			regulator-name = "+USB0_VBUS_SW";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			gpio-open-drain;
+			vin-supply = <&vdd_5v0_sys>;
+		};
+
+		vdd_usb3_vbus: regulator@8 {
+			compatible = "regulator-fixed";
+			reg = <8>;
+			regulator-name = "+5V_USB_HS";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			gpio-open-drain;
+			vin-supply = <&vdd_5v0_sys>;
+		};
+
+		vdd_3v3_lp0: regulator@10 {
+			compatible = "regulator-fixed";
+			reg = <10>;
+			regulator-name = "+3.3V_LP0";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			vin-supply = <&vdd_3v3_sys>;
+		};
+
+		vdd_hdmi_pll: regulator@11 {
+			compatible = "regulator-fixed";
+			reg = <11>;
+			regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
+			vin-supply = <&vdd_1v05_run>;
+		};
+
+		vdd_5v0_hdmi: regulator@12 {
+			compatible = "regulator-fixed";
+			reg = <12>;
+			regulator-name = "+5V_HDMI_CON";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			vin-supply = <&vdd_5v0_sys>;
+		};
+	};
+
+	sound {
+		compatible = "nvidia,tegra-audio-rt5640-jetson-tk1",
+			     "nvidia,tegra-audio-rt5640";
+		nvidia,model = "NVIDIA Tegra Jetson TK1";
+
+		nvidia,audio-routing =
+			"Headphones", "HPOR",
+			"Headphones", "HPOL",
+			"Mic Jack", "MICBIAS1",
+			"IN2P", "Mic Jack";
+
+		nvidia,i2s-controller = <&tegra_i2s1>;
+		nvidia,audio-codec = <&rt5639>;
+
+		nvidia,hp-det-gpios = <&gpio TEGRA_GPIO(R, 7) GPIO_ACTIVE_LOW>;
+
+		clocks = <&tegra_car TEGRA124_CLK_PLL_A>,
+			 <&tegra_car TEGRA124_CLK_PLL_A_OUT0>,
+			 <&tegra_car TEGRA124_CLK_EXTERN1>;
+		clock-names = "pll_a", "pll_a_out0", "mclk";
+	};
+};
diff --git a/arch/arm/dts/tegra124.dtsi b/arch/arm/dts/tegra124.dtsi
new file mode 100644
index 0000000..7d0fafa
--- /dev/null
+++ b/arch/arm/dts/tegra124.dtsi
@@ -0,0 +1 @@
+#include <arm/tegra124.dtsi>
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index ea2e045..7214eca 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -70,6 +70,10 @@ config MACH_NVIDIA_BEAVER
 	select I2C
 	select I2C_TEGRA
 
+config MACH_NVIDIA_JETSON
+	bool "NVIDIA Jetson TK1"
+	select ARCH_TEGRA_124_SOC
+
 endmenu
 
 # ---------------------------------------------------------
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 0d76062..4f876e4 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -82,3 +82,13 @@ pblx-$(CONFIG_MACH_NVIDIA_BEAVER) += start_nvidia_beaver
 BCT_start_nvidia_beaver.pblx.t30img = $(board)/nvidia-beaver/beaver-2gb-emmc.bct
 FILE_barebox-tegra30-nvidia-beaver-emmc.img = start_nvidia_beaver.pblx.t30img
 image-$(CONFIG_MACH_NVIDIA_BEAVER) += barebox-tegra30-nvidia-beaver-emmc.img
+
+# ----------------------- Tegra124 based boards --------------------------
+pblx-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
+FILE_barebox-tegra124-nvidia-jetson-tk1-usbloader.img = start_nvidia_jetson.pblx
+image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-usbloader.img
+
+pblx-$(CONFIG_MACH_NVIDIA_JETSON) += start_nvidia_jetson
+BCT_start_nvidia_jetson.pblx.t124img = $(board)/nvidia-jetson-tk1/jetson-tk1-2gb-emmc.bct
+FILE_barebox-tegra124-nvidia-jetson-tk1-emmc.img = start_nvidia_jetson.pblx.t124img
+image-$(CONFIG_MACH_NVIDIA_JETSON) += barebox-tegra124-nvidia-jetson-tk1-emmc.img
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
