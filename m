Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edzbh-0007QT-4p
 for barebox@lists.infradead.org; Tue, 23 Jan 2018 14:31:27 +0000
Received: by mail-pf0-x241.google.com with SMTP id e11so450401pff.6
 for <barebox@lists.infradead.org>; Tue, 23 Jan 2018 06:31:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 Jan 2018 06:30:53 -0800
Message-Id: <20180123143053.20623-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] at91sam9x5ek: Add appropriate compatibility guards to all
 initcalls
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add appropriate calls to of_machine_is_compatible() to all initcalls
to avoid having those executed for wrong boards in multi-board build.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |  3 +++
 arch/arm/boards/at91sam9x5ek/init.c       | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 10563cf98..f15cd3dc0 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -253,6 +253,9 @@ static int cm_cogent_fixup(struct device_node *root, void *unused)
 
 static int at91sam9x5ek_devices_detect_hw(void)
 {
+	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
+		return 0;
+
 	at91sam9x5ek_devices_detect_one("/dev/ds24310");
 	at91sam9x5ek_devices_detect_one("/dev/ds24311");
 	at91sam9x5ek_devices_detect_one("/dev/ds24330");
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 646cff5d6..649545e8a 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -66,6 +66,10 @@ static struct sam9_smc_config cm_nand_smc_config = {
 static int ek_add_device_smc(void)
 {
 	unsigned long csa;
+
+	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
+		return 0;
+
 	csa = at91_sys_read(AT91_MATRIX_EBICSA);
 
 	/* Enable CS3 */
@@ -105,6 +109,9 @@ static int ek_register_mac_address(void)
 {
 	int ret;
 
+	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
+		return 0;
+
 	ret = w1_local_mac_address_register(0, "tml", "w1-2d-0");
 	if (!ret)
 		return ret;
@@ -158,6 +165,9 @@ static void ek_add_device_lcdc(void) {}
 
 static int at91sam9x5ek_devices_init(void)
 {
+	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
+		return 0;
+
 	ek_add_device_lcdc();
 
 	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
@@ -171,6 +181,9 @@ device_initcall(at91sam9x5ek_devices_init);
 
 static int at91sam9x5ek_console_init(void)
 {
+	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
+		return 0;
+
 	barebox_set_model("Atmel at91sam9x5-ek");
 	barebox_set_hostname("at91sam9x5-ek");
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
