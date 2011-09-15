Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R4FFa-0000ze-9O
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 16:57:23 +0000
Received: by fxg7 with SMTP id 7so1005404fxg.36
	for <barebox@lists.infradead.org>; Thu, 15 Sep 2011 09:57:21 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 15 Sep 2011 18:57:06 +0200
Message-Id: <1316105827-3495-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1316105827-3495-1-git-send-email-h.feurstein@gmail.com>
References: <1316105827-3495-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/3] at91: add missing clkdev changes
To: barebox@lists.infradead.org

This fixes the following compile errors
  arch/arm/mach-at91/at91sam9g45.c:185:3: error: 'ohci_clk' undeclared here (not in a function)
  arch/arm/mach-at91/at91sam9g45.c:186:3: error: 'tcb1_clk' undeclared here (not in a function)
  arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_mci':
  arch/arm/mach-at91/at91sam9g45_devices.c:258:2: warning: implicit declaration of function 'at91_clock_associate'
    [...]
  arch/arm/mach-at91/built-in.o: In function `at91_add_device_mci':
  sam9_smc.c:(.text.at91_add_device_mci+0x1d0): undefined reference to `at91_clock_associate'

  arch/arm/mach-at91/at91sam9260_devices.c: In function 'at91_add_device_mci':
  arch/arm/mach-at91/at91sam9260_devices.c:251:2: warning: implicit declaration of function 'at91_clock_associate'

which were introduced in commit:
  "at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c |    1 -
 arch/arm/mach-at91/at91sam9g45.c         |    3 ---
 arch/arm/mach-at91/at91sam9g45_devices.c |    7 +------
 3 files changed, 1 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 4540f4b..44d3f1e 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -248,7 +248,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
 			   IORESOURCE_MEM, data);
-	at91_clock_associate("mci_clk", dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 9c478cd..6b9fbc5 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -181,9 +181,6 @@ static struct clk *periph_clocks[] __initdata = {
 	&isi_clk,
 	&udphs_clk,
 	&mmc1_clk,
-	// irq0
-	&ohci_clk,
-	&tcb1_clk,
 };
 
 static struct clk_lookup periph_clocks_lookups[] = {
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index f311b62..ac95260 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -188,8 +188,6 @@ void at91_register_uart(unsigned id, unsigned pins)
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 {
 	resource_size_t start;
-	struct device_d *dev;
-	char* clk_name;
 
 	if (!data)
 		return;
@@ -209,7 +207,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	if (mmc_id == 0) {		/* MCI0 */
 		start = AT91SAM9G45_BASE_MCI0;
-		clk_name = "mci0_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA0, 0);
 
@@ -231,7 +228,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		}
 	} else {			/* MCI1 */
 		start = AT91SAM9G45_BASE_MCI1;
-		clk_name = "mci1_clk";
 		/* CLK */
 		at91_set_A_periph(AT91_PIN_PA31, 0);
 
@@ -253,9 +249,8 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 		}
 	}
 
-	dev = add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
+	add_generic_device("atmel_mci", mmc_id, NULL, start, 4096,
 			   IORESOURCE_MEM, data);
-	at91_clock_associate(clk_name, dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
