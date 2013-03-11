Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp16.mail.ru ([94.100.176.153])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEz0g-0005pz-Ax
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:27:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 11 Mar 2013 13:26:42 +0400
Message-Id: <1362994003-22653-12-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 12/13] ARM: clps711x: Export system-wide registers through
 SYSCON driver
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/Kconfig                 |    1 +
 arch/arm/mach-clps711x/devices.c |   16 ++++++++++++++++
 drivers/mfd/syscon.c             |    3 +++
 3 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ed0b453..6128322 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -43,6 +43,7 @@ config ARCH_CLPS711X
 	select COMMON_CLK
 	select CPU_32v4T
 	select GPIOLIB
+	select MFD_SYSCON
 
 config ARCH_EP93XX
 	bool "Cirrus Logic EP93xx"
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 4cc53fa..b36013f 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -121,3 +121,19 @@ static __init int clps711x_gpio_init(void)
 	return 0;
 }
 coredevice_initcall(clps711x_gpio_init);
+
+static __init int clps711x_syscon_init(void)
+{
+	/* SYSCON1, SYSFLG1 */
+	add_generic_device("clps711x-syscon", 1, NULL, SYSCON1, SZ_128,
+			   IORESOURCE_MEM, NULL);
+	/* SYSCON2, SYSFLG2 */
+	add_generic_device("clps711x-syscon", 2, NULL, SYSCON2, SZ_128,
+			   IORESOURCE_MEM, NULL);
+	/* SYSCON3 */
+	add_generic_device("clps711x-syscon", 3, NULL, SYSCON3, SZ_64,
+			   IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+postcore_initcall(clps711x_syscon_init);
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 87d2f7c..b628ab7 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -72,6 +72,9 @@ static int syscon_probe(struct device_d *dev)
 
 static struct platform_device_id syscon_ids[] = {
 	{ "syscon", },
+#ifdef CONFIG_ARCH_CLPS711X
+	{ "clps711x-syscon", },
+#endif
 	{ }
 };
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
