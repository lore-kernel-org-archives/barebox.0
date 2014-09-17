Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNL-0007yN-OR
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:16 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:27 +0800
Message-ID: <1410949295-30296-2-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 1/9] ARM: at91: move pmc base address into soc header
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

As the PMC base address may be different between each SoC,
so move them to SoC header.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/mach-at91/include/mach/at91rm9200.h  | 1 +
 arch/arm/mach-at91/include/mach/at91sam9260.h | 2 ++
 arch/arm/mach-at91/include/mach/at91sam9261.h | 1 +
 arch/arm/mach-at91/include/mach/at91sam9263.h | 2 ++
 arch/arm/mach-at91/include/mach/at91sam9g45.h | 2 ++
 arch/arm/mach-at91/include/mach/at91sam9n12.h | 1 +
 arch/arm/mach-at91/include/mach/at91sam9x5.h  | 1 +
 arch/arm/mach-at91/include/mach/hardware.h    | 2 --
 arch/arm/mach-at91/include/mach/sama5d3.h     | 2 ++
 9 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 36e940d..4fe8fd8 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -118,6 +118,7 @@
 
 #define AT91_MATRIX	0	/* not supported */
 
+#define AT91_PMC	0xfffffc00
 
 /*
  * Internal Memory.
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 3f3a0e1..919901d 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -125,6 +125,8 @@
 #define AT91_ID_UHP	AT91SAM9260_ID_UHP
 #define AT91_PMC_UHP	AT91SAM926x_PMC_UHP
 
+#define AT91_PMC	0xfffffc00
+
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index 1b48e23..9124df5 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -102,6 +102,7 @@
 #define AT91_USART2	AT91SAM9261_BASE_US2
 #define AT91_NB_USART	4
 
+#define AT91_PMC	0xfffffc00
 
 /*
  * Internal Memory.
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index b42d191..e7ca8b6 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -129,6 +129,8 @@
 #define AT91_ID_UHP	AT91SAM9263_ID_UHP
 #define AT91_PMC_UHP	AT91SAM926x_PMC_UHP
 
+#define AT91_PMC	0xfffffc00
+
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index c81bb80..ff12ce4 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -134,6 +134,8 @@
 #define AT91_USART3	AT91SAM9G45_BASE_US3
 #define AT91_NB_USART	5
 
+#define AT91_PMC	0xfffffc00
+
 /*
  * Internal Memory.
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index 26bdd13..249bde4 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -129,6 +129,7 @@
 #define AT91_USART3	AT91SAM9X5_BASE_US3
 #define AT91_NB_USART	5
 
+#define AT91_PMC	0xfffffc00
 
 /*
  * Internal Memory.
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 13b4f44..7ba2e3b 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -136,6 +136,7 @@
 #define AT91_USART3	AT91SAM9X5_BASE_US3
 #define AT91_NB_USART	5
 
+#define AT91_PMC	0xfffffc00
 
 /*
  * Internal Memory.
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 8f004de..2ef1780 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -20,8 +20,6 @@
 /* 9263, 9g45 */
 #define AT91_BASE_DBGU1	0xffffee00
 
-#define AT91_PMC	0xfffffc00
-
 #if defined(CONFIG_ARCH_AT91RM9200)
 #include <mach/at91rm9200.h>
 #elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 6884ff6..e98b101 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -108,6 +108,8 @@
 
 #define AT91_NB_USART	3
 
+#define AT91_PMC	0xfffffc00
+
 /*
  * Internal Memory.
  */
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
