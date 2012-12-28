Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRI-0004H0-En
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:04 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8D400FF972F
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:07 +0100
Message-Id: <1356722174-22598-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/13] at91: sync with the kernel address base
To: barebox@lists.infradead.org

add non AT91_SYS_BASE offset base address define

This will prepare for multi arch support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/at91rm9200.h  |   21 +++++++++---
 arch/arm/mach-at91/include/mach/at91sam9260.h |   28 +++++++++++----
 arch/arm/mach-at91/include/mach/at91sam9261.h |   26 ++++++++++----
 arch/arm/mach-at91/include/mach/at91sam9263.h |   45 +++++++++++++++++--------
 arch/arm/mach-at91/include/mach/at91sam9g45.h |   38 +++++++++++++++------
 arch/arm/mach-at91/include/mach/at91sam9n12.h |   37 +++++++++++++++-----
 arch/arm/mach-at91/include/mach/at91sam9x5.h  |   37 +++++++++++++++-----
 7 files changed, 172 insertions(+), 60 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91rm9200.h b/arch/arm/mach-at91/include/mach/at91rm9200.h
index 69ebaab..36e940d 100644
--- a/arch/arm/mach-at91/include/mach/at91rm9200.h
+++ b/arch/arm/mach-at91/include/mach/at91rm9200.h
@@ -78,20 +78,31 @@
 #define AT91RM9200_BASE_SPI	0xfffe0000
 #define AT91_BASE_SYS		0xfffff000
 
+/*
+ * System Peripherals
+ */
+#define AT91RM9200_BASE_DBGU	AT91_BASE_DBGU0	/* Debug Unit */
+#define AT91RM9200_BASE_PIOA	0xfffff400	/* PIO Controller A */
+#define AT91RM9200_BASE_PIOB	0xfffff600	/* PIO Controller B */
+#define AT91RM9200_BASE_PIOC	0xfffff800	/* PIO Controller C */
+#define AT91RM9200_BASE_PIOD	0xfffffa00	/* PIO Controller D */
+#define AT91RM9200_BASE_ST	0xfffffd00	/* System Timer */
+#define AT91RM9200_BASE_RTC	0xfffffe00	/* Real-Time Clock */
+#define AT91RM9200_BASE_MC	0xffffff00	/* Memory Controllers */
+
 
 /*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)	/* Advanced Interrupt Controller */
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)	/* Debug Unit */
 #define AT91_ST		(0xfffffd00 - AT91_BASE_SYS)	/* System Timer */
 #define AT91_RTC	(0xfffffe00 - AT91_BASE_SYS)	/* Real-Time Clock */
 #define AT91_MC		(0xffffff00 - AT91_BASE_SYS)	/* Memory Controllers */
 
-#define AT91_BASE_PIOA	0xfffff400	/* PIO Controller A */
-#define AT91_BASE_PIOB	0xfffff600	/* PIO Controller B */
-#define AT91_BASE_PIOC	0xfffff800	/* PIO Controller C */
-#define AT91_BASE_PIOD	0xfffffa00	/* PIO Controller D */
+#define AT91_BASE_PIOA	AT91RM9200_BASE_PIOA	/* PIO Controller A */
+#define AT91_BASE_PIOB	AT91RM9200_BASE_PIOB	/* PIO Controller B */
+#define AT91_BASE_PIOC	AT91RM9200_BASE_PIOC	/* PIO Controller C */
+#define AT91_BASE_PIOD	AT91RM9200_BASE_PIOD	/* PIO Controller D */
 
 #define AT91_USART0	AT91RM9200_BASE_US0
 #define AT91_USART1	AT91RM9200_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index e1ec7e5..3dad806 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -78,25 +78,39 @@
 #define AT91_BASE_SYS			0xffffe800
 
 /*
+ * System Peripherals
+ */
+#define AT91SAM9260_BASE_ECC	0xffffe800
+#define AT91SAM9260_BASE_SDRAMC	0xffffea00
+#define AT91SAM9260_BASE_SMC	0xffffec00
+#define AT91SAM9260_BASE_MATRIX	0xffffee00
+#define AT91SAM9260_BASE_DBGU	AT91_BASE_DBGU0
+#define AT91SAM9260_BASE_PIOA	0xfffff400
+#define AT91SAM9260_BASE_PIOB	0xfffff600
+#define AT91SAM9260_BASE_PIOC	0xfffff800
+#define AT91SAM9260_BASE_RSTC	0xfffffd00
+#define AT91SAM9260_BASE_SHDWC	0xfffffd10
+#define AT91SAM9260_BASE_RTT	0xfffffd20
+#define AT91SAM9260_BASE_PIT	0xfffffd30
+#define AT91SAM9260_BASE_WDT	0xfffffd40
+#define AT91SAM9260_BASE_GPBR	0xfffffd50
+
+/*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
 #define AT91_ECC	(0xffffe800 - AT91_BASE_SYS)
 #define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
 #define AT91_SMC	(0xffffec00 - AT91_BASE_SYS)
 #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_CCFG	(0xffffef10 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffd50 - AT91_BASE_SYS)
 
-#define AT91_BASE_PIOA	0xfffff400
-#define AT91_BASE_PIOB	0xfffff600
-#define AT91_BASE_PIOC	0xfffff800
+#define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9260_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9260_BASE_PIOC
 
 #define AT91_USART0	AT91SAM9260_BASE_US0
 #define AT91_USART1	AT91SAM9260_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index 17a3949..591ae29 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -66,23 +66,37 @@
 
 
 /*
+ * System Peripherals
+ */
+#define AT91SAM9261_BASE_SMC	0xffffec00
+#define AT91SAM9261_BASE_MATRIX	0xffffee00
+#define AT91SAM9261_BASE_SDRAMC	0xffffea00
+#define AT91SAM9261_BASE_DBGU	AT91_BASE_DBGU0
+#define AT91SAM9261_BASE_PIOA	0xfffff400
+#define AT91SAM9261_BASE_PIOB	0xfffff600
+#define AT91SAM9261_BASE_PIOC	0xfffff800
+#define AT91SAM9261_BASE_RSTC	0xfffffd00
+#define AT91SAM9261_BASE_SHDWC	0xfffffd10
+#define AT91SAM9261_BASE_RTT	0xfffffd20
+#define AT91SAM9261_BASE_PIT	0xfffffd30
+#define AT91SAM9261_BASE_WDT	0xfffffd40
+#define AT91SAM9261_BASE_GPBR	0xfffffd50
+
+/*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
 #define AT91_SDRAMC	(0xffffea00 - AT91_BASE_SYS)
 #define AT91_SMC	(0xffffec00 - AT91_BASE_SYS)
 #define AT91_MATRIX	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffd50 - AT91_BASE_SYS)
 
-#define AT91_BASE_PIOA	0xfffff400
-#define AT91_BASE_PIOB	0xfffff600
-#define AT91_BASE_PIOC	0xfffff800
+#define AT91_BASE_PIOA	AT91SAM9261_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9261_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9261_BASE_PIOC
 
 #define AT91_USART0	AT91SAM9261_BASE_US0
 #define AT91_USART1	AT91SAM9261_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index c887b38..a0ed231 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -74,32 +74,49 @@
 #define AT91SAM9263_BASE_2DGE		0xfffc8000
 #define AT91_BASE_SYS			0xffffe000
 
+
+/*
+ * System Peripherals
+ */
+#define AT91SAM9263_BASE_ECC0	0xffffe000
+#define AT91SAM9263_BASE_SDRAMC0 0xffffe200
+#define AT91SAM9263_BASE_SMC0	0xffffe400
+#define AT91SAM9263_BASE_ECC1	0xffffe600
+#define AT91SAM9263_BASE_SDRAMC1 0xffffe800
+#define AT91SAM9263_BASE_SMC1	0xffffea00
+#define AT91SAM9263_BASE_MATRIX	0xffffec00
+#define AT91SAM9263_BASE_DBGU	AT91_BASE_DBGU1
+#define AT91SAM9263_BASE_PIOA	0xfffff200
+#define AT91SAM9263_BASE_PIOB	0xfffff400
+#define AT91SAM9263_BASE_PIOC	0xfffff600
+#define AT91SAM9263_BASE_PIOD	0xfffff800
+#define AT91SAM9263_BASE_PIOE	0xfffffa00
+#define AT91SAM9263_BASE_RSTC	0xfffffd00
+#define AT91SAM9263_BASE_SHDWC	0xfffffd10
+#define AT91SAM9263_BASE_RTT0	0xfffffd20
+#define AT91SAM9263_BASE_PIT	0xfffffd30
+#define AT91SAM9263_BASE_WDT	0xfffffd40
+#define AT91SAM9263_BASE_RTT1	0xfffffd50
+#define AT91SAM9263_BASE_GPBR	0xfffffd60
+
 /*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
 #define AT91_ECC0	(0xffffe000 - AT91_BASE_SYS)
 #define AT91_SDRAMC0	(0xffffe200 - AT91_BASE_SYS)
 #define AT91_SMC0	(0xffffe400 - AT91_BASE_SYS)
-#define AT91_ECC1	(0xffffe600 - AT91_BASE_SYS)
-#define AT91_SDRAMC1	(0xffffe800 - AT91_BASE_SYS)
-#define AT91_SMC1	(0xffffea00 - AT91_BASE_SYS)
 #define AT91_MATRIX	(0xffffec00 - AT91_BASE_SYS)
-#define AT91_CCFG	(0xffffed10 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_RTT0	(0xfffffd20 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
-#define AT91_RTT1	(0xfffffd50 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffd60 - AT91_BASE_SYS)
-
-#define AT91_BASE_PIOA	0xfffff200
-#define AT91_BASE_PIOB	0xfffff400
-#define AT91_BASE_PIOC	0xfffff600
-#define AT91_BASE_PIOD	0xfffff800
-#define AT91_BASE_PIOE	0xfffffa00
+
+#define AT91_BASE_PIOA	AT91SAM9263_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9263_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9263_BASE_PIOC
+#define AT91_BASE_PIOD	AT91SAM9263_BASE_PIOD
+#define AT91_BASE_PIOE	AT91SAM9263_BASE_PIOE
 
 #define AT91_USART0	AT91SAM9263_BASE_US0
 #define AT91_USART1	AT91SAM9263_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 1c98491..961a70f 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -87,6 +87,29 @@
 #define AT91_BASE_SYS			0xffffe200
 
 /*
+ * System Peripherals
+ */
+#define AT91SAM9G45_BASE_ECC	0xffffe200
+#define AT91SAM9G45_BASE_DDRSDRC1 0xffffe400
+#define AT91SAM9G45_BASE_DDRSDRC0 0xffffe600
+#define AT91SAM9G45_BASE_DMA	0xffffec00
+#define AT91SAM9G45_BASE_SMC	0xffffe800
+#define AT91SAM9G45_BASE_MATRIX	0xffffea00
+#define AT91SAM9G45_BASE_DBGU	AT91_BASE_DBGU1
+#define AT91SAM9G45_BASE_PIOA	0xfffff200
+#define AT91SAM9G45_BASE_PIOB	0xfffff400
+#define AT91SAM9G45_BASE_PIOC	0xfffff600
+#define AT91SAM9G45_BASE_PIOD	0xfffff800
+#define AT91SAM9G45_BASE_PIOE	0xfffffa00
+#define AT91SAM9G45_BASE_RSTC	0xfffffd00
+#define AT91SAM9G45_BASE_SHDWC	0xfffffd10
+#define AT91SAM9G45_BASE_RTT	0xfffffd20
+#define AT91SAM9G45_BASE_PIT	0xfffffd30
+#define AT91SAM9G45_BASE_WDT	0xfffffd40
+#define AT91SAM9G45_BASE_RTC	0xfffffdb0
+#define AT91SAM9G45_BASE_GPBR	0xfffffd60
+
+/*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
 #define AT91_ECC	(0xffffe200 - AT91_BASE_SYS)
@@ -94,22 +117,17 @@
 #define AT91_DDRSDRC0	(0xffffe600 - AT91_BASE_SYS)
 #define AT91_SMC	(0xffffe800 - AT91_BASE_SYS)
 #define AT91_MATRIX	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_RTT	(0xfffffd20 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffd60 - AT91_BASE_SYS)
-#define AT91_RTC	(0xfffffdb0 - AT91_BASE_SYS)
 
-#define AT91_BASE_PIOA	0xfffff200
-#define AT91_BASE_PIOB	0xfffff400
-#define AT91_BASE_PIOC	0xfffff600
-#define AT91_BASE_PIOD	0xfffff800
-#define AT91_BASE_PIOE	0xfffffa00
+#define AT91_BASE_PIOA	AT91SAM9G45_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9G45_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9G45_BASE_PIOC
+#define AT91_BASE_PIOD	AT91SAM9G45_BASE_PIOD
+#define AT91_BASE_PIOE	AT91SAM9G45_BASE_PIOE
 
 #define AT91_USART0	AT91SAM9G45_BASE_US0
 #define AT91_USART1	AT91SAM9G45_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index afe0034..706005c 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -82,28 +82,47 @@
 #define AT91_BASE_SYS			0xffffc000
 
 /*
+ * System Peripherals
+ */
+#define AT91SAM9N12_BASE_FUSE		0xffffdc00
+#define AT91SAM9N12_BASE_MATRIX		0xffffde00
+#define AT91SAM9N12_BASE_PMECC		0xffffe000
+#define AT91SAM9N12_BASE_PMERRLOC	0xffffe600
+#define AT91SAM9N12_BASE_DDRSDRC0	0xffffe800
+#define AT91SAM9N12_BASE_SMC		0xffffea00
+#define AT91SAM9N12_BASE_DMA		0xffffec00
+#define AT91SAM9N12_BASE_AIC		0xfffff000
+#define AT91SAM9N12_BASE_DBGU		0xfffff200
+#define AT91SAM9N12_BASE_PIOA		0xfffff400
+#define AT91SAM9N12_BASE_PIOB		0xfffff600
+#define AT91SAM9N12_BASE_PIOC		0xfffff800
+#define AT91SAM9N12_BASE_PIOD		0xfffffa00
+#define AT91SAM9N12_BASE_PMC		0xfffffc00
+#define AT91SAM9N12_BASE_RSTC		0xfffffe00
+#define AT91SAM9N12_BASE_SHDWC		0xfffffe10
+#define AT91SAM9N12_BASE_PIT		0xfffffe30
+#define AT91SAM9N12_BASE_WDT		0xfffffe40
+#define AT91SAM9N12_BASE_GPBR		0xfffffe60
+#define AT91SAM9N12_BASE_RTC		0xfffffeb0
+
+/*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
-#define AT91_FUSE	(0xffffdc00 - AT91_BASE_SYS)
 #define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
 #define AT91_PMECC	(0xffffe000 - AT91_BASE_SYS)
 #define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
 #define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
 #define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_DMA	(0xffffec00 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS)
-#define AT91_RTC	(0xfffffeb0 - AT91_BASE_SYS)
 
-#define AT91_BASE_PIOA	0xfffff400
-#define AT91_BASE_PIOB	0xfffff600
-#define AT91_BASE_PIOC	0xfffff800
-#define AT91_BASE_PIOD	0xfffffa00
+#define AT91_BASE_PIOA	AT91SAM9N12_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9N12_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9N12_BASE_PIOC
+#define AT91_BASE_PIOD	AT91SAM9N12_BASE_PIOD
 
 #define AT91_USART0	AT91SAM9X5_BASE_US0
 #define AT91_USART1	AT91SAM9X5_BASE_US1
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index ca778fb..b47e3cb 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -89,6 +89,30 @@
 #define AT91_BASE_SYS			0xffffc000
 
 /*
+ * System Peripherals
+ */
+#define AT91SAM9X5_BASE_MATRIX		0xffffde00
+#define AT9SAM9X5_BASE1_PMECC		0xffffe000
+#define AT91SAM9X5_BASE_PMERRLOC	0xffffe600
+#define AT91SAM9X5_BASE_DDRSDRC0	0xffffe800
+#define AT91SAM9X5_BASE_SMC		0xffffea00
+#define AT91SAM9X5_BASE_DMA0		0xffffec00
+#define AT91SAM9X5_BASE_DMA1		0xffffee00
+#define AT91SAM9X5_BASE_AIC		0xfffff000
+#define AT91SAM9X5_BASE_DBGU		0xfffff200
+#define AT91SAM9X5_BASE_PIOA		0xfffff400
+#define AT91SAM9X5_BASE_PIOB		0xfffff600
+#define AT91SAM9X5_BASE_PIOC		0xfffff800
+#define AT91SAM9X5_BASE_PIOD		0xfffffa00
+#define AT91SAM9X5_BASE_PMC		0xfffffc00
+#define AT91SAM9X5_BASE_RSTC		0xfffffe00
+#define AT91SAM9X5_BASE_SHDWC		0xfffffe10
+#define AT91SAM9X5_BASE_PIT		0xfffffe30
+#define AT91SAM9X5_BASE_WDT		0xfffffe40
+#define AT91SAM9X5_BASE_GPBR		0xfffffe60
+#define AT91SAM9X5_BASE_RTC		0xfffffeb0
+
+/*
  * System Peripherals (offset from AT91_BASE_SYS)
  */
 #define AT91_MATRIX	(0xffffde00 - AT91_BASE_SYS)
@@ -96,21 +120,16 @@
 #define AT91_PMERRLOC	(0xffffe600 - AT91_BASE_SYS)
 #define AT91_DDRSDRC0	(0xffffe800 - AT91_BASE_SYS)
 #define AT91_SMC	(0xffffea00 - AT91_BASE_SYS)
-#define AT91_DMA0	(0xffffec00 - AT91_BASE_SYS)
-#define AT91_DMA1	(0xffffee00 - AT91_BASE_SYS)
-#define AT91_AIC	(0xfffff000 - AT91_BASE_SYS)
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
 #define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
 #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
-#define AT91_GPBR	(0xfffffe60 - AT91_BASE_SYS)
-#define AT91_RTC	(0xfffffeb0 - AT91_BASE_SYS)
 
-#define AT91_BASE_PIOA	0xfffff400
-#define AT91_BASE_PIOB	0xfffff600
-#define AT91_BASE_PIOC	0xfffff800
-#define AT91_BASE_PIOD	0xfffffa00
+#define AT91_BASE_PIOA	AT91SAM9X5_BASE_PIOA
+#define AT91_BASE_PIOB	AT91SAM9X5_BASE_PIOB
+#define AT91_BASE_PIOC	AT91SAM9X5_BASE_PIOC
+#define AT91_BASE_PIOD	AT91SAM9X5_BASE_PIOD
 
 #define AT91_USART0	AT91SAM9X5_BASE_US0
 #define AT91_USART1	AT91SAM9X5_BASE_US1
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
