Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Nz8-0007DF-Nu
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 17:22:36 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 23 Jan 2014 21:22:05 +0400
Message-Id: <1390497727-1625-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
References: <1390497727-1625-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/4] ARM: clps711x: Remove the special name for the syscon
 driver
To: barebox@lists.infradead.org

No reason to make SYSCON driver name unique to that processor.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c | 6 +++---
 drivers/mfd/syscon.c             | 3 ---
 drivers/serial/serial_clps711x.c | 4 ++--
 3 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index 9eeff5c..b5060ba 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -121,13 +121,13 @@ coredevice_initcall(clps711x_gpio_init);
 static __init int clps711x_syscon_init(void)
 {
 	/* SYSCON1, SYSFLG1 */
-	add_generic_device("clps711x-syscon", 1, NULL, SYSCON1, SZ_128,
+	add_generic_device("syscon", 1, NULL, SYSCON1, SZ_128,
 			   IORESOURCE_MEM, NULL);
 	/* SYSCON2, SYSFLG2 */
-	add_generic_device("clps711x-syscon", 2, NULL, SYSCON2, SZ_128,
+	add_generic_device("syscon", 2, NULL, SYSCON2, SZ_128,
 			   IORESOURCE_MEM, NULL);
 	/* SYSCON3 */
-	add_generic_device("clps711x-syscon", 3, NULL, SYSCON3, SZ_64,
+	add_generic_device("syscon", 3, NULL, SYSCON3, SZ_64,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 6437344..8fc84c3 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -92,9 +92,6 @@ static int syscon_probe(struct device_d *dev)
 
 static struct platform_device_id syscon_ids[] = {
 	{ "syscon", },
-#ifdef CONFIG_ARCH_CLPS711X
-	{ "clps711x-syscon", },
-#endif
 	{ }
 };
 
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index e43d141..d8dec57 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -110,7 +110,7 @@ static void clps711x_flush(struct console_device *cdev)
 static int clps711x_probe(struct device_d *dev)
 {
 	struct clps711x_uart *s;
-	char syscon_dev[18];
+	char syscon_dev[8];
 
 	BUG_ON(dev->num_resources != 2);
 	BUG_ON((dev->id != 0) && (dev->id != 1));
@@ -122,7 +122,7 @@ static int clps711x_probe(struct device_d *dev)
 	s->UBRLCR = dev_get_mem_region(dev, 0);
 	s->UARTDR = dev_get_mem_region(dev, 1);
 
-	sprintf(syscon_dev, "clps711x-syscon%i", dev->id + 1);
+	sprintf(syscon_dev, "syscon%i", dev->id + 1);
 	s->syscon = syscon_base_lookup_by_pdevname(syscon_dev);
 	BUG_ON(IS_ERR(s->syscon));
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
