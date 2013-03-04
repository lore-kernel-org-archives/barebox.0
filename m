Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbCv-0003Mg-SH
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:37:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 20:37:46 +0100
Message-Id: <1362425866-1356-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362425866-1356-1-git-send-email-s.hauer@pengutronix.de>
References: <1362425866-1356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: OMAP: beagle: Add missing MMC iomux setup
To: barebox@lists.infradead.org

When the board is booted from NAND we have to setup the iomux to
make the SD card work. Unfortunately this still is not enough :(
The SD card still will only work when booting from it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/lowlevel.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 2c1232c..d0fd066 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -87,6 +87,17 @@ static void mux_config(void)
 	MUX_VAL(CP(ETK_D14_ES2),	(IEN  | PTU | DIS | M3));
 	MUX_VAL(CP(ETK_D15_ES2),	(IEN  | PTU | DIS | M3));
 	MUX_VAL(CP(UART2_RX),		(IEN  | PTD | DIS | M4)) /*GPIO_147*/;
+	/* Expansion card */
+	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0)); /* MMC1_CLK */
+	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0)); /* MMC1_CMD */
+	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT0 */
+	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT1 */
+	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT2 */
+	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT3 */
+	MUX_VAL(CP(MMC1_DAT4),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT4 */
+	MUX_VAL(CP(MMC1_DAT5),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT5 */
+	MUX_VAL(CP(MMC1_DAT6),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT6 */
+	MUX_VAL(CP(MMC1_DAT7),		(IEN  | PTU | EN  | M0)); /* MMC1_DAT7 */
 }
 
 /**
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
