Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTcxf-0008GX-Ln
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 18:24:21 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 15E5BFF9869
 for <barebox@lists.infradead.org>; Wed, 31 Oct 2012 19:34:22 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 31 Oct 2012 19:22:01 +0100
Message-Id: <1351707724-28704-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121031165240.GG29599@game.jcrosoft.org>
References: <20121031165240.GG29599@game.jcrosoft.org>
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
Subject: [PATCH 1/4] at91sam9x5ek: add 1-wire support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c     |   14 ++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |    4 ++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 58c945c..471169e 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -38,6 +38,12 @@
 #include <mach/at91_rstc.h>
 #include <gpio_keys.h>
 #include <readkey.h>
+#include <linux/w1-gpio.h>
+
+struct w1_gpio_platform_data w1_pdata = {
+	.pin = AT91_PIN_PB18,
+	.is_open_drain = 0,
+};
 
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
@@ -130,8 +136,16 @@ static int at91sam9x5ek_mem_init(void)
 }
 mem_initcall(at91sam9x5ek_mem_init);
 
+static void ek_add_device_w1(void)
+{
+	at91_set_gpio_input(w1_pdata.pin, 0);
+	at91_set_multi_drive(w1_pdata.pin, 1);
+	add_generic_device_res("w1-gpio", DEVICE_ID_SINGLE, NULL, 0, &w1_pdata);
+}
+
 static int at91sam9x5ek_devices_init(void)
 {
+	ek_add_device_w1();
 	ek_add_device_nand();
 	at91_add_device_eth(0, &macb_pdata);
 	at91_add_device_usbh_ohci(&ek_usbh_data);
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index cda360d..6315d9f 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -65,6 +65,10 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
 CONFIG_KEYBOARD_GPIO=y
+CONFIG_W1=y
+CONFIG_W1_MASTER_GPIO=y
+CONFIG_W1_SLAVE_DS2431=y
+CONFIG_W1_SLAVE_DS2433=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
