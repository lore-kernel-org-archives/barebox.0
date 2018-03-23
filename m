Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezIIz-0002e6-LY
 for barebox@lists.infradead.org; Fri, 23 Mar 2018 08:44:31 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 23 Mar 2018 09:43:51 +0100
Message-Id: <20180323084352.20931-4-m.grzeschik@pengutronix.de>
In-Reply-To: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
References: <20180323084352.20931-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 3/4] i.MX/DCD compiler and interpreter: logic is different
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

From: Juergen Borleis <jbe@pengutronix.de>

Reading the manual more carefully discovers a different logic for the
DCD 'check' command. They use the term "until". In order to get the
manual and the software in sync, this change switches to the term
"until" as well. Changing must happen at compiler and interpreter level
to make it work.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/boards/imx.rst                       | 57 ++++++++++++++++++++++
 .../element14-warp7/flash-header-mx7-warp.imxcfg   |  4 +-
 .../flash-header-mx7-sabresd.imxcfg                |  4 +-
 .../flash-header-vf610-twr.imxcfg                  | 10 ++--
 .../karo-tx53/flash-header-tx53-revxx30.imxcfg     | 10 ++--
 arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg | 24 ++++-----
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg       | 14 +++---
 .../boards/karo-tx6x/flash-header-tx6q-1g.imxcfg   | 18 +++----
 .../boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg  | 18 +++----
 .../kindle-mx50/flash-header-kindle-lpddr1.imxcfg  |  6 +--
 .../kindle-mx50/flash-header-kindle-lpddr2.imxcfg  |  6 +--
 .../flash-header-phytec-phycore-imx7.imxcfg        |  4 +-
 .../flash-header-zii-vf610-dev.imxcfg              | 22 ++++-----
 scripts/imx/README                                 | 30 ++----------
 scripts/imx/imx-usb-loader.c                       | 24 ++++-----
 scripts/imx/imx.c                                  | 16 +++---
 scripts/imx/imx.h                                  |  8 +--
 17 files changed, 155 insertions(+), 120 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 704aa027b6..9b1eb82d41 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -48,6 +48,63 @@ The images can also always be started second stage::
 
   bootm /mnt/tftp/barebox-freescale-imx51-babbage.img
 
+Information about the ``imx-image`` tool
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+The imx-image tool can be used to generate imximages from raw binaries.
+It requires an configuration file describing how to setup the SDRAM on
+a particular board. This mainly consists of a poke table. The recognized
+options in this file are:
+
+Header:
+
++----------------+--------------------------------------------------------------+
+| soc <soctype>  | soctype can be one of imx35, imx51, imx53, imx6              |
++----------------+--------------------------------------------------------------+
+| loadaddr <adr> |     The address the binary is uploaded to                    |
++----------------+--------------------------------------------------------------+
+| dcdofs <ofs>   | The offset of the image header in the image. This should be: |
+|                | * ``0x400``:  MMC/SD, NAND, serial ROM, PATA, SATA           |
+|                | * ``0x1000``: NOR Flash                                      |
+|                | * ``0x100``: OneNAND                                         |
++----------------+--------------------------------------------------------------+
+
+Memory manipulation:
+
++------------------------------------+-----------------------------------------+
+| wm 8 <addr> <value>                | write <value> into byte <addr>          |
++------------------------------------+-----------------------------------------+
+| wm 16 <addr> <value>               | write <value> into short <addr>         |
++------------------------------------+-----------------------------------------+
+| wm 32 <addr> <value>               | write <value> into word <addr>          |
++------------------------------------+-----------------------------------------+
+| set_bits <width> <addr> <value>    | set set bits in <value> in <addr>       |
++------------------------------------+-----------------------------------------+
+| clear_bits <width> <addr> <value>  | clear set bits in <value> in <addr>     |
++------------------------------------+-----------------------------------------+
+| nop                                | do nothing (just waste time)            |
++------------------------------------+-----------------------------------------+
+
+<width> can be of 8, 16 or 32.
+
+Checking conditions:
+
++------------------------------------+-----------------------------------------+
+| check <width> <cond> <addr> <mask> | Poll until condition becomes true.      |
+|                                    | with <cond> being one of:               |
+|                                    | * ``until_all_bits_clear``              |
+|                                    | * ``until_all_bits_set``                |
+|                                    | * ``until_any_bit_clear``               |
+|                                    | * ``until_any_bit_set``                 |
++------------------------------------+-----------------------------------------+
+
+Some notes about the mentioned *conditions*.
+
+ - ``until_all_bits_clear`` waits until ``(*addr & mask) == 0`` is true
+ - ``until_all_bits_set`` waits until ``(*addr & mask) == mask`` is true
+ - ``until_any_bit_clear`` waits until ``(*addr & mask) != mask`` is true
+ - ``until_any_bit_set`` waits until ``(*addr & mask) != 0`` is true.
+
 Internal Boot Mode Through Internal RAM(IRAM)
 ---------------------------------------------
 
diff --git a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
index d54b3ea851..7aa5dd8d45 100644
--- a/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
+++ b/arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
@@ -72,7 +72,7 @@ wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e4c7304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e4c7306
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e4c7304
 
-check 32 while_any_bit_clear MX7_DDR_PHY_ZQ_CON1 0x1
+check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON1 0x1
 
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e487304
 
@@ -80,4 +80,4 @@ wm 32 0x30384130 0x00000000
 wm 32 0x30340020 0x00000178
 wm 32 0x30384130 0x00000002
 
-check 32 while_any_bit_clear MX7_DDRC_STAT 0x1
+check 32 until_any_bit_set MX7_DDRC_STAT 0x1
diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
index fd4861153f..83ed2dc065 100644
--- a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -68,7 +68,7 @@ wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447306
 
-check 32 while_any_bit_clear MX7_DDR_PHY_ZQ_CON1 0x1
+check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON1 0x1
 
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
@@ -79,4 +79,4 @@ wm 32 0x30384130 0x00000002
 
 wm 32 MX7_DDR_PHY_LP_CON0 0x0000000f
 
-check 32 while_any_bit_clear MX7_DDRC_STAT 0x1
+check 32 until_any_bit_set MX7_DDRC_STAT 0x1
diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 01ffc6998a..8dd62be210 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -65,7 +65,7 @@ CHECKPOINT(2)
 /*
  * Wait for PLLs to lock
  */
-check 32 while_any_bit_clear 0x40050030 0x80000000
+check 32 until_any_bit_set 0x40050030 0x80000000
 
 
 CHECKPOINT(3)
@@ -240,7 +240,7 @@ wm 32 0x400ae000 0x00000601
 
 CHECKPOINT(7)
 
-check 32 while_any_bit_clear 0x400ae140 0x100
+check 32 until_any_bit_set 0x400ae140 0x100
 
 CHECKPOINT(8)
 
@@ -268,11 +268,11 @@ CHECKPOINT(8)
  * against that pattern
  */
 wm 32 0x80000000 0xa5a5a5a5
-check 32 while_any_bit_clear 0x80000000 0xa5a5a5a5
+check 32 until_any_bit_set 0x80000000 0xa5a5a5a5
 
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae000 0x00000601
 
-check 32 while_any_bit_clear 0x400ae140 0x100
+check 32 until_any_bit_set 0x400ae140 0x100
 
-CHECKPOINT(9)
\ No newline at end of file
+CHECKPOINT(9)
diff --git a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
index df0c2d7f10..2b47d63bd4 100644
--- a/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
+++ b/arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
@@ -68,29 +68,29 @@ wm 32 0x63fd90d0 0x00000003
 wm 32 0x63fd901c 0x04008010
 wm 32 0x63fd901c 0x00008040
 wm 32 0x63fd9040 0x0539002b
-check 32 while_all_bits_set 0x63fd9040 0x00010000
+check 32 until_all_bits_clear 0x63fd9040 0x00010000
 wm 32 0x63fd901c 0x00048033
 wm 32 0x63fd901c 0x00848231
 wm 32 0x63fd901c 0x00000000
 wm 32 0x63fd9048 0x00000001
-check 32 while_all_bits_set 0x63fd9048 0x00000001
+check 32 until_all_bits_clear 0x63fd9048 0x00000001
 wm 32 0x63fd901c 0x00048031
 wm 32 0x63fd901c 0x00008033
 wm 32 0x63fd901c 0x04008010
 wm 32 0x63fd901c 0x00048033
 wm 32 0x63fd907c 0x90000000
-check 32 while_all_bits_set 0x63fd907c 0x90000000
+check 32 until_all_bits_clear 0x63fd907c 0x90000000
 wm 32 0x63fd901c 0x00008033
 wm 32 0x63fd901c 0x00000000
 wm 32 0x63fd901c 0x04008010
 wm 32 0x63fd901c 0x00048033
 wm 32 0x63fd90a4 0x00000010
-check 32 while_all_bits_set 0x63fd90a4 0x00000010
+check 32 until_all_bits_clear 0x63fd90a4 0x00000010
 wm 32 0x63fd901c 0x00008033
 wm 32 0x63fd901c 0x04008010
 wm 32 0x63fd901c 0x00048033
 wm 32 0x63fd90a0 0x00000010
-check 32 while_all_bits_set 0x63fd90a0 0x00000010
+check 32 until_all_bits_clear 0x63fd90a0 0x00000010
 wm 32 0x63fd901c 0x00008033
 wm 32 0x63fd901c 0x00000000
 wm 32 0x53fa8004 0x00194005
diff --git a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
index b5c59e3c3c..7e244edfd3 100644
--- a/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
+++ b/arch/arm/boards/karo-tx6x/1600mhz_4x128mx16.imxcfg
@@ -1,12 +1,12 @@
 /* MDMISC	mirroring	interleaved (row/bank/col) */
 wm 32 MX6_MMDC_P0_MDMISC		0x00000742
-check 32 while_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
 
 wm 32 MX6_MMDC_P0_MDSCR			0x00008000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
 
 wm 32 MX6_MMDC_P0_MDCTL			0x831a0000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
 
 wm 32 MX6_MMDC_P0_MDCFG0		0x3f435333
 wm 32 MX6_MMDC_P0_MDCFG1		0x926e8a63
@@ -34,7 +34,7 @@ wm 32 MX6_MMDC_P0_MDSCR			0x04008010
 wm 32 MX6_MMDC_P0_MDSCR			0x04008040
 
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xA1390001
-check 32 while_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xA1380000
 
 wm 32 MX6_MMDC_P0_MPWLDECTRL0	0x001e001e
@@ -62,11 +62,11 @@ wm 32 MX6_MMDC_P1_MPWRDLCTL		0x40404040
 wm 32 MX6_MMDC_P0_MPMUR0		0x00000800
 
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x80000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x80000000
+check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x80000000
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x80000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x80000000
+check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x80000000
 wm 32 MX6_MMDC_P0_MPDGCTRL0		0x50800000
-check 32 while_all_bits_clear MX6_MMDC_P0_MPDGCTRL0 0x10001000
+check 32 until_all_bits_set MX6_MMDC_P0_MPDGCTRL0 0x10001000
 
 wm 32 MX6_IOM_DRAM_SDQS0		0x00000030
 wm 32 MX6_IOM_DRAM_SDQS1		0x00000030
@@ -81,16 +81,16 @@ wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL		0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL		0x00000030
 
-check 32 while_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 while_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 
 wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL		0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 
 wm 32 MX6_MMDC_P0_MDSCR			0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL		0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR			0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL		0xa138002b
 wm 32 MX6_MMDC_P0_MDREF			0x00001800
@@ -98,4 +98,4 @@ wm 32 MX6_MMDC_P0_MAPSR			0x00001006
 wm 32 MX6_MMDC_P0_MDPDC			0x0002556d
 wm 32 MX6_MMDC_P1_MDPDC			0x0002556d
 wm 32 MX6_MMDC_P0_MDSCR			0x00000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
index c58ef4e35a..3f6578e19c 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -92,11 +92,11 @@ wm 32 MX6_MMDC_P0_MPRDDQBY2DL 0x33333333
 wm 32 MX6_MMDC_P0_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 while_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x83190000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x3f435333
 wm 32 MX6_MMDC_P0_MDCFG1 0xb66e8a63
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00db
@@ -117,7 +117,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 while_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -126,14 +126,14 @@ wm 32 MX6_IOM_DRAM_SDQS2 0x00000030
 wm 32 MX6_IOM_DRAM_SDQS3 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x0002556d
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
index 56cb3292a9..165b69fb19 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6q-1g.imxcfg
@@ -119,11 +119,11 @@ wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 while_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x831a0000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x545a79a4
 wm 32 MX6_MMDC_P0_MDCFG1 0xff538e64
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00dd
@@ -145,7 +145,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 while_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -159,19 +159,19 @@ wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 while_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x00025576
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
 
diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
index 4eaca00fc7..fc00de957c 100644
--- a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -128,11 +128,11 @@ wm 32 MX6_MMDC_P1_MPRDDQBY3DL 0x33333333
 wm 32 MX6_MMDC_P0_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P1_MPMUR0 0x00000800
 wm 32 MX6_MMDC_P0_MDMISC 0x00000742
-check 32 while_all_bits_clear MX6_MMDC_P0_MDMISC 0x00000002
+check 32 until_all_bits_set MX6_MMDC_P0_MDMISC 0x00000002
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_any_bit_set MX6_MMDC_P0_MDSCR 0x00004000
 wm 32 MX6_MMDC_P0_MDCTL 0x841a0000
-check 32 while_any_bit_clear MX6_MMDC_P0_MDMISC 0x40000000
+check 32 until_any_bit_set MX6_MMDC_P0_MDMISC 0x40000000
 wm 32 MX6_MMDC_P0_MDCFG0 0x898f78f4
 wm 32 MX6_MMDC_P0_MDCFG1 0xff328e64
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff00db
@@ -155,7 +155,7 @@ wm 32 MX6_MMDC_P0_MAPSR 0x00000001
 wm 32 MX6_MMDC_P0_MDSCR 0x04008010
 wm 32 MX6_MMDC_P0_MDSCR 0x04008040
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1390001
-check 32 while_all_bits_clear MX6_MMDC_P0_MPZQHWCTRL 0x00010000
+check 32 until_all_bits_set MX6_MMDC_P0_MPZQHWCTRL 0x00010000
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa1380000
 wm 32 MX6_MMDC_P0_MDSCR 0x00048033
 wm 32 MX6_IOM_DRAM_SDQS0 0x00000030
@@ -169,18 +169,18 @@ wm 32 MX6_IOM_DRAM_SDQS7 0x00000030
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPRDDLHWCTL 0x00000030
 wm 32 MX6_MMDC_P1_MPRDDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
-check 32 while_all_bits_clear MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPRDDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPRDDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P0_MPWRDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P0_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x04008050
 wm 32 MX6_MMDC_P1_MPWRDLHWCTL 0x00000030
-check 32 while_all_bits_clear MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
+check 32 until_all_bits_set MX6_MMDC_P1_MPWRDLHWCTL 0x0000001f
 wm 32 MX6_MMDC_P0_MDSCR 0x00008033
 wm 32 MX6_MMDC_P0_MPZQHWCTRL 0xa138002b
 wm 32 MX6_MMDC_P0_MDREF 0x00001800
 wm 32 MX6_MMDC_P0_MAPSR 0x00001000
 wm 32 MX6_MMDC_P0_MDPDC 0x00025576
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
-check 32 while_all_bits_clear MX6_MMDC_P0_MDSCR 0x00004000
+check 32 until_all_bits_set MX6_MMDC_P0_MDSCR 0x00004000
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
index e6b6098973..fae10423c5 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
@@ -21,7 +21,7 @@ wm 32 0x63f8001c 0x00000080
 wm 32 0x63f80020 0x00000002
 wm 32 0x63f80024 0x00000001
 wm 32 0x63f80000 0x00001232
-check 8 while_any_bit_clear 0x63f80000 0x01
+check 8 until_any_bit_set 0x63f80000 0x01
 # Switch pll1_sw_clk to pll1
 wm 32 0x53fd400c 0x00000000
 
@@ -38,7 +38,7 @@ wm 32 0x53FD4098 0x80000004
 
 # CCM DDR div 4 / 200MHz
 wm 32 0x53fd4098 0x80000004
-check 32 while_all_bits_set 0x53fd408c 0x00000004
+check 32 until_all_bits_clear 0x53fd408c 0x00000004
 
 # IOMUX
 wm 32 0x53fa8490 0x00180000
@@ -163,4 +163,4 @@ wm 32 0x1400025c 0x00102201
 
 # start DDR
 wm 32 0x14000000 0x00000101
-check 32 while_any_bit_clear 0x140000a8 0x00000010
+check 32 until_any_bit_set 0x140000a8 0x00000010
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
index ffceac34b5..94436a7b54 100644
--- a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
@@ -22,7 +22,7 @@ wm 32 0x63f8001c 0x00000080
 wm 32 0x63f80020 0x000000b3
 wm 32 0x63f80024 0x000000b4
 wm 32 0x63f80000 0x00001236
-check 8 while_any_bit_clear 0x63f80000 0x01
+check 8 until_any_bit_set 0x63f80000 0x01
 # Switch pll1_sw_clk to pll1
 wm 32 0x53fd400c 0x00000000
 
@@ -39,7 +39,7 @@ wm 32 0x53FD4098 0x80000004
 
 # CCM DDR div 3 / 266MHz
 wm 32 0x53fd4098 0x80000003
-check 32 while_all_bits_set 0x53fd408c 0x00000004
+check 32 until_all_bits_clear 0x53fd408c 0x00000004
 
 # IOMUX
 wm 32 0x53fa86ac 0x04000000
@@ -173,4 +173,4 @@ wm 32 0x1400025c 0x00100b01
 
 # start DDR
 wm 32 0x14000000 0x00000501
-check 32 while_any_bit_clear 0x140000a8 0x00000010
+check 32 until_any_bit_set 0x140000a8 0x00000010
diff --git a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
index 6c256e8fc5..6e08b6c1b1 100644
--- a/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
+++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
@@ -65,7 +65,7 @@ wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447306
 
-check 32 while_any_bit_clear MX7_DDR_PHY_ZQ_CON1 0x1
+check 32 until_any_bit_set MX7_DDR_PHY_ZQ_CON1 0x1
 
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
 wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
@@ -75,4 +75,4 @@ wm 32 0x30340020 0x00000178
 wm 32 0x30384130 0x00000002
 wm 32 MX7_DDR_PHY_LP_CON0 0x0000000f
 
-check 32 while_any_bit_clear MX7_DDRC_STAT 0x1
+check 32 until_any_bit_set MX7_DDRC_STAT 0x1
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 177f4e8bdc..bb858907a4 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -45,7 +45,7 @@ CHECKPOINT(2)
 /*
  * Wait for PLLs to lock
  */
-check 32 while_any_bit_clear 0x40050030 0x80000000
+check 32 until_any_bit_set 0x40050030 0x80000000
 
 
 CHECKPOINT(3)
@@ -218,26 +218,26 @@ wm 32 0x400ae000 0x00000601
 
 CHECKPOINT(7)
 
-check 32 while_any_bit_clear 0x400ae140 0x100
-# check 32 while_any_bit_clear 0x400ae42c 0x1
-# check 32 while_any_bit_clear 0x400ae46c 0x1
-# check 32 while_any_bit_clear 0x400ae4ac 0x1
+check 32 until_any_bit_set 0x400ae140 0x100
+# check 32 until_any_bit_set 0x400ae42c 0x1
+# check 32 until_any_bit_set 0x400ae46c 0x1
+# check 32 until_any_bit_set 0x400ae4ac 0x1
 
 CHECKPOINT(8)
 
 wm 32 0x80000000 0xa5a5a5a5
-check 32 while_any_bit_clear 0x80000000 0xa5a5a5a5
+check 32 until_any_bit_set 0x80000000 0xa5a5a5a5
 
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae000 0x00000601
 
-check 32 while_any_bit_clear 0x400ae140 0x100
-# check 32 while_any_bit_clear 0x400ae42c 0x1
-# check 32 while_any_bit_clear 0x400ae46c 0x1
-# check 32 while_any_bit_clear 0x400ae4ac 0x1
+check 32 until_any_bit_set 0x400ae140 0x100
+# check 32 until_any_bit_set 0x400ae42c 0x1
+# check 32 until_any_bit_set 0x400ae46c 0x1
+# check 32 until_any_bit_set 0x400ae4ac 0x1
 
 /* wm 32 0x3f040000 0xf0
- check 32 while_any_bit_clear 0x3f040000 0x0f */
+ check 32 until_any_bit_set 0x3f040000 0x0f */
 
 
 CHECKPOINT(9)
diff --git a/scripts/imx/README b/scripts/imx/README
index b5cdb487a0..d573d3a6be 100644
--- a/scripts/imx/README
+++ b/scripts/imx/README
@@ -7,34 +7,12 @@ The imx-usb-loader tool is used to upload and start i.MX images. These
 are images containing a DCD (Device Configuration Data) table. To generate
 these images from raw binaries use the imx-image tool.
 
-imx-image
----------
+Refer the i.MX related documentation about the DCD source files and their
+content.
 
-The imx-image tool can be used to generate imximages from raw binaries.
-It requires an configuration file describing how to setup the SDRAM on
-a particular board. This mainly consists of a poke table. The recognized
-options in this file are:
+Example for a DCD source file:
 
-soc <soctype>      soctype can be one of imx35, imx51, imx53, imx6
-loadaddr <adr>     The address the binary is uploaded to
-dcdofs <ofs>       The offset of the image header in the image. This should be:
-                   0x400  - MMC/SD, NAND, serial ROM, PATA, SATA
-                   0x1000 - NOR Flash
-                   0x100  - OneNAND
-wm 8 <adr> <value>                    do a byte memory write
-wm 16 <adr> <value>                   do a short memory write
-wm 32 <adr> <value>                   do a word memory write
-check <width> <cond> <addr> <mask>    Poll until condition becomes true.
-                                      with <cond> being one of:
-                                      while_all_bits_clear,
-                                      while_all_bits_set,
-                                      while_any_bit_clear,
-                                      while_any_bit_set
-set_bits <width> <addr> <bits>        set <bits> in register <addr>
-clear_bits <width> <addr> <bits>      clear <bits> in register <addr>
-nop                                   do nothing
-
-the i.MX SoCs support a wide range of fancy things doing with the flash header.
+The i.MX SoCs support a wide range of fancy things doing with the flash header.
 We limit ourselves to a very simple case, that is the flash header has a fixed
 size of 0x1000 bytes. The application is expected right thereafter, so if you
 specify a loadaddr of 0x80000000 in the config file, the first 0x1000 bytes
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 6052343e00..43dde8b7f2 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -935,10 +935,10 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 	}
 
 	switch ((check->param & 0xf8) >> 3) {
-	case check_all_bits_clear:
-	case check_all_bits_set:
-	case check_any_bit_clear:
-	case check_any_bit_set:
+	case until_all_bits_clear:
+	case until_all_bits_set:
+	case until_any_bit_clear:
+	case until_any_bit_set:
 		cond = (check->param & 0xf8) >> 3;
 		break;
 	default:
@@ -966,20 +966,20 @@ static int do_dcd_v2_cmd_check(const unsigned char *dcd)
 		data &= mask;
 
 		switch (cond) {
-		case check_all_bits_clear:
-			if (data != 0)
+		case until_all_bits_clear:
+			if (data == 0)
 				return 0;
 			break;
-		case check_all_bits_set:
-			if (data != mask)
+		case until_all_bits_set:
+			if (data == mask)
 				return 0;
 			break;
-		case check_any_bit_clear:
-			if (data == mask)
+		case until_any_bit_clear:
+			if (data != mask)
 				return 0;
 			break;
-		case check_any_bit_set:
-			if (data == 0)
+		case until_any_bit_set:
+			if (data != 0)
 				return 0;
 			break;
 		}
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 809d8a7f71..fb6ac001e2 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -69,10 +69,10 @@ struct command {
 };
 
 static const char *check_cmds[] = {
-	"while_all_bits_clear",		/* while ((*address & mask) == 0); */
-	"while_all_bits_set"	,	/* while ((*address & mask) == mask); */
-	"while_any_bit_clear",		/* while ((*address & mask) != mask); */
-	"while_any_bit_set",		/* while ((*address & mask) != 0); */
+	"until_all_bits_clear",	/* until ((*address & mask) == 0) { }; */
+	"until_any_bit_clear",	/* until ((*address & mask) != mask) { }; */
+	"until_all_bits_set",	/* until ((*address & mask) == mask) { }; */
+	"until_any_bit_set",	/* until ((*address & mask) != 0) { }; */
 };
 
 static void do_cmd_check_usage(void)
@@ -81,10 +81,10 @@ static void do_cmd_check_usage(void)
 			"usage: check <width> <cmd> <addr> <mask>\n"
 			"<width> access width in bytes [1|2|4]\n"
 			"with <cmd> one of:\n"
-			"while_all_bits_clear: while ((*addr & mask) == 0)\n"
-			"while_all_bits_set:   while ((*addr & mask) == mask)\n"
-			"while_any_bit_clear:  while ((*addr & mask) != mask)\n"
-			"while_any_bit_set:    while ((*addr & mask) != 0)\n");
+			"until_all_bits_clear: while ((*addr & mask) == 0)\n"
+			"until_all_bits_set:   while ((*addr & mask) == mask)\n"
+			"until_any_bit_clear:  while ((*addr & mask) != mask)\n"
+			"until_any_bit_set:    while ((*addr & mask) != 0)\n");
 }
 
 static int do_cmd_check(struct config_data *data, int argc, char *argv[])
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index f32ae52abf..c7677f81a4 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -105,10 +105,10 @@ struct imx_dcd_v2_check {
 } __attribute__((packed));
 
 enum imx_dcd_v2_check_cond {
-	check_all_bits_clear = 0,
-	check_all_bits_set = 1,
-	check_any_bit_clear = 2,
-	check_any_bit_set = 3,
+	until_all_bits_clear = 0, /* until ((*address & mask) == 0) { ...} */
+	until_any_bit_clear = 1, /* until ((*address & mask) != mask) { ...} */
+	until_all_bits_set = 2, /* until ((*address & mask) == mask) { ...} */
+	until_any_bit_set = 3, /* until ((*address & mask) != 0) { ...} */
 } __attribute__((packed));
 
 int parse_config(struct config_data *data, const char *filename);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
