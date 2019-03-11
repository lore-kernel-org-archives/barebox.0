Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3HHM-0003du-1t
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 09:31:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 13/14] clocksource: Enable architected timer support for CPU_V7
Date: Mon, 11 Mar 2019 10:31:22 +0100
Message-Id: <20190311093123.7956-14-s.hauer@pengutronix.de>
In-Reply-To: <20190311093123.7956-1-s.hauer@pengutronix.de>
References: <20190311093123.7956-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/system.h     | 19 +++++++++++++++++++
 drivers/clocksource/Kconfig       |  2 +-
 drivers/clocksource/armv8-timer.c |  1 +
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/system.h b/arch/arm/include/asm/system.h
index 45eeb6e62c..e55b19a13c 100644
--- a/arch/arm/include/asm/system.h
+++ b/arch/arm/include/asm/system.h
@@ -126,6 +126,25 @@ static inline unsigned long get_cntpct(void)
 
 	return cntpct;
 }
+#else
+static inline unsigned int get_cntfrq(void)
+{
+	unsigned int val;
+
+	asm volatile("mrc p15, 0, %0, c14, c0, 0" : "=r" (val));
+
+	return val;
+}
+
+static inline unsigned long long get_cntpct(void)
+{
+	unsigned long long cval;
+
+	isb();
+	asm volatile("mrrc p15, 0, %Q0, %R0, c14" : "=r" (cval));
+
+	return cval;
+}
 
 #endif
 static inline unsigned int get_cr(void)
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index b0502c3036..43c5bfc973 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -73,7 +73,7 @@ config CLOCKSOURCE_ATMEL_PIT
 config CLOCKSOURCE_ARMV8_TIMER
 	bool
 	default y
-	depends on ARM && CPU_64v8
+	depends on ARM && (CPU_64v8 || CPU_V7)
 
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
 	bool
diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/armv8-timer.c
index 918232e0e0..3095f8cfc4 100644
--- a/drivers/clocksource/armv8-timer.c
+++ b/drivers/clocksource/armv8-timer.c
@@ -39,6 +39,7 @@ static int armv8_timer_probe(struct device_d *dev)
 }
 
 static struct of_device_id armv8_timer_dt_ids[] = {
+	{ .compatible = "arm,armv7-timer", },
 	{ .compatible = "arm,armv8-timer", },
 	{ }
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
