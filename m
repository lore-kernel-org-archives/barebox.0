Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJhA7-0000PJ-9x
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:52 +0100
Message-Id: <20181105155113.3434-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/22] ARM: at91: remove unused AT_DMA_ID_ defines
To: Barebox List <barebox@lists.infradead.org>

The defines are unused and not properly namespaced, so remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91sam9g45.h | 17 --------
 arch/arm/mach-at91/include/mach/at91sam9n12.h | 34 ---------------
 arch/arm/mach-at91/include/mach/at91sam9x5.h  | 41 -------------------
 arch/arm/mach-at91/include/mach/sama5d3.h     | 28 -------------
 4 files changed, 120 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index ff12ce458a..591ea9fedd 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -155,23 +155,6 @@
 
 #define CONSISTENT_DMA_SIZE	SZ_4M
 
-/*
- * DMA peripheral identifiers
- * for hardware handshaking interface
- */
-#define AT_DMA_ID_MCI0		 0
-#define AT_DMA_ID_SPI0_TX	 1
-#define AT_DMA_ID_SPI0_RX	 2
-#define AT_DMA_ID_SPI1_TX	 3
-#define AT_DMA_ID_SPI1_RX	 4
-#define AT_DMA_ID_SSC0_TX	 5
-#define AT_DMA_ID_SSC0_RX	 6
-#define AT_DMA_ID_SSC1_TX	 7
-#define AT_DMA_ID_SSC1_RX	 8
-#define AT_DMA_ID_AC97_TX	 9
-#define AT_DMA_ID_AC97_RX	10
-#define AT_DMA_ID_MCI1		13
-
 /*
  * Cpu Name
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index 249bde466b..5693402935 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -147,38 +147,4 @@
 
 #define CONSISTENT_DMA_SIZE	(14 * SZ_1M)
 
-/*
- * DMA0 peripheral identifiers
- * for hardware handshaking interface
- */
-#define AT_DMA_ID_MCI		0
-#define AT_DMA_ID_SPI0_TX	1
-#define AT_DMA_ID_SPI0_RX	2
-#define AT_DMA_ID_SPI1_TX	3
-#define AT_DMA_ID_SPI1_RX	4
-#define AT_DMA_ID_USART0_TX	5
-#define AT_DMA_ID_USART0_RX	6
-#define AT_DMA_ID_USART1_TX	7
-#define AT_DMA_ID_USART1_RX	8
-#define AT_DMA_ID_USART2_TX	9
-#define AT_DMA_ID_USART2_RX	10
-#define AT_DMA_ID_USART3_TX	11
-#define AT_DMA_ID_USART3_RX	12
-#define AT_DMA_ID_TWI0_TX	13
-#define AT_DMA_ID_TWI0_RX	14
-#define AT_DMA_ID_TWI1_TX	15
-#define AT_DMA_ID_TWI1_RX	16
-#define AT_DMA_ID_UART0_TX	17
-#define AT_DMA_ID_UART0_RX	18
-#define AT_DMA_ID_UART1_TX	19
-#define AT_DMA_ID_UART1_RX	20
-#define AT_DMA_ID_SSC_TX	21
-#define AT_DMA_ID_SSC_RX	22
-#define AT_DMA_ID_ADC_RX	23
-#define AT_DMA_ID_DBGU_TX	24
-#define AT_DMA_ID_DBGU_RX	25
-#define AT_DMA_ID_AES_TX	26
-#define AT_DMA_ID_AES_RX	27
-#define AT_DMA_ID_SHA_RX	28
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index e23057736e..47f88fb15c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -154,45 +154,4 @@
 
 #define CONSISTENT_DMA_SIZE	SZ_4M
 
-/*
- * DMA0 peripheral identifiers
- * for hardware handshaking interface
- */
-#define AT_DMA_ID_MCI0		 0
-#define AT_DMA_ID_SPI0_TX	 1
-#define AT_DMA_ID_SPI0_RX	 2
-#define AT_DMA_ID_USART0_TX	 3
-#define AT_DMA_ID_USART0_RX	 4
-#define AT_DMA_ID_USART1_TX	 5
-#define AT_DMA_ID_USART1_RX	 6
-#define AT_DMA_ID_TWI0_TX	 7
-#define AT_DMA_ID_TWI0_RX	 8
-#define AT_DMA_ID_TWI2_TX	 9
-#define AT_DMA_ID_TWI2_RX	10
-#define AT_DMA_ID_UART0_TX	11
-#define AT_DMA_ID_UART0_RX	12
-#define AT_DMA_ID_SSC_TX	13
-#define AT_DMA_ID_SSC_RX	14
-
-/*
- * DMA1 peripheral identifiers
- * for hardware handshaking interface
- */
-#define AT_DMA_ID_MCI1		 0
-#define AT_DMA_ID_SPI1_TX	 1
-#define AT_DMA_ID_SPI1_RX	 2
-#define AT_DMA_ID_SMD_TX	 3
-#define AT_DMA_ID_SMD_RX	 4
-#define AT_DMA_ID_TWI1_TX	 5
-#define AT_DMA_ID_TWI1_RX	 6
-#define AT_DMA_ID_ADC_RX	 7
-#define AT_DMA_ID_DBGU_TX	 8
-#define AT_DMA_ID_DBGU_RX	 9
-#define AT_DMA_ID_UART1_TX	10
-#define AT_DMA_ID_UART1_RX	11
-#define AT_DMA_ID_USART2_TX	12
-#define AT_DMA_ID_USART2_RX	13
-#define AT_DMA_ID_USART3_TX	14
-#define AT_DMA_ID_USART3_RX	15
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index e98b101ee0..d53bcaee1a 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -123,32 +123,4 @@
 #define SAMA5D3_OHCI_BASE	0x00600000	/* USB Host controller (OHCI) */
 #define SAMA5D3_EHCI_BASE	0x00700000	/* USB Host controller (EHCI) */
 
-/*
- * DMA0 peripheral identifiers
- * for hardware handshaking interface
- */
-#define SAMA5_DMA_ID_MCI0	 0
-#define SAMA5_DMA_ID_SPI0_TX	 1
-#define SAMA5_DMA_ID_SPI0_RX	 2
-#define SAMA5_DMA_ID_USART0_TX	 3
-#define SAMA5_DMA_ID_USART0_RX	 4
-#define SAMA5_DMA_ID_USART1_TX	 5
-#define SAMA5_DMA_ID_USART1_RX	 6
-#define SAMA5_DMA_ID_TWI0_TX	 7
-#define SAMA5_DMA_ID_TWI0_RX	 8
-#define SAMA5_DMA_ID_TWI1_TX	 9
-#define SAMA5_DMA_ID_TWI1_RX	10
-#define SAMA5_DMA_ID_UART0_TX	11
-#define SAMA5_DMA_ID_UART0_RX	12
-#define SAMA5_DMA_ID_SSC0_TX	13
-#define SAMA5_DMA_ID_SSC0_RX	14
-#define SAMA5_DMA_ID_SMD_TX	15
-#define SAMA5_DMA_ID_SMD_RX	16
-
-/*
- * DMA1 peripheral identifiers
- * for hardware handshaking interface
- */
-#define SAMA5_DMA_ID_MCI1	0
-
 #endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
