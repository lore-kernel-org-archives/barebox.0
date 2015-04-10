Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMr-0003J0-VF
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:23 +0000
Received: by wiun10 with SMTP id n10so8444316wiu.1
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:03:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:44 +0200
Message-Id: <1428627830-17281-8-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 07/13] bus: mvebu-mbus: Convert mbus platform driver to direct
 driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Registering mbus driver as platform driver is a little late for
some register accesses to work. We have to make sure boot-up
mbus windows are disabled early, so call mbus driver directly
from SoC init.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c |  1 +
 arch/arm/mach-mvebu/dove.c          |  1 +
 arch/arm/mach-mvebu/kirkwood.c      |  1 +
 drivers/bus/mvebu-mbus.c            | 14 +-------------
 include/linux/mbus.h                |  2 ++
 5 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 244f8cdd81a5..ae458b4433b3 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -73,6 +73,7 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
+	mvebu_mbus_init();
 
 	/* Enable peripherals PUP */
 	reg = readl(ARMADA_XP_PUP_ENABLE_BASE);
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index c2852f8986ae..a7284fd33a63 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -93,6 +93,7 @@ static int dove_init_soc(struct device_node *root, void *context)
 	dove_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
+	mvebu_mbus_init();
 
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index d7903f732eac..19c6f0730332 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -66,6 +66,7 @@ static int kirkwood_init_soc(struct device_node *root, void *context)
 	kirkwood_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
+	mvebu_mbus_init();
 
 	return 0;
 }
diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 077d7ccb83ca..e1898103540b 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -673,7 +673,7 @@ static void mvebu_mbus_get_pcie_resources(struct device_node *np,
 	}
 }
 
-static int mvebu_mbus_probe(struct device_d *dev)
+int mvebu_mbus_init(void)
 {
 	struct device_node *np, *controller;
 	const struct of_device_id *match;
@@ -725,18 +725,6 @@ static int mvebu_mbus_probe(struct device_d *dev)
 	return mbus_dt_setup(&mbus_state);
 }
 
-static struct driver_d mvebu_mbus_driver = {
-	.probe	= mvebu_mbus_probe,
-	.name	= "mvebu-mbus",
-	.of_compatible = DRV_OF_COMPAT(mvebu_mbus_dt_ids),
-};
-
-static int mvebu_mbus_init(void)
-{
-	return platform_driver_register(&mvebu_mbus_driver);
-}
-postcore_initcall(mvebu_mbus_init);
-
 struct mbus_range {
 	const char *compatible;
 	u32 mbusid;
diff --git a/include/linux/mbus.h b/include/linux/mbus.h
index b90fabbfb7e5..bcc5949219cf 100644
--- a/include/linux/mbus.h
+++ b/include/linux/mbus.h
@@ -61,4 +61,6 @@ int mvebu_mbus_del_window(phys_addr_t base, size_t size);
 void mvebu_mbus_add_range(const char *compatible,
 			  u8 target, u8 attr, u32 remap);
 
+int mvebu_mbus_init(void);
+
 #endif /* __LINUX_MBUS_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
