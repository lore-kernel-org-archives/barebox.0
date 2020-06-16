Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl4W0-0006ou-5P
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 05:52:13 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jun 2020 07:52:02 +0200
Message-Id: <20200616055202.9308-3-o.rempel@pengutronix.de>
In-Reply-To: <20200616055202.9308-1-o.rempel@pengutronix.de>
References: <20200616055202.9308-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: add imx6 based Protonic boads
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, David Jander <david@protonic.nl>

Add initial support for 15 i.MX6 based Protonic boards.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/Makefile                      |   1 +
 arch/arm/boards/protonic-imx6/Makefile        |   1 +
 .../boards/protonic-imx6/ddr3-defines.imxcfg  | 350 ++++++++++++++++
 .../protonic-imx6/flash-header-alti6p.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-lanmcu.imxcfg  | 115 ++++++
 .../protonic-imx6/flash-header-plybas.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-plym2m.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-prti6g.imxcfg  |  81 ++++
 .../protonic-imx6/flash-header-prti6q.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-prtmvt.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-prtrvt.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-prtvt7.imxcfg  | 115 ++++++
 .../protonic-imx6/flash-header-prtwd2.imxcfg  | 229 +++++++++++
 .../protonic-imx6/flash-header-prtwd3.imxcfg  | 280 +++++++++++++
 .../protonic-imx6/flash-header-victgo.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-vicut1.imxcfg  | 123 ++++++
 .../protonic-imx6/flash-header-vicut1q.imxcfg | 127 ++++++
 .../protonic-imx6/flash-header-vicutp.imxcfg  | 174 ++++++++
 arch/arm/boards/protonic-imx6/lowlevel.c      | 191 +++++++++
 .../protonic-imx6/lpddr2-defines.imxcfg       | 384 ++++++++++++++++++
 .../boards/protonic-imx6/padsetup-dl.imxcfg   |  70 ++++
 .../boards/protonic-imx6/padsetup-q.imxcfg    |  69 ++++
 .../boards/protonic-imx6/padsetup-ul.imxcfg   |  42 ++
 arch/arm/dts/Makefile                         |  16 +
 arch/arm/mach-imx/Kconfig                     |   6 +
 images/Makefile.imx                           |  30 ++
 26 files changed, 3265 insertions(+)
 create mode 100644 arch/arm/boards/protonic-imx6/Makefile
 create mode 100644 arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/lowlevel.c
 create mode 100644 arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
 create mode 100644 arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index e9e9163d58..48fac356c4 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -104,6 +104,7 @@ obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
 obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
+obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
diff --git a/arch/arm/boards/protonic-imx6/Makefile b/arch/arm/boards/protonic-imx6/Makefile
new file mode 100644
index 0000000000..b08c4a93ca
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
new file mode 100644
index 0000000000..65bd1bc3c6
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
@@ -0,0 +1,350 @@
+/*
+ * Timing configuration:
+ *
+ * MDCFG0:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tRFC 	2Gb 400MHz	0x3f (64)	24	0x3f000000
+ * 		4Gb 400MHz	0x77 (120)	24	0x77000000
+ * 		8Gb 400MHz	0x8b (140)	24	0x8b000000
+ *	 	2Gb 533MHz	0x55 (86)	24	0x55000000
+ * 		4Gb 533MHz	0x9f (160)	24	0x9f000000
+ * 		8Gb 533MHz	0xba (187)	24	0xba000000
+ * tXS		2Gb 400MHz	0x43 (68)	16	0x00430000
+ * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
+ * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
+ * 		2Gb 533MHz	0x5b (92)	16	0x005b0000
+ * 		4Gb 533MHz	0xa5 (166)	16	0x00a50000
+ * 		8Gb 533MHz	0xc0 (193)	16	0x00c00000
+ * tXP		* 400MHz	0x2 (3)		13	0x00004000
+ * 		* 533MHz	0x3 (4)		13	0x00006000
+ * tXPDLL	* 400MHz	0x9 (10)	9	0x00001200
+ * 		* 533MHz	0xc (13)	9	0x00001800
+ * tFAW		* 400MHz	0x13 (20)	4	0x00000130
+ *		* 533MHz	0x1a (27)	4	0x000001a0
+ * tCL		* 400MHz	0x3 (6)		0	0x00000003
+ *		* 533MHz-CL7	0x4 (7)		0	0x00000004
+ *		* 533MHz-CL8	0x5 (8)		0	0x00000005
+ * ----------------------------------------------------------------
+ */
+#define MDCFG0_2G_400MHZ				0x3f435333
+#define MDCFG0_4G_400MHZ				0x777b5333
+#define MDCFG0_8G_400MHZ				0x8b8f5333
+#define MDCFG0_2G_533MHZ_CL8				0x555b79a5
+#define MDCFG0_2G_533MHZ_CL7				0x555b79a4
+#define MDCFG0_4G_533MHZ_CL8				0x9fa579a5
+#define MDCFG0_4G_533MHZ_CL7				0x9fa579a4
+#define MDCFG0_8G_533MHZ_CL8				0xbac079a5
+#define MDCFG0_8G_533MHZ_CL7				0xbac079a4
+
+/*
+ * MDCFG1:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tRCD		* 400MHz	0x5 (6)		28	0xa0000000
+ * 		* 533MHz	0x7 (8)		28	0xe0000000
+ * tRP		* 400MHz	0x5 (6)		26	0x14000000
+ * 		* 533MHz	0x7 (8)		26	0x1c000000
+ * tRC		* 400MHz	0x14 (21)	21	0x02800000
+ * 		* 533MHz	0x1b (28)	21	0x03600000
+ * tRAS		* 400MHz	0x0e (15)	16	0x000e0000
+ * 		* 533MHz	0x13 (20)	16	0x00130000
+ * tRPA		*		0x1 (tRP+1)	15	0x00008000
+ * tWR		* 400MHz	0x5 (6)		9	0x00000a00
+ * 		* 533MHz	0x7 (8)		9	0x00000e00
+ * tMRD		* 		0xb (12)	5	0x00000160
+ * tCWL		* 400MHz	0x3 (5)		0	0x00000003
+ *		* 533MHz	0x4 (6)		0	0x00000004
+ * ----------------------------------------------------------------
+ */
+#define MDCFG1_400MHZ					0xb68e8b63
+#define MDCFG1_533MHZ					0xff738f64
+
+/*
+ * MDCFG2:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tDLLK	*		0x1ff (512)	16	0x01ff0000
+ * tRTP		*		0x3 (4)		6	0x000000c0
+ * tWTR		*		0x3 (4)		3	0x00000018
+ * tRRD		* 400MHz	0x3 (4)		0	0x00000003
+ * 		* 533MHz	0x5 (6)		0	0x00000005
+ * ----------------------------------------------------------------
+ */
+#define MDCFG2_400MHZ					0x01ff00db
+#define MDCFG2_533MHZ					0x01ff00dd
+
+/*
+ * MDOR:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tXPR		2Gb 400MHz	0x43 (68)	16	0x00430000
+ * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
+ * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
+ *		2Gb 533MHz	0x5b (92)	16	0x005b0000
+ *		4Gb 533MHz	0xa5 (166)	16	0x00a50000
+ *		8Gb 533MHz	0xc0 (193)	16	0x00c00000
+ * SDE_to_RST	*		0x10 (14)	8	0x00001000
+ * RST_to_CKE	*		0x23 (33)	0	0x00000023
+ * ----------------------------------------------------------------
+ */
+#define MDOR_2G_400MHZ					0x00431023
+#define MDOR_4G_400MHZ					0x007b1023
+#define MDOR_8G_400MHZ					0x008f1023
+#define MDOR_2G_533MHZ					0x005b1023
+#define MDOR_4G_533MHZ					0x00a51023
+#define MDOR_8G_533MHZ					0x00c01023
+
+/*
+ * MDOTC ODT delays:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tAOFPD	* 400MHz	0x0 (1)		27	0x00000000
+ * 		* 533MHz	0x1 (2)		27	0x08000000
+ * tAONPD	* 400MHz	0x0 (1)		24	0x00000000
+ * 		* 533MHz	0x1 (2)		24	0x01000000
+ * tANPD	* 400MHz	0x3 (4)		20	0x00300000
+ * 		* 533MHz	0x4 (5)		20	0x00400000
+ * tAXPD	* 400MHz	0x3 (4)		16	0x00030000
+ * 		* 533MHz	0x4 (5)		16	0x00040000
+ * tODTLon	* 400MHz	0x3 (3)		12	0x00003000
+ * 		* 533MHz	0x4 (4)		12	0x00004000
+ * tODTidle_off	* 400MHz	0x3 (3)		4	0x00000030
+ * 		* 533MHz	0x4 (4) 	4	0x00000040
+ * ----------------------------------------------------------------
+ */
+#define MDOTC_400MHZ					0x00333030
+#define MDOTC_533MHZ					0x09444040
+
+/*
+ * MDPDC:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * PRCT_1	*		0x0		28	0x00000000
+ * PRCT_0	*		0x0		24	0x00000000
+ * tCKE		*		0x2 (3)		16	0x00020000
+ * PWDT_1	*		0x5 (256)	12	0x00005000
+ * PWDT_0	*		0x5 (256)	8	0x00000500
+ * SLOW_PD	*		0x0 (0)		7	0x00000000
+ * BOTH_CS_PD	*		0x1 (1)		6	0x00000040
+ * tCKSRX	* 400MHz	0x5 (5)		3	0x00000028
+ * 		* 533MHz	0x6 (6)		3	0x00000030
+ * tCKSRE	* 400MHz	0x5 (5)		0	0x00000005
+ * 		* 533MHz	0x6 (6)		0	0x00000006
+ * ----------------------------------------------------------------
+ */
+#define MDPDC_400MHZ					0x0002556d
+#define MDPDC_533MHZ					0x00025576
+
+/*
+ * MDCTL:
+ * 2Gb: CS0 enable, 14bit ROW, 10bit COL, BL=8, 64bit data
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * SDE_0	*		0x1 (1)		31	0x80000000
+ * SDE_1	*		0x0 (0)		30	0x00000000
+ * ROW		2Gb *		0x3 (14)	24	0x03000000
+ * 		4Gb *		0x4 (15)	24	0x04000000
+ * 		8Gb *		0x5 (16)	24	0x05000000
+ * COL		*		0x1 (10)	20	0x00100000
+ * BL		* 		0x1 (8)		19	0x00080000
+ * DSIZ		64bit		0x2 (64)	16	0x00020000
+ * DSIZ		32bit		0x1 (32)	16	0x00010000
+ * DSIZ		16bit		0x0 (16)	16	0x00000000
+ * ----------------------------------------------------------------
+ */
+#define MDCTL_2G_16BIT					0x83180000
+#define MDCTL_2G_32BIT					0x83190000
+#define MDCTL_2G					0x831a0000
+#define MDCTL_4G_16BIT					0x84180000
+#define MDCTL_4G_32BIT					0x84190000
+#define MDCTL_4G					0x841a0000
+#define MDCTL_8G					0x851a0000
+
+/*
+ * MDASP Address space partitioning:
+ *
+ * At 0.25GiB, internal address space ends. Above that DDR3 should be
+ * located. The CS1/CS0 split-line determines where:
+ *
+ * For 1x2Gb chips (0.25GiB total on CS0): 0.5GiB
+ * For 2x4Gb chips (1GiB total on CS0): 1.25GiB
+ * For 4x2Gb chips (1GiB total on CS0): 1.25GiB
+ * For 4x4Gb chips (2GiB total on CS0): 2.25GiB
+ * For 4x8Gb chips (4GiB total on CS0): 4.00GiB (maximum possible,
+ *                      shadowed partially by internal address space).
+ *
+ * Register value	Split
+ * ---------------------------
+ * 0x0000000f		0.5GiB
+ * 0x00000017		0.75GiB
+ * 0x00000027		1.25GiB
+ * 0x00000047		2.25GiB
+ * 0x0000007f		4.00GiB
+ */
+#define MDASP_512MIB	0x0000000f
+#define MDASP_768MIB	0x00000017
+#define MDASP_1GIB25	0x00000027
+#define MDASP_2GIB25	0x00000047
+#define MDASP_4GIB00	0x0000007f
+
+/*
+ * Initialize DDR3 chips
+ * MDSCR: Value = 0xvvvv803n, with 0xvvvv = value, n = Reg. number (BA)
+ */
+/*
+ * DDR3 chip MR2, n = 2:
+ *
+ * Par. 	Chip		VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Rtt(wr)	*		0x0 (disabled)	10, 9	0x0000
+ * SR-Temp.	*		0x1 (Extended)	7	0x0080
+ * Auto-SR	*		0x0 (Manual)	6	0x0000
+ * CWL		* 400MHz	0x0 (5tCK)	5, 4, 3	0x0000
+ * 		* 533MHz	0x1 (6tCK)	5, 4, 3	0x0008
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR2_400MHZ_RTT_OFF				0x00808032
+#define DDR3_MR2_533MHZ_RTT_OFF				0x00888032
+#define DDR3_MR2_400MHZ_RTT_120				0x04808032
+#define DDR3_MR2_533MHZ_RTT_120				0x04888032
+
+/*
+ * DDR3 chip MR1, n = 1:
+ *
+ * Par. 		Chip	VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Qoff			*	0x0 (enabled)	12	0x0000
+ * TDQS			*	0x0 (disabled)	11	0x0000
+ * Rtt			*	0x0 (disabled)	9, 6, 2	0x0000
+ * Write-levelling	*	0x0 (disable)	7	0x0000
+ * ODS			*	0x0 (RZQ/6=40)	5, 1	0x0000
+ * DLL			*	0x0 (enable)	0	0x0000
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR1_RTT_OFF_ODS_40				0x00008031
+#define DDR3_MR1_RTT_120_ODS_40				0x00408031
+#define DDR3_MR1_RTT_60_ODS_40				0x00048031
+#define DDR3_MR1_RTT_OFF_ODS_34				0x00028031
+#define DDR3_MR1_RTT_120_ODS_34				0x00428031
+#define DDR3_MR1_RTT_60_ODS_34				0x00068031
+
+/*
+ * DDR3 chip MR0, n = 0:
+ *
+ * Par. 		Chip	VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Precharge PD		*	0x1 (fast exit)	12	0x1000
+ * WR			400MHz	0x2 (6)		11,10,9	0x0400
+ * 			533MHz	0x4 (8)		11,10,9 0x0800
+ * DLL reset		*	0x1 (Yes)	8	0x0100
+ * CL			400MHz	0x4 (6)		6,5,4,2	0x0020
+ * 			533MHz	0x6 (7)		6,5,4,2 0x0030
+ * 			533MHz	0x8 (8)		6,5,4,2 0x0040
+ * RD burst type	*	0x0 (seq.)	3	0x0000
+ * BL			*	0x0 (BL8)	0	0x0000
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR0_400MHZ					0x15208030
+#define DDR3_MR0_533MHZ_CL7				0x19308030
+#define DDR3_MR0_533MHZ_CL8				0x19408030
+
+
+/*
+ * MDREF:
+ * REF_SEL (bit 14,15): 0 (64kHz, needed for high-temp.)
+ * REFR (bit 11, 12, 13): 0x3 (4 refreshes) -> 0x00001800
+ * 			  0x7 (8 refreshes) -> 0x00003800
+ */
+#define MDREF_64KHZ 0x00001800
+#define MDREF_32KHZ 0x00007800
+
+/* MPODTCTRL */
+#define MPODTCTRL_ODT_OFF 0x00000007
+#define MPODTCTRL_ODT_120 0x00011117
+#define MPODTCTRL_ODT_60  0x00022227
+#define MPODTCTRL_ODT_40  0x00033337
+
+/*
+ * MPDGCTRL0:
+ *
+ * Channel 0:
+ *
+ * Par. 		Chip	VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * RST_RD_FIFO		*	0		31	0x00000000
+ * DG_CMP_CYC		*	1		30	0x40000000
+ * DG_DIS		*	0		29	0x00000000
+ * HW_DG_EN		*	0		28	0x00000000
+ * DG_HC_DEL1		400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_EXT_UP		*	0		23	0x00000000
+ * DG_DL_ABS_OFFS1	400MHz	0x35		16	0x00350000
+ * 			533MHz	0x4b		16	0x004b0000
+ * DG_HC_DEL0		400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS0	400MHz	0x35		0	0x00000031
+ * 			533MHz	0x4b		0	0x00000050
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL0_CH0_400MHZ				0x42350231
+#define MPDGCTRL0_CH0_533MHZ				0x434b0350
+/*
+ *
+ * Channel 1:
+ *
+ * DG_HC_DEL1 (5)	400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS1 (5)	400MHz	0x35		16	0x00350000
+ * 			533MHz	0x4b		16	0x004b0000
+ * DG_HC_DEL0 (4)	400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS0 (4)	400MHz	0x35		0	0x00000031
+ * 			533MHz	0x4b		0	0x00000050
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL0_CH1_400MHZ				0x42350231
+#define MPDGCTRL0_CH1_533MHZ				0x434b0350
+
+/*
+ * MPDGCTRL1:
+ *
+ * Channel 0:
+ *
+ * Par. 		Chip	VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * DG_HC_DEL3		400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS3	400MHz	0x1a		16	0x001a0000
+ * 			533MHz	0x4c		16	0x004c0000
+ * DG_HC_DEL2		400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS2	400MHz	0x18		0	0x00000018
+ * 			533MHz	0x59		0	0x00000059
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL1_CH0_400MHZ				0x021a0218
+#define MPDGCTRL1_CH0_533MHZ				0x034c0359
+/*
+ *
+ * Channel 1:
+ *
+ * DG_HC_DEL3 (7)	400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS3 (7)	400MHz	0x1a		16	0x001a0000
+ * 			533MHz	0x65		16	0x00650000
+ * DG_HC_DEL2 (6)	400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS2 (6)	400MHz	0x18		0	0x00000018
+ * 			533MHz	0x48		0	0x00000048
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL1_CH1_400MHZ				0x021a0218
+#define MPDGCTRL1_CH1_533MHZ				0x03650348
diff --git a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
new file mode 100644
index 0000000000..a73857cae9
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_4G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_4G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_1GIB25
+wm 32 0x021b0000 MDCTL_4G_32BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: ALTI6P doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
new file mode 100644
index 0000000000..d926cecc5f
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
@@ -0,0 +1,115 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug 0 LED */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e060c 0x000130b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_512MIB
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
new file mode 100644
index 0000000000..d91b38cc2d
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_512MIB
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
new file mode 100644
index 0000000000..d91b38cc2d
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_512MIB
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
new file mode 100644
index 0000000000..f58b0181ea
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
@@ -0,0 +1,81 @@
+soc imx6
+loadaddr 0x80000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+#include "padsetup-ul.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 0x00000047	/* MDASP_512MIB */
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 0x00000117	/* MPODTCTRL_ODT_120 */
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b0850 0x40404040 /* For now set all to 50%. */
+
+/* MPWLDECTRL0 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
new file mode 100644
index 0000000000..8b7c9ea3b0
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e0228 0x00000005
+wm 32 0x020e0244 0x00000005
+wm 32 0x020e05f8 0x000130b0
+wm 32 0x020e0614 0x0001b0b0
+
+#include "padsetup-q.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00000742
+check 32 until_all_bits_clear 0x021b0018 0x00000002
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+check 32 until_any_bit_set 0x021b001c 0x00004000
+
+wm 32 0x021b000c MDCFG0_8G_533MHZ_CL7
+wm 32 0x021b0010 MDCFG1_533MHZ
+wm 32 0x021b0014 MDCFG2_533MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_8G_533MHZ
+wm 32 0x021b0008 MDOTC_533MHZ
+wm 32 0x021b0004 MDPDC_533MHZ
+wm 32 0x021b0040 MDASP_4GIB00
+wm 32 0x021b0000 MDCTL_8G
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_60
+wm 32 0x021b4818 MPODTCTRL_ODT_60
+
+wm 32 0x021b083c MPDGCTRL0_CH0_533MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_533MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_533MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_533MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* DEBUG leds */
+wm 32 0x020e0244 0x00000005
+wm 32 0x020e0614 0x000130b0
+
+/* RGMII config */
+wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
+wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
new file mode 100644
index 0000000000..caffae26c7
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_4G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_4G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_1GIB25
+wm 32 0x021b0000 MDCTL_4G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
new file mode 100644
index 0000000000..d91b38cc2d
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_512MIB
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
new file mode 100644
index 0000000000..c548d5f78e
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
@@ -0,0 +1,115 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug 0 LED */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e060c 0x000130b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_768MIB
+wm 32 0x021b0000 MDCTL_2G_32BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
new file mode 100644
index 0000000000..4e38ae4285
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
@@ -0,0 +1,229 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "lpddr2-defines.imxcfg"
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* Set DDR clk to 400MHz. */
+wm 32 0x020c4018 0x00060324
+
+/* #include "padsetup-q.imxcfg" */
+
+/* LPDDR2 i.MX6D/Q pad setup */
+wm 32 0x020e0798 0x00080000
+wm 32 0x020e0758 0x00000000
+
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00003030
+wm 32 0x020e05b0 0x00003030
+wm 32 0x020e0524 0x00003030
+wm 32 0x020e051c 0x00003030
+wm 32 0x020e0518 0x00003030
+wm 32 0x020e050c 0x00003030
+wm 32 0x020e05b8 0x00003030
+wm 32 0x020e05c0 0x00003030
+
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+
+wm 32 0x020e05ac 0x00000030
+wm 32 0x020e05b4 0x00000030
+wm 32 0x020e0528 0x00000030
+wm 32 0x020e0520 0x00000030
+wm 32 0x020e0514 0x00000030
+wm 32 0x020e0510 0x00000030
+wm 32 0x020e05bc 0x00000030
+wm 32 0x020e05c4 0x00000030
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+check 32 until_any_bit_set 0x021b001c 0x00004000
+wm 32 0x021b401c 0x00008000
+/* check 32 until_any_bit_set 0x021b401c 0x00004000 */
+
+
+wm 32 0x021b085c 0x1b4700c7
+wm 32 0x021b485c 0x1b4700c7
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
+
+wm 32 0x021b0890 0x00400000
+wm 32 0x021b4890 0x00400000
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+wm 32 0x021b083c 0x20000000
+wm 32 0x021b0840 0x00000000
+wm 32 0x021b483c 0x20000000
+wm 32 0x021b4840 0x00000000
+
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* Set Write data delay 3 delay units for all bits */
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b0834 0xf3333333
+wm 32 0x021b0838 0xf3333333
+wm 32 0x021b482c 0xf3333333
+wm 32 0x021b4830 0xf3333333
+wm 32 0x021b4834 0xf3333333
+wm 32 0x021b4838 0xf3333333
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/*
+ * Configure MMDC Channel 0
+ */
+
+/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
+wm 32 0x021b0018 0x00001602
+check 32 until_all_bits_clear 0x021b0018 0x00000002
+
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x12272000 /* FIXME: Why does script aid set this? */
+wm 32 0x021b000c MDCFG0_8G_LPDDR2_CL6
+wm 32 0x021b0010 MDCFG1_LPDDR2
+wm 32 0x021b0014 MDCFG2_LPDDR2
+
+wm 32 0x021b0018 0x0000174c
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x0f9f26d2 /* MDRWD */
+wm 32 0x021b0030 MDOR_LPDDR2
+wm 32 0x021b0038 0x00190778 /* MDCFG3LP */
+wm 32 0x021b0040 0x0000004f /* NOTE: According to RM */
+wm 32 0x021b0400 0x11420000 /* MAARCR disable dyn jump */
+wm 32 0x021b0000 MDCTL_LPDDR2
+
+/*
+ * Configure MMDC Channel 1
+ */
+
+/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
+wm 32 0x021b4018 0x00001602
+check 32 until_all_bits_clear 0x021b4018 0x00000002
+
+wm 32 0x021b4004 0x00020036
+wm 32 0x021b4008 0x12272000 /* FIXME: Why does script aid set this? */
+wm 32 0x021b400c MDCFG0_8G_LPDDR2_CL6
+wm 32 0x021b4010 MDCFG1_LPDDR2
+wm 32 0x021b4014 MDCFG2_LPDDR2
+
+wm 32 0x021b4018 0x0000174c
+wm 32 0x021b401c 0x00008000
+wm 32 0x021b402c 0x0f9f26d2 /* MDOR */
+wm 32 0x021b4030 MDOR_LPDDR2
+wm 32 0x021b4038 0x00190778 /* MDCFG3LP */
+wm 32 0x021b4040 MDASP_768MIB /* NOTE: According to RM */
+wm 32 0x021b4400 0x11420000 /* MAARCR disable dyn jump */
+wm 32 0x021b4000 MDCTL_LPDDR2
+
+/*
+ * Configure LPDDR2 devices
+ */
+
+wm 32 0x021b001c 0x00008010 /* Precharge all ch 0 */
+wm 32 0x021b401c 0x00008010 /* Precharge all ch 1 */
+
+/* Channel 0 */
+wm 32 0x021b001c 0x003f8030 /* Reset */
+wm 32 0x021b001c 0xff0a8030 /* Calibrate */
+wm 32 0x021b001c 0x82018030 /* MR1: nWR=6, WC=0, BT=0, BL=BL4 */
+wm 32 0x021b001c 0x04028030 /* MR2: RL6/WL3 */
+wm 32 0x021b001c 0x02038030 /* MR3: DS = 40 Ohm */
+
+/* Channel 1 */
+wm 32 0x021b401c 0x003f8030
+wm 32 0x021b401c 0xff0a8030
+wm 32 0x021b401c 0x82018030
+wm 32 0x021b401c 0x04028030
+wm 32 0x021b401c 0x02038030
+
+/* MPDGCTRL disabled, reset fifos */
+wm 32 0x021b083c 0xa0000000
+wm 32 0x021b083c 0xa0000000
+check 32 until_all_bits_clear 0x021b083c 0x80000000
+wm 32 0x021b483c 0xa0000000
+wm 32 0x021b483c 0xa0000000
+check 32 until_all_bits_clear 0x021b483c 0x80000000
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
+
+wm 32 0x021b0020 MDREF_64KHZ
+wm 32 0x021b4020 MDREF_64KHZ
+
+wm 32 0x021b0818 0x00000000 /* LPDDR2: Disable ODT! */
+wm 32 0x021b4818 0x00000000
+
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b4004 MDPDC_400MHZ
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011006 /* Enable autorefresh  */
+wm 32 0x021b4404 0x00011006 /* Enable autorefresh  */
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+wm 32 0x021b401c 0x00000000 /* Disable configuration req */
+
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* DEBUG leds */
+wm 32 0x020e0244 0x00000005
+wm 32 0x020e0614 0x000130b0
+
+/* configure 100K pull down on USB_ETH_CHG -> ADC_ICHG */
+wm 32 0x020e06cc 0x000130f9
diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
new file mode 100644
index 0000000000..f7ad652cc1
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
@@ -0,0 +1,280 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "lpddr2-defines.imxcfg"
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* Set DDR clk to 400MHz. */
+wm 32 0x020c4018 0x00060324
+
+/* #include "padsetup-q.imxcfg" */
+
+/* LPDDR2 i.MX6D/Q pad setup */
+wm 32 0x020e0798 0x00080000
+wm 32 0x020e0758 0x00000000
+
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00003030
+wm 32 0x020e05b0 0x00003030
+wm 32 0x020e0524 0x00003030
+wm 32 0x020e051c 0x00003030
+wm 32 0x020e0518 0x00003030
+wm 32 0x020e050c 0x00003030
+wm 32 0x020e05b8 0x00003030
+wm 32 0x020e05c0 0x00003030
+
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+
+wm 32 0x020e05ac 0x00000030
+wm 32 0x020e05b4 0x00000030
+wm 32 0x020e0528 0x00000030
+wm 32 0x020e0520 0x00000030
+wm 32 0x020e0514 0x00000030
+wm 32 0x020e0510 0x00000030
+wm 32 0x020e05bc 0x00000030
+wm 32 0x020e05c4 0x00000030
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+check 32 until_any_bit_set 0x021b001c 0x00004000
+wm 32 0x021b401c 0x00008000
+/* check 32 until_any_bit_set 0x021b401c 0x00004000 */
+
+
+wm 32 0x021b085c 0x1b4700c7
+wm 32 0x021b485c 0x1b4700c7
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
+
+wm 32 0x021b0890 0x00400000
+wm 32 0x021b4890 0x00400000
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+wm 32 0x021b083c 0x20000000
+wm 32 0x021b0840 0x00000000
+wm 32 0x021b483c 0x20000000
+wm 32 0x021b4840 0x00000000
+
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* Set Write data delay 3 delay units for all bits */
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b0834 0xf3333333
+wm 32 0x021b0838 0xf3333333
+wm 32 0x021b482c 0xf3333333
+wm 32 0x021b4830 0xf3333333
+wm 32 0x021b4834 0xf3333333
+wm 32 0x021b4838 0xf3333333
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* NOC: DDRCONF */
+/* Sabre-auto: wm 32 0x00bb0008 0x00000000 */
+/* Values (Address mapping for 64bit):
+ *   0 : 16 Row, 3 Bank, 10 Col interleave (11 Col for 32 bit)
+ *   1 : 15 Row, 3 Bank, 11 Col interleave (12 Col for 32 bit)
+ *   2 : 18 Row, 3 Bank, 8 Col interleave  (9 Col for 32 bit)
+ *   3 : 17 Row, 3 Bank, 9 Col interleave  (10 Col for 32 bit)
+ *   4 : 2 CS (?), 15 Row, 3 Bank, 10 Col, interleave
+ * ...
+ */
+wm 32 0x00bb0008 0x00000000
+
+/*
+ * NOC DdrTiming:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * ActToAct	533MHz		0x1b (28)	0	0x0000001b
+ * 		LPDDR2		0x18 (24)	0	0x00000018
+ * RdToMiss	533MHz		0x10 (16)	6	0x00000400
+ * 		LPDDR2		0x11 (17)	6	0x00000440
+ * WrToMiss	*		0x1e (30)	12	0x0001e000
+ *		LPDDR2		0x19 (25)	12	0x00019000
+ * BurstLen	*		0x4 (8/2)	18	0x00100000
+ * 		LPDDR2		0x2 (4/2)	18	0x00080000
+ * RdToWr	*		0x3 (3)		21	0x00600000
+ * 		LPDDR2		0x5 (5)		21	0x00a00000
+ * WrToRd	*		0xa (10)	26	0x28000000
+ * 		LPDDR2		0x6 (6)		26	0x18000000
+ * BwRatio	* 		0x0 (0)		31	0x00000000
+ * ----------------------------------------------------------------
+ */
+/* Sabre-auto: wm 32 0x00bb000c				0x2891E41A */
+wm 32 0x00bb000c 					0x18a99459
+
+/*
+ * NOC Activate:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * Rrd		*		0x6 (6)		0	0x00000006
+ * 		LPDDR2		0x4 (4)		0	0x00000004
+ * Faw		*		0x1b (27)	4	0x000001b0
+ * 		LPDDR2		0x14 (20)	4	0x00000140
+ * FawBank	*		0x0 (0)		10	0x00000000
+ * ----------------------------------------------------------------
+ */
+/* Sabre-auto: wm 32 0x00bb0038 			0x00000564 */
+wm 32 0x00bb0038		 			0x00000144
+
+/*
+ * NOC ReadLatency: (FIXME)
+ */
+wm 32 0x00bb0014 0x00000040
+
+/*
+ * Configure MMDC Channel 0
+ */
+
+/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
+wm 32 0x021b0018 0x00001602
+check 32 until_all_bits_clear 0x021b0018 0x00000002
+
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x12272000 /* FIXME: Why does script aid set this? */
+wm 32 0x021b000c MDCFG0_8G_LPDDR2_CL6
+wm 32 0x021b0010 MDCFG1_LPDDR2
+wm 32 0x021b0014 MDCFG2_LPDDR2
+
+wm 32 0x021b0018 0x0000174c
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x0f9f26d2 /* MDRWD */
+wm 32 0x021b0030 MDOR_LPDDR2
+wm 32 0x021b0038 0x00190778 /* MDCFG3LP */
+wm 32 0x021b0040 0x0000004f /* NOTE: According to RM */
+wm 32 0x021b0400 0x15420000 /* MAARCR disable dyn jump/reordering */
+wm 32 0x021b0000 MDCTL_LPDDR2
+
+/*
+ * Configure MMDC Channel 1
+ */
+
+/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
+wm 32 0x021b4018 0x00001602
+check 32 until_all_bits_clear 0x021b4018 0x00000002
+
+wm 32 0x021b4004 0x00020036
+wm 32 0x021b4008 0x12272000 /* FIXME: Why does script aid set this? */
+wm 32 0x021b400c MDCFG0_8G_LPDDR2_CL6
+wm 32 0x021b4010 MDCFG1_LPDDR2
+wm 32 0x021b4014 MDCFG2_LPDDR2
+
+wm 32 0x021b4018 0x0000174c
+wm 32 0x021b401c 0x00008000
+wm 32 0x021b402c 0x0f9f26d2 /* MDRWD */
+wm 32 0x021b4030 MDOR_LPDDR2
+wm 32 0x021b4038 0x00190778 /* MDCFG3LP */
+wm 32 0x021b4040 MDASP_768MIB /* NOTE: According to RM */
+wm 32 0x021b4400 0x15420000 /* MAARCR disable dyn jump/reordering */
+wm 32 0x021b4000 MDCTL_LPDDR2
+
+/*
+ * Configure LPDDR2 devices
+ */
+
+wm 32 0x021b001c 0x00008010 /* Precharge all ch 0 */
+wm 32 0x021b401c 0x00008010 /* Precharge all ch 1 */
+
+/* Channel 0 */
+wm 32 0x021b001c 0x003f8030 /* Reset */
+wm 32 0x021b001c 0xff0a8030 /* Calibrate */
+wm 32 0x021b001c 0x82018030 /* MR1: nWR=6, WC=0, BT=0, BL=BL4 */
+wm 32 0x021b001c 0x04028030 /* MR2: RL6/WL3 */
+wm 32 0x021b001c 0x02038030 /* MR3: DS = 40 Ohm */
+
+/* Channel 1 */
+wm 32 0x021b401c 0x003f8030
+wm 32 0x021b401c 0xff0a8030
+wm 32 0x021b401c 0x82018030
+wm 32 0x021b401c 0x04028030
+wm 32 0x021b401c 0x02038030
+
+/* MPDGCTRL disabled, reset fifos */
+wm 32 0x021b083c 0xa0000000
+wm 32 0x021b083c 0xa0000000
+check 32 until_all_bits_clear 0x021b083c 0x80000000
+wm 32 0x021b483c 0xa0000000
+wm 32 0x021b483c 0xa0000000
+check 32 until_all_bits_clear 0x021b483c 0x80000000
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
+
+wm 32 0x021b0020 MDREF_64KHZ
+wm 32 0x021b4020 MDREF_64KHZ
+
+wm 32 0x021b0818 0x00000000 /* LPDDR2: Disable ODT! */
+wm 32 0x021b4818 0x00000000
+
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b4004 MDPDC_400MHZ
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011006 /* Enable autorefresh  */
+wm 32 0x021b4404 0x00011006 /* Enable autorefresh  */
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+wm 32 0x021b401c 0x00000000 /* Disable configuration req */
+
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* configure 100K pull down on USB_ETH_CHG -> ADC_ICHG */
+wm 32 0x020e06cc 0x000130f9
diff --git a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
new file mode 100644
index 0000000000..55aa059431
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_4G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_4G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_1GIB25
+wm 32 0x021b0000 MDCTL_4G_32BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config: MVT doesn't have GRMII, disable! */
+wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
+wm 32 0x020e0788 0x00000000 /* disable ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
new file mode 100644
index 0000000000..7ebb52c2ab
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
@@ -0,0 +1,123 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x000130b0
+wm 32 0x020e0610 0x0001f0b0
+
+#include "padsetup-dl.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_4G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_4G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 MDASP_2GIB25
+wm 32 0x021b0000 MDCTL_4G
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_120
+wm 32 0x021b4818 MPODTCTRL_ODT_120
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
+wm 32 0x021b4810 0x00440044
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* RGMII config */
+wm 32 0x020e0768 0x00080000 /* 1V2 DDR IO */
+wm 32 0x020e0788 0x00000200 /* 60 Ohm ODT */
+
+/* Debug */
+wm 32 0x020e023c 0x00000005
+wm 32 0x020e0240 0x00000005
+wm 32 0x020e060c 0x0001f0b0
+wm 32 0x020e0610 0x000130b0
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
new file mode 100644
index 0000000000..fdc328d892
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
@@ -0,0 +1,127 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e0228 0x00000005
+/* wm 32 0x020e0244 0x00000005 */
+wm 32 0x020e05f8 0x000130b0
+/* wm 32 0x020e0614 0x000130b0 */
+
+#include "padsetup-q.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011742
+check 32 until_all_bits_clear 0x021b0018 0x00000002
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+check 32 until_any_bit_set 0x021b001c 0x00004000
+
+wm 32 0x021b000c MDCFG0_8G_533MHZ_CL7
+wm 32 0x021b0010 MDCFG1_533MHZ
+wm 32 0x021b0014 MDCFG2_533MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_8G_533MHZ
+wm 32 0x021b0008 MDOTC_533MHZ
+wm 32 0x021b0004 MDPDC_533MHZ
+wm 32 0x021b0040 MDASP_4GIB00
+wm 32 0x021b0000 MDCTL_8G
+// check 32 until_any_bit_set 0x021b0018 0x80000000
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_60
+wm 32 0x021b4818 MPODTCTRL_ODT_60
+
+/* DQS gating calibration measured on UT2 and UTC boards */
+wm 32 0x021b083c 0x43000300
+wm 32 0x021b483c 0x430a0310
+
+wm 32 0x021b0840 0x030002b0
+wm 32 0x021b4840 0x02b00255
+
+/* MPRDDLCTL, MPWRDLCTL */
+/* Measured on UT2 and UTC, good averages */
+wm 32 0x021b0848 0x453a3a3a
+wm 32 0x021b4848 0x403b3947
+wm 32 0x021b0850 0x40444540
+wm 32 0x021b4850 0x46404840
+
+/* MPWLDECTRL0,1 */
+/* Measured and averaged on UT2 and UTC boards */
+wm 32 0x021b080c 0x00200020
+wm 32 0x021b0810 0x0026001e
+wm 32 0x021b480c 0x00100028
+wm 32 0x021b4810 0x0012001b
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
+
+/* Clock configuration (CCM) */
+/* CCGR0..6 */
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* DEBUG leds */
+wm 32 0x020e0244 0x00000005
+wm 32 0x020e0614 0x000130b0
+
+/* RGMII config */
+wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
+wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
new file mode 100644
index 0000000000..3ca21f683a
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
@@ -0,0 +1,174 @@
+soc imx6
+loadaddr 0x10000000
+dcdofs 0x400
+
+#include "ddr3-defines.imxcfg"
+
+/* Debug */
+wm 32 0x020e0228 0x00000005
+/* wm 32 0x020e0244 0x00000005 */
+wm 32 0x020e05f8 0x000130b0
+/* wm 32 0x020e0614 0x000130b0 */
+
+#include "padsetup-q.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00001742
+check 32 until_all_bits_clear 0x021b0018 0x00000002
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+check 32 until_any_bit_set 0x021b001c 0x00004000
+
+wm 32 0x021b000c MDCFG0_4G_533MHZ_CL7
+wm 32 0x021b0010 MDCFG1_533MHZ
+wm 32 0x021b0014 MDCFG2_533MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_4G_533MHZ
+wm 32 0x021b0008 MDOTC_533MHZ
+wm 32 0x021b0004 MDPDC_533MHZ
+wm 32 0x021b0040 MDASP_2GIB25
+
+/* Dual-Plus specific configuration */
+/* MMDC: MAARCR: Disable reordering */
+wm 32 0x021b0400 0x14420000
+/* MMDC: MPPDCMPR2: ZQ Offset setting (TODO) */
+wm 32 0x021b0890 0x00400008 /* Freescale sabre-auto: 0x00400C58 */
+
+/* NOC: DDRCONF */
+/* Sabre-auto: wm 32 0x00bb0008 0x00000000 */
+/* Values (Address mapping for 64bit):
+ *   0 : 16 Row, 3 Bank, 10 Col interleave (11 Col for 32 bit)
+ *   1 : 15 Row, 3 Bank, 11 Col interleave (12 Col for 32 bit)
+ *   2 : 18 Row, 3 Bank, 8 Col interleave  (9 Col for 32 bit)
+ *   3 : 17 Row, 3 Bank, 9 Col interleave  (10 Col for 32 bit)
+ *   4 : 2 CS (?), 15 Row, 3 Bank, 10 Col, interleave
+ * ...
+ */
+wm 32 0x00bb0008 0x00000000
+
+/*
+ * NOC DdrTiming:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * ActToAct	533MHz		0x1b (28)	0	0x0000001b
+ * RdToMiss	533MHz		0x10 (16)	6	0x00000400
+ * WrToMiss	*		0x1e (30)	12	0x0001e000
+ * BurstLen	*		0x4 (8/2)	18	0x00100000
+ * RdToWr	*		0x3 (3)		21	0x00600000
+ * WrToRd	*		0xa (10)	26	0x28000000
+ * BwRatio	* 		0x0 (0)		31	0x00000000
+ * ----------------------------------------------------------------
+ */
+/* Sabre-auto: wm 32 0x00bb000c				0x2891E41A */
+wm 32 0x00bb000c 					0x2871e41c
+
+/*
+ * NOC Activate:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * Rrd		*		0x6 (6)		0	0x00000006
+ * Faw		*		0x1b (27)	4	0x000001b0
+ * FawBank	*		0x0 (0)		10	0x00000000
+ * ----------------------------------------------------------------
+ */
+/* Sabre-auto: wm 32 0x00bb0038 			0x00000564 */
+wm 32 0x00bb0038		 			0x000001b6
+
+/*
+ * NOC ReadLatency: (FIXME)
+ */
+wm 32 0x00bb0014 0x00000040
+
+/*
+ * NOC IPU1/IPU2 aging: (FIXME)
+ */
+wm 32 0x00bb0028 0x00000020
+wm 32 0x00bb002c 0x00000020
+
+wm 32 0x021b0000 MDCTL_4G
+// check 32 until_any_bit_set 0x021b0018 0x80000000
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+wm 32 0x021b4800 0xa1390003 
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 MPODTCTRL_ODT_60
+wm 32 0x021b4818 MPODTCTRL_ODT_60
+
+wm 32 0x021b083c MPDGCTRL0_CH0_533MHZ
+wm 32 0x021b483c MPDGCTRL0_CH1_533MHZ
+
+wm 32 0x021b0840 MPDGCTRL1_CH0_533MHZ
+wm 32 0x021b4840 MPDGCTRL1_CH1_533MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4850 0x40404040
+
+/* MPWLDECTRL0,1 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+wm 32 0x021b48b8 0x00000800
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
+
+/* enable AXI cache for VDOA/PCIe/VPU/IPU */
+wm 32 0x020e0010 0xff0000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+
+/* DEBUG leds */
+wm 32 0x020e0244 0x00000005
+wm 32 0x020e0614 0x000130b0
+
+/* RGMII config */
+wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
+wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
new file mode 100644
index 0000000000..f5784cc6b1
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/lowlevel.c
@@ -0,0 +1,191 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Protonic Holland
+ * Copyright (C) 2020 Oleksij Rempel, Pengutronix
+ */
+
+#include <asm/barebox-arm.h>
+#include <common.h>
+#include <mach/esdctl.h>
+#include <mach/generic.h>
+
+extern char __dtb_z_imx6q_prti6q_start[];
+extern char __dtb_z_imx6q_prtwd2_start[];
+extern char __dtb_z_imx6q_vicut1_start[];
+extern char __dtb_z_imx6dl_alti6p_start[];
+extern char __dtb_z_imx6dl_lanmcu_start[];
+extern char __dtb_z_imx6dl_plybas_start[];
+extern char __dtb_z_imx6dl_plym2m_start[];
+extern char __dtb_z_imx6dl_prtmvt_start[];
+extern char __dtb_z_imx6dl_prtrvt_start[];
+extern char __dtb_z_imx6dl_prtvt7_start[];
+extern char __dtb_z_imx6dl_victgo_start[];
+extern char __dtb_z_imx6dl_vicut1_start[];
+extern char __dtb_z_imx6qp_prtwd3_start[];
+extern char __dtb_z_imx6qp_vicutp_start[];
+extern char __dtb_z_imx6ul_prti6g_start[];
+
+ENTRY_FUNCTION(start_imx6q_prti6q, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6q_prti6q_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6q_prtwd2, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6q_prtwd2_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6q_vicut1, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6q_vicut1_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_alti6p, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_alti6p_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_lanmcu, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_lanmcu_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_plybas, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_plybas_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_plym2m, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_plym2m_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_prtmvt, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_prtmvt_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_prtrvt, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_prtrvt_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_prtvt7, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_prtvt7_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_victgo, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_victgo_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6dl_vicut1, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6dl_vicut1_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6qp_prtwd3, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6qp_prtwd3_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6qp_vicutp, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6qp_vicutp_start + get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
+
+ENTRY_FUNCTION(start_imx6ul_prti6g, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6ul_cpu_lowlevel_init();
+
+	fdt = __dtb_z_imx6ul_prti6g_start + get_runtime_offset();
+
+	imx6ul_barebox_entry(fdt);
+}
diff --git a/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
new file mode 100644
index 0000000000..29c42cc697
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
@@ -0,0 +1,384 @@
+/*
+ * Timing configuration:
+ *
+ * MDCFG0:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tRFC 	2Gb 400MHz	0x3f (64)	24	0x3f000000
+ * 		4Gb 400MHz	0x77 (120)	24	0x77000000
+ * 		8Gb 400MHz	0x8b (140)	24	0x8b000000
+ *	 	2Gb 533MHz	0x55 (86)	24	0x55000000
+ * 		4Gb 533MHz	0x9f (160)	24	0x9f000000
+ * 		8Gb 533MHz	0xba (187)	24	0xba000000
+ *              4Gb LPDDR2	0x33 (52)	24	0x33000000
+ * tXS		2Gb 400MHz	0x43 (68)	16	0x00430000
+ * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
+ * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
+ * 		2Gb 533MHz	0x5b (92)	16	0x005b0000
+ * 		4Gb 533MHz	0xa5 (166)	16	0x00a50000
+ * 		8Gb 533MHz	0xc0 (193)	16	0x00c00000
+ *		4Gb LPDDR2	0x37 (56)	16	0x00370000
+ * tXP		* 400MHz	0x2 (3)		13	0x00004000
+ * 		* 533MHz	0x3 (4)		13	0x00006000
+ * 		* LPDDR2	0x2 (3)		13	0x00004000
+ * tXPDLL	* 400MHz	0x9 (10)	9	0x00001200
+ * 		* 533MHz	0xc (13)	9	0x00001800
+ *		* LPDDR2	0x1 (-)		9	0x00000200
+ * tFAW		* 400MHz	0x13 (20)	4	0x00000130
+ *		* 533MHz	0x1a (27)	4	0x000001a0
+ *		* LPDDR2	0x13 (20)	4	0x00000130
+ * tCL		* 400MHz	0x3 (6)		0	0x00000003
+ *		* 533MHz-CL7	0x4 (7)		0	0x00000004
+ *		* 533MHz-CL8	0x5 (8)		0	0x00000005
+ *		* LPDDR2	0x3 (6)		0	0x00000003
+ * ----------------------------------------------------------------
+ */
+#define MDCFG0_2G_400MHZ				0x3f435333
+#define MDCFG0_4G_400MHZ				0x777b5333
+#define MDCFG0_8G_400MHZ				0x8b8f5333
+#define MDCFG0_2G_533MHZ_CL8				0x555b79a5
+#define MDCFG0_2G_533MHZ_CL7				0x555b79a4
+#define MDCFG0_4G_533MHZ_CL8				0x9fa579a5
+#define MDCFG0_4G_533MHZ_CL7				0x9fa579a4
+#define MDCFG0_8G_533MHZ_CL8				0xbac079a5
+#define MDCFG0_8G_533MHZ_CL7				0xbac079a4
+#define MDCFG0_4G_LPDDR2_CL6				0x33374133
+#define MDCFG0_8G_LPDDR2_CL6				0x53574133
+
+
+/*
+ * MDCFG1:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tRCD		* 400MHz	0x5 (6)		28	0xa0000000
+ * 		* 533MHz	0x7 (8)		28	0xe0000000
+ *		* LPDDR2	0x5 (-)		28	0xa0000000
+ * tRP		* 400MHz	0x5 (6)		26	0x14000000
+ * 		* 533MHz	0x7 (8)		26	0x1c000000
+ * 		* LPDDR2	0x5 (-)		26	0x14000000
+ * tRC		* 400MHz	0x14 (21)	21	0x02800000
+ * 		* 533MHz	0x1b (28)	21	0x03600000
+ *		* LPDDR2	0x15 (-)	21	0x02a00000
+ * tRAS		* 400MHz	0x0e (15)	16	0x000e0000
+ * 		* 533MHz	0x13 (20)	16	0x00130000
+ *		* LPDDR2	0x10 (17)	16	0x00100000
+ * tRPA		*		0x1 (tRP+1)	15	0x00008000
+ *		RM rev 4: unused, read-only!	15	0x00000000
+ * tWR		* 400MHz	0x5 (6)		9	0x00000a00
+ * 		* 533MHz	0x7 (8)		9	0x00000e00
+ *		* LPDDR2	0x5 (6)		9	0x00000a00
+ * tMRD		* 		0x3 (4)		5	0x00000060
+ * max(tMRR,tMRW) LPDDR2	0x4 (5)		5	0x00000080
+ * tCWL		* 400MHz	0x3 (5)		0	0x00000003
+ *		* 533MHz	0x4 (6)		0	0x00000004
+ * tWL		* LPDDR2	0x2 (3)		0	0x00000002
+ * ----------------------------------------------------------------
+ */
+#define MDCFG1_400MHZ					0xb68e8a63
+#define MDCFG1_533MHZ					0xff738e64
+#define MDCFG1_LPDDR2					0x00100a82
+
+/*
+ * MDCFG2:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tDLLK	*		0x1ff (512)	16	0x01ff0000
+ *		LPDDR2		0x0c7 (-)	16	0x00c70000
+ * tRTP		*		0x3 (4)		6	0x000000c0
+ *		LPDDR2		0x2 (3)		6	0x00000080
+ * tWTR		*		0x3 (4)		3	0x00000018
+ *		LPDDR2		0x2 (3)		3	0x00000010
+ * tRRD		* 400MHz	0x3 (4)		0	0x00000003
+ * 		* 533MHz	0x5 (6)		0	0x00000005
+ *		LPDDR2		0x3 (4)		0	0x00000003
+ * ----------------------------------------------------------------
+ */
+#define MDCFG2_400MHZ					0x01ff00db
+#define MDCFG2_533MHZ					0x01ff00dd
+#define MDCFG2_LPDDR2					0x00000093
+
+/*
+ * MDOR:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tXPR		2Gb 400MHz	0x43 (68)	16	0x00430000
+ * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
+ * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
+ *		2Gb 533MHz	0x5b (92)	16	0x005b0000
+ *		4Gb 533MHz	0xa5 (166)	16	0x00a50000
+ *		8Gb 533MHz	0xc0 (193)	16	0x00c00000
+ *		* LPDDR2	0x9f (-)	16	0x009f0000
+ * SDE_to_RST	*		0x10 (14)	8	0x00001000
+ *		* LPDDR2	0xe (-)		8	0x00000e00
+ * RST_to_CKE	*		0x23 (33)	0	0x00000023
+ * 		* LPDDR2	0x10 (14)	0	0x00000010
+ * ----------------------------------------------------------------
+ */
+#define MDOR_2G_400MHZ					0x00431023
+#define MDOR_4G_400MHZ					0x007b1023
+#define MDOR_8G_400MHZ					0x008f1023
+#define MDOR_2G_533MHZ					0x005b1023
+#define MDOR_4G_533MHZ					0x00a51023
+#define MDOR_8G_533MHZ					0x00c01023
+#define MDOR_LPDDR2					0x009f0e10
+
+/*
+ * MDOTC ODT delays:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * tAOFPD	* 400MHz	0x3 (4)		27	0x18000000
+ * 		* 533MHz	0x4 (5)		27	0x20000000
+ * tAONPD	* 400MHz	0x3 (4)		24	0x03000000
+ * 		* 533MHz	0x4 (5)		24	0x04000000
+ * tANPD	* 400MHz	0x3 (4)		20	0x00300000
+ * 		* 533MHz	0x4 (5)		20	0x00400000
+ * tAXPD	* 400MHz	0x3 (4)		16	0x00030000
+ * 		* 533MHz	0x4 (5)		16	0x00040000
+ * tODTLon	* 400MHz	0x3 (3)		12	0x00003000
+ * 		* 533MHz	0x4 (4)		12	0x00004000
+ * tODTidle_off	* 400MHz	0x3 (3)		4	0x00000030
+ * 		* 533MHz	0x4 (4) 	4	0x00000040
+ * ----------------------------------------------------------------
+ */
+#define MDOTC_400MHZ					0x1b333030
+#define MDOTC_533MHZ					0x24444040
+/* LPDDR2: not relevant, leave in reset state!! */
+
+/*
+ * MDPDC:
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * PRCT_1	*		0x0		28	0x00000000
+ * PRCT_0	*		0x0		24	0x00000000
+ * tCKE		*		0x2 (3)		16	0x00020000
+ * PWDT_1	*		0x5 (256)	12	0x00005000
+ * PWDT_0	*		0x5 (256)	8	0x00000500
+ * SLOW_PD	*		0x0 (0)		7	0x00000000
+ * BOTH_CS_PD	*		0x1 (1)		6	0x00000040
+ * tCKSRX	* 400MHz	0x5 (5)		3	0x00000028
+ * 		* 533MHz	0x6 (6)		3	0x00000030
+ * tCKSRE	* 400MHz	0x5 (5)		0	0x00000005
+ * 		* 533MHz	0x6 (6)		0	0x00000006
+ * ----------------------------------------------------------------
+ */
+#define MDPDC_400MHZ					0x0002556d
+#define MDPDC_533MHZ					0x00025576
+#define MDPDC_LPDDR2					0x00025576 /* FIXME? */
+
+/*
+ * MDCTL:
+ * 2Gb: CS0 enable, 14bit ROW, 10bit COL, BL=8, 64bit data
+ *
+ * Par. 	Chip		VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * SDE_0	*		0x1 (1)		31	0x80000000
+ * SDE_1	*		0x0 (0)		30	0x00000000
+ * SDE_1	LPDDR2		0x1 (1)		30	0x40000000
+ * ROW		2Gb *		0x3 (14)	24	0x03000000
+ * 		4Gb *		0x4 (15)	24	0x04000000
+ * 		8Gb *		0x5 (16)	24	0x05000000
+ *		* LPDDR2	0x3 (14)	24	0x03000000
+ * COL		*		0x1 (10)	20	0x00100000
+ * BL		* 		0x1 (8)		19	0x00080000
+ * 		LPDDR2		0x0 (4)		19	0x00000000
+ * DSIZ		64bit		0x2 (64)	16	0x00020000
+ * DSIZ		32bit		0x1 (32)	16	0x00010000
+ * DSIZ		16bit		0x0 (16)	16	0x00000000
+ * ----------------------------------------------------------------
+ */
+#define MDCTL_2G_16BIT					0x83180000
+#define MDCTL_2G_32BIT					0x83190000
+#define MDCTL_2G					0x831a0000
+#define MDCTL_4G_16BIT					0x84180000
+#define MDCTL_4G_32BIT					0x84190000
+#define MDCTL_4G					0x841a0000
+#define MDCTL_8G					0x851a0000
+#define MDCTL_LPDDR2					0x83110000
+
+
+/*
+ * MDASP Address space partitioning:
+ *
+ * At 0.25GiB, internal address space ends. Above that DDR3 should be
+ * located. The CS1/CS0 split-line determines where:
+ *
+ * For 1x2Gb chips (0.25GiB total on CS0): 0.5GiB
+ * For 2x4Gb chips (1GiB total on CS0): 1.25GiB
+ * For 4x2Gb chips (1GiB total on CS0): 1.25GiB
+ * For 4x4Gb chips (2GiB total on CS0): 2.25GiB
+ * For 4x8Gb chips (4GiB total on CS0): 4.00GiB (maximum possible,
+ *                      shadowed partially by internal address space).
+ *
+ * Register value	Split
+ * ---------------------------
+ * 0x0000000f		0.5GiB
+ * 0x00000017		0.75GiB
+ * 0x00000027		1.25GiB
+ * 0x00000047		2.25GiB
+ * 0x0000007f		4.00GiB
+ */
+#define MDASP_512MIB	0x0000000f
+#define MDASP_768MIB	0x00000017
+#define MDASP_1GIB25	0x00000027
+#define MDASP_2GIB25	0x00000047
+#define MDASP_4GIB00	0x0000007f
+
+/*
+ * Initialize DDR3 chips
+ * MDSCR: Value = 0xvvvv803n, with 0xvvvv = value, n = Reg. number (BA)
+ */
+/*
+ * DDR3 chip MR2, n = 2:
+ *
+ * Par. 	Chip		VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Rtt(wr)	*		0x0 (disabled)	10, 9	0x0000
+ * SR-Temp.	*		0x1 (Extended)	7	0x0080
+ * Auto-SR	*		0x0 (Manual)	6	0x0000
+ * CWL		* 400MHz	0x0 (5tCK)	5, 4, 3	0x0000
+ * 		* 533MHz	0x1 (6tCK)	5, 4, 3	0x0008
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR2_400MHZ_RTT_OFF				0x00808032
+#define DDR3_MR2_533MHZ_RTT_OFF				0x00888032
+#define DDR3_MR2_400MHZ_RTT_120				0x04808032
+#define DDR3_MR2_533MHZ_RTT_120				0x04888032
+
+/*
+ * DDR3 chip MR1, n = 1:
+ *
+ * Par. 		Chip	VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Qoff			*	0x0 (enabled)	12	0x0000
+ * TDQS			*	0x0 (disabled)	11	0x0000
+ * Rtt			*	0x0 (disabled)	9, 6, 2	0x0000
+ * Write-levelling	*	0x0 (disable)	7	0x0000
+ * ODS			*	0x0 (RZQ/6=40)	5, 1	0x0000
+ * DLL			*	0x0 (enable)	0	0x0000
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR1_RTT_OFF_ODS_40				0x00008031
+#define DDR3_MR1_RTT_120_ODS_40				0x00408031
+#define DDR3_MR1_RTT_60_ODS_40				0x00048031
+#define DDR3_MR1_RTT_OFF_ODS_34				0x00028031
+#define DDR3_MR1_RTT_120_ODS_34				0x00428031
+#define DDR3_MR1_RTT_60_ODS_34				0x00068031
+
+/*
+ * DDR3 chip MR0, n = 0:
+ *
+ * Par. 		Chip	VALUE		BITS	  vvvv
+ * ----------------------------------------------------------------
+ * Precharge PD		*	0x1 (fast exit)	12	0x1000
+ * WR			400MHz	0x2 (6)		11,10,9	0x0400
+ * 			533MHz	0x4 (8)		11,10,9 0x0800
+ * DLL reset		*	0x1 (Yes)	8	0x0100
+ * CL			400MHz	0x4 (6)		6,5,4,2	0x0020
+ * 			533MHz	0x6 (7)		6,5,4,2 0x0030
+ * 			533MHz	0x8 (8)		6,5,4,2 0x0040
+ * RD burst type	*	0x0 (seq.)	3	0x0000
+ * BL			*	0x0 (BL8)	0	0x0000
+ * ----------------------------------------------------------------
+ */
+#define DDR3_MR0_400MHZ					0x15208030
+#define DDR3_MR0_533MHZ_CL7				0x19308030
+#define DDR3_MR0_533MHZ_CL8				0x19408030
+
+
+/*
+ * MDREF:
+ * REF_SEL (bit 14,15): 0 (64kHz, needed for high-temp.)
+ * REFR (bit 11, 12, 13): 0x3 (4 refreshes) -> 0x00001800
+ * 			  0x7 (8 refreshes) -> 0x00003800
+ */
+#define MDREF_64KHZ 0x00001800
+#define MDREF_32KHZ 0x00007800
+
+/* MPODTCTRL */
+#define MPODTCTRL_ODT_OFF 0x00000007
+#define MPODTCTRL_ODT_120 0x00011117
+#define MPODTCTRL_ODT_60  0x00022227
+#define MPODTCTRL_ODT_40  0x00033337
+
+/*
+ * MPDGCTRL0:
+ *
+ * Channel 0:
+ *
+ * Par. 		Chip	VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * RST_RD_FIFO		*	0		31	0x00000000
+ * DG_CMP_CYC		*	1		30	0x40000000
+ * DG_DIS		*	0		29	0x00000000
+ * HW_DG_EN		*	0		28	0x00000000
+ * DG_HC_DEL1		400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_EXT_UP		*	0		23	0x00000000
+ * DG_DL_ABS_OFFS1	400MHz	0x35		16	0x00350000
+ * 			533MHz	0x4b		16	0x004b0000
+ * DG_HC_DEL0		400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS0	400MHz	0x35		0	0x00000031
+ * 			533MHz	0x4b		0	0x00000050
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL0_CH0_400MHZ				0x42350231
+#define MPDGCTRL0_CH0_533MHZ				0x434b0350
+/*
+ *
+ * Channel 1:
+ *
+ * DG_HC_DEL1 (5)	400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS1 (5)	400MHz	0x35		16	0x00350000
+ * 			533MHz	0x4b		16	0x004b0000
+ * DG_HC_DEL0 (4)	400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS0 (4)	400MHz	0x35		0	0x00000031
+ * 			533MHz	0x4b		0	0x00000050
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL0_CH1_400MHZ				0x42350231
+#define MPDGCTRL0_CH1_533MHZ				0x434b0350
+
+/*
+ * MPDGCTRL1:
+ *
+ * Channel 0:
+ *
+ * Par. 		Chip	VALUE		SHIFT	Reg. field
+ * ----------------------------------------------------------------
+ * DG_HC_DEL3		400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS3	400MHz	0x1a		16	0x001a0000
+ * 			533MHz	0x4c		16	0x004c0000
+ * DG_HC_DEL2		400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS2	400MHz	0x18		0	0x00000018
+ * 			533MHz	0x59		0	0x00000059
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL1_CH0_400MHZ				0x021a0218
+#define MPDGCTRL1_CH0_533MHZ				0x034c0359
+/*
+ *
+ * Channel 1:
+ *
+ * DG_HC_DEL3 (7)	400MHz	2		24	0x02000000
+ * 			533MHz	3		24	0x03000000
+ * DG_DL_ABS_OFFS3 (7)	400MHz	0x1a		16	0x001a0000
+ * 			533MHz	0x65		16	0x00650000
+ * DG_HC_DEL2 (6)	400MHz	2		8	0x00000200
+ * 			533MHz	3		8	0x00000300
+ * DG_DL_ABS_OFFS2 (6)	400MHz	0x18		0	0x00000018
+ * 			533MHz	0x48		0	0x00000048
+ * ----------------------------------------------------------------
+ */
+#define MPDGCTRL1_CH1_400MHZ				0x021a0218
+#define MPDGCTRL1_CH1_533MHZ				0x03650348
diff --git a/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
new file mode 100644
index 0000000000..f60d37f63e
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
@@ -0,0 +1,70 @@
+
+/*
+ * Some defines for PAD setup:
+ * Unfortunately we don't have a powerful pre-processor, so we need to
+ * define explicit 32-bit hex values.
+ */
+#define PAD_DSE_48 0x00000028
+#define PAD_DSE_40 0x00000030
+
+#define PAD_DIFF_IN_DSE_48 0x00020028
+#define PAD_DIFF_IN_DSE_40 0x00020030
+#define PAD_DIFF_IN_DSE_34 0x00020038
+
+/* Disable ISB LED ASAP */
+wm 32 0x020e04a8 0x000130b0
+
+#define PAD_SDQS PAD_DSE_48
+wm 32 0x020e04bc PAD_SDQS /* SDQS0_P */
+wm 32 0x020e04c0 PAD_SDQS /* SDQS1_P */
+wm 32 0x020e04c4 PAD_SDQS /* SDQS2_P */
+wm 32 0x020e04c8 PAD_SDQS /* SDQS3_P */
+wm 32 0x020e04cc PAD_SDQS /* SDQS4_P */
+wm 32 0x020e04d0 PAD_SDQS /* SDQS5_P */
+wm 32 0x020e04d4 PAD_SDQS /* SDQS6_P */
+wm 32 0x020e04d8 PAD_SDQS /* SDQS7_P */
+
+#define PAD_DQM_CTRL PAD_DIFF_IN_DSE_48
+#define PAD_SDCLK    PAD_DIFF_IN_DSE_40
+wm 32 0x020e0470 PAD_DQM_CTRL /* DQM0 */
+wm 32 0x020e0474 PAD_DQM_CTRL /* DQM1 */
+wm 32 0x020e0478 PAD_DQM_CTRL /* DQM2 */
+wm 32 0x020e047c PAD_DQM_CTRL /* DQM3 */
+wm 32 0x020e0480 PAD_DQM_CTRL /* DQM4 */
+wm 32 0x020e0484 PAD_DQM_CTRL /* DQM5 */
+wm 32 0x020e0488 PAD_DQM_CTRL /* DQM6 */
+wm 32 0x020e048c PAD_DQM_CTRL /* DQM7 */
+wm 32 0x020e0464 PAD_DQM_CTRL /* CAS */
+wm 32 0x020e0490 PAD_DQM_CTRL /* RAS */
+wm 32 0x020e04ac PAD_SDCLK /* SDCLK0_P */
+wm 32 0x020e04b0 PAD_SDCLK /* SDCLK1_P */
+wm 32 0x020e0494 PAD_DQM_CTRL /* RESET */
+
+/* 0x00003000 = 100k PU */
+wm 32 0x020e04a4 0x00003000 /* SDCKE0 */
+wm 32 0x020e04a8 0x00003000 /* SDCKE1 */
+wm 32 0x020e04a0 0x00000000 /* SDBA2: disable PU */
+
+/* 0x00003030 = PU + 40 Ohm drive */
+wm 32 0x020e04b4 0x00003030 /* ODT0 */
+wm 32 0x020e04b8 0x00003030 /* ODT1 */
+
+#define PAD_BxDS PAD_DSE_48
+wm 32 0x020e0764 PAD_BxDS /* B0DS */
+wm 32 0x020e0770 PAD_BxDS /* B1DS */
+wm 32 0x020e0778 PAD_BxDS /* B2DS */
+wm 32 0x020e077c PAD_BxDS /* B3DS */
+wm 32 0x020e0780 PAD_BxDS /* B4DS */
+wm 32 0x020e0784 PAD_BxDS /* B5DS */
+wm 32 0x020e078c PAD_BxDS /* B6DS */
+wm 32 0x020e0748 PAD_BxDS /* B7DS */
+wm 32 0x020e074c PAD_DSE_48 /* ADDDS */
+
+wm 32 0x020e0750 0x00020000 /* DDRMODE_CTL */
+wm 32 0x020e0754 0x00000000 /* DDRPKE disable PU */
+wm 32 0x020e0760 0x00020000 /* DDRMODE data */
+
+wm 32 0x020e076c 0x00000030 /* CTLDS 40 Ohm */
+
+wm 32 0x020e0774 0x000c0000 /* DDR_TYPE DDR3 */
+
diff --git a/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
new file mode 100644
index 0000000000..f5fa3e8d28
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
@@ -0,0 +1,69 @@
+
+/*
+ * Some defines for PAD setup:
+ * Unfortunately we don't have a powerful pre-processor, so we need to
+ * define explicit 32-bit hex values.
+ */
+#define PAD_DSE_48 0x00000028
+#define PAD_DSE_40 0x00000030
+
+#define PAD_DIFF_IN_DSE_48 0x00020028
+#define PAD_DIFF_IN_DSE_40 0x00020030
+#define PAD_DIFF_IN_DSE_34 0x00020038
+
+/* Disable ISB LED ASAP */
+wm 32 0x020e0420 0x000130b0
+
+#define PAD_SDQS PAD_DSE_48
+wm 32 0x020e05a8 PAD_SDQS /* SDQS0_P */
+wm 32 0x020e05b0 PAD_SDQS /* SDQS1_P */
+wm 32 0x020e0524 PAD_SDQS /* SDQS2_P */
+wm 32 0x020e051c PAD_SDQS /* SDQS3_P */
+wm 32 0x020e0518 PAD_SDQS /* SDQS4_P */
+wm 32 0x020e050c PAD_SDQS /* SDQS5_P */
+wm 32 0x020e05b8 PAD_SDQS /* SDQS6_P */
+wm 32 0x020e05c0 PAD_SDQS /* SDQS7_P */
+
+#define PAD_DQM_CTRL PAD_DIFF_IN_DSE_48
+#define PAD_SDCLK    PAD_DIFF_IN_DSE_40
+wm 32 0x020e05ac PAD_DQM_CTRL /* DQM0 */
+wm 32 0x020e05b4 PAD_DQM_CTRL /* DQM1 */
+wm 32 0x020e0528 PAD_DQM_CTRL /* DQM2 */
+wm 32 0x020e0520 PAD_DQM_CTRL /* DQM3 */
+wm 32 0x020e0514 PAD_DQM_CTRL /* DQM4 */
+wm 32 0x020e0510 PAD_DQM_CTRL /* DQM5 */
+wm 32 0x020e05bc PAD_DQM_CTRL /* DQM6 */
+wm 32 0x020e05c4 PAD_DQM_CTRL /* DQM7 */
+wm 32 0x020e056c PAD_DQM_CTRL /* CAS */
+wm 32 0x020e0578 PAD_DQM_CTRL /* RAS */
+wm 32 0x020e0588 PAD_SDCLK /* SDCLK0_P */
+wm 32 0x020e0594 PAD_SDCLK /* SDCLK1_P */
+wm 32 0x020e057c PAD_DQM_CTRL /* RESET */
+
+/* 0x00003000 = 100k PU */
+wm 32 0x020e0590 0x00003000 /* SDCKE0 */
+wm 32 0x020e0598 0x00003000 /* SDCKE1 */
+wm 32 0x020e058c 0x00000000 /* SDBA2: disable PU */
+
+/* 0x00003030 = PU + 40 Ohm drive */
+wm 32 0x020e059c 0x00003030 /* ODT0 */
+wm 32 0x020e05a0 0x00003030 /* ODT1 */
+
+#define PAD_BxDS PAD_DSE_48
+wm 32 0x020e0784 PAD_BxDS /* B0DS */
+wm 32 0x020e0788 PAD_BxDS /* B1DS */
+wm 32 0x020e0794 PAD_BxDS /* B2DS */
+wm 32 0x020e079c PAD_BxDS /* B3DS */
+wm 32 0x020e07a0 PAD_BxDS /* B4DS */
+wm 32 0x020e07a4 PAD_BxDS /* B5DS */
+wm 32 0x020e07a8 PAD_BxDS /* B6DS */
+wm 32 0x020e0748 PAD_BxDS /* B7DS */
+wm 32 0x020e074c PAD_DSE_48 /* ADDDS */
+
+wm 32 0x020e0750 0x00020000 /* DDRMODE_CTL */
+wm 32 0x020e0758 0x00000000 /* DDRPKE disable PU */
+wm 32 0x020e0774 0x00020000 /* DDRMODE data */
+
+wm 32 0x020e078c 0x00000030 /* CTLDS 40 Ohm */
+
+wm 32 0x020e0798 0x000c0000 /* DDR_TYPE DDR3 */
diff --git a/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
new file mode 100644
index 0000000000..e36601942d
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
@@ -0,0 +1,42 @@
+
+/*
+ * Some defines for PAD setup:
+ * Unfortunately we don't have a powerful pre-processor, so we need to
+ * define explicit 32-bit hex values.
+ */
+
+#define PAD_DSE_48 0x00000028
+#define PAD_DSE_40 0x00000030
+
+#define PAD_SDQS PAD_DSE_48
+wm 32 0x020e0280 PAD_SDQS /* SDQS0_P */
+wm 32 0x020e0284 PAD_SDQS /* SDQS1_P */
+
+#define PAD_DQM_CTRL PAD_DSE_48
+#define PAD_SDCLK PAD_DSE_48
+
+wm 32 0x020e0244 PAD_DQM_CTRL /* DQM0 */
+wm 32 0x020e0248 PAD_DQM_CTRL /* DQM1 */
+wm 32 0x020e024c PAD_DQM_CTRL /* RAS */
+wm 32 0x020e0250 PAD_DQM_CTRL /* CAS */
+wm 32 0x020e027c PAD_SDCLK /* SDCLK0_P */
+wm 32 0x020e0288 PAD_DQM_CTRL /* RESET */
+
+wm 32 0x020e0270 0x00000000 /* SDBA2: disable PU */
+
+wm 32 0x020e0260 PAD_DSE_48 /* ODT0 */
+wm 32 0x020e0264 PAD_DSE_48 /* ODT1 */
+
+#define PAD_BxDS PAD_DSE_48
+wm 32 0x020e0498 PAD_BxDS /* B0DS */
+wm 32 0x020e04a4 PAD_BxDS /* B1DS */
+
+wm 32 0x020e0490 PAD_DSE_48  /* ADDDS */
+
+wm 32 0x020e0494 0x00020000 /* DDRMODE_CTL */
+wm 32 0x020e04ac 0x00000000 /* DDRPKE disable PU */
+wm 32 0x020e04b0 0x00020000 /* DDRMODE data */
+
+wm 32 0x020e04a0 0x00000030 /* CTLDS 40 Ohm */
+
+wm 32 0x020e04b4 0x000c0000 /* DDR_TYPE DDR3 */
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1aeaa61e01..8afeb45016 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -74,6 +74,22 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
 lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
+lwl-dtb-$(CONFIG_MACH_PROTONIC_IMX6) += \
+	imx6q-prti6q.dtb.o \
+	imx6q-prtwd2.dtb.o \
+	imx6q-vicut1.dtb.o \
+	imx6dl-alti6p.dtb.o \
+	imx6dl-lanmcu.dtb.o \
+	imx6dl-plybas.dtb.o \
+	imx6dl-plym2m.dtb.o \
+	imx6dl-prtmvt.dtb.o \
+	imx6dl-prtrvt.dtb.o \
+	imx6dl-prtvt7.dtb.o \
+	imx6dl-victgo.dtb.o \
+	imx6dl-vicut1.dtb.o \
+	imx6qp-prtwd3.dtb.o \
+	imx6qp-vicutp.dtb.o \
+	imx6ul-prti6g.dtb.o
 lwl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6dd5cb2aca..77b39e07bb 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -336,6 +336,12 @@ config MACH_PHYTEC_SOM_IMX6
         select ARCH_IMX6
 	select ARCH_IMX6UL
 
+config MACH_PROTONIC_IMX6
+	bool "Protonic-Holland i.MX6 based boards"
+	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
 config MACH_KONTRON_SAMX6I
         bool "Kontron sAMX6i"
         select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 765702f26d..d8879e314f 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -299,6 +299,34 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_lc_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gib, phytec-phycore-imx6dl-som-lc-emmc-1gib)
 
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_prti6q, protonic-imx6/flash-header-prti6q, protonic-prti6q)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_prtwd2, protonic-imx6/flash-header-prtwd2, protonic-prtwd2)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_vicut1, protonic-imx6/flash-header-vicut1q, protonic-vicut1q)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_alti6p, protonic-imx6/flash-header-alti6p, protonic-alti6p)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_lanmcu, protonic-imx6/flash-header-lanmcu, protonic-lanmcu)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_plybas, protonic-imx6/flash-header-plybas, protonic-plybas)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_plym2m, protonic-imx6/flash-header-plym2m, protonic-plym2m)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtmvt, protonic-imx6/flash-header-prtmvt, protonic-prtmvt)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtrvt, protonic-imx6/flash-header-prtrvt, protonic-prtrvt)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtvt7, protonic-imx6/flash-header-prtvt7, protonic-prtvt7)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_victgo, protonic-imx6/flash-header-victgo, protonic-victgo)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_vicut1, protonic-imx6/flash-header-vicut1, protonic-vicut1)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_prtwd3, protonic-imx6/flash-header-prtwd3, protonic-prtwd3)
+
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_vicutp, protonic-imx6/flash-header-vicutp, protonic-vicutp)
+
 $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6q_samx6i, kontron-samx6i/flash-header-samx6i-quad, imx6q-samx6i)
 
 $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6dl_samx6i, kontron-samx6i/flash-header-samx6i-duallite, imx6dl-samx6i)
@@ -326,6 +354,8 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx
 
 $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-emmc-512mb)
 
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6ul_prti6g, protonic-imx6/flash-header-prti6g, protonic-prti6g)
+
 $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_256mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256, imx6ul-pico-hobbit-256mb)
 
 $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_512mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512, imx6ul-pico-hobbit-512mb)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
