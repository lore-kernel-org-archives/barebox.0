Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XU8XC-0007WD-FT
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:16:11 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 17 Sep 2014 08:15:28 +0200
Message-Id: <1410934529-20576-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1410934529-20576-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1410934529-20576-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] arm: mach-imx: add more ddr register defines
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6-ddr-regs.h   |  6 ++++++
 arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h | 20 ++++++++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
index 69707f0976bd..ac2764f1b6ef 100644
--- a/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-ddr-regs.h
@@ -37,6 +37,9 @@
 #define MX6_MMDC_P0_MPDGCTRL1		0x021b0840
 #define MX6_MMDC_P0_MPRDDLCTL		0x021b0848
 #define MX6_MMDC_P0_MPWRDLCTL		0x021b0850
+#define MX6_MMDC_P0_MPRDDLHWCTL		0x021b0860
+#define MX6_MMDC_P0_MPWRDLHWCTL		0x021b0864
+#define MX6_MMDC_P0_MPPDCMPR2		0x021b0890
 #define MX6_MMDC_P0_MPMUR0		0x021b08b8
 
 #define MX6_MMDC_P1_MDCTL		0x021b4000
@@ -64,4 +67,7 @@
 #define MX6_MMDC_P1_MPDGCTRL1		0x021b4840
 #define MX6_MMDC_P1_MPRDDLCTL		0x021b4848
 #define MX6_MMDC_P1_MPWRDLCTL		0x021b4850
+#define MX6_MMDC_P1_MPRDDLHWCTL		0x021b4860
+#define MX6_MMDC_P1_MPWRDLHWCTL		0x021b4864
+#define MX6_MMDC_P1_MPPDCMPR2		0x021b4890
 #define MX6_MMDC_P1_MPMUR0		0x021b48b8
diff --git a/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h b/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
index 541d00e24489..a312e63a996d 100644
--- a/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6dl-ddr-regs.h
@@ -12,6 +12,23 @@
  * GNU General Public License for more details.
  */
 
+#define MX6_IOM_DRAM_ADDR00	0x020e0424
+#define MX6_IOM_DRAM_ADDR01	0x020e0428
+#define MX6_IOM_DRAM_ADDR10	0x020e042c
+#define MX6_IOM_DRAM_ADDR11	0x020e0430
+#define MX6_IOM_DRAM_ADDR12	0x020e0434
+#define MX6_IOM_DRAM_ADDR13	0x020e0438
+#define MX6_IOM_DRAM_ADDR14	0x020e043c
+#define MX6_IOM_DRAM_ADDR15	0x020e0440
+#define MX6_IOM_DRAM_ADDR02	0x020e0444
+#define MX6_IOM_DRAM_ADDR03	0x020e0448
+#define MX6_IOM_DRAM_ADDR04	0x020e044c
+#define MX6_IOM_DRAM_ADDR05	0x020e0450
+#define MX6_IOM_DRAM_ADDR06	0x020e0454
+#define MX6_IOM_DRAM_ADDR07	0x020e0458
+#define MX6_IOM_DRAM_ADDR08	0x020e045c
+#define MX6_IOM_DRAM_ADDR09	0x020e0460
+
 #define MX6_IOM_DRAM_DQM0	0x020e0470
 #define MX6_IOM_DRAM_DQM1	0x020e0474
 #define MX6_IOM_DRAM_DQM2	0x020e0478
@@ -24,6 +41,8 @@
 #define MX6_IOM_DRAM_CAS	0x020e0464
 #define MX6_IOM_DRAM_RAS	0x020e0490
 #define MX6_IOM_DRAM_RESET	0x020e0494
+#define MX6_IOM_DRAM_SDBA0	0x020e0498
+#define MX6_IOM_DRAM_SDBA1	0x020e049c
 #define MX6_IOM_DRAM_SDCLK_0	0x020e04ac
 #define MX6_IOM_DRAM_SDCLK_1	0x020e04b0
 #define MX6_IOM_DRAM_SDBA2	0x020e04a0
@@ -52,6 +71,7 @@
 #define MX6_IOM_GRP_ADDDS	0x020e074c
 #define MX6_IOM_DDRMODE_CTL	0x020e0750
 #define MX6_IOM_GRP_DDRPKE	0x020e0754
+#define MX6_IOM_GRP_DDRHYS	0x020e075c
 #define MX6_IOM_GRP_DDRMODE	0x020e0760
 #define MX6_IOM_GRP_CTLDS	0x020e076c
 #define MX6_IOM_GRP_DDR_TYPE	0x020e0774
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
