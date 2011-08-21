Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvFH3-00060E-22
	for barebox@lists.infradead.org; Sun, 21 Aug 2011 21:09:42 +0000
Received: by fxd20 with SMTP id 20so3856667fxd.36
	for <barebox@lists.infradead.org>; Sun, 21 Aug 2011 14:09:36 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Sun, 21 Aug 2011 23:08:57 +0200
Message-Id: <1313960937-15271-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] at91: add missing clkdev changes for at91sam9g45
To: barebox@lists.infradead.org

This fixes the following compile errors
  arch/arm/mach-at91/at91sam9g45.c:185:3: error: 'ohci_clk' undeclared here (not in a function)
  arch/arm/mach-at91/at91sam9g45.c:186:3: error: 'tcb1_clk' undeclared here (not in a function)
  arch/arm/mach-at91/at91sam9g45_devices.c: In function 'at91_add_device_mci':
  arch/arm/mach-at91/at91sam9g45_devices.c:258:2: warning: implicit declaration of function 'at91_clock_associate'
    [...]
  arch/arm/mach-at91/built-in.o: In function `at91_add_device_mci':
  sam9_smc.c:(.text.at91_add_device_mci+0x1d0): undefined reference to `at91_clock_associate'
which were introduced in commit:
  "at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9g45.c         |    3 ---
 arch/arm/mach-at91/at91sam9g45_devices.c |    7 +------
 2 files changed, 1 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index d4c27f8..f1139da 100644
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
index f6e1eb4..022f3e1 100644
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
