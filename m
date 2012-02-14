Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxJVu-0007ow-Sy
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 14:37:58 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5CFDAFF9E9B
 for <barebox@lists.infradead.org>; Tue, 14 Feb 2012 15:40:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Feb 2012 15:31:20 +0100
Message-Id: <1329229881-26751-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
References: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] at91: at91_register_uart return device
To: barebox@lists.infradead.org

this will allow to set the active parameter from C

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91rm9200_devices.c  |    6 +++---
 arch/arm/mach-at91/at91sam9260_devices.c |    6 +++---
 arch/arm/mach-at91/at91sam9261_devices.c |    6 +++---
 arch/arm/mach-at91/at91sam9263_devices.c |    6 +++---
 arch/arm/mach-at91/at91sam9g45_devices.c |    6 +++---
 arch/arm/mach-at91/include/mach/board.h  |    2 +-
 6 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 599eb79..bda73e6 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -265,7 +265,7 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PB0, 0);	/* RTS3 */
 }
 
-void __init at91_register_uart(unsigned id, unsigned pins)
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 
@@ -296,9 +296,9 @@ void __init at91_register_uart(unsigned id, unsigned pins)
 			id = 4;
 			break;
 		default:
-			return;
+			return NULL;
 	}
 
-	add_generic_device("atmel_usart", id, NULL, start, 4096,
+	return add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
 }
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 3ddd0cf..3bdcd4f 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -282,7 +282,7 @@ static inline void configure_usart5_pins(void)
 	at91_set_A_periph(AT91_PIN_PB13, 0);		/* RXD5 */
 }
 
-void at91_register_uart(unsigned id, unsigned pins)
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 
@@ -323,10 +323,10 @@ void at91_register_uart(unsigned id, unsigned pins)
 			id = 6;
 			break;
 		default:
-			return;
+			return NULL;
 	}
 
-	add_generic_device("atmel_usart", id, NULL, start, 4096,
+	return add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
 }
 
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 7805c27..d4f7b5e 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -203,7 +203,7 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA16, 0);	/* CTS2 */
 }
 
-void at91_register_uart(unsigned id, unsigned pins)
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 
@@ -229,10 +229,10 @@ void at91_register_uart(unsigned id, unsigned pins)
 			id = 3;
 			break;
 		default:
-			return;
+			return NULL;
 	}
 
-	add_generic_device("atmel_usart", id, NULL, start, 4096,
+	return add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
 }
 
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index fc7dc14..87a1726 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -253,7 +253,7 @@ static inline void configure_usart2_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PD6, 0);	/* CTS2 */
 }
 
-void at91_register_uart(unsigned id, unsigned pins)
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 
@@ -279,10 +279,10 @@ void at91_register_uart(unsigned id, unsigned pins)
 			id = 3;
 			break;
 		default:
-			return;
+			return NULL;
 	}
 
-	add_generic_device("atmel_usart", id, NULL, start, 4096,
+	return add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
 }
 
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index bb252bd..6931a3f 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -182,7 +182,7 @@ static inline void configure_usart3_pins(unsigned pins)
 		at91_set_B_periph(AT91_PIN_PA24, 0);	/* CTS3 */
 }
 
-void at91_register_uart(unsigned id, unsigned pins)
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins)
 {
 	resource_size_t start;
 
@@ -213,10 +213,10 @@ void at91_register_uart(unsigned id, unsigned pins)
 			id = 4;
 			break;
 		default:
-			return;
+			return NULL;
 	}
 
-	add_generic_device("atmel_usart", id, NULL, start, 4096,
+	return add_generic_device("atmel_usart", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
 }
 
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index 755ddc8..9f1abc1 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -83,7 +83,7 @@ void at91_add_device_sdram(u32 size);
 #define ATMEL_UART_DCD	0x10
 #define ATMEL_UART_RI	0x20
 
-void at91_register_uart(unsigned id, unsigned pins);
+struct device_d * __init at91_register_uart(unsigned id, unsigned pins);
 
 /* Multimedia Card Interface */
 struct atmel_mci_platform_data {
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
