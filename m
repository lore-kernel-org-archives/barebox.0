Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Or-SZ
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:30 +0200
Message-Id: <20190510062135.11534-10-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] ARM: Layerscape: TQMLS1046a: Sync qspi RCW from TQ
 U-Boot
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg   | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
index 395c75c7d0..2df229c56c 100644
--- a/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
+++ b/arch/arm/boards/tqmls1046a/tqmls1046a_rcw_qspi_3333_5559.cfg
@@ -8,7 +8,7 @@
 #  32: 33 - CGA_PLL2_CFG             :       0 [0x0 / 0b00]
 #  34: 39 - CGA_PLL2_RAT             :      14 [0xe / 0b001110]
 #  96: 99 - C1_PLL_SEL               :       0 [0x0 / 0b0000]
-# 128:143 - SRDS_PRTCL_S1            :   13107 [0x3333 / 0b0011001100110011]
+# 128:143 - SRDS_PRTCL_S1            :    4403 [0x1133 / 0b0001000100110011]
 # 144:159 - SRDS_PRTCL_S2            :   21849 [0x5559 / 0b0101010101011001]
 # 160:161 - SRDS_PLL_REF_CLK_SEL_S1  :       3 [0x3 / 0b11]
 # 162:163 - SRDS_PLL_REF_CLK_SEL_S2  :       3 [0x3 / 0b11]
@@ -39,7 +39,7 @@
 # 357:359 - IRQ_EXT                  :       0 [0x0 / 0b000]
 # 360:362 - SPI_EXT                  :       0 [0x0 / 0b000]
 # 363:365 - SDHC_EXT                 :       0 [0x0 / 0b000]
-# 366:368 - UART_BASE                :       5 [0x5 / 0b101]
+# 366:368 - UART_BASE                :       6 [0x6 / 0b110]
 # 369:369 - ASLEEP                   :       0 [0x0 / 0b0]
 # 370:370 - RTC                      :       0 [0x0 / 0b0]
 # 371:371 - SDHC_BASE                :       0 [0x0 / 0b0]
@@ -79,6 +79,6 @@
 aa55aa55 01ee0100
 # RCW
 0c140010 0e000000 00000000 00000000
-33335559 f0005002 40025000 c1000000
-00000000 00000000 00000000 00028800
+11335559 f0005002 40025000 c1000000
+00000000 00000000 00000000 00030800
 20004000 01103202 00000096 00000001
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
