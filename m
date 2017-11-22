Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHRjd-000258-35
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 09:54:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1eHRjE-0001gw-FD
 for barebox@lists.infradead.org; Wed, 22 Nov 2017 10:54:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 22 Nov 2017 10:54:00 +0100
Message-Id: <20171122095400.13335-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: rdu2: build a single image for both Quad and QuadPlus
 variants
To: barebox@lists.infradead.org

This allows for easier deployments on the different units, as there is no
need to flash different images to the Quad and QuadPlus units anymore.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg  |  90 -------
 .../zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg | 135 ----------
 .../boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg |   3 +
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c          | 276 ++++++++++++++++++++-
 images/Makefile.imx                                |  13 +-
 5 files changed, 270 insertions(+), 247 deletions(-)
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg

diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
deleted file mode 100644
index 3ab35e430497..000000000000
--- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
+++ /dev/null
@@ -1,90 +0,0 @@
-loadaddr 0x10000000
-soc imx6
-dcdofs 0x400
-
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
-
-wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
-wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
-wm 32 MX6_IOM_DRAM_SDCLK_0 0x00000030
-wm 32 MX6_IOM_DRAM_SDCLK_1 0x00000030
-wm 32 MX6_IOM_DRAM_CAS 0x00000030
-wm 32 MX6_IOM_DRAM_RAS 0x00000030
-wm 32 MX6_IOM_GRP_ADDDS 0x00000030
-wm 32 MX6_IOM_DRAM_RESET 0x00000030
-wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
-wm 32 MX6_IOM_DRAM_SDODT0 0x00000030
-wm 32 MX6_IOM_DRAM_SDODT1 0x00000030
-wm 32 MX6_IOM_GRP_CTLDS 0x00000030
-wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
-wm 32 MX6_IOM_DRAM_SDQS0 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS1 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS2 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS3 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS4 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS5 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS6 0x00000028
-wm 32 MX6_IOM_DRAM_SDQS7 0x00000028
-wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
-wm 32 MX6_IOM_GRP_B0DS 0x00000028
-wm 32 MX6_IOM_GRP_B1DS 0x00000028
-wm 32 MX6_IOM_GRP_B2DS 0x00000028
-wm 32 MX6_IOM_GRP_B3DS 0x00000028
-wm 32 MX6_IOM_GRP_B4DS 0x00000028
-wm 32 MX6_IOM_GRP_B5DS 0x00000028
-wm 32 MX6_IOM_GRP_B6DS 0x00000028
-wm 32 MX6_IOM_GRP_B7DS 0x00000028
-wm 32 MX6_IOM_DRAM_DQM0 0x00000028
-wm 32 MX6_IOM_DRAM_DQM1 0x00000028
-wm 32 MX6_IOM_DRAM_DQM2 0x00000028
-wm 32 MX6_IOM_DRAM_DQM3 0x00000028
-wm 32 MX6_IOM_DRAM_DQM4 0x00000028
-wm 32 MX6_IOM_DRAM_DQM5 0x00000028
-wm 32 MX6_IOM_DRAM_DQM6 0x00000028
-wm 32 MX6_IOM_DRAM_DQM7 0x00000028
-wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390003
-wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x001F001F
-wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x001F001F
-wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x001F001F
-wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x001F001F
-wm 32 MX6_MMDC_P0_MPDGCTRL0 0x43260335
-wm 32 MX6_MMDC_P0_MPDGCTRL1 0x031A030B
-wm 32 MX6_MMDC_P1_MPDGCTRL0 0x4323033B
-wm 32 MX6_MMDC_P1_MPDGCTRL1 0x0323026F
-wm 32 MX6_MMDC_P0_MPRDDLCTL 0x483D4545
-wm 32 MX6_MMDC_P1_MPRDDLCTL 0x44433E48
-wm 32 MX6_MMDC_P0_MPWRDLCTL 0x41444840
-wm 32 MX6_MMDC_P1_MPWRDLCTL 0x4835483E
-wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
-wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
-wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
-wm 32 MX6_MMDC_P0_MDPDC 0x00020036
-wm 32 MX6_MMDC_P0_MDOTC 0x09444040
-wm 32 MX6_MMDC_P0_MDCFG0 0x8A8F7955
-wm 32 MX6_MMDC_P0_MDCFG1 0xFF328F64
-wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
-wm 32 MX6_MMDC_P0_MDMISC 0x00001740
-wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-wm 32 MX6_MMDC_P0_MDRWD 0x000026d2
-wm 32 MX6_MMDC_P0_MDOR 0x008F1023
-wm 32 MX6_MMDC_P0_MDASP 0x00000047
-wm 32 MX6_MMDC_P0_MDCTL 0x841A0000
-wm 32 MX6_MMDC_P0_MDSCR 0x04088032
-wm 32 MX6_MMDC_P0_MDSCR 0x00008033
-wm 32 MX6_MMDC_P0_MDSCR 0x00048031
-wm 32 MX6_MMDC_P0_MDSCR 0x09408030
-wm 32 MX6_MMDC_P0_MDSCR 0x04008040
-wm 32 MX6_MMDC_P0_MDREF 0x00005800
-wm 32 MX6_MMDC_P0_MPODTCTRL 0x00011117
-wm 32 MX6_MMDC_P1_MPODTCTRL 0x00011117
-wm 32 MX6_MMDC_P0_MDPDC 0x00025576
-wm 32 MX6_MMDC_P0_MAPSR 0x00011006
-wm 32 MX6_MMDC_P0_MDSCR 0x00000000
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
deleted file mode 100644
index e99ab19fdf9c..000000000000
--- a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
+++ /dev/null
@@ -1,135 +0,0 @@
-loadaddr 0x10000000
-soc imx6
-dcdofs 0x400
-
-#include <mach/imx6-ddr-regs.h>
-#include <mach/imx6q-ddr-regs.h>
-
-wm 32 MX6_IOM_GRP_DDR_TYPE 0x000C0000
-wm 32 MX6_IOM_GRP_DDRPKE 0x00000000
-
-wm 32 MX6_IOM_DRAM_SDCLK_0 0x00020030
-wm 32 MX6_IOM_DRAM_SDCLK_1 0x00020030
-
-wm 32 MX6_IOM_DRAM_CAS 0x00020030
-wm 32 MX6_IOM_DRAM_RAS 0x00020030
-wm 32 MX6_IOM_GRP_ADDDS 0x00020030
-
-wm 32 MX6_IOM_DRAM_RESET 0x00020030
-wm 32 MX6_IOM_DRAM_SDBA2 0x00000000
-wm 32 MX6_IOM_DRAM_SDODT0 0x00020030
-wm 32 MX6_IOM_DRAM_SDODT1 0x00020030
-wm 32 MX6_IOM_GRP_CTLDS 0x00020030
-
-wm 32 MX6_IOM_DDRMODE_CTL 0x00020000
-wm 32 MX6_IOM_DRAM_SDQS0 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS1 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS2 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS3 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS4 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS5 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS6 0x00020030
-wm 32 MX6_IOM_DRAM_SDQS7 0x00020030
-
-wm 32 0x020e0534 0x00018200
-wm 32 0x020e0538 0x00008000
-wm 32 0x020e053c 0x00018200
-wm 32 0x020e0540 0x00018200
-wm 32 0x020e0544 0x00018200
-wm 32 0x020e0548 0x00018200
-wm 32 0x020e054c 0x00018200
-wm 32 0x020e0550 0x00018200
-
-wm 32 MX6_IOM_GRP_DDRMODE 0x00020000
-wm 32 MX6_IOM_GRP_B0DS 0x00020030
-wm 32 MX6_IOM_GRP_B1DS 0x00020030
-wm 32 MX6_IOM_GRP_B2DS 0x00020030
-wm 32 MX6_IOM_GRP_B3DS 0x00020030
-wm 32 MX6_IOM_GRP_B4DS 0x00020030
-wm 32 MX6_IOM_GRP_B5DS 0x00020030
-wm 32 MX6_IOM_GRP_B6DS 0x00020030
-wm 32 MX6_IOM_GRP_B7DS 0x00020030
-
-wm 32 MX6_IOM_DRAM_DQM0 0x00020030
-wm 32 MX6_IOM_DRAM_DQM1 0x00020030
-wm 32 MX6_IOM_DRAM_DQM2 0x00020030
-wm 32 MX6_IOM_DRAM_DQM3 0x00020030
-wm 32 MX6_IOM_DRAM_DQM4 0x00020030
-wm 32 MX6_IOM_DRAM_DQM5 0x00020030
-wm 32 MX6_IOM_DRAM_DQM6 0x00020030
-wm 32 MX6_IOM_DRAM_DQM7 0x00020030
-
-wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-
-wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xA1390003
-
-wm 32 MX6_MMDC_P0_MPWLDECTRL0 0x002A001F
-wm 32 MX6_MMDC_P0_MPWLDECTRL1 0x002F002A
-wm 32 MX6_MMDC_P1_MPWLDECTRL0 0x001F0031
-wm 32 MX6_MMDC_P1_MPWLDECTRL1 0x001B0022
-
-wm 32 MX6_MMDC_P0_MPDGCTRL0 0x433C0354
-wm 32 MX6_MMDC_P0_MPDGCTRL1 0x03380330
-wm 32 MX6_MMDC_P1_MPDGCTRL0 0x43440358
-wm 32 MX6_MMDC_P1_MPDGCTRL1 0x03340300
-
-wm 32 MX6_MMDC_P0_MPRDDLCTL 0x483A4040
-wm 32 MX6_MMDC_P1_MPRDDLCTL 0x3E383648
-
-wm 32 MX6_MMDC_P0_MPWRDLCTL 0x3C424048
-wm 32 MX6_MMDC_P1_MPWRDLCTL 0x4C425042
-
-wm 32 MX6_MMDC_P0_MPRDDQBY0DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY1DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
-wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY0DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY1DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY2DL 0x33333333
-wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
-
-wm 32 MX6_MMDC_P0_MPDCCR 0x24912489
-wm 32 MX6_MMDC_P1_MPDCCR 0x24914452
-
-wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
-wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
-
-wm 32 MX6_MMDC_P0_MDPDC 0x00020036
-wm 32 MX6_MMDC_P0_MDOTC 0x09444040
-wm 32 MX6_MMDC_P0_MDCFG0 0x898E7955
-wm 32 MX6_MMDC_P0_MDCFG1 0xFF328F64
-wm 32 MX6_MMDC_P0_MDCFG2 0x01FF00DB
-
-wm 32 MX6_MMDC_P0_MDMISC 0x00011740
-wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-wm 32 MX6_MMDC_P0_MDRWD 0x000026D2
-wm 32 MX6_MMDC_P0_MDOR 0x008E1023
-wm 32 MX6_MMDC_P0_MDASP 0x00000047
-
-wm 32 MX6_MMDC_P0_MAARCR 0x14420000
-wm 32 MX6_MMDC_P0_MDCTL 0x841A0000
-wm 32 MX6_MMDC_P0_MPPDCMPR2 0x00400c58
-
-wm 32 0x00bb0008 0x00000000
-wm 32 0x00bb000c 0x2891E41A
-wm 32 0x00bb0038 0x00000564
-wm 32 0x00bb0014 0x00000040
-wm 32 0x00bb0028 0x00000020
-wm 32 0x00bb002c 0x00000020
-
-wm 32 MX6_MMDC_P0_MDSCR 0x02088032
-wm 32 MX6_MMDC_P0_MDSCR 0x00008033
-wm 32 MX6_MMDC_P0_MDSCR 0x00048031
-wm 32 MX6_MMDC_P0_MDSCR 0x19408030
-wm 32 MX6_MMDC_P0_MDSCR 0x04008040
-
-wm 32 MX6_MMDC_P0_MDREF 0x00007800
-
-wm 32 MX6_MMDC_P0_MPODTCTRL 0x00022227
-wm 32 MX6_MMDC_P1_MPODTCTRL 0x00022227
-
-wm 32 MX6_MMDC_P0_MDPDC 0x00025576
-
-wm 32 MX6_MMDC_P0_MAPSR 0x00011006
-
-wm 32 MX6_MMDC_P0_MDSCR 0x00000000
diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
new file mode 100644
index 000000000000..400a87015425
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
@@ -0,0 +1,3 @@
+soc imx6
+loadaddr 0x00907000
+dcdofs 0x400
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index 0d3520de476d..fb5e961e09b6 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -18,14 +18,243 @@
 #include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <mach/imx6.h>
+#include <mach/xload.h>
 #include <asm/barebox-arm.h>
 
+struct reginit {
+	u32 address;
+	u32 value;
+};
+
+static const struct reginit imx6qp_dcd[] = {
+	{ 0x020e0798, 0x000C0000 },
+	{ 0x020e0758, 0x00000000 },
+
+	{ 0x020e0588, 0x00020030 },
+	{ 0x020e0594, 0x00020030 },
+
+	{ 0x020e056c, 0x00020030 },
+	{ 0x020e0578, 0x00020030 },
+	{ 0x020e074c, 0x00020030 },
+
+	{ 0x020e057c, 0x00020030 },
+	{ 0x020e058c, 0x00000000 },
+	{ 0x020e059c, 0x00020030 },
+	{ 0x020e05a0, 0x00020030 },
+	{ 0x020e078c, 0x00020030 },
+
+	{ 0x020e0750, 0x00020000 },
+	{ 0x020e05a8, 0x00020030 },
+	{ 0x020e05b0, 0x00020030 },
+	{ 0x020e0524, 0x00020030 },
+	{ 0x020e051c, 0x00020030 },
+	{ 0x020e0518, 0x00020030 },
+	{ 0x020e050c, 0x00020030 },
+	{ 0x020e05b8, 0x00020030 },
+	{ 0x020e05c0, 0x00020030 },
+
+	{ 0x020e0534, 0x00018200 },
+	{ 0x020e0538, 0x00008000 },
+	{ 0x020e053c, 0x00018200 },
+	{ 0x020e0540, 0x00018200 },
+	{ 0x020e0544, 0x00018200 },
+	{ 0x020e0548, 0x00018200 },
+	{ 0x020e054c, 0x00018200 },
+	{ 0x020e0550, 0x00018200 },
+
+	{ 0x020e0774, 0x00020000 },
+	{ 0x020e0784, 0x00020030 },
+	{ 0x020e0788, 0x00020030 },
+	{ 0x020e0794, 0x00020030 },
+	{ 0x020e079c, 0x00020030 },
+	{ 0x020e07a0, 0x00020030 },
+	{ 0x020e07a4, 0x00020030 },
+	{ 0x020e07a8, 0x00020030 },
+	{ 0x020e0748, 0x00020030 },
+
+	{ 0x020e05ac, 0x00020030 },
+	{ 0x020e05b4, 0x00020030 },
+	{ 0x020e0528, 0x00020030 },
+	{ 0x020e0520, 0x00020030 },
+	{ 0x020e0514, 0x00020030 },
+	{ 0x020e0510, 0x00020030 },
+	{ 0x020e05bc, 0x00020030 },
+	{ 0x020e05c4, 0x00020030 },
+
+	{ 0x021b001c, 0x00008000 },
+
+	{ 0x021b0800, 0xA1390003 },
+
+	{ 0x021b080c, 0x002A001F },
+	{ 0x021b0810, 0x002F002A },
+	{ 0x021b480c, 0x001F0031 },
+	{ 0x021b4810, 0x001B0022 },
+
+	{ 0x021b083c, 0x433C0354 },
+	{ 0x021b0840, 0x03380330 },
+	{ 0x021b483c, 0x43440358 },
+	{ 0x021b4840, 0x03340300 },
+
+	{ 0x021b0848, 0x483A4040 },
+	{ 0x021b4848, 0x3E383648 },
+
+	{ 0x021b0850, 0x3C424048 },
+	{ 0x021b4850, 0x4C425042 },
+
+	{ 0x021b081c, 0x33333333 },
+	{ 0x021b0820, 0x33333333 },
+	{ 0x021b0824, 0x33333333 },
+	{ 0x021b0828, 0x33333333 },
+	{ 0x021b481c, 0x33333333 },
+	{ 0x021b4820, 0x33333333 },
+	{ 0x021b4824, 0x33333333 },
+	{ 0x021b4828, 0x33333333 },
+
+	{ 0x021b08c0, 0x24912489 },
+	{ 0x021b48c0, 0x24914452 },
+
+	{ 0x021b08b8, 0x00000800 },
+	{ 0x021b48b8, 0x00000800 },
+
+	{ 0x021b0004, 0x00020036 },
+	{ 0x021b0008, 0x09444040 },
+	{ 0x021b000c, 0x898E7955 },
+	{ 0x021b0010, 0xFF328F64 },
+	{ 0x021b0014, 0x01FF00DB },
+
+	{ 0x021b0018, 0x00011740 },
+	{ 0x021b001c, 0x00008000 },
+	{ 0x021b002c, 0x000026D2 },
+	{ 0x021b0030, 0x008E1023 },
+	{ 0x021b0040, 0x00000047 },
+
+	{ 0x021b0400, 0x14420000 },
+	{ 0x021b0000, 0x841A0000 },
+	{ 0x021b0890, 0x00400c58 },
+
+	{ 0x00bb0008, 0x00000000 },
+	{ 0x00bb000c, 0x2891E41A },
+	{ 0x00bb0038, 0x00000564 },
+	{ 0x00bb0014, 0x00000040 },
+	{ 0x00bb0028, 0x00000020 },
+	{ 0x00bb002c, 0x00000020 },
+
+	{ 0x021b001c, 0x02088032 },
+	{ 0x021b001c, 0x00008033 },
+	{ 0x021b001c, 0x00048031 },
+	{ 0x021b001c, 0x19408030 },
+	{ 0x021b001c, 0x04008040 },
+
+	{ 0x021b0020, 0x00007800 },
+
+	{ 0x021b0818, 0x00022227 },
+	{ 0x021b4818, 0x00022227 },
+
+	{ 0x021b0004, 0x00025576 },
+
+	{ 0x021b0404, 0x00011006 },
+
+	{ 0x021b001c, 0x00000000 },
+};
+
+static const struct reginit imx6q_dcd[] = {
+	{ 0x020e0798, 0x000C0000 },
+	{ 0x020e0758, 0x00000000 },
+	{ 0x020e0588, 0x00000030 },
+	{ 0x020e0594, 0x00000030 },
+	{ 0x020e056c, 0x00000030 },
+	{ 0x020e0578, 0x00000030 },
+	{ 0x020e074c, 0x00000030 },
+	{ 0x020e057c, 0x00000030 },
+	{ 0x020e058c, 0x00000000 },
+	{ 0x020e059c, 0x00000030 },
+	{ 0x020e05a0, 0x00000030 },
+	{ 0x020e078c, 0x00000030 },
+	{ 0x020e0750, 0x00020000 },
+	{ 0x020e05a8, 0x00000028 },
+	{ 0x020e05b0, 0x00000028 },
+	{ 0x020e0524, 0x00000028 },
+	{ 0x020e051c, 0x00000028 },
+	{ 0x020e0518, 0x00000028 },
+	{ 0x020e050c, 0x00000028 },
+	{ 0x020e05b8, 0x00000028 },
+	{ 0x020e05c0, 0x00000028 },
+	{ 0x020e0774, 0x00020000 },
+	{ 0x020e0784, 0x00000028 },
+	{ 0x020e0788, 0x00000028 },
+	{ 0x020e0794, 0x00000028 },
+	{ 0x020e079c, 0x00000028 },
+	{ 0x020e07a0, 0x00000028 },
+	{ 0x020e07a4, 0x00000028 },
+	{ 0x020e07a8, 0x00000028 },
+	{ 0x020e0748, 0x00000028 },
+	{ 0x020e05ac, 0x00000028 },
+	{ 0x020e05b4, 0x00000028 },
+	{ 0x020e0528, 0x00000028 },
+	{ 0x020e0520, 0x00000028 },
+	{ 0x020e0514, 0x00000028 },
+	{ 0x020e0510, 0x00000028 },
+	{ 0x020e05bc, 0x00000028 },
+	{ 0x020e05c4, 0x00000028 },
+	{ 0x021b0800, 0xa1390003 },
+	{ 0x021b080c, 0x001F001F },
+	{ 0x021b0810, 0x001F001F },
+	{ 0x021b480c, 0x001F001F },
+	{ 0x021b4810, 0x001F001F },
+	{ 0x021b083c, 0x43260335 },
+	{ 0x021b0840, 0x031A030B },
+	{ 0x021b483c, 0x4323033B },
+	{ 0x021b4840, 0x0323026F },
+	{ 0x021b0848, 0x483D4545 },
+	{ 0x021b4848, 0x44433E48 },
+	{ 0x021b0850, 0x41444840 },
+	{ 0x021b4850, 0x4835483E },
+	{ 0x021b081c, 0x33333333 },
+	{ 0x021b0820, 0x33333333 },
+	{ 0x021b0824, 0x33333333 },
+	{ 0x021b0828, 0x33333333 },
+	{ 0x021b481c, 0x33333333 },
+	{ 0x021b4820, 0x33333333 },
+	{ 0x021b4824, 0x33333333 },
+	{ 0x021b4828, 0x33333333 },
+	{ 0x021b08b8, 0x00000800 },
+	{ 0x021b48b8, 0x00000800 },
+	{ 0x021b0004, 0x00020036 },
+	{ 0x021b0008, 0x09444040 },
+	{ 0x021b000c, 0x8A8F7955 },
+	{ 0x021b0010, 0xFF328F64 },
+	{ 0x021b0014, 0x01FF00DB },
+	{ 0x021b0018, 0x00001740 },
+	{ 0x021b001c, 0x00008000 },
+	{ 0x021b002c, 0x000026d2 },
+	{ 0x021b0030, 0x008F1023 },
+	{ 0x021b0040, 0x00000047 },
+	{ 0x021b0000, 0x841A0000 },
+	{ 0x021b001c, 0x04088032 },
+	{ 0x021b001c, 0x00008033 },
+	{ 0x021b001c, 0x00048031 },
+	{ 0x021b001c, 0x09408030 },
+	{ 0x021b001c, 0x04008040 },
+	{ 0x021b0020, 0x00005800 },
+	{ 0x021b0818, 0x00011117 },
+	{ 0x021b4818, 0x00011117 },
+	{ 0x021b0004, 0x00025576 },
+	{ 0x021b0404, 0x00011006 },
+	{ 0x021b001c, 0x00000000 },
+};
+
+static inline void write_regs(const struct reginit *initvals, int count)
+{
+	int i;
+
+	for (i = 0; i < count; i++)
+		writel(initvals[i].value, initvals[i].address);
+}
+
 static inline void setup_uart(void)
 {
 	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
 
-	imx6_ungate_all_peripherals();
-
 	writel(0x1b0b1, iomuxbase + 0x0650);
 	writel(3, iomuxbase + 0x0280);
 
@@ -41,26 +270,47 @@ static inline void setup_uart(void)
 extern char __dtb_imx6q_zii_rdu2_start[];
 extern char __dtb_imx6qp_zii_rdu2_start[];
 
-ENTRY_FUNCTION(start_imx6q_zii_rdu2, r0, r1, r2)
+static noinline void rdu2_sram_setup(void)
 {
-	void *fdt = __dtb_imx6q_zii_rdu2_start;
+	enum bootsource bootsrc;
+	int instance;
 
-	imx6_cpu_lowlevel_init();
+	imx6_ungate_all_peripherals();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
+			setup_uart();
+
+	arm_setup_stack(0x00920000 - 8);
+	relocate_to_current_adr();
+	setup_c();
+
+	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
+		write_regs(imx6qp_dcd, ARRAY_SIZE(imx6qp_dcd));
+	else
+		write_regs(imx6q_dcd, ARRAY_SIZE(imx6q_dcd));
 
-	imx6q_barebox_entry(fdt - get_runtime_offset());
+	imx6_get_boot_source(&bootsrc, &instance);
+	if (bootsrc == BOOTSOURCE_SPI)
+		imx6_spi_start_image(0);
+	else
+		imx6_esdhc_start_image(instance);
 }
 
-ENTRY_FUNCTION(start_imx6qp_zii_rdu2, r0, r1, r2)
+ENTRY_FUNCTION(start_imx6_zii_rdu2, r0, r1, r2)
 {
-	void *fdt = __dtb_imx6qp_zii_rdu2_start;
-
 	imx6_cpu_lowlevel_init();
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
+	/*
+	 * When still running in SRAM, we need to setup the DRAM now and load
+	 * the remaining image.
+	 */
+	if (get_pc() < MX6_MMDC_PORT0_BASE_ADDR)
+		rdu2_sram_setup();
 
-	imx6q_barebox_entry(fdt - get_runtime_offset());
+	if (__imx6_cpu_revision() == IMX_CHIP_REV_2_0)
+		imx6q_barebox_entry(__dtb_imx6qp_zii_rdu2_start -
+				    get_runtime_offset());
+	else
+		imx6q_barebox_entry(__dtb_imx6q_zii_rdu2_start -
+				    get_runtime_offset());
 }
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 76e91ebd7d2e..5e0043f1f014 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -480,15 +480,10 @@ CFG_start_vf610_twr.pblx.imximg = $(board)/freescale-vf610-twr/flash-header-vf61
 FILE_barebox-vf610-twr.img = start_vf610_twr.pblx.imximg
 image-$(CONFIG_MACH_VF610_TWR) += barebox-vf610-twr.img
 
-pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6q_zii_rdu2
-CFG_start_imx6q_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
-FILE_barebox-zii-imx6q-rdu2.img = start_imx6q_zii_rdu2.pblx.imximg
-image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6q-rdu2.img
-
-pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6qp_zii_rdu2
-CFG_start_imx6qp_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
-FILE_barebox-zii-imx6qp-rdu2.img = start_imx6qp_zii_rdu2.pblx.imximg
-image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6qp-rdu2.img
+pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6_zii_rdu2
+CFG_start_imx6_zii_rdu2.imx-sram-img = $(board)/zii-imx6q-rdu2/flash-header-rdu2.imxcfg
+FILE_barebox-zii-imx6-rdu2.img = start_imx6_zii_rdu2.imx-sram-img
+image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6-rdu2.img
 
 pblx-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
 CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
