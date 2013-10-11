Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUa9z-0003u3-TG
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 10:41:33 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id EB060FF8627
 for <barebox@lists.infradead.org>; Fri, 11 Oct 2013 12:35:23 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 11 Oct 2013 12:36:54 +0200
Message-Id: <1381487814-7422-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] at91: add rtc irq fixup
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Some of the irq can still be on after a reset or power on as the IP are
powered by the backup power. This could lead to an interrupt dead lock
when the kernel boot. So disable them before booting.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
---
 arch/arm/mach-at91/at91sam9g45.c          |  2 ++
 arch/arm/mach-at91/at91sam9n12.c          |  2 ++
 arch/arm/mach-at91/at91sam9x5.c           |  2 ++
 arch/arm/mach-at91/generic.h              |  1 +
 arch/arm/mach-at91/include/mach/sama5d3.h |  1 +
 arch/arm/mach-at91/irq_fixup.c            | 15 +++++++++++++++
 arch/arm/mach-at91/sama5d3.c              |  2 ++
 7 files changed, 25 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
index 9a50deb..708feb0 100644
--- a/arch/arm/mach-at91/at91sam9g45.c
+++ b/arch/arm/mach-at91/at91sam9g45.c
@@ -247,6 +247,8 @@ static void __init at91sam9g45_register_clocks(void)
 
 static void at91sam9g45_initialize(void)
 {
+	at91_rtc_irq_fixup(IOMEM(AT91SAM9G45_BASE_RTC));
+
 	/* Register the processor-specific clocks */
 	at91sam9g45_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 2a825b4..3574bf4 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -207,6 +207,8 @@ static void __init at91sam9n12_register_clocks(void)
 
 static void at91sam9n12_initialize(void)
 {
+	at91_rtc_irq_fixup(IOMEM(AT91SAM9N12_BASE_RTC));
+
 	/* Register the processor-specific clocks */
 	at91sam9n12_register_clocks();
 
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 9ddd592..eeeb069 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -293,6 +293,8 @@ static void __init at91sam9x5_register_clocks(void)
 
 static void at91sam9x5_initialize(void)
 {
+	at91_rtc_irq_fixup(IOMEM(AT91SAM9X5_BASE_RTC));
+
 	/* Register the processor-specific clocks */
 	at91sam9x5_register_clocks();
 
diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index a47bcb2..4750c5b 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -37,3 +37,4 @@ static inline struct device_d *at91_add_sam9_smc(int id, resource_size_t start,
 }
 
 void at91_rtt_irq_fixup(void *base);
+void at91_rtc_irq_fixup(void *base);
diff --git a/arch/arm/mach-at91/include/mach/sama5d3.h b/arch/arm/mach-at91/include/mach/sama5d3.h
index 6884ff6..c3fe5b0 100644
--- a/arch/arm/mach-at91/include/mach/sama5d3.h
+++ b/arch/arm/mach-at91/include/mach/sama5d3.h
@@ -102,6 +102,7 @@
 #define	SAMA5D3_BASE_HSMC	0xffffc000
 #define SAMA5D3_BASE_PIT	0xfffffe30
 #define SAMA5D3_BASE_WDT	0xfffffe40
+#define SAMA5D3_BASE_RTC	0xfffffeb0
 
 #define SAMA5D3_BASE_PMECC	0xffffc070
 #define SAMA5D3_BASE_PMERRLOC	0xffffc500
diff --git a/arch/arm/mach-at91/irq_fixup.c b/arch/arm/mach-at91/irq_fixup.c
index a9eebd7..ba09756 100644
--- a/arch/arm/mach-at91/irq_fixup.c
+++ b/arch/arm/mach-at91/irq_fixup.c
@@ -20,3 +20,18 @@ void at91_rtt_irq_fixup(void *base)
 
 	writel(mr & ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN), reg);
 }
+
+#define	AT91_RTC_IDR		0x24			/* Interrupt Disable Register */
+
+/*
+ * As the RTC is powered by the backup power so if the interrupt
+ * is still on when the kernel start, the kernel will end up with
+ * dead lock interrupt that it can not clear. Because the interrupt line is
+ * shared with the basic timer (PIT) on AT91_ID_SYS.
+ */
+void at91_rtc_irq_fixup(void *base)
+{
+	void *reg = base + AT91_RTC_IDR;
+
+	writel(0x5, reg);
+}
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index aa681aa..079fb66 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -375,6 +375,8 @@ static void __init sama5d3_register_clocks(void)
 
 static void sama5d3_initialize(void)
 {
+	at91_rtc_irq_fixup(IOMEM(SAMA5D3_BASE_RTC));
+
 	/* Register the processor-specific clocks */
 	sama5d3_register_clocks();
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
