Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S9EGr-0000cK-My
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 11:27:39 +0000
Message-ID: <4F65C69D.5060500@cmotion.eu>
Date: Sun, 18 Mar 2012 12:27:25 +0100
From: Christian Kapeler <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------010506060105040207030804"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add support for Karo TX51 module
To: barebox@lists.infradead.org
Cc: support@karo-electronics.de

This is a multi-part message in MIME format.
--------------010506060105040207030804
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the attached patches introduce basic barebox support for the Karo 
SO-DIMM TX51 SOC modules.
Note, that the code is not tested with the Starterkit development board 
as base,
but on our own custom board.

Currently the board boots, supports nand, and mmc. Ethernet support is 
currently only working,
when barebox is chainloaded from Redboot shipped with the modules.

Kind regards,
Christian Kapeller


--------------010506060105040207030804
Content-Type: text/x-patch;
 name="0001-Update-mx51-pad-definitions.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Update-mx51-pad-definitions.patch"

From 1d425e7d90bbd7ed7bdeb0daa44a19dd8a9840c1 Mon Sep 17 00:00:00 2001
From: Christian Kapeller <christian.kapeller@gmx.net>
Date: Sun, 18 Mar 2012 11:12:43 +0100
Subject: [PATCH 1/2] Update mx51 pad definitions


Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/mach-imx/include/mach/iomux-mx51.h |   44 +++++++++++++++++++++++---
 1 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index 908d1b2..42e26ca 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -86,29 +86,37 @@
 
 #define MX51_PAD_EIM_EB2__EIM_EB2			IOMUX_PAD(0x468, 0xD4, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_EB2__FEC_MDIO			IOMUX_PAD(0x468, 0x0d4, 3, 0x954,   0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_EIM_EB2__GPIO2_22			IOMUX_PAD(0x468, 0x0d4, 1, 0x954,   0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_EB3__EIM_EB3			IOMUX_PAD(0x46C, 0xD8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_EB3__FEC_RDATA1			IOMUX_PAD(0x46c, 0x0d8, 3, 0x95c,   0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_EIM_EB3__GPIO2_23			IOMUX_PAD(0x46c, 0x0d8, 1, 0x95c,   0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_OE__EIM_OE				IOMUX_PAD(0x470, 0xDC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_OE__GPIO2_24			IOMUX_PAD(0x470, 0xDC, 1, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS0__EIM_CS0			IOMUX_PAD(0x474, 0xE0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS1__EIM_CS1			IOMUX_PAD(0x478, 0xE4, 0, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_CS2__EIM_CS2			IOMUX_PAD(0x47C, 0xE8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS2__FEC_RDATA2			IOMUX_PAD(0x47c, 0x0e8, 3, 0x960,   0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_EIM_CS2__GPIO2_27			IOMUX_PAD(0x47c, 0x0e8, 1, 0x960,   0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_CS3__EIM_CS3			IOMUX_PAD(0x480, 0xEC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS3__FEC_RDATA3			IOMUX_PAD(0x480, 0x0ec, 3, 0x964,   0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_EIM_CS3__GPIO2_28			IOMUX_PAD(0x480, 0x0ec, 1, 0x964,   0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_CS4__EIM_CS4			IOMUX_PAD(0x484, 0xF0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS4__FEC_RX_ER			IOMUX_PAD(0x484, 0x0f0, 3, 0x970,   0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_EIM_CS4__GPIO2_29			IOMUX_PAD(0x484, 0x0f0, 1, 0x970,   0, NO_PAD_CTRL)
 
 #define MX51_PAD_EIM_CS5__EIM_CS5			IOMUX_PAD(0x488, 0xF4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_CS5__GPIO2_30			IOMUX_PAD(0x488, 0xF4, 1, 0x950, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CS5__FEC_CRS			IOMUX_PAD(0x52C, 0xF4, 3, 0x950, 0, MX51_FEC_PAD_CTRL)
 
 #define MX51_PAD_EIM_DTACK__EIM_DTACK			IOMUX_PAD(0x48C, 0xF8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_DTACK__GPIO2_31			IOMUX_PAD(0x48c, 0xf8, 1, 0x0, 0, NO_PAD_CTRL)
-#define MX51_PAD_EIM_LBA__EIM_LBA			IOMUX_PAD(0x494, 0xFC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_LBA__EIM_LBA			IOMUX_PAD(0x494, 0xFC, 0, 0x978, 0, NO_PAD_CTRL)
+#define MX51_PAD_EIM_LBA__GPIO3_1			IOMUX_PAD(0x494, 0xFC, 1, 0x0978, 0, NO_PAD_CTRL)
 #define MX51_PAD_EIM_CRE__EIM_CRE			IOMUX_PAD(0x4A0, 0x100, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DRAM_CS1__DRAM_CS1			IOMUX_PAD(0x4D0, 0x104, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_WE_B__NANDF_WE_B			IOMUX_PAD(0x4E4, 0x108, 0, 0x0, 0, NO_PAD_CTRL)
@@ -121,9 +129,11 @@
 
 #define MX51_PAD_NANDF_RB2__NANDF_RB2			IOMUX_PAD(0x500, 0x124, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB2__FEC_COL			IOMUX_PAD(0x500, 0x124, 1, 0x94c, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_RB2__GPIO3_10			IOMUX_PAD(0x500, 0x124, 3, 0x94c, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_RB3__NANDF_RB3			IOMUX_PAD(0x504, 0x128, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB3__FEC_RX_CLK			IOMUX_PAD(0x504, 0x128, 1, 0x968, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_RB3__GPIO3_11			IOMUX_PAD(0x504, 0x128, 3, 0x968, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_RB4__NANDF_RB4			IOMUX_PAD(0x514, 0x12C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RB5__NANDF_RB5			IOMUX_PAD(0x5D8, 0x130, 0, 0x0, 0, NO_PAD_CTRL)
@@ -135,24 +145,33 @@
 #define MX51_PAD_NANDF_CS0__NANDF_CS0			IOMUX_PAD(0x518, 0x130, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS1__NANDF_CS1			IOMUX_PAD(0x51C, 0x134, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS2__NANDF_CS2			IOMUX_PAD(0x520, 0x138, 0, 0x0, 0, NO_PAD_CTRL)
+//FIXME:
+#define MX51_PAD_NANDF_CS2__FEC_TX_ER			IOMUX_PAD(0x520, 0x138, 3, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS2__GPIO3_18			IOMUX_PAD(0x520, 0x138, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_CS3__NANDF_CS3			IOMUX_PAD(0x524, 0x13C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS3__FEC_MDC			IOMUX_PAD(0x524, 0x13C, 2, 0x0, 0,MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS3__GPIO3_19			IOMUX_PAD(0x524, 0x13C, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_CS4__NANDF_CS4			IOMUX_PAD(0x528, 0x140, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS4__FEC_TDATA1			IOMUX_PAD(0x528, 0x140, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS4__GPIO3_20			IOMUX_PAD(0x528, 0x140, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_CS5__NANDF_CS5			IOMUX_PAD(0x52C, 0x144, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS5__FEC_TDATA2			IOMUX_PAD(0x52C, 0x144, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS5__GPIO3_21			IOMUX_PAD(0x52C, 0x144, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_CS6__NANDF_CS6			IOMUX_PAD(0x530, 0x148, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS6__FEC_TDATA3			IOMUX_PAD(0x530, 0x148, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS6__GPIO3_22			IOMUX_PAD(0x530, 0x148, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_CS7__NANDF_CS7			IOMUX_PAD(0x534, 0x14C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS7__FEC_TX_EN			IOMUX_PAD(0x534, 0x14C, 1, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS7__GPIO3_23			IOMUX_PAD(0x534, 0x14C, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_RDY_INT__GPIO3_24		IOMUX_PAD(0x538, 0x150, 3, 0x974, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_D15__NANDF_D15			IOMUX_PAD(0x53C, 0x154, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D14__NANDF_D14			IOMUX_PAD(0x540, 0x158, 0, 0x0, 0, NO_PAD_CTRL)
@@ -161,13 +180,17 @@
 
 #define MX51_PAD_NANDF_D11__NANDF_D11			IOMUX_PAD(0x54C, 0x164, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D11__FEC_RX_DV			IOMUX_PAD(0x54C, 0x164, 2, 0x96c, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_D11__GPIO3_29			IOMUX_PAD(0x54C, 0x164, 3, 0x96c, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_D10__NANDF_D10			IOMUX_PAD(0x550, 0x168, 0, 0x0, 0, NO_PAD_CTRL)
 
-#define MX51_PAD_NANDF_D9__NANDF_D9			IOMUX_PAD(0x554, 0x16C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D9__NANDF_D9			IOMUX_PAD(0x554, 0x16C, 0, 0x958, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D9__FEC_RDATA0			IOMUX_PAD(0x554, 0x16C, 2, 0x958, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_D9__GPIO3_31			IOMUX_PAD(0x554, 0x16C, 3, 0x958, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_D8__NANDF_D8			IOMUX_PAD(0x558, 0x170, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D8__FEC_TDATA0			IOMUX_PAD(0x558, 0x170, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_D8__GPIO4_0			IOMUX_PAD(0x558, 0x170, 3, 0x0, 0, NO_PAD_CTRL)
 
 #define MX51_PAD_NANDF_D7__NANDF_D7			IOMUX_PAD(0x55C, 0x174, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D6__NANDF_D6			IOMUX_PAD(0x560, 0x178, 0, 0x0, 0, NO_PAD_CTRL)
@@ -179,6 +202,7 @@
 #define MX51_PAD_NANDF_D0__NANDF_D0			IOMUX_PAD(0x578, 0x190, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI1_D8__CSI1_D8			IOMUX_PAD(0x57C, 0x194, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI1_D9__CSI1_D9			IOMUX_PAD(0x580, 0x198, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI1_D9__GPIO3_13			IOMUX_PAD(0x580, 0x198, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI1_D10__CSI1_D10			IOMUX_PAD(0x584, 0x19C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI1_D11__CSI1_D11			IOMUX_PAD(0x588, 0x1A0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI1_D12__CSI1_D12			IOMUX_PAD(0x58C, 0x1A4, 0, 0x0, 0, NO_PAD_CTRL)
@@ -196,6 +220,7 @@
 #define MX51_PAD_CSI1_PKE0__CSI1_PKE0			IOMUX_PAD(0x860, NON_MUX_I, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI2_D12__CSI2_D12			IOMUX_PAD(0x5BC, 0x1CC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI2_D13__CSI2_D13			IOMUX_PAD(0x5C0, 0x1D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSI2_D13__GPIO4_10			IOMUX_PAD(0x5C0, 0x1D0, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI2_D14__CSI2_D14			IOMUX_PAD(0x5C4, 0x1D4, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI2_D15__CSI2_D15			IOMUX_PAD(0x5C8, 0x1D8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSI2_D16__CSI2_D16			IOMUX_PAD(0x5CC, 0x1DC, 0, 0x0, 0, NO_PAD_CTRL)
@@ -209,13 +234,18 @@
 #define MX51_PAD_I2C1_CLK__I2C1_CLK			IOMUX_PAD(0x5E8, 0x1F8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_I2C1_DAT__I2C1_DAT			IOMUX_PAD(0x5EC, 0x1FC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_AUD3_BB_TXD__AUD3_BB_TXD		IOMUX_PAD(0x5F0, 0x200, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_TXD__GPIO4_18			IOMUX_PAD(0x5F0, 0x200, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_AUD3_BB_RXD__AUD3_BB_RXD		IOMUX_PAD(0x5F4, 0x204, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_RXD__GPIO4_19			IOMUX_PAD(0x5f4, 0x204, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_AUD3_BB_CK__AUD3_BB_CK			IOMUX_PAD(0x5F8, 0x208, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_AUD3_BB_CK__GPIO4_20			IOMUX_PAD(0x5F8, 0x208, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_AUD3_BB_FS__AUD3_BB_FS			IOMUX_PAD(0x5FC, 0x20C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_MOSI__CSPI1_MOSI			IOMUX_PAD(0x600, 0x210, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_MISO__CSPI1_MISO			IOMUX_PAD(0x604, 0x214, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_SS0__CSPI1_SS0			IOMUX_PAD(0x608, 0x218, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_SS0__GPIO4_24			IOMUX_PAD(0x608, 0x218, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_SS1__CSPI1_SS1			IOMUX_PAD(0x60C, 0x21C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_CSPI1_SS1__GPIO4_25			IOMUX_PAD(0x60C, 0x21C, 3, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_RDY__CSPI1_RDY			IOMUX_PAD(0x610, 0x220, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_CSPI1_SCLK__CSPI1_SCLK			IOMUX_PAD(0x614, 0x224, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_UART1_RXD__UART1_RXD			IOMUX_PAD(0x618, 0x228, 0, 0x0, 0, NO_PAD_CTRL)
@@ -252,13 +282,17 @@
 #define MX51_PAD_DI1_PIN11__DI1_PIN11			IOMUX_PAD(0x6A8, 0x2A8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DI1_PIN12__DI1_PIN12			IOMUX_PAD(0x6AC, 0x2AC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DI1_PIN13__DI1_PIN13			IOMUX_PAD(0x6B0, 0x2B0, 0, 0x0, 0, NO_PAD_CTRL)
-#define MX51_PAD_DI1_D0_CS__DI1_D0_CS			IOMUX_PAD(0x6B4, 0x2B4, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_D0_CS__DI1_D0_CS			IOMUX_PAD(0x6B4, 0x2B4, 0, 0x980, 0, NO_PAD_CTRL)
+#define MX51_PAD_DI1_D0_CS__GPIO3_3			IOMUX_PAD(0x6B4, 0x2B4, 4, 0x980, 1, NO_PAD_CTRL)
 #define MX51_PAD_DI1_D1_CS__DI1_D1_CS			IOMUX_PAD(0x6B8, 0x2B8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DI1_D1_CS__GPIO3_4			IOMUX_PAD(0x6B8, 0x2B8, 4, 0x0984, 1, NO_PAD_CTRL)
 #define MX51_PAD_DISPB2_SER_DIN__DISPB2_SER_DIN		IOMUX_PAD(0x6BC, 0x2BC, 0, 0x0, 0, NO_PAD_CTRL)
-#define MX51_PAD_DISPB2_SER_DIO__DISPB2_SER_DIO		IOMUX_PAD(0x6C0, 0x2C0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_DIO__DISPB2_SER_DIO		IOMUX_PAD(0x6C0, 0x2C0, 0, 0x098C, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_DIO__GPIO3_6			IOMUX_PAD(0x6c0, 0x2C0, 4, 0x098C, 1, NO_PAD_CTRL)
+
 #define MX51_PAD_DISPB2_SER_CLK__DISPB2_SER_CLK		IOMUX_PAD(0x6C4, 0x2C4, 0, 0x0, 0, NO_PAD_CTRL)
-#define MX51_PAD_DISPB2_SER_RS__DISPB2_SER_RS		IOMUX_PAD(0x6C8, 0x2C8, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_RS__DISPB2_SER_RS		IOMUX_PAD(0x6C8, 0x2C8, 0, 0x994, 0, NO_PAD_CTRL)
+#define MX51_PAD_DISPB2_SER_RS__GPIO3_8			IOMUX_PAD(0x6C8, 0x2C8, 4, 0x994, 1, NO_PAD_CTRL)
 #define MX51_PAD_DISP1_DAT0__DISP1_DAT0			IOMUX_PAD(0x6CC, 0x2CC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DISP1_DAT1__DISP1_DAT1			IOMUX_PAD(0x6D0, 0x2D0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DISP1_DAT2__DISP1_DAT2			IOMUX_PAD(0x6D4, 0x2D4, 0, 0x0, 0, NO_PAD_CTRL)
-- 
1.7.9.1



--------------010506060105040207030804
Content-Type: text/x-patch;
 name="0002-Add-basic-board-support-for-Karo-TX51-module.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0002-Add-basic-board-support-for-Karo-TX51-module.patch"

From bc5ed9f59649469b3dc0da83816db0e6e54af557 Mon Sep 17 00:00:00 2001
From: Christian Kapeller <christian.kapeller@gmx.net>
Date: Sun, 18 Mar 2012 11:38:24 +0100
Subject: [PATCH 2/2] Add basic board support for Karo TX51 module.

Support for nand, and mmc is available, ethernet support currently limited.

Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/Makefile                        |    1 +
 arch/arm/boards/karo-tx51/Makefile       |    2 +
 arch/arm/boards/karo-tx51/config.h       |   21 ++
 arch/arm/boards/karo-tx51/env/config     |   45 ++++
 arch/arm/boards/karo-tx51/flash_header.c |   58 +++++
 arch/arm/boards/karo-tx51/tx51.c         |  343 ++++++++++++++++++++++++++++++
 arch/arm/boards/karo-tx51/tx51.dox       |   50 +++++
 arch/arm/configs/tx51stk5_defconfig      |   66 ++++++
 arch/arm/mach-imx/Kconfig                |    8 +
 9 files changed, 594 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/karo-tx51/Makefile
 create mode 100644 arch/arm/boards/karo-tx51/config.h
 create mode 100644 arch/arm/boards/karo-tx51/env/config
 create mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.c
 create mode 100644 arch/arm/boards/karo-tx51/tx51.dox
 create mode 100644 arch/arm/configs/tx51stk5_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4c6a566..532b014 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -127,6 +127,7 @@ board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
+board-$(CONFIG_MACH_TX51)			:= karo-tx51
 board-$(CONFIG_MACH_TQMA53)			:= tqma53
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
new file mode 100644
index 0000000..e8f710e
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -0,0 +1,2 @@
+obj-y += tx51.o
+obj-y += flash_header.o
diff --git a/arch/arm/boards/karo-tx51/config.h b/arch/arm/boards/karo-tx51/config.h
new file mode 100644
index 0000000..b908fc0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/config.h
@@ -0,0 +1,21 @@
+/**
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/karo-tx51/env/config b/arch/arm/boards/karo-tx51/env/config
new file mode 100644
index 0000000..2fe14a5
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/env/config
@@ -0,0 +1,45 @@
+#!/bin/sh
+
+machine=tx51
+baseboard=tx51stk5
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.ethaddr=de:ad:be:ef:00:00
+#eth0.netmask=a.b.c.d
+#eth0.serverip=a.b.c.d
+#eth0.gateway=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+kernelimage=zImage-$machine
+#kernelimage_type=uimage-$machine
+#kernelimage=uImage-$machine
+#kernelimage=Image-$machine
+#kernelimage=Image-$machine.lzo
+kernelimage=zImage
+kernel_part=nand0.kernel
+
+#nfsroot="$serverip:/srv/root"
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200 tx51_base=$baseboard"
+
+nand_device=mxc_nand
+nand_parts="256k(barebox)ro,256k(bareboxenv),4M@0xc00000(kernel),64M(rootfs),-(rootfs_data)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31mtx51:\w\e[0m "
diff --git a/arch/arm/boards/karo-tx51/flash_header.c b/arch/arm/boards/karo-tx51/flash_header.c
new file mode 100644
index 0000000..2db90d0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/flash_header.c
@@ -0,0 +1,58 @@
+/**
+ * Copyright (C) 2012 Christian Kapeller, <christian.kapeller@cmotion.eu> 
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <mach/imx-flash-header.h>
+
+extern unsigned long _stext;
+
+void __naked __flash_header_start go(void)
+{
+	__asm__ __volatile__("b exception_vectors\n");
+}
+
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
+    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0x80000000, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00338018, },
+    { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2220000, },
+    { .ptr_type = 4, .addr = 0x83fd9004, .val = 0xb08564a9, },
+    { .ptr_type = 4, .addr = 0x83fd9034, .val = 0x20020000, },
+    { .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000a0080, },
+    { .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
+};
+
+#define APP_DEST	CONFIG_ARCH_TEXT_BASE
+
+struct imx_flash_header __flash_header_section flash_header = {
+	.app_code_jump_vector	= APP_DEST + 0x1000,
+	.app_code_barker	= APP_CODE_BARKER,
+	.app_code_csf		= 0,
+	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
+	.super_root_key		= 0,
+	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
+	.app_dest		= APP_DEST,
+	.dcd_barker		= DCD_BARKER,
+	.dcd_block_len		= sizeof (dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len = 0x40000;
+
diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
new file mode 100644
index 0000000..a464426
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -0,0 +1,343 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2012 Christian Kapeller, <christian.kapeller@cmotion.eu>
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx-regs.h>
+#include <fec.h>
+#include <mach/gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <nand.h>
+#include <spi/spi.h>
+#include <mfd/mc13892.h>
+#include <io.h>
+#include <asm/mmu.h>
+#include <mach/imx5.h>
+#include <mach/imx-nand.h>
+#include <mach/spi.h>
+#include <mach/generic.h>
+#include <mach/iomux-mx51.h>
+#include <mach/devices-imx51.h>
+#include <mach/iim.h>
+
+#undef DEBUG_FEC
+
+#define STK5_MX51_PAD_DISPB2_SER_RS__GPIO3_8 \
+    IOMUX_PAD(0x6C8, 0x2C8, 4, 0x994, 1, PAD_CTL_PKE | PAD_CTL_PUE)
+
+#define STK5_MX51_PAD_DISPB2_SER_DIO__GPIO3_6 \
+    IOMUX_PAD(0x6c0, 0x2c0, 4, 0x098c, 1, 0)
+
+static struct fec_platform_data fec_info = {
+	.xcv_type = MII100,
+};
+
+struct imx_nand_platform_data nand_info = {
+	.width	= 1,
+	.hw_ecc	= 1,
+	.flash_bbt = 1,
+};
+
+struct gpio_led tx51_leds[] = {
+	{
+		.led = { .name = "GPIO-LED", },
+		.gpio = IMX_GPIO_NR(4,10),
+		.active_low = 1,
+	},
+};
+
+static struct pad_desc tx51_pads[] = {
+	/*UART1*/
+	MX51_PAD_UART1_RXD__UART1_RXD,
+	MX51_PAD_UART1_TXD__UART1_TXD,
+	MX51_PAD_UART1_CTS__UART1_CTS,
+	MX51_PAD_UART1_RTS__UART1_RTS,
+
+	/* (e)CSPI */
+	MX51_PAD_CSPI1_MOSI__CSPI1_MOSI,
+	MX51_PAD_CSPI1_MISO__CSPI1_MISO,
+	MX51_PAD_CSPI1_SCLK__CSPI1_SCLK,
+	MX51_PAD_CSPI1_RDY__CSPI1_RDY,
+
+	/* (e)CSPI chip select lines */
+	MX51_PAD_CSPI1_SS0__GPIO4_24,
+	MX51_PAD_CSPI1_SS1__GPIO4_25,
+
+#ifdef CONFIG_MCI_IMX_ESDHC
+	/* eSDHC 1 */
+	MX51_PAD_SD1_CMD__SD1_CMD,
+	MX51_PAD_SD1_CLK__SD1_CLK,
+	MX51_PAD_SD1_DATA0__SD1_DATA0,
+	MX51_PAD_SD1_DATA1__SD1_DATA1,
+	MX51_PAD_SD1_DATA2__SD1_DATA2,
+	MX51_PAD_SD1_DATA3__SD1_DATA3,
+
+	/* SD1 card detect */
+	STK5_MX51_PAD_DISPB2_SER_RS__GPIO3_8,
+
+	/* eSDHC 2 */
+	MX51_PAD_SD2_CMD__SD2_CMD,
+	MX51_PAD_SD2_CLK__SD2_CLK,
+	MX51_PAD_SD2_DATA0__SD2_DATA0,
+	MX51_PAD_SD2_DATA1__SD2_DATA1,
+	MX51_PAD_SD2_DATA2__SD2_DATA2,
+	MX51_PAD_SD2_DATA3__SD2_DATA3,
+
+	/* SD2 card detect */
+	STK5_MX51_PAD_DISPB2_SER_RS__GPIO3_6,
+#endif
+
+	/* SW controlled LED on STK5 baseboard */
+	MX51_PAD_CSI2_D13__GPIO4_10,
+
+	/* unuseable pads configured as GPIO */
+	MX51_PAD_GPIO1_1__GPIO1_1,
+	MX51_PAD_GPIO1_0__GPIO1_0,
+};
+
+static int tx51_mem_init(void)
+{
+	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, 128 * 1024 * 1024);
+	return 0;
+}
+mem_initcall(tx51_mem_init);
+
+static int spi_0_cs[] = {
+	IMX_GPIO_NR(4,24),
+	IMX_GPIO_NR(4,25),
+};
+
+static struct spi_imx_master tx51_spi_0_data = {
+	.chipselect = spi_0_cs,
+	.num_chipselect = ARRAY_SIZE(spi_0_cs),
+};
+
+static const struct spi_board_info mx51_tx51_spi_board_info[] = {};
+
+static struct tx51_fec_gpio_setup {
+	struct pad_desc pad;
+	unsigned group:4,
+		shift:5,
+		level:1;
+} tx51_fec_gpios[] = {
+	{ MX51_PAD_EIM_A20__GPIO2_14,	2, 14, 0 }, /* PHY reset */
+	{ MX51_PAD_GPIO1_3__GPIO1_3,	1, 3, 0 }, /* PHY power enable */
+	{ MX51_PAD_NANDF_CS3__GPIO3_19,	3, 19, 0 }, /* MDC */
+	{ MX51_PAD_EIM_EB2__GPIO2_22,	2, 22, 0 }, /* MDIO */
+	{ MX51_PAD_NANDF_RB3__GPIO3_11,	3, 11, 0 }, /* RX_CLK */
+	{ MX51_PAD_NANDF_D11__GPIO3_29,	3, 29, 0 }, /* RX_DV */
+	{ MX51_PAD_NANDF_D9__GPIO3_31,	3, 31, 1 }, /* RXD0/Mode0 */
+	{ MX51_PAD_EIM_EB3__GPIO2_23,	2, 23, 1 }, /* RXD1/Mode1 */
+	{ MX51_PAD_EIM_CS2__GPIO2_27,	2, 27, 1 }, /* RXD2/Mode2 */
+	{ MX51_PAD_EIM_CS3__GPIO2_28,	2, 28, 1 }, /* RXD3/nINTSEL */
+	{ MX51_PAD_EIM_CS4__GPIO2_29,	2, 29, 0 }, /* RX_ER/RXD4 */
+	{ MX51_PAD_NANDF_RDY_INT__GPIO3_24,	3, 24, 0 }, /* TX_CLK */
+	{ MX51_PAD_NANDF_CS7__GPIO3_23,	3, 23, 0 }, /* TX_EN */
+	{ MX51_PAD_NANDF_D8__GPIO4_0,	4, 0, 0 }, /* TXD0 */
+	{ MX51_PAD_NANDF_CS4__GPIO3_20,	3, 20, 0 }, /* TXD1 */
+	{ MX51_PAD_NANDF_CS5__GPIO3_21,	3, 21, 0 }, /* TXD2 */
+	{ MX51_PAD_NANDF_CS6__GPIO3_22,	3, 22, 0 }, /* TXD3 */
+	{ MX51_PAD_NANDF_RB2__GPIO3_10,	3, 10, 0 }, /* COL/RMII/CRSDV */
+	{ MX51_PAD_EIM_CS5__GPIO2_30,	2, 30, 0 }, /* CRS */
+	{ MX51_PAD_NANDF_CS2__GPIO3_18,	3, 18, 0 }, /* nINT/TX_ER/TXD4 */
+};
+
+static struct pad_desc tx51_fec_pads[] = {
+	MX51_PAD_NANDF_CS2__FEC_TX_ER,
+	MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK,
+	MX51_PAD_NANDF_CS3__FEC_MDC,
+	MX51_PAD_NANDF_CS4__FEC_TDATA1,
+	MX51_PAD_NANDF_CS5__FEC_TDATA2,
+	MX51_PAD_NANDF_CS6__FEC_TDATA3,
+	MX51_PAD_NANDF_CS7__FEC_TX_EN,
+	MX51_PAD_NANDF_RB2__FEC_COL,
+	MX51_PAD_NANDF_RB3__FEC_RX_CLK,
+	MX51_PAD_NANDF_D8__FEC_TDATA0,
+	MX51_PAD_NANDF_D9__FEC_RDATA0,
+	MX51_PAD_NANDF_D11__FEC_RX_DV,
+	MX51_PAD_EIM_EB2__FEC_MDIO,
+	MX51_PAD_EIM_EB3__FEC_RDATA1,
+	MX51_PAD_EIM_CS2__FEC_RDATA2,
+	MX51_PAD_EIM_CS3__FEC_RDATA3,
+	MX51_PAD_EIM_CS4__FEC_RX_ER,
+	MX51_PAD_EIM_CS5__FEC_CRS,
+};
+
+#define TX51_FEC_PHY_RST	IMX_GPIO_NR(2, 14)
+#define TX51_FEC_PHY_PWR	IMX_GPIO_NR(1, 3)
+#define TX51_FEC_PHY_INT	IMX_GPIO_NR(3, 18)
+
+#ifdef DEBUG_FEC
+static inline void info_pads(void){
+	int i;
+	for (i = 0; i < ARRAY_SIZE(tx51_fec_gpios); i++) {
+		struct tx51_fec_gpio_setup *g = &tx51_fec_gpios[i];
+		uint32_t mux = readl(IMX_IOMUXC_BASE + g->pad.mux_ctrl_ofs);
+		uint32_t pad = readl(IMX_IOMUXC_BASE + g->pad.pad_ctrl_ofs);
+		int gpdir = (readl(0x73F84004 + (g->group -1)*0x4000) & (1 << g->shift))?1:0;
+		int gpval = gpio_get_value(IMX_GPIO_NR(g->group, g->shift));
+		int siad = IMX_IOMUXC_BASE + g->pad.select_input_ofs;
+		uint32_t sival = readl(siad);
+
+		printk("GPIO%d_%d: mxad:%08x mval:%08x gpval:%d gpdir:%d pad:%08x pval:%08x",
+			g->group, g->shift,(IMX_IOMUXC_BASE + g->pad.mux_ctrl_ofs), mux, gpval, gpdir,
+			(IMX_IOMUXC_BASE + g->pad.pad_ctrl_ofs),pad);
+
+		if(g->pad.select_input_ofs)
+			printk(" siad:%08x sival:%08x\n",siad, sival);
+		else
+			printk("\n");
+	}
+}
+#endif
+
+
+/* tx51_fec_init Initializes the LAN8700 phy chip, attached to FEC.
+ *
+ * NOTE: This code is currently broken. The LAN8700 phy is configured,
+ * by setting signal lines connected to specified level, while the phy chip
+ * is still unpowered (GPIO1_3 = low). They phy has an internal 1V8 regulator
+ * the is used on the TX51. The phy's datasheet informs, that the regulator,
+ * can be disabled, by supplying a high level to it's RXCLK/REGOFF pin
+ * (attached to GPIO3_11 on the TX51) when VDDIO and VDDA lines of the phy
+ * are supplied. On the other side, the regulator will be enabled, when the
+ * RXCLK/REGOFF pin is left floating (an internal pull-down should turn it low),
+ * when VDDIO and VDDA supply becomes available.
+ *
+ * However this init sequence fails to turn on the regulator for some reason.
+ * Using attached debug statements, and scope, I verified, that the pin states
+ * are the same as in Redboot, the regulator won't turn on anyway.
+ *
+ * As a consequence ethernet support in barebox will not work, when used
+ * as 1st stage bootloader. It will work, when it is used as second stage
+ * loader started from Redboot, which is shipped with the TX51 modules.
+ */
+static inline void tx51_fec_init(void)
+{
+	int i;
+#ifdef DEBUG_FEC
+    int gv, gr, gshift;
+#endif
+	/* Configure LAN8700 pads as GPIO and set up
+	 * necessary bootstrap options for PHY
+	 */
+	for (i = 0; i < ARRAY_SIZE(tx51_fec_gpios); i++) {
+		struct tx51_fec_gpio_setup *gs = &tx51_fec_gpios[i];
+
+		gpio_direction_output(IMX_GPIO_NR(gs->group, gs->shift ), gs->level);
+		mxc_iomux_v3_setup_pad(&(gs->pad));
+
+#ifdef DEBUG_FEC
+		gv = gpio_get_value(IMX_GPIO_NR(gs->group, gs->shift));
+		if ( gv != gs->level){
+			gr = gs->group;
+			gshift = gs->shift;
+			printk("LAN8700 GPIO%d_%d is %s should be %s\n",
+                    (uint32_t)gs->group, (uint32_t)gs->shift,gv?"high":"low",
+                    (gs->level)?"high":"low");
+		}
+#endif
+	}
+#ifdef DEBUG_FEC
+	printk("fec pin config in gpio config\n");
+	info_pads();
+#endif
+
+	/* LAN7800 has an internal Power On Reset (POR) signal (OR'ed with
+	 * the external RESET signal) which is deactivated 21ms after
+	 * power on and latches the strap options.
+	 * Delay for 22ms to ensure, that the internal POR is inactive
+	 * before reconfiguring the strap pins.
+	 */
+
+	gpio_set_value(TX51_FEC_PHY_PWR, 1);
+	mdelay(22);
+	gpio_set_value(TX51_FEC_PHY_RST, 1);
+	udelay(400);
+
+	mxc_iomux_v3_setup_multiple_pads(tx51_fec_pads,
+		ARRAY_SIZE(tx51_fec_pads));
+
+#ifdef DEBUG_FEC
+	printk("fec pin config in fec config\n");
+	info_pads();
+#endif
+
+}
+
+static void tx51_leds_init(void)
+{
+	int i;
+
+	for(i=0 ; i < ARRAY_SIZE(tx51_leds) ; i++)
+		led_gpio_register(&tx51_leds[i]);
+}
+
+static int tx51_devices_init(void)
+{
+#ifdef CONFIG_MCI_IMX_ESDHC
+	imx51_add_mmc0(NULL);
+#endif
+
+	imx51_add_nand(&nand_info);
+
+	spi_register_board_info(mx51_tx51_spi_board_info,
+		ARRAY_SIZE(mx51_tx51_spi_board_info));
+	imx51_add_spi0(&tx51_spi_0_data);
+
+	imx51_iim_register_fec_ethaddr();
+	tx51_fec_init();
+	imx51_add_fec(&fec_info);
+
+	tx51_leds_init();
+
+	//Linux Parameters
+	armlinux_set_bootparams((void *)MX51_CSD0_BASE_ADDR + 0x100);
+	armlinux_set_architecture(MACH_TYPE_TX51);
+
+	return 0;
+}
+device_initcall(tx51_devices_init);
+
+static int tx51_part_init(void)
+{
+	devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", 0x40000, 0x80000, PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	return 0;
+}
+late_initcall(tx51_part_init);
+
+static int tx51_console_init(void)
+{
+	imx51_init_lowlevel();
+	mxc_iomux_v3_setup_multiple_pads(tx51_pads, ARRAY_SIZE(tx51_pads));
+	imx51_add_uart0();
+
+	return 0;
+}
+console_initcall(tx51_console_init);
diff --git a/arch/arm/boards/karo-tx51/tx51.dox b/arch/arm/boards/karo-tx51/tx51.dox
new file mode 100644
index 0000000..08268e0
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/tx51.dox
@@ -0,0 +1,50 @@
+/**
+@page tx51 KARO's TX51 CPU module
+
+@section tx51_cpu_card The CPU module
+
+http://www.karo-electronics.de/
+
+This CPU card is based on a Freescale i.MX51 CPU. The card is shipped with:
+
+- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
+- 128 MiB NAND K9F1G08U0A (3.3V type)
+- DS1339 RTC
+- LAN8700 Phy
+
+@section tx51_baseboards Supported baseboards
+
+Supported baseboards are:
+- KARO's Starterkit 5 (currently only SD1, FEC implemented but non-working)
+
+@section tx28_stk5_howto How to get barebox for 'KARO's Starterkit 5'
+
+Using the default configuration:
+
+@verbatim
+make ARCH=arm tx51tk5_defconfig
+@endverbatim
+
+Build the binary image:
+
+@verbatim
+make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi-
+@endverbatim
+
+@note replace the arm-linux-gnueabi with your ARM v7 cross compiler.
+
+@note To use the result, you also need the following resources from Freescale:
+- the 'bootlets' archive
+- the 'elftosb2' encryption tool
+- in the case you want to start @b barebox from an attached SD card the
+  'sdimage' tool from Freescale's 'uuc' archive.
+
+@section tx28_mlayout Memory layout when barebox is running:
+
+- 0x90000000 start of SDRAM
+- 0x90000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x97f00000 start of @b barebox
+
+*/
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
new file mode 100644
index 0000000..16ddcf7
--- /dev/null
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -0,0 +1,66 @@
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX51=y
+CONFIG_MACH_TX51=y
+CONFIG_IMX_IIM=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="tx51:"
+CONFIG_BAUDRATE=115200
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/karo-tx51/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_BMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_DRIVER_NET_FEC_IMX=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_IMX=y
+CONFIG_UBI=y
+CONFIG_ZLIB=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 853757b..7285f75 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -23,6 +23,7 @@ config ARCH_TEXT_BASE
 	default 0x7ff00000 if MACH_MX53_SMD
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
+	default 0x97f00000 if MACH_TX51
 	default 0x7ff00000 if MACH_TQMA53
 
 config BOARDINFO
@@ -45,6 +46,7 @@ config BOARDINFO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
+	default "Ka-Ro tx51" if MACH_TX51
 	default "TQ tqma53" if MACH_TQMA53
 
 choice
@@ -381,6 +383,12 @@ config MACH_EUKREA_CPUIMX51SD
 	  Say Y here if you are using Eukrea's CPUIMX51 equipped
 	  with a Freescale i.MX51 Processor
 
+config MACH_TX51
+	bool "Ka-Ro TX51"
+	help
+	  Say Y here if you are using the Ka-Ro tx51 board
+
+
 endchoice
 
 endif
-- 
1.7.9.1



--------------010506060105040207030804
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------010506060105040207030804--
