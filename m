Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdzBM-0000HC-3E
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 09:13:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Nov 2013 10:13:25 +0100
Message-Id: <1383729205-21541-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Add a context pointer to fixup functions
To: barebox@lists.infradead.org

If drivers want to fixup their specific instance they need some context
to know which instance they have to fixup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |  4 ++--
 arch/arm/boards/highbank/init.c           |  4 ++--
 arch/ppc/mach-mpc5xxx/cpu.c               |  4 ++--
 arch/ppc/mach-mpc85xx/fdt.c               |  4 ++--
 common/memory.c                           |  4 ++--
 common/oftree.c                           | 12 +++++++-----
 include/of.h                              |  2 +-
 net/eth.c                                 |  4 ++--
 8 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 1207a3e..2da4e5e 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -229,7 +229,7 @@ static void at91sam9x5ek_devices_detect_one(const char *name)
 
 #define NODE_NAME_LEN  128
 
-static int cm_cogent_fixup(struct device_node *root)
+static int cm_cogent_fixup(struct device_node *root, void *unused)
 {
 	int ret;
 	struct device_node *node;
@@ -260,5 +260,5 @@ void at91sam9x5ek_devices_detect_hw(void)
 	armlinux_set_serial(sn);
 
 	if (at91sam9x5ek_cm_is_vendor(VENDOR_COGENT))
-		of_register_fixup(cm_cogent_fixup);
+		of_register_fixup(cm_cogent_fixup, NULL);
 }
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 7b1be04..8a24b21 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -24,7 +24,7 @@
 
 struct fdt_header *fdt = NULL;
 
-static int hb_fixup(struct device_node *root)
+static int hb_fixup(struct device_node *root, void *unused)
 {
 	struct device_node *node;
 	u32 reg = readl(sregs_base + HB_SREG_A9_PWRDOM_DATA);
@@ -108,7 +108,7 @@ mem_initcall(highbank_mem_init);
 
 static int highbank_devices_init(void)
 {
-	of_register_fixup(hb_fixup);
+	of_register_fixup(hb_fixup, NULL);
 	if (!fdt) {
 		highbank_register_gpio(0);
 		highbank_register_gpio(1);
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 0ece4a9..c860e70 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -77,7 +77,7 @@ void __noreturn reset_cpu (unsigned long addr)
 /* ------------------------------------------------------------------------- */
 
 #ifdef CONFIG_OFTREE
-static int of_mpc5200_fixup(struct device_node *root)
+static int of_mpc5200_fixup(struct device_node *root, void *unused)
 {
 	struct device_node *node;
 
@@ -103,7 +103,7 @@ static int of_mpc5200_fixup(struct device_node *root)
 
 static int of_register_mpc5200_fixup(void)
 {
-	return of_register_fixup(of_mpc5200_fixup);
+	return of_register_fixup(of_mpc5200_fixup, NULL);
 }
 late_initcall(of_register_mpc5200_fixup);
 #endif
diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
index 65de6f1..fd919a5 100644
--- a/arch/ppc/mach-mpc85xx/fdt.c
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -89,7 +89,7 @@ error:
 	return -ENODEV;
 }
 
-static int fdt_cpu_setup(struct device_node *blob)
+static int fdt_cpu_setup(struct device_node *blob, void *unused)
 {
 	struct device_node *node;
 	struct sys_info sysinfo;
@@ -139,6 +139,6 @@ static int fdt_cpu_setup(struct device_node *blob)
 
 static int of_register_mpc85xx_fixup(void)
 {
-	return of_register_fixup(fdt_cpu_setup);
+	return of_register_fixup(fdt_cpu_setup, NULL);
 }
 late_initcall(of_register_mpc85xx_fixup);
diff --git a/common/memory.c b/common/memory.c
index 7ec211b..c82bbaa 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -163,7 +163,7 @@ int release_sdram_region(struct resource *res)
 
 #ifdef CONFIG_OFTREE
 
-static int of_memory_fixup(struct device_node *node)
+static int of_memory_fixup(struct device_node *node, void *unused)
 {
 	struct memory_bank *bank;
 	int err;
@@ -200,7 +200,7 @@ static int of_memory_fixup(struct device_node *node)
 
 static int of_register_memory_fixup(void)
 {
-	return of_register_fixup(of_memory_fixup);
+	return of_register_fixup(of_memory_fixup, NULL);
 }
 late_initcall(of_register_memory_fixup);
 #endif
diff --git a/common/oftree.c b/common/oftree.c
index f2a3169..50fc95b 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -113,7 +113,7 @@ void of_print_cmdline(struct device_node *root)
 	printf("commandline: %s\n", cmdline);
 }
 
-static int of_fixup_bootargs(struct device_node *root)
+static int of_fixup_bootargs(struct device_node *root, void *unused)
 {
 	struct device_node *node;
 	const char *str;
@@ -135,22 +135,24 @@ static int of_fixup_bootargs(struct device_node *root)
 
 static int of_register_bootargs_fixup(void)
 {
-	return of_register_fixup(of_fixup_bootargs);
+	return of_register_fixup(of_fixup_bootargs, NULL);
 }
 late_initcall(of_register_bootargs_fixup);
 
 struct of_fixup {
-	int (*fixup)(struct device_node *);
+	int (*fixup)(struct device_node *, void *);
+	void *context;
 	struct list_head list;
 };
 
 static LIST_HEAD(of_fixup_list);
 
-int of_register_fixup(int (*fixup)(struct device_node *))
+int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context)
 {
 	struct of_fixup *of_fixup = xzalloc(sizeof(*of_fixup));
 
 	of_fixup->fixup = fixup;
+	of_fixup->context = context;
 
 	list_add_tail(&of_fixup->list, &of_fixup_list);
 
@@ -167,7 +169,7 @@ int of_fix_tree(struct device_node *node)
 	int ret;
 
 	list_for_each_entry(of_fixup, &of_fixup_list, list) {
-		ret = of_fixup->fixup(node);
+		ret = of_fixup->fixup(node, of_fixup->context);
 		if (ret)
 			return ret;
 	}
diff --git a/include/of.h b/include/of.h
index 3381e69..3183428 100644
--- a/include/of.h
+++ b/include/of.h
@@ -61,7 +61,7 @@ struct device_d;
 struct driver_d;
 
 int of_fix_tree(struct device_node *);
-int of_register_fixup(int (*fixup)(struct device_node *));
+int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 
 int of_match(struct device_d *dev, struct driver_d *drv);
 
diff --git a/net/eth.c b/net/eth.c
index e5d6a35..3867453 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -274,7 +274,7 @@ static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const ch
 }
 
 #ifdef CONFIG_OFTREE
-static int eth_of_fixup(struct device_node *root)
+static int eth_of_fixup(struct device_node *root, void *unused)
 {
 	struct eth_device *edev;
 	struct device_node *node;
@@ -316,7 +316,7 @@ static int eth_of_fixup(struct device_node *root)
 
 static int eth_register_of_fixup(void)
 {
-	return of_register_fixup(eth_of_fixup);
+	return of_register_fixup(eth_of_fixup, NULL);
 }
 late_initcall(eth_register_of_fixup);
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
