Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1VgU-0000vk-Os
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 02:49:19 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  1 Oct 2010 04:47:33 +0200
Message-Id: <1285901253-2697-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] at91sam9260/at91sam9263: use the same id as in the kernel for
	the uart devices
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9263_devices.c |    8 ++++----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 548bff6..324df86 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -122,7 +122,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
-	.id	  = -1,
+	.id	  = 0,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91_BASE_SYS + AT91_DBGU,
@@ -137,7 +137,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
-	.id	  = -1,
+	.id	  = 1,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US0,
@@ -165,7 +165,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
-	.id	  = -1,
+	.id	  = 2,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US1,
@@ -185,7 +185,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
-	.id	  = -1,
+	.id	  = 3,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US2,
@@ -205,7 +205,7 @@ static inline void configure_usart2_pins(unsigned pins)
 }
 
 static struct device_d uart3_serial_device = {
-	.id	  = -1,
+	.id	  = 4,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US3,
@@ -225,7 +225,7 @@ static inline void configure_usart3_pins(unsigned pins)
 }
 
 static struct device_d uart4_serial_device = {
-	.id	  = -1,
+	.id	  = 5,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US4,
@@ -240,7 +240,7 @@ static inline void configure_usart4_pins(void)
 }
 
 static struct device_d uart5_serial_device = {
-	.id	  = -1,
+	.id	  = 6,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9260_BASE_US5,
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index dca6ac4..89f68e2 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -121,7 +121,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
-	.id	  = -1,
+	.id	  = 0,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= (AT91_BASE_SYS + AT91_DBGU),
@@ -136,7 +136,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
-	.id	  = -1,
+	.id	  = 1,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9263_BASE_US0,
@@ -156,7 +156,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
-	.id	  = -1,
+	.id	  = 2,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9263_BASE_US1,
@@ -176,7 +176,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
-	.id	  = -1,
+	.id	  = 3,
 	.name     = "atmel_serial",
 	.resource_base = {
 		.start	= AT91SAM9263_BASE_US2,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
