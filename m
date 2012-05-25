Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXodE-00011u-09
 for barebox@lists.infradead.org; Fri, 25 May 2012 07:08:21 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4B2EFFF8B9B
 for <barebox@lists.infradead.org>; Fri, 25 May 2012 09:11:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 May 2012 09:08:15 +0200
Message-Id: <1337929696-12950-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1337929696-12950-1-git-send-email-plagnioj@jcrosoft.com>
References: <1337929696-12950-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] at91: switch uart registration to inline
To: barebox@lists.infradead.org

this allow to save between 100 to 300 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c       |   51 +++++--------------
 arch/arm/mach-at91/at91sam9260_devices.c      |   67 +++++++-----------------
 arch/arm/mach-at91/at91sam9261_devices.c      |   43 ++++------------
 arch/arm/mach-at91/at91sam9263_devices.c      |   43 ++++------------
 arch/arm/mach-at91/at91sam9g45_devices.c      |   51 +++++--------------
 arch/arm/mach-at91/at91sam9x5_devices.c       |   62 +++++------------------
 arch/arm/mach-at91/include/mach/at91rm9200.h  |    2 +
 arch/arm/mach-at91/include/mach/at91sam9260.h |    1 +
 arch/arm/mach-at91/include/mach/at91sam9261.h |    1 +
 arch/arm/mach-at91/include/mach/at91sam9263.h |    1 +
 arch/arm/mach-at91/include/mach/at91sam9g45.h |    1 +
 arch/arm/mach-at91/include/mach/at91sam9x5.h  |    1 +
 arch/arm/mach-at91/include/mach/board.h       |   56 ++++++++++++++++++++-
 13 files changed, 146 insertions(+), 234 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index a165cc9..d5268dd 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -201,13 +201,15 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
  *  UART
  * -------------------------------------------------------------------- */
 
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PA30, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA31, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA17, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PA18, 0);		/* RXD0 */
@@ -222,9 +224,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		 */
 		at91_set_gpio_output(AT91_PIN_PA21, 1);
 	}
+
+	return AT91RM9200_BASE_US0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB20, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PB21, 0);		/* RXD1 */
@@ -241,9 +245,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB25, 0);	/* DSR1 */
 	if (pins & ATMEL_UART_RTS)
 		at91_set_A_periph(AT91_PIN_PB26, 0);	/* RTS1 */
+
+	return AT91RM9200_BASE_US1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA22, 0);		/* RXD2 */
 	at91_set_A_periph(AT91_PIN_PA23, 1);		/* TXD2 */
@@ -252,9 +258,11 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA30, 0);	/* CTS2 */
 	if (pins & ATMEL_UART_RTS)
 		at91_set_B_periph(AT91_PIN_PA31, 0);	/* RTS2 */
+
+	return AT91RM9200_BASE_US2;
 }
 
-static inline void configure_usart3_pins(unsigned pins)
+resource_size_t __init at91_configure_usart3(unsigned pins)
 {
 	at91_set_B_periph(AT91_PIN_PA5, 1);		/* TXD3 */
 	at91_set_B_periph(AT91_PIN_PA6, 0);		/* RXD3 */
@@ -263,37 +271,6 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS3 */
 	if (pins & ATMEL_UART_RTS)
 		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS3 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case 1:
-			configure_usart0_pins(pins);
-			start = AT91RM9200_BASE_US0;
-			break;
-		case 2:
-			configure_usart1_pins(pins);
-			start = AT91RM9200_BASE_US1;
-			break;
-		case 3:
-			configure_usart2_pins(pins);
-			start = AT91RM9200_BASE_US2;
-			break;
-		case 4:
-			configure_usart3_pins(pins);
-			start = AT91RM9200_BASE_US3;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	return AT91RM9200_BASE_US3;
 }
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 33f070a..3297a89 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -212,13 +212,15 @@ void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PB14, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB15, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PB5, 0);		/* RXD0 */
@@ -235,9 +237,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB23, 0);	/* DCD0 */
 	if (pins & ATMEL_UART_RI)
 		at91_set_A_periph(AT91_PIN_PB25, 0);	/* RI0 */
+
+	return AT91SAM9260_BASE_US0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PB7, 0);		/* RXD1 */
@@ -246,9 +250,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PB28, 0);	/* RTS1 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PB29, 0);	/* CTS1 */
+
+	return AT91SAM9260_BASE_US1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD2 */
 	at91_set_A_periph(AT91_PIN_PB9, 0);		/* RXD2 */
@@ -257,9 +263,11 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA4, 0);	/* RTS2 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PA5, 0);	/* CTS2 */
+
+	return AT91SAM9260_BASE_US2;
 }
 
-static inline void configure_usart3_pins(unsigned pins)
+resource_size_t __init at91_configure_usart3(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB10, 1);		/* TXD3 */
 	at91_set_A_periph(AT91_PIN_PB11, 0);		/* RXD3 */
@@ -268,59 +276,24 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC8, 0);	/* RTS3 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PC10, 0);	/* CTS3 */
+
+	return AT91SAM9260_BASE_US3;
 }
 
-static inline void configure_usart4_pins(void)
+resource_size_t __init at91_configure_usart4(unsigned pins)
 {
 	at91_set_B_periph(AT91_PIN_PA31, 1);		/* TXD4 */
 	at91_set_B_periph(AT91_PIN_PA30, 0);		/* RXD4 */
+
+	return AT91SAM9260_BASE_US4;
 }
 
-static inline void configure_usart5_pins(void)
+resource_size_t __init at91_configure_usart5(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB12, 1);		/* TXD5 */
 	at91_set_A_periph(AT91_PIN_PB13, 0);		/* RXD5 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case 1:
-			configure_usart0_pins(pins);
-			start = AT91SAM9260_BASE_US0;
-			break;
-		case 2:
-			configure_usart1_pins(pins);
-			start = AT91SAM9260_BASE_US1;
-			break;
-		case 3:
-			configure_usart2_pins(pins);
-			start = AT91SAM9260_BASE_US2;
-			break;
-		case 4:
-			configure_usart3_pins(pins);
-			start = AT91SAM9260_BASE_US3;
-			break;
-		case 5:
-			configure_usart4_pins();
-			start = AT91SAM9260_BASE_US4;
-			break;
-		case 6:
-			configure_usart5_pins();
-			start = AT91SAM9260_BASE_US5;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	return AT91SAM9260_BASE_US5;
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 82d17a2..41eeeae 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -164,13 +164,15 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC8, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PC9, 0);		/* RXD0 */
@@ -179,9 +181,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PC10, 0);	/* RTS0 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PC11, 0);	/* CTS0 */
+
+	return AT91SAM9261_BASE_US0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC12, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PC13, 0);		/* RXD1 */
@@ -190,9 +194,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA12, 0);	/* RTS1 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PA13, 0);	/* CTS1 */
+
+	return AT91SAM9261_BASE_US1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PC15, 0);		/* RXD2 */
 	at91_set_A_periph(AT91_PIN_PC14, 1);		/* TXD2 */
@@ -201,35 +207,8 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA15, 0);	/* RTS2*/
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PA16, 0);	/* CTS2 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case 1:
-			configure_usart0_pins(pins);
-			start = AT91SAM9261_BASE_US0;
-			break;
-		case 2:
-			configure_usart1_pins(pins);
-			start = AT91SAM9261_BASE_US1;
-			break;
-		case 3:
-			configure_usart2_pins(pins);
-			start = AT91SAM9261_BASE_US2;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	return AT91SAM9261_BASE_US2;
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 4500d81..2ebc4da 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -214,13 +214,15 @@ void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata)
 void __init at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata) {}
 #endif
 
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PC30, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PC31, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA26, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PA27, 0);		/* RXD0 */
@@ -229,9 +231,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA28, 0);	/* RTS0 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PA29, 0);	/* CTS0 */
+
+	return AT91SAM9263_BASE_US0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PD0, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PD1, 0);		/* RXD1 */
@@ -240,9 +244,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD7, 0);	/* RTS1 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PD8, 0);	/* CTS1 */
+
+	return AT91SAM9263_BASE_US1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PD2, 1);		/* TXD2 */
 	at91_set_A_periph(AT91_PIN_PD3, 0);		/* RXD2 */
@@ -251,35 +257,8 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD5, 0);	/* RTS2 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PD6, 0);	/* CTS2 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case 1:
-			configure_usart0_pins(pins);
-			start = AT91SAM9263_BASE_US0;
-			break;
-		case 2:
-			configure_usart1_pins(pins);
-			start = AT91SAM9263_BASE_US1;
-			break;
-		case 3:
-			configure_usart2_pins(pins);
-			start = AT91SAM9263_BASE_US2;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	return AT91SAM9263_BASE_US2;
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index 273cd0e..d406bcc 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -132,13 +132,15 @@ void at91_add_device_nand(struct atmel_nand_data *data)
 void at91_add_device_nand(struct atmel_nand_data *data) {}
 #endif
 
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PB12, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PB13, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB19, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PB18, 0);		/* RXD0 */
@@ -147,9 +149,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB17, 0);	/* RTS0 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PB15, 0);	/* CTS0 */
+
+	return AT91SAM9G45_BASE_US0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB4, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PB5, 0);		/* RXD1 */
@@ -158,9 +162,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PD16, 0);	/* RTS1 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PD17, 0);	/* CTS1 */
+
+	return AT91SAM9G45_BASE_US1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB6, 1);		/* TXD2 */
 	at91_set_A_periph(AT91_PIN_PB7, 0);		/* RXD2 */
@@ -169,9 +175,11 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC9, 0);	/* RTS2 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PC11, 0);	/* CTS2 */
+
+	return AT91SAM9G45_BASE_US2;
 }
 
-static inline void configure_usart3_pins(unsigned pins)
+resource_size_t __init at91_configure_usart3(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PB8, 1);		/* TXD3 */
 	at91_set_A_periph(AT91_PIN_PB9, 0);		/* RXD3 */
@@ -180,39 +188,8 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA23, 0);	/* RTS3 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PA24, 0);	/* CTS3 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case 1:
-			configure_usart0_pins(pins);
-			start = AT91SAM9G45_BASE_US0;
-			break;
-		case 2:
-			configure_usart1_pins(pins);
-			start = AT91SAM9G45_BASE_US1;
-			break;
-		case 3:
-			configure_usart2_pins(pins);
-			start = AT91SAM9G45_BASE_US2;
-			break;
-		case 4:
-			configure_usart3_pins(pins);
-			start = AT91SAM9G45_BASE_US3;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, 4096,
-			   IORESOURCE_MEM, NULL);
+	return AT91SAM9G45_BASE_US3;
 }
 
 #if defined(CONFIG_MCI_ATMEL)
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index 51a2024..50bad7f 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -174,13 +174,15 @@ void __init at91_add_device_nand(struct atmel_nand_data *data) {}
  * -------------------------------------------------------------------- */
 
 #if defined(CONFIG_DRIVER_SERIAL_ATMEL)
-static inline void configure_dbgu_pins(void)
+resource_size_t __init at91_configure_dbgu(void)
 {
 	at91_set_A_periph(AT91_PIN_PA9, 0);		/* DRXD */
 	at91_set_A_periph(AT91_PIN_PA10, 1);		/* DTXD */
+
+	return AT91_BASE_SYS + AT91_DBGU;
 }
 
-static inline void configure_usart0_pins(unsigned pins)
+resource_size_t __init at91_configure_usart0(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA0, 1);		/* TXD0 */
 	at91_set_A_periph(AT91_PIN_PA1, 0);		/* RXD0 */
@@ -189,9 +191,11 @@ static inline void configure_usart0_pins(unsigned pins)
 		at91_set_A_periph(AT91_PIN_PA2, 0);	/* RTS0 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_A_periph(AT91_PIN_PA3, 0);	/* CTS0 */
+
+	return AT91SAM9X5_BASE_USART0;
 }
 
-static inline void configure_usart1_pins(unsigned pins)
+resource_size_t __init at91_configure_usart1(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA5, 1);		/* TXD1 */
 	at91_set_A_periph(AT91_PIN_PA6, 0);		/* RXD1 */
@@ -200,9 +204,11 @@ static inline void configure_usart1_pins(unsigned pins)
 		at91_set_C_periph(AT91_PIN_PC27, 0);	/* RTS1 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_C_periph(AT91_PIN_PC28, 0);	/* CTS1 */
+
+	return AT91SAM9X5_BASE_USART1;
 }
 
-static inline void configure_usart2_pins(unsigned pins)
+resource_size_t __init at91_configure_usart2(unsigned pins)
 {
 	at91_set_A_periph(AT91_PIN_PA7, 1);		/* TXD2 */
 	at91_set_A_periph(AT91_PIN_PA8, 0);		/* RXD2 */
@@ -211,9 +217,11 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS2 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PB1, 0);	/* CTS2 */
+
+	return AT91SAM9X5_BASE_USART2;
 }
 
-static inline void configure_usart3_pins(unsigned pins)
+resource_size_t __init at91_configure_usart3(unsigned pins)
 {
 	at91_set_B_periph(AT91_PIN_PC22, 1);		/* TXD3 */
 	at91_set_B_periph(AT91_PIN_PC23, 0);		/* RXD3 */
@@ -222,49 +230,7 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PC24, 0);	/* RTS3 */
 	if (pins & ATMEL_UART_CTS)
 		at91_set_B_periph(AT91_PIN_PC25, 0);	/* CTS3 */
-}
-
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	resource_size_t start;
-	resource_size_t size = SZ_16K;
-
-	switch (id) {
-		case 0:		/* DBGU */
-			configure_dbgu_pins();
-			size = 512;
-			start = AT91_BASE_SYS + AT91_DBGU;
-			break;
-		case AT91SAM9X5_ID_USART0:
-			configure_usart0_pins(pins);
-			start = AT91SAM9X5_BASE_USART0;
-			id = 1;
-			break;
-		case AT91SAM9X5_ID_USART1:
-			configure_usart1_pins(pins);
-			start = AT91SAM9X5_BASE_USART1;
-			id = 2;
-			break;
-		case AT91SAM9X5_ID_USART2:
-			configure_usart2_pins(pins);
-			start = AT91SAM9X5_BASE_USART2;
-			id = 3;
-			break;
-		case AT91SAM9X5_ID_USART3:
-			configure_usart3_pins(pins);
-			start = AT91SAM9X5_BASE_USART3;
-			id = 4;
-			break;
-		default:
-			return NULL;
-	}
 
-	return add_generic_device("atmel_usart", id, NULL, start, size,
-			   IORESOURCE_MEM, NULL);
-}
-#else
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
-{
-	return NULL;
+	return AT91SAM9X5_BASE_USART3;
 }
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 39b1e15..2850f0d 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -98,6 +98,7 @@
 #define AT91_USART1	AT91RM9200_BASE_US1
 #define AT91_USART2	AT91RM9200_BASE_US2
 #define AT91_USART3	AT91RM9200_BASE_US3
+#define AT91_NB_USART	5
 
 #define AT91_BASE_SPI	AT91RM9200_BASE_SPI
 #define AT91_BASE_TWI	AT91RM9200_BASE_TWI
@@ -107,6 +108,7 @@
 
 #define AT91_MATRIX	0	/* not supported */
 
+
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index ca273cb..be07e57 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -105,6 +105,7 @@
 #define AT91_USART3	AT91SAM9260_BASE_US3
 #define AT91_USART4	AT91SAM9260_BASE_US4
 #define AT91_USART5	AT91SAM9260_BASE_US5
+#define AT91_NB_USART	7
 
 #define AT91_BASE_SPI	AT91SAM9260_BASE_SPI0
 #define AT91_BASE_TWI	AT91SAM9260_BASE_TWI
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index 3be8087..d51673e 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -88,6 +88,7 @@
 #define AT91_USART0	AT91SAM9261_BASE_US0
 #define AT91_USART1	AT91SAM9261_BASE_US1
 #define AT91_USART2	AT91SAM9261_BASE_US2
+#define AT91_NB_USART	4
 
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index 64f4fcc..c8374a7 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -105,6 +105,7 @@
 #define AT91_USART0	AT91SAM9263_BASE_US0
 #define AT91_USART1	AT91SAM9263_BASE_US1
 #define AT91_USART2	AT91SAM9263_BASE_US2
+#define AT91_NB_USART	4
 
 #define AT91_SMC	AT91_SMC0
 #define AT91_SDRAMC	AT91_SDRAMC0
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 18fa6c5..10f3170 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -116,6 +116,7 @@
 #define AT91_USART1	AT91SAM9G45_BASE_US1
 #define AT91_USART2	AT91SAM9G45_BASE_US2
 #define AT91_USART3	AT91SAM9G45_BASE_US3
+#define AT91_NB_USART	5
 
 /*
  * Internal Memory.
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 7d40f7c..2240710 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -117,6 +117,7 @@
 #define AT91_USART1	AT91SAM9X5_BASE_US1
 #define AT91_USART2	AT91SAM9X5_BASE_US2
 #define AT91_USART3	AT91SAM9X5_BASE_US3
+#define AT91_NB_USART	5
 
 
 /*
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index f45bad6..c142fee 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -21,6 +21,8 @@
 #ifndef __ASM_ARCH_BOARD_H
 #define __ASM_ARCH_BOARD_H
 
+#include <mach/hardware.h>
+#include <sizes.h>
 #include <net.h>
 #include <spi/spi.h>
 #include <linux/mtd/mtd.h>
@@ -83,7 +85,59 @@ void at91_add_device_sdram(u32 size);
 #define ATMEL_UART_DCD	0x10
 #define ATMEL_UART_RI	0x20
 
-struct device_d * __init at91_register_uart(unsigned id, unsigned pins);
+resource_size_t __init at91_configure_dbgu(void);
+resource_size_t __init at91_configure_usart0(unsigned pins);
+resource_size_t __init at91_configure_usart1(unsigned pins);
+resource_size_t __init at91_configure_usart2(unsigned pins);
+resource_size_t __init at91_configure_usart3(unsigned pins);
+resource_size_t __init at91_configure_usart4(unsigned pins);
+resource_size_t __init at91_configure_usart5(unsigned pins);
+
+#if defined(CONFIG_DRIVER_SERIAL_ATMEL)
+static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
+{
+	resource_size_t start;
+	resource_size_t size = SZ_16K;
+
+	if (id >= AT91_NB_USART)
+		return NULL;
+
+	switch (id) {
+		case 0:		/* DBGU */
+			start = at91_configure_dbgu();
+			size = 512;
+			break;
+		case 1:
+			start = at91_configure_usart0(pins);
+			break;
+		case 2:
+			start = at91_configure_usart1(pins);
+			break;
+		case 3:
+			start = at91_configure_usart2(pins);
+			break;
+		case 4:
+			start = at91_configure_usart3(pins);
+			break;
+		case 5:
+			start = at91_configure_usart4(pins);
+			break;
+		case 6:
+			start = at91_configure_usart5(pins);
+			break;
+		default:
+			return NULL;
+	}
+
+	return add_generic_device("atmel_usart", id, NULL, start, size,
+			   IORESOURCE_MEM, NULL);
+}
+#else
+static inline struct device_d * at91_register_uart(unsigned id, unsigned pins)
+{
+	return NULL;
+}
+#endif
 
 /* Multimedia Card Interface */
 struct atmel_mci_platform_data {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
