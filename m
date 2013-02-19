Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f170.google.com ([209.85.215.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7kTv-000604-VV
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 10:31:29 +0000
Received: by mail-ea0-f170.google.com with SMTP id a11so2804052eaa.29
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 02:31:25 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Tue, 19 Feb 2013 11:31:21 +0100
Message-Id: <1361269881-23479-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [For master PATCH v2] ARM: at91: use -EINVAL for invalid gpio on
 atmel_mci
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:
 - fix all the other boards using atmel_mci

 arch/arm/boards/at91sam9260ek/init.c    | 2 ++
 arch/arm/boards/at91sam9m10g45ek/init.c | 1 +
 arch/arm/boards/at91sam9m10ihd/init.c   | 1 +
 arch/arm/boards/dss11/init.c            | 2 ++
 arch/arm/boards/pm9g45/init.c           | 2 +-
 arch/arm/boards/qil-a9260/init.c        | 2 ++
 arch/arm/boards/usb-a926x/init.c        | 2 ++
 7 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 2d52f5a..144f979 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -168,6 +168,8 @@ static void at91sam9260ek_phy_reset(void)
 static struct atmel_mci_platform_data __initdata ek_mci_data = {
 	.bus_width	= 4,
 	.slot_b		= 1,
+	.detect_pin	= -EINVAL,
+	.wp_pin		= -EINVAL,
 };
 
 static void ek_usb_add_device_mci(void)
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 5b5e31b..0ae7171 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -114,6 +114,7 @@ static struct at91_ether_platform_data macb_pdata = {
 static struct atmel_mci_platform_data ek_mci_data = {
 	.bus_width	= 4,
 	.detect_pin	= AT91_PIN_PD10,
+	.wp_pin		= -EINVAL,
 };
 
 static void ek_add_device_mci(void)
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index f258caf..df63a91 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -96,6 +96,7 @@ static void ek_add_device_eth(void)
 static struct atmel_mci_platform_data ek_mci0_data = {
 	.bus_width	= 4,
 	.detect_pin	= AT91_PIN_PC25,
+	.wp_pin         = -EINVAL,
 };
 
 static void ek_add_device_mci(void)
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 2920d5e..77ae46f 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -113,6 +113,8 @@ static void dss11_phy_reset(void)
 static struct atmel_mci_platform_data dss11_mci_data = {
 	.slot_b		= 1,
 	.bus_width	= 4,
+	.detect_pin     = -EINVAL,
+	.wp_pin		= -EINVAL,
 };
 
 static struct at91_usbh_data dss11_usbh_data = {
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 720099b..69c66d5 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -83,8 +83,8 @@ static void pm_add_device_nand(void)
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata mci_data = {
 	.bus_width	= 4,
-	.wp_pin		= 0,
 	.detect_pin	= AT91_PIN_PD6,
+	.wp_pin		= -EINVAL,
 };
 
 static void pm9g45_add_device_mci(void)
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 2e131fe..e96204a 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -66,6 +66,8 @@ static void qil_a9260_add_device_nand(void)
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata qil_a9260_mci_data = {
 	.bus_width	= 4,
+	.detect_pin     = -EINVAL,
+	.wp_pin         = -EINVAL,
 };
 
 static void qil_a9260_add_device_mci(void)
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 2e3bbfa..7ae9020 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -213,6 +213,8 @@ static void usb_a9260_add_spi(void) {}
 #if defined(CONFIG_MCI_ATMEL)
 static struct atmel_mci_platform_data __initdata usb_a9260_mci_data = {
 	.bus_width	= 4,
+	.detect_pin     = -EINVAL,
+	.wp_pin		= -EINVAL,
 };
 
 static void usb_a9260_add_device_mci(void)
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
