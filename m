Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs92-0008RJ-Bd
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:55:22 +0100
Message-Id: <1385132122-4725-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: gpio: Add Kconfig variable to depend on
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/Kconfig  | 5 +++++
 drivers/of/Makefile | 2 +-
 include/of_gpio.h   | 6 +++---
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 6b893d7..cdf7ac7 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -19,6 +19,11 @@ config OF_NET
 	depends on NET
 	def_bool y
 
+config OF_GPIO
+	depends on CONFIG_GPIOLIB
+	depends on CONFIG_OFDEVICE
+	def_bool y
+
 config OF_BAREBOX_DRIVERS
 	depends on OFDEVICE
 	depends on ENV_HANDLING
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index a19a8af..c883e51 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -1,6 +1,6 @@
 obj-y += address.o base.o fdt.o platform.o
 obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
-obj-$(CONFIG_GPIOLIB) += of_gpio.o
+obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
diff --git a/include/of_gpio.h b/include/of_gpio.h
index 50536a8..d42b18e 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -21,11 +21,11 @@ enum of_gpio_flags {
 	OF_GPIO_ACTIVE_LOW = 0x1,
 };
 
-#ifdef CONFIG_OFTREE
+#ifdef CONFIG_OF_GPIO
 extern int of_get_named_gpio_flags(struct device_node *np,
 		const char *list_name, int index, enum of_gpio_flags *flags);
 
-#else /* CONFIG_OFTREE */
+#else /* CONFIG_OF_GPIO */
 
 static inline int of_get_named_gpio_flags(struct device_node *np,
 		const char *list_name, int index, enum of_gpio_flags *flags)
@@ -33,7 +33,7 @@ static inline int of_get_named_gpio_flags(struct device_node *np,
 	return -ENOSYS;
 }
 
-#endif /* CONFIG_OFTREE */
+#endif /* CONFIG_OF_GPIO */
 
 static inline int of_get_named_gpio(struct device_node *np,
 				const char *list_name, int index)
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
