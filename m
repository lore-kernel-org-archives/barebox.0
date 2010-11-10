Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PG9A6-0008Nk-Nb
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 11:48:26 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Nov 2010 12:44:58 +0100
Message-Id: <1289389500-7690-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
References: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] at91sam9260/at91sam9263: use the same id as in the kernel
	for the uart devices
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c |   14 +++++++-------
 arch/arm/mach-at91/at91sam9263_devices.c |    8 ++++----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index c6ddb13..fc8f828 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -120,7 +120,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
-	.id	  = -1,
+	.id	  = 0,
 	.name     = "atmel_serial",
 	.map_base = AT91_BASE_SYS + AT91_DBGU,
 	.size     = 4096,
@@ -133,7 +133,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
-	.id	  = -1,
+	.id	  = 1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US0,
 	.size     = 4096,
@@ -159,7 +159,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
-	.id	  = -1,
+	.id	  = 2,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US1,
 	.size     = 4096,
@@ -177,7 +177,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
-	.id	  = -1,
+	.id	  = 3,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US2,
 	.size     = 4096,
@@ -195,7 +195,7 @@ static inline void configure_usart2_pins(unsigned pins)
 }
 
 static struct device_d uart3_serial_device = {
-	.id	  = -1,
+	.id	  = 4,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US3,
 	.size     = 4096,
@@ -213,7 +213,7 @@ static inline void configure_usart3_pins(unsigned pins)
 }
 
 static struct device_d uart4_serial_device = {
-	.id	  = -1,
+	.id	  = 5,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US4,
 	.size     = 4096,
@@ -226,7 +226,7 @@ static inline void configure_usart4_pins(void)
 }
 
 static struct device_d uart5_serial_device = {
-	.id	  = -1,
+	.id	  = 6,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9260_BASE_US5,
 	.size     = 4096,
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 807a6a7..346426c 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -119,7 +119,7 @@ void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
 static struct device_d dbgu_serial_device = {
-	.id	  = -1,
+	.id	  = 0,
 	.name     = "atmel_serial",
 	.map_base = (AT91_BASE_SYS + AT91_DBGU),
 	.size     = 4096,
@@ -132,7 +132,7 @@ static inline void configure_dbgu_pins(void)
 }
 
 static struct device_d uart0_serial_device = {
-	.id	  = -1,
+	.id	  = 1,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US0,
 	.size     = 4096,
@@ -150,7 +150,7 @@ static inline void configure_usart0_pins(unsigned pins)
 }
 
 static struct device_d uart1_serial_device = {
-	.id	  = -1,
+	.id	  = 2,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US1,
 	.size     = 4096,
@@ -168,7 +168,7 @@ static inline void configure_usart1_pins(unsigned pins)
 }
 
 static struct device_d uart2_serial_device = {
-	.id	  = -1,
+	.id	  = 3,
 	.name     = "atmel_serial",
 	.map_base = AT91SAM9263_BASE_US2,
 	.size     = 4096,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
