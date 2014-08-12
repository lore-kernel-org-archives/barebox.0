Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XHEaV-0007J9-0f
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 16:06:16 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XHEa8-00024L-Bm
 for barebox@lists.infradead.org; Tue, 12 Aug 2014 18:05:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 12 Aug 2014 18:05:52 +0200
Message-Id: <1407859552-20180-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
References: <1407859552-20180-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] arm: nitrogen6x: new memory setup from BD u-boot
To: barebox@lists.infradead.org

This fixes various stability issues seen on new boards
with the old setup.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../1066mhz_4x128mx16.imxcfg                       |  37 ++++++++
 .../arm/boards/boundarydevices-nitrogen6x/Makefile |   3 +-
 .../boundarydevices-nitrogen6x/clocks.imxcfg       |   7 ++
 .../flash-header-nitrogen6dl-1g.imxcfg             |  11 +++
 .../flash-header-nitrogen6q-1g.imxcfg              |  11 +++
 .../flash-header-nitrogen6x-1g.imxcfg              | 101 ---------------------
 .../boundarydevices-nitrogen6x/ram-base.imxcfg     |  67 ++++++++++++++
 images/Makefile.imx                                |   4 +-
 8 files changed, 136 insertions(+), 105 deletions(-)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
 delete mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
new file mode 100644
index 000000000000..8175cfee009c
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/1066mhz_4x128mx16.imxcfg
@@ -0,0 +1,37 @@
+wm 32 MX6_MMDC_P0_MDPDC			0x00020036
+wm 32 MX6_MMDC_P0_MDSCR			0x00008000
+wm 32 MX6_MMDC_P0_MDCFG0		0x555A7974
+wm 32 MX6_MMDC_P0_MDCFG1		0xDB538F64
+wm 32 MX6_MMDC_P0_MDCFG2		0x01FF00DB
+wm 32 MX6_MMDC_P0_MDRWD			0x000026D2
+wm 32 MX6_MMDC_P0_MDOR			0x005A1023
+wm 32 MX6_MMDC_P0_MDOTC			0x09444040
+wm 32 MX6_MMDC_P0_MDPDC			0x00025576
+wm 32 MX6_MMDC_P0_MDASP			0x00000027
+wm 32 MX6_MMDC_P0_MDCTL			0x831A0000
+wm 32 MX6_MMDC_P0_MDSCR			0x04088032
+wm 32 MX6_MMDC_P0_MDSCR			0x00008033
+wm 32 MX6_MMDC_P0_MDSCR			0x00428031
+wm 32 MX6_MMDC_P0_MDSCR			0x19308030
+wm 32 MX6_MMDC_P0_MDSCR			0x04008040
+wm 32 MX6_MMDC_P0_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P1_MPZQHWCTRL	0xA1390003
+wm 32 MX6_MMDC_P0_MDREF			0x00005800
+wm 32 MX6_MMDC_P0_MPODTCTRL		0x00022227
+wm 32 MX6_MMDC_P1_MPODTCTRL		0x00022227
+wm 32 MX6_MMDC_P0_MPDGCTRL0		0x42720306
+wm 32 MX6_MMDC_P0_MPDGCTRL1		0x026F0266
+wm 32 MX6_MMDC_P1_MPDGCTRL0		0x4273030A
+wm 32 MX6_MMDC_P1_MPDGCTRL1		0x02740240
+wm 32 MX6_MMDC_P0_MPRDDLCTL		0x45393B3E
+wm 32 MX6_MMDC_P1_MPRDDLCTL		0x403A3747
+wm 32 MX6_MMDC_P0_MPWRDLCTL		0x40434541
+wm 32 MX6_MMDC_P1_MPWRDLCTL		0x473E4A3B
+wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x0011000E
+wm 32 MX6_MMDC_P0_MPWLDECTRL1	0x000E001B
+wm 32 MX6_MMDC_P1_MPWLDECTRL0	0x00190015
+wm 32 MX6_MMDC_P1_MPWLDECTRL1	0x00070018
+wm 32 MX6_MMDC_P0_MPMUR0		0x00000800
+wm 32 MX6_MMDC_P1_MPMUR0		0x00000800
+wm 32 MX6_MMDC_P0_MDSCR			0x00000000
+wm 32 MX6_MMDC_P0_MAPSR			0x00011006
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/Makefile b/arch/arm/boards/boundarydevices-nitrogen6x/Makefile
index 177c5d81a5c7..0ec04ce8986e 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/Makefile
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/Makefile
@@ -1,3 +1,2 @@
-obj-y += board.o flash-header-nitrogen6x-1g.dcd.o
-extra-y += flash-header-nitrogen6x-1g.dcd.S flash-header-nitrogen6x-1g.dcd
+obj-y += board.o 
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
new file mode 100644
index 000000000000..55adb6055705
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/clocks.imxcfg
@@ -0,0 +1,7 @@
+wm 32 MX6_CCM_CCGR0		0x00C03F3F
+wm 32 MX6_CCM_CCGR1		0x0030FC03
+wm 32 MX6_CCM_CCGR2		0x0FFFC000
+wm 32 MX6_CCM_CCGR3		0x3FF00000
+wm 32 MX6_CCM_CCGR4		0x00FFF300
+wm 32 MX6_CCM_CCGR5		0x0F0000C3
+wm 32 MX6_CCM_CCGR6		0x000003FF
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
new file mode 100644
index 000000000000..76fad119a6ac
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
@@ -0,0 +1,11 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6dl-ddr-regs.h>
+#include <mach/imx6-ccm-regs.h>
+
+#include "ram-base.imxcfg"
+#include "1066mhz_4x128mx16.imxcfg"
+#include "clocks.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
new file mode 100644
index 000000000000..ee3145bc327d
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
@@ -0,0 +1,11 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+#include <mach/imx6-ddr-regs.h>
+#include <mach/imx6q-ddr-regs.h>
+#include <mach/imx6-ccm-regs.h>
+
+#include "ram-base.imxcfg"
+#include "1066mhz_4x128mx16.imxcfg"
+#include "clocks.imxcfg"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
deleted file mode 100644
index b6c75800c6af..000000000000
--- a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+++ /dev/null
@@ -1,101 +0,0 @@
-soc imx6
-loadaddr 0x20000000
-dcdofs 0x400
-
-wm 32 0x020e05a8 0x00000030
-wm 32 0x020e05b0 0x00000030
-wm 32 0x020e0524 0x00000030
-wm 32 0x020e051c 0x00000030
-wm 32 0x020e0518 0x00000030
-wm 32 0x020e050c 0x00000030
-wm 32 0x020e05b8 0x00000030
-wm 32 0x020e05c0 0x00000030
-wm 32 0x020e05ac 0x00020030
-wm 32 0x020e05b4 0x00020030
-wm 32 0x020e0528 0x00020030
-wm 32 0x020e0520 0x00020030
-wm 32 0x020e0514 0x00020030
-wm 32 0x020e0510 0x00020030
-wm 32 0x020e05bc 0x00020030
-wm 32 0x020e05c4 0x00020030
-wm 32 0x020e056c 0x00020030
-wm 32 0x020e0578 0x00020030
-wm 32 0x020e0588 0x00020030
-wm 32 0x020e0594 0x00020030
-wm 32 0x020e057c 0x00020030
-wm 32 0x020e0590 0x00003000
-wm 32 0x020e0598 0x00003000
-wm 32 0x020e058c 0x00000000
-wm 32 0x020e059c 0x00003030
-wm 32 0x020e05a0 0x00003030
-wm 32 0x020e0784 0x00000030
-wm 32 0x020e0788 0x00000030
-wm 32 0x020e0794 0x00000030
-wm 32 0x020e079c 0x00000030
-wm 32 0x020e07a0 0x00000030
-wm 32 0x020e07a4 0x00000030
-wm 32 0x020e07a8 0x00000030
-wm 32 0x020e0748 0x00000030
-wm 32 0x020e074c 0x00000030
-wm 32 0x020e0750 0x00020000
-wm 32 0x020e0758 0x00000000
-wm 32 0x020e0774 0x00020000
-wm 32 0x020e078c 0x00000030
-wm 32 0x020e0798 0x000c0000
-wm 32 0x021b081c 0x33333333
-wm 32 0x021b0820 0x33333333
-wm 32 0x021b0824 0x33333333
-wm 32 0x021b0828 0x33333333
-wm 32 0x021b481c 0x33333333
-wm 32 0x021b4820 0x33333333
-wm 32 0x021b4824 0x33333333
-wm 32 0x021b4828 0x33333333
-wm 32 0x021b0018 0x00081740
-wm 32 0x021b001c 0x00008000
-wm 32 0x021b000c 0x555a7975
-wm 32 0x021b0010 0xff538e64
-wm 32 0x021b0014 0x01ff00db
-wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x005b0e21
-wm 32 0x021b0008 0x09444040
-wm 32 0x021b0004 0x00025576
-wm 32 0x021b0040 0x00000027
-wm 32 0x021b0000 0x831a0000
-wm 32 0x021b001c 0x04088032
-wm 32 0x021b001c 0x0408803a
-wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x0000803b
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x00428039
-wm 32 0x021b001c 0x09408030
-wm 32 0x021b001c 0x09408038
-wm 32 0x021b001c 0x04008040
-wm 32 0x021b001c 0x04008048
-wm 32 0x021b0800 0xa1380003
-wm 32 0x021b4800 0xa1380003
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00022227
-wm 32 0x021b4818 0x00022227
-wm 32 0x021b083c 0x434b0350
-wm 32 0x021b0840 0x034c0359
-wm 32 0x021b483c 0x434b0350
-wm 32 0x021b4840 0x03650348
-wm 32 0x021b0848 0x4436383b
-wm 32 0x021b4848 0x39393341
-wm 32 0x021b0850 0x35373933
-wm 32 0x021b4850 0x48254A36
-wm 32 0x021b080c 0x001f001f
-wm 32 0x021b0810 0x001f001f
-wm 32 0x021b480c 0x00440044
-wm 32 0x021b4810 0x00440044
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-wm 32 0x021b001c 0x00000000
-wm 32 0x021b0404 0x00011006
-wm 32 0x020c4068 0x00c03f3f
-wm 32 0x020c406c 0x0030fc03
-wm 32 0x020c4070 0x0fffc000
-wm 32 0x020c4074 0x3ff00000
-wm 32 0x020c4078 0x00fff300
-wm 32 0x020c407c 0x0f0000c3
-wm 32 0x020c4080 0x000003ff
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
new file mode 100644
index 000000000000..60c8fa2b5123
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/ram-base.imxcfg
@@ -0,0 +1,67 @@
+wm 32 MX6_IOM_DRAM_SDQS0		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS1		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS2		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS3		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS4		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS5		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS6		0x00000030
+wm 32 MX6_IOM_DRAM_SDQS7		0x00000030
+
+wm 32 MX6_IOM_GRP_B0DS			0x00000030
+wm 32 MX6_IOM_GRP_B1DS			0x00000030
+wm 32 MX6_IOM_GRP_B2DS			0x00000030
+wm 32 MX6_IOM_GRP_B3DS			0x00000030
+wm 32 MX6_IOM_GRP_B4DS			0x00000030
+wm 32 MX6_IOM_GRP_B5DS			0x00000030
+wm 32 MX6_IOM_GRP_B6DS			0x00000030
+wm 32 MX6_IOM_GRP_B7DS			0x00000030
+wm 32 MX6_IOM_GRP_ADDDS			0x00000030
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_CTLDS			0x00000030
+
+wm 32 MX6_IOM_DRAM_DQM0			0x00020030
+wm 32 MX6_IOM_DRAM_DQM1			0x00020030
+wm 32 MX6_IOM_DRAM_DQM2			0x00020030
+wm 32 MX6_IOM_DRAM_DQM3			0x00020030
+wm 32 MX6_IOM_DRAM_DQM4			0x00020030
+wm 32 MX6_IOM_DRAM_DQM5			0x00020030
+wm 32 MX6_IOM_DRAM_DQM6			0x00020030
+wm 32 MX6_IOM_DRAM_DQM7			0x00020030
+
+wm 32 MX6_IOM_DRAM_CAS			0x00020030
+wm 32 MX6_IOM_DRAM_RAS			0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_0		0x00020030
+wm 32 MX6_IOM_DRAM_SDCLK_1		0x00020030
+
+wm 32 MX6_IOM_DRAM_RESET		0x00020030
+wm 32 MX6_IOM_DRAM_SDCKE0		0x00003000
+wm 32 MX6_IOM_DRAM_SDCKE1		0x00003000
+
+wm 32 MX6_IOM_DRAM_SDODT0		0x00003030
+wm 32 MX6_IOM_DRAM_SDODT1		0x00003030
+
+/* (differential input) */
+wm 32 MX6_IOM_DDRMODE_CTL		0x00020000
+/* (differential input) */
+wm 32 MX6_IOM_GRP_DDRMODE		0x00020000
+/* disable ddr pullups */
+wm 32 MX6_IOM_GRP_DDRPKE		0x00000000
+wm 32 MX6_IOM_DRAM_SDBA2		0x00000000
+/* 40 Ohm drive strength for cs0/1,sdba2,cke0/1,sdwe */
+wm 32 MX6_IOM_GRP_DDR_TYPE		0x000C0000
+
+/* Read data DQ Byte0-3 delay */
+wm 32 MX6_MMDC_P0_MPRDDQBY0DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY1DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY2DL	0x33333333
+wm 32 MX6_MMDC_P0_MPRDDQBY3DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY0DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY1DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY2DL	0x33333333
+wm 32 MX6_MMDC_P1_MPRDDQBY3DL	0x33333333
+
+/* MDMISC	mirroring	interleaved (row/bank/col) */
+wm 32 MX6_MMDC_P0_MDMISC		0x00081740
+
+/* MDSCR	con_req */
+wm 32 MX6_MMDC_P0_MDSCR			0x00008000
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5ff72957c6f4..e559a75007bc 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -151,12 +151,12 @@ FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.i
 image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-imx6dl-hummingboard.img
 
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
-CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
 FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
 
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_1g
-CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6dl-1g.imxcfg
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
