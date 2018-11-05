Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Ov-21
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:51:02 +0100
Message-Id: <20181105155113.3434-12-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/22] ARM: at91: Use SoC specific base addresses where
 appropriate
To: Barebox List <barebox@lists.infradead.org>

Replace AT91_ base addresses with their SoC specific variants where
possible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c         |  2 +-
 arch/arm/mach-at91/at91rm9200_devices.c  |  2 +-
 arch/arm/mach-at91/at91sam9260_devices.c |  6 +++---
 arch/arm/mach-at91/at91sam9261_devices.c |  2 +-
 arch/arm/mach-at91/at91sam9263_devices.c |  6 +++---
 arch/arm/mach-at91/at91sam9g45_devices.c |  6 +++---
 arch/arm/mach-at91/at91sam9n12_devices.c | 10 +++++-----
 arch/arm/mach-at91/at91sam9x5_devices.c  | 10 +++++-----
 8 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 775c818df6..117d834624 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -327,7 +327,7 @@ static void animeo_ip_shutdown(void)
 	 * so linux can detect that we only enable the uart2
 	 * and use it for decompress
 	 */
-	animeo_ip_shutdown_uart(IOMEM(AT91_DBGU + AT91_BASE_SYS));
+	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_DBGU));
 	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US0));
 	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US1));
 }
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index a110ee3e3c..b4d7cb1e24 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -253,7 +253,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PA30, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA31, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91RM9200_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index c5323e2cb2..9b8654f400 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -132,8 +132,8 @@ static struct resource nand_resources[] = {
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
-		.start	= AT91_BASE_SYS + AT91_ECC,
-		.end	= AT91_BASE_SYS + AT91_ECC + 512 - 1,
+		.start	= AT91SAM9260_BASE_ECC,
+		.end	= AT91SAM9260_BASE_ECC + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
@@ -266,7 +266,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PB14, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB15, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9260_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 9b7703ee97..3b869f923c 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -270,7 +270,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9261_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index ab3968eae2..877acc0df7 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -126,8 +126,8 @@ static struct resource nand_resources[] = {
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
-		.start	= AT91_BASE_SYS + AT91_ECC0,
-		.end	= AT91_BASE_SYS + AT91_ECC0 + 512 - 1,
+		.start	= AT91SAM9263_BASE_ECC0,
+		.end	= AT91SAM9263_BASE_ECC0 + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
@@ -301,7 +301,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PC30, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PC31, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9263_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index b44273a0de..ae4bd50c4b 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -128,8 +128,8 @@ static struct resource nand_resources[] = {
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
-		.start	= AT91_BASE_SYS + AT91_ECC,
-		.end	= AT91_BASE_SYS + AT91_ECC + 512 - 1,
+		.start	= AT91SAM9G45_BASE_ECC,
+		.end	= AT91SAM9G45_BASE_ECC + 512 - 1,
 		.flags	= IORESOURCE_MEM,
 	}
 };
@@ -218,7 +218,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PB12, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB13, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9G45_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index e38fc77363..3c606d5a4d 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -133,13 +133,13 @@ static struct resource nand_resources[] = {
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
-		.start	= AT91_BASE_SYS + AT91_PMECC,
-		.end	= AT91_BASE_SYS + AT91_PMECC + 0x600 - 1,
+		.start	= AT91SAM9N12_BASE_PMECC,
+		.end	= AT91SAM9N12_BASE_PMECC + 0x600 - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[2] = {
-		.start	= AT91_BASE_SYS + AT91_PMERRLOC,
-		.end	= AT91_BASE_SYS + AT91_PMERRLOC + 0x200 - 1,
+		.start	= AT91SAM9N12_BASE_PMERRLOC,
+		.end	= AT91SAM9N12_BASE_PMERRLOC + 0x200 - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[3] = {
@@ -373,7 +373,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9N12_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index e21bd598c9..b8035c1acf 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -225,13 +225,13 @@ static struct resource nand_resources[] = {
 		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
-		.start	= AT91_BASE_SYS + AT91_PMECC,
-		.end	= AT91_BASE_SYS + AT91_PMECC + 0x600 - 1,
+		.start	= AT91SAM9X5_BASE_PMECC,
+		.end	= AT91SAM9X5_BASE_PMECC + 0x600 - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[2] = {
-		.start	= AT91_BASE_SYS + AT91_PMERRLOC,
-		.end	= AT91_BASE_SYS + AT91_PMERRLOC + 0x200 - 1,
+		.start	= AT91SAM9X5_BASE_PMERRLOC,
+		.end	= AT91SAM9X5_BASE_PMERRLOC + 0x200 - 1,
 		.flags	= IORESOURCE_MEM,
 	},
 	[3] = {
@@ -457,7 +457,7 @@ resource_size_t __init at91_configure_dbgu(void)
 	at91_set_A_periph(AT91_PIN_PA9, 1);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 0);		/* DTXD */
 
-	return AT91_BASE_SYS + AT91_DBGU;
+	return AT91SAM9X5_BASE_DBGU;
 }
 
 resource_size_t __init at91_configure_usart0(unsigned pins)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
