Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002C8-4L
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:14:02 +0200
Message-Id: <1301922843-12118-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] arm omap: remove unused request/free gpio functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/gpio.c              |   21 ---------------------
 arch/arm/mach-omap/include/mach/gpio.h |    4 ----
 2 files changed, 0 insertions(+), 25 deletions(-)

diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
index 6b06a73..68b7890 100644
--- a/arch/arm/mach-omap/gpio.c
+++ b/arch/arm/mach-omap/gpio.c
@@ -156,24 +156,3 @@ int gpio_get_value(unsigned gpio)
 
 	return (__raw_readl(reg) & (1 << get_gpio_index(gpio))) != 0;
 }
-
-static void _reset_gpio(int gpio)
-{
-	gpio_direction_input(gpio);
-}
-
-int omap_request_gpio(int gpio)
-{
-	if (check_gpio(gpio) < 0)
-		return -EINVAL;
-
-	return 0;
-}
-
-void omap_free_gpio(int gpio)
-{
-	if (check_gpio(gpio) < 0)
-		return;
-
-	_reset_gpio(gpio);
-}
diff --git a/arch/arm/mach-omap/include/mach/gpio.h b/arch/arm/mach-omap/include/mach/gpio.h
index 6758f9c..245f781 100644
--- a/arch/arm/mach-omap/include/mach/gpio.h
+++ b/arch/arm/mach-omap/include/mach/gpio.h
@@ -38,10 +38,6 @@
 #ifndef _GPIO_H
 #define _GPIO_H
 
-/* Request a gpio before using it */
-int omap_request_gpio(int gpio);
-/* Reset and free a gpio after using it */
-void omap_free_gpio(int gpio);
 void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
