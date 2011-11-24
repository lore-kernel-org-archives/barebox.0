Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPau-0007mO-3f
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:03:25 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:02:42 +0100
Message-Id: <1322103764-6265-8-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 7/9] arm/mach-pxa: add gpio direction functions
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

Add missing function for generic GPIO support.
Both gpio_direction_input() and gpio_direction_output() were
added.

Add also generic GPIO support as a PXA native configuration
option.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/Kconfig                      |    1 +
 arch/arm/mach-pxa/include/mach/gpio.h |    1 -
 arch/arm/mach-pxa/include/plat/gpio.h |   19 +++++++++++++++++++
 3 files changed, 20 insertions(+), 1 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4487484..40677a3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -64,6 +64,7 @@ config ARCH_OMAP
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
+	select GENERIC_GPIO
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
diff --git a/arch/arm/mach-pxa/include/mach/gpio.h b/arch/arm/mach-pxa/include/mach/gpio.h
index 16fccd1..8f00677 100644
--- a/arch/arm/mach-pxa/include/mach/gpio.h
+++ b/arch/arm/mach-pxa/include/mach/gpio.h
@@ -132,6 +132,5 @@ static inline int __gpio_is_occupied(unsigned gpio)
 	} else
 		return GPDR(gpio) & GPIO_bit(gpio);
 }
-
 #include <plat/gpio.h>
 #endif
diff --git a/arch/arm/mach-pxa/include/plat/gpio.h b/arch/arm/mach-pxa/include/plat/gpio.h
index 0eb38d1..4c7b526 100644
--- a/arch/arm/mach-pxa/include/plat/gpio.h
+++ b/arch/arm/mach-pxa/include/plat/gpio.h
@@ -44,6 +44,25 @@ static inline void gpio_set_value(unsigned gpio, int value)
 		GPCR(gpio) = GPIO_bit(gpio);
 }
 
+static inline int gpio_direction_input(unsigned gpio)
+{
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) |= GPIO_bit(gpio);
+	else
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	return 0;
+}
+
+static inline int gpio_direction_output(unsigned gpio, int value)
+{
+	gpio_set_value(gpio, value);
+	if (__gpio_is_inverted(gpio))
+		GPDR(gpio) &= ~GPIO_bit(gpio);
+	else
+		GPDR(gpio) |= GPIO_bit(gpio);
+	return 0;
+}
+
 /* NOTE: some PXAs have fewer on-chip GPIOs (like PXA255, with 85).
  * Those cases currently cause holes in the GPIO number space, the
  * actual number of the last GPIO is recorded by 'pxa_last_gpio'.
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
