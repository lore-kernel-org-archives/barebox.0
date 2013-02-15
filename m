Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f173.google.com ([209.85.215.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Izw-0001si-Mz
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:58:33 +0000
Received: by mail-ea0-f173.google.com with SMTP id i1so1307846eaa.4
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:58:31 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:58:25 +0100
Message-Id: <1360925906-18475-2-git-send-email-fabio.porcedda@gmail.com>
In-Reply-To: <1360925906-18475-1-git-send-email-fabio.porcedda@gmail.com>
References: <1360925906-18475-1-git-send-email-fabio.porcedda@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/2] at91sam9260/9g20ek: use IS_ENABLED instead of
 #if/#ifdef
To: barebox@lists.infradead.org

Using IS_ENABLED instead of #if/#ifdef the compiler can check
all the code.
Using IS_ENABLED for configuring smc->mode is an optimization,
reduce init.o text from 905 to 877.

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 06a53f2..5b163b7 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -37,9 +37,8 @@ static void ek_set_board_type(void)
 {
 	if (machine_is_at91sam9g20ek()) {
 		armlinux_set_architecture(MACH_TYPE_AT91SAM9G20EK);
-#ifdef CONFIG_AT91_HAVE_2MMC
-		armlinux_set_revision(HAVE_2MMC);
-#endif
+		if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC))
+			armlinux_set_revision(HAVE_2MMC);
 	} else {
 		armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
 	}
@@ -51,11 +50,6 @@ static struct atmel_nand_data nand_pdata = {
 	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PC13,
 	.enable_pin	= AT91_PIN_PC14,
-#if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-	.bus_width_16	= 1,
-#else
-	.bus_width_16	= 0,
-#endif
 	.on_flash_bbt	= 1,
 };
 
@@ -107,10 +101,12 @@ static void ek_add_device_nand(void)
 		smc = &ek_9260_nand_smc_config;
 
 	/* setup bus-width (8 or 16) */
-	if (nand_pdata.bus_width_16)
+	if (IS_ENABLED(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)) {
+		nand_pdata.bus_width_16 = 1;
 		smc->mode |= AT91_SMC_DBW_16;
-	else
+	} else {
 		smc->mode |= AT91_SMC_DBW_8;
+	}
 
 	/* configure chip-select 3 (NAND) */
 	sam9_smc_configure(0, 3, smc);
@@ -209,10 +205,10 @@ static void __init ek_add_led(void)
 {
 	int i;
 
-#ifdef CONFIG_AT91_HAVE_2MMC
-	leds[0].gpio = AT91_PIN_PB8;
-	leds[1].gpio = AT91_PIN_PB9;
-#endif
+	if (IS_ENABLED(CONFIG_AT91_HAVE_2MMC)) {
+		leds[0].gpio = AT91_PIN_PB8;
+		leds[1].gpio = AT91_PIN_PB9;
+	}
 
 	for (i = 0; i < ARRAY_SIZE(leds); i++) {
 		at91_set_gpio_output(leds[i].gpio, leds[i].active_low);
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
