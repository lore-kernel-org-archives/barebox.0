Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1L42-0002T0-Sz
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:10:15 +0000
Received: by mail-lb0-f176.google.com with SMTP id s4so4739281lbc.7
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2013 10:10:13 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 22:22:20 +0400
Message-Id: <1359742941-30516-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
References: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 3/4] at91sam9*: use gpio_request_output()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/at91sam9261ek/init.c  |   18 +-----------------
 arch/arm/boards/at91sam9263ek/init.c  |   18 +-----------------
 arch/arm/boards/at91sam9m10ihd/init.c |   18 +-----------------
 3 files changed, 3 insertions(+), 51 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 2597ff8..220dd2f 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -153,22 +153,6 @@ static void ek_add_device_udc(void) {}
  * LCD Controller
  */
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 /* TFT */
 static struct fb_videomode at91_tft_vga_modes[] = {
 	{
@@ -211,7 +195,7 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 
 static int at91_lcdc_gpio(void)
 {
-	return ek_gpio_request_output(AT91_PIN_PA12, "lcdc_tft_power");
+	return gpio_request_output(AT91_PIN_PA12, "lcdc_tft_power", 1);
 }
 
 static void ek_add_device_lcdc(void)
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index 90fdbec..ed133b9 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -153,22 +153,6 @@ static void ek_add_device_udc(void) {}
  * LCD Controller
  */
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 static struct fb_videomode at91_tft_vga_modes[] = {
 	{
 		.name		= "TX09D50VM1CCA @ 60",
@@ -208,7 +192,7 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 
 static void ek_add_device_lcdc(void)
 {
-	if (ek_gpio_request_output(AT91_PIN_PA30, "lcdc_power"))
+	if (gpio_request_output(AT91_PIN_PA30, "lcdc_power", 1))
 		return;
 
 	at91_add_device_lcdc(&ek_lcdc_data);
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index f258caf..6159bfc 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -174,22 +174,6 @@ static int at91sam9m10g45ek_mem_init(void)
 mem_initcall(at91sam9m10g45ek_mem_init);
 
 #if defined(CONFIG_DRIVER_VIDEO_ATMEL)
-static int ek_gpio_request_output(int gpio, const char *name)
-{
-	int ret;
-
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("%s: can not request gpio %d (%d)\n", name, gpio, ret);
-		return ret;
-	}
-
-	ret = gpio_direction_output(gpio, 1);
-	if (ret)
-		pr_err("%s: can not configure gpio %d as output (%d)\n", name, gpio, ret);
-	return ret;
-}
-
 static struct fb_videomode at91fb_default_monspecs[] = {
 	{
 		.name		= "MULTEK",
@@ -230,7 +214,7 @@ static struct atmel_lcdfb_platform_data ek_lcdc_data = {
 
 static void ek_add_device_lcd(void)
 {
-	if (ek_gpio_request_output(AT91_PIN_PE6, "lcdc_power"))
+	if (gpio_request_output(AT91_PIN_PE6, "lcdc_power", 1))
 		return;
 
 	at91_add_device_lcdc(&ek_lcdc_data);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
