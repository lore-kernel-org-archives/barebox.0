Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vi1eur05olkn2090.outbound.protection.outlook.com
 ([40.92.90.90] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJv7s-0000VD-Px
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:23:04 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:22:55 +0000
Message-ID: <DB7PR02MB433223DC2A79CECB7B3FBA35ABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH 6/7] Zedboard turn on LED on startup
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Turns on the LED on MIO7 on the Zedboard to have a signal

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index b8001fcf6..eb85df507 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -306,6 +306,16 @@ ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 
 	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
 
+	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+	writel(0x00000600, 0xF800071C );
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+
+	/* turns on the LED MIO_07 */
+	writel((1<<7), 0xe000a204 );    // Direction
+	writel((1<<7), 0xe000a208 );    // Output enable
+	writel((1<<7), 0xe000a040 );    // DATA Register
+
 	arm_cpu_lowlevel_init();
 	zynq_cpu_lowlevel_init();
 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
