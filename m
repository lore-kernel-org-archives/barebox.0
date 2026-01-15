Delivery-date: Thu, 15 Jan 2026 13:00:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1S-001a7q-2R
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:00:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1Q-0000uT-NZ
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:00:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/UZdGvdPpr5eTikGAu/gslrFLWXYBGw026pMYy54Lzc=; b=XhtFnYRsVOqISSqfMQDfOvSjAa
	Eqaf+s7cD/QdJ9ybXFl4aSI6ahiM1Ebu0yJwFNC3GSwXZJLICW3mzW513P22S0zpKdJ0F5wtRKGR3
	Wbq4lfOPtv+NIwxvbT6qF1P73KgEByh49e1xrrnfQwXclLw9DoOIVibEeWl4OZLUmIQZ9eaCxtFJT
	ZywBixA60Ot6HSSNNFXU6WPC77BhffzGzYL4dodZzBnm+zqtDREjXMBVmKpLpXwrUOvMXjkSYrTAO
	G48qUK61ZObCT48SAp+d07Wfm1fPOrnD6MdsOfowks0hGFAhyQdDXf2cOSX0p7GJJuCUNtHmMQj2M
	i/ISou3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0l-0000000CHI3-3FBZ;
	Thu, 15 Jan 2026 11:59:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0g-0000000CHD8-2Om5
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 11:59:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM0e-0000JD-Uv; Thu, 15 Jan 2026 12:59:29 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 12:54:31 +0100
Message-ID: <20260115115924.3428886-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115115924.3428886-1-a.fatoum@barebox.org>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_035930_911893_DE197F2F 
X-CRM114-Status: GOOD (  20.32  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] treewide: fix some missing EXPORT_SYMBOL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for testing ARM32 module support in CI, fix some
EXPORT_SYMBOL around the tree, which we will rely on later.

Co-developed-by: Claude <noreply@claude.ai>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/Makefile            | 1 +
 arch/arm/lib32/string.c            | 7 +++++++
 common/bbu.c                       | 1 +
 common/block.c                     | 2 ++
 common/firmware.c                  | 1 +
 common/globalvar.c                 | 1 +
 common/machine_id.c                | 1 +
 common/memory.c                    | 1 +
 common/structio.c                  | 3 +++
 drivers/base/bus.c                 | 2 ++
 drivers/base/class.c               | 1 +
 drivers/base/driver.c              | 1 +
 drivers/base/platform.c            | 1 +
 drivers/base/power.c               | 2 ++
 drivers/clk/clk-bulk.c             | 2 +-
 drivers/clk/clk.c                  | 1 +
 drivers/firmware/arm_scmi/driver.c | 1 +
 drivers/gpio/gpiolib.c             | 2 +-
 drivers/hw_random/core.c           | 1 +
 drivers/mtd/core.c                 | 1 +
 drivers/net/dsa.c                  | 1 +
 drivers/nvmem/core.c               | 1 +
 drivers/of/base.c                  | 3 ++-
 drivers/pci/pci.c                  | 2 ++
 drivers/pinctrl/pinctrl.c          | 1 +
 drivers/video/fb.c                 | 1 +
 fs/pstore/platform.c               | 1 +
 lib/parameter.c                    | 1 +
 lib/string.c                       | 2 ++
 lib/stringlist.c                   | 3 +++
 lib/ucs2_string.c                  | 2 +-
 net/eth.c                          | 1 +
 net/net.c                          | 1 +
 33 files changed, 49 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/lib32/string.c

diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index cdfb992c0d5d..67c4f16f76ad 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -25,6 +25,7 @@ obj-pbl-y += reloc.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memmove.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
+obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= string.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_ARM_MODULE_PLTS) += module-plts.o
diff --git a/arch/arm/lib32/string.c b/arch/arm/lib32/string.c
new file mode 100644
index 000000000000..ad1113034be3
--- /dev/null
+++ b/arch/arm/lib32/string.c
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/string.h>
+#include <linux/export.h>
+
+EXPORT_SYMBOL(memcpy);
+EXPORT_SYMBOL(memset);
diff --git a/common/bbu.c b/common/bbu.c
index 00d415bcf826..07a51c112f0e 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -288,6 +288,7 @@ bool bbu_handlers_available(void)
 {
 	return !list_empty(&bbu_image_handlers);
 }
+EXPORT_SYMBOL(bbu_handlers_available);
 
 /*
  * print a list of all registered update handlers
diff --git a/common/block.c b/common/block.c
index e021b1a9666f..22597124a1b3 100644
--- a/common/block.c
+++ b/common/block.c
@@ -16,6 +16,7 @@
 #include <file-list.h>
 
 LIST_HEAD(block_device_list);
+EXPORT_SYMBOL(block_device_list);
 
 /* a chunk of contiguous data */
 struct chunk {
@@ -583,6 +584,7 @@ const char *blk_type_str(enum blk_type type)
 		return "unknown";
 	}
 }
+EXPORT_SYMBOL(blk_type_str);
 
 int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
 				 const char **rootopts)
diff --git a/common/firmware.c b/common/firmware.c
index 264fc9d66dcc..31b75bd88ab5 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -87,6 +87,7 @@ struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 
 	return NULL;
 }
+EXPORT_SYMBOL(firmwaremgr_find_by_node);
 
 /*
  * firmwaremgr_list_handlers - list registered firmware device handlers
diff --git a/common/globalvar.c b/common/globalvar.c
index 127ecd5c6075..fcaa15179f68 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -21,6 +21,7 @@ struct device global_device = {
 	.name = "global",
 	.id = DEVICE_ID_SINGLE,
 };
+EXPORT_SYMBOL(global_device);
 
 struct device nv_device = {
 	.name = "nv",
diff --git a/common/machine_id.c b/common/machine_id.c
index e670886d8538..acc7aac52cf9 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -22,6 +22,7 @@ const void *machine_id_get_hashable(size_t *len)
 	*len = __machine_id_hashable_length;
 	return __machine_id_hashable;
 }
+EXPORT_SYMBOL(machine_id_get_hashable);
 
 /**
  * machine_id_set_hashable - Provide per-board unique data
diff --git a/common/memory.c b/common/memory.c
index 49ff0ef619d5..1c18c5b38710 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -212,6 +212,7 @@ void *sbrk(ptrdiff_t increment)
 }
 
 LIST_HEAD(memory_banks);
+EXPORT_SYMBOL(memory_banks);
 
 static int barebox_grow_memory_bank(struct memory_bank *bank, const char *name,
 				    const struct resource *newres)
diff --git a/common/structio.c b/common/structio.c
index 935c4628dd77..776dc1e902ab 100644
--- a/common/structio.c
+++ b/common/structio.c
@@ -3,6 +3,7 @@
 #include <structio.h>
 #include <command.h>
 #include <device.h>
+#include <linux/export.h>
 
 static struct bobject *active_capture;
 
@@ -34,6 +35,7 @@ int structio_run_command(struct bobject **bret, const char *cmd)
 	*bret = bobj;
 	return 0;
 }
+EXPORT_SYMBOL(structio_run_command);
 
 int structio_devinfo(struct bobject **bret, struct device *dev)
 {
@@ -54,3 +56,4 @@ int structio_devinfo(struct bobject **bret, struct device *dev)
 	*bret = bobj;
 	return 0;
 }
+EXPORT_SYMBOL(structio_devinfo);
diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 7ee5959e8b9f..9e5b43cd0ffa 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -10,6 +10,7 @@
 #include <of.h>
 
 DEFINE_DEV_CLASS(bus_class, "bus");
+EXPORT_SYMBOL(bus_class);
 
 struct bus_type *get_bus_by_name(const char *name)
 {
@@ -22,6 +23,7 @@ struct bus_type *get_bus_by_name(const char *name)
 
 	return NULL;
 }
+EXPORT_SYMBOL(get_bus_by_name);
 
 int bus_register(struct bus_type *bus)
 {
diff --git a/drivers/base/class.c b/drivers/base/class.c
index 693260fe22dc..d21d679f1acc 100644
--- a/drivers/base/class.c
+++ b/drivers/base/class.c
@@ -4,6 +4,7 @@
 #include <linux/list.h>
 
 LIST_HEAD(class_list);
+EXPORT_SYMBOL(class_list);
 
 void class_register(struct class *class)
 {
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 782cdfdfcecb..36a1fcda48c8 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -586,6 +586,7 @@ struct resource *dev_request_mem_resource(struct device *dev, int num)
 
 	return dev_request_iomem_resource(dev, res);
 }
+EXPORT_SYMBOL(dev_request_mem_resource);
 
 void __iomem *dev_request_mem_region_err_null(struct device *dev, int num)
 {
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index ac7c473c8c7b..9e6718c6476c 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -28,6 +28,7 @@ int platform_driver_register(struct driver *drv)
 
 	return register_driver(drv);
 }
+EXPORT_SYMBOL(platform_driver_register);
 
 int platform_device_register(struct device *new_device)
 {
diff --git a/drivers/base/power.c b/drivers/base/power.c
index cffd0436278a..543c85a3d9b8 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -361,6 +361,7 @@ bool genpd_is_active(void)
 {
 	return have_genpd_providers && !list_empty(&gpd_list);
 }
+EXPORT_SYMBOL(genpd_is_active);
 
 static struct bus_type genpd_bus_type = {
 	.name		= "genpd",
@@ -563,3 +564,4 @@ void pm_genpd_print(void)
 		printf("%-20s %6s\n", genpd->name,
 		       genpd->status == GPD_STATE_ACTIVE ? "on" : "off");
 }
+EXPORT_SYMBOL(pm_genpd_print);
diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index c16fed282b21..e34a1feff2a2 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -170,7 +170,7 @@ int __must_check clk_bulk_get_all_enabled(struct device *dev,
 
 	return num_clks;
 }
-EXPORT_SYMBOL_GPL(devm_clk_bulk_get_all_enabled);
+EXPORT_SYMBOL_GPL(clk_bulk_get_all_enabled);
 
 /**
  * clk_bulk_disable - gate a set of clocks
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index ac5b83cf8b40..5e385380cee2 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -29,6 +29,7 @@ bool clk_have_nonfixed_providers(void)
 
 	return false;
 }
+EXPORT_SYMBOL(clk_have_nonfixed_providers);
 
 static int clk_parent_enable(struct clk *clk)
 {
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index bbb62dd5191a..5c69ea953c76 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -39,6 +39,7 @@ static DEFINE_SPINLOCK(protocol_lock);
 
 /* List of all SCMI devices active in system */
 LIST_HEAD(scmi_list);
+EXPORT_SYMBOL(scmi_list);
 /* Protection for the entire list */
 static DEFINE_MUTEX(scmi_list_mutex);
 /* Track the unique id for the transfers for debug & profiling purpose */
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index e1493ffb6640..37a98995f2e8 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -662,7 +662,7 @@ struct gpio_desc *gpiod_request_one(unsigned gpio,
 
 	return desc;
 }
-EXPORT_SYMBOL_GPL(gpio_request_one);
+EXPORT_SYMBOL_GPL(gpiod_request_one);
 
 
 /**
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
index 7bc3c33319f9..9f73aa45bcec 100644
--- a/drivers/hw_random/core.c
+++ b/drivers/hw_random/core.c
@@ -102,6 +102,7 @@ struct hwrng *hwrng_get_first(void)
 	else
 		return list_first_entry(&hwrngs, struct hwrng, list);
 }
+EXPORT_SYMBOL(hwrng_get_first);
 
 int hwrng_register(struct device *dev, struct hwrng *rng)
 {
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index bb579a8f5249..922105944d34 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -26,6 +26,7 @@
 static LIST_HEAD(mtd_register_hooks);
 
 DEFINE_DEV_CLASS(mtd_class, "mtd");
+EXPORT_SYMBOL(mtd_class);
 
 /**
  * mtd_buf_all_ff - check if buffer contains only 0xff
diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 667297e8fea3..8eb12522999f 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -7,6 +7,7 @@
 #include <param.h>
 
 LIST_HEAD(dsa_switch_list);
+EXPORT_SYMBOL(dsa_switch_list);
 
 u32 dsa_user_ports(struct dsa_switch *ds)
 {
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 8e1cf400e5d8..0047bf188dd2 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -38,6 +38,7 @@ struct nvmem_cell {
 };
 
 DEFINE_DEV_CLASS(nvmem_class, "nvmem");
+EXPORT_SYMBOL(nvmem_class);
 
 void nvmem_devices_print(void)
 {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index a26c1faa41d5..54fd458bd9a1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -294,7 +294,7 @@ int of_alias_get_free_id(const char *stem)
 
 	return id + 1;
 }
-EXPORT_SYMBOL_GPL(of_alias_get_highest_id);
+EXPORT_SYMBOL_GPL(of_alias_get_free_id);
 
 int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 			 const char *stem)
@@ -2072,6 +2072,7 @@ struct device_node *of_get_root_node(void)
 {
 	return root_node;
 }
+EXPORT_SYMBOL(of_get_root_node);
 
 int of_set_root_node(struct device_node *node)
 {
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index e6370b5c7f6e..32624fe05b56 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -48,6 +48,7 @@ void pci_controller_init(struct pci_controller *hose)
 
 	of_pci_bridge_init(hose->parent, hose);
 }
+EXPORT_SYMBOL(pci_controller_init);
 
 void register_pci_controller(struct pci_controller *hose)
 {
@@ -85,6 +86,7 @@ void register_pci_controller(struct pci_controller *hose)
 
 	return;
 }
+EXPORT_SYMBOL(register_pci_controller);
 
 /*
  *  Wrappers for all PCI configuration access functions.  They just check
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 2f85a0f08f08..01567aa5ae97 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -30,6 +30,7 @@ struct pinctrl_consumer_info {
 };
 
 LIST_HEAD(pinctrl_list);
+EXPORT_SYMBOL(pinctrl_list);
 
 static struct pinctrl_device *pin_to_pinctrl(unsigned int pin)
 {
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 939368a0de68..bfc075039e9e 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -10,6 +10,7 @@
 #include <init.h>
 
 DEFINE_DEV_CLASS(fb_class, "fb");
+EXPORT_SYMBOL(fb_class);
 
 static int fb_ioctl(struct cdev* cdev, unsigned int req, void *data)
 {
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 3157cc90d514..b72c7346e6a8 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -50,6 +50,7 @@ bool pstore_is_ready(void)
 {
 	return pstore_ready;
 }
+EXPORT_SYMBOL(pstore_is_ready);
 
 void pstore_log(const char *str)
 {
diff --git a/lib/parameter.c b/lib/parameter.c
index bf5dbbb05e6b..1243a12e8701 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -86,6 +86,7 @@ const char *bobject_get_param(bobject_t _bobj, const char *name)
 
 	return param->get(bobj, param);
 }
+EXPORT_SYMBOL(bobject_get_param);
 
 /**
  * bobject_set_param - set a parameter of a barebox object to a new value
diff --git a/lib/string.c b/lib/string.c
index a55f98990032..302f87a60422 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -684,6 +684,7 @@ EXPORT_SYMBOL(__nokasan_default_memset);
 #ifndef __HAVE_ARCH_MEMSET
 void *memset(void *s, int c, size_t count) __alias(__default_memset);
 void *__memset(void *s, int c, size_t count) __alias(__default_memset);
+EXPORT_SYMBOL(memset);
 #endif
 
 /**
@@ -723,6 +724,7 @@ void *memcpy(void * dest, const void *src, size_t count)
 	__alias(__default_memcpy);
 void *__memcpy(void * dest, const void *src, size_t count)
 	__alias(__default_memcpy);
+EXPORT_SYMBOL(memcpy);
 #endif
 
 void *mempcpy(void *dest, const void *src, size_t count)
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 908fa3683c36..96e06c288d28 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -27,6 +27,7 @@ int string_list_add(struct string_list *sl, const char *str)
 
 	return 0;
 }
+EXPORT_SYMBOL(string_list_add);
 
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
 {
@@ -50,6 +51,7 @@ int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
 
 	return 0;
 }
+EXPORT_SYMBOL(string_list_add_asprintf);
 
 int string_list_add_sorted(struct string_list *sl, const char *str)
 {
@@ -126,6 +128,7 @@ char *string_list_join(const struct string_list *sl, const char *joinstr)
 
 	return str;
 }
+EXPORT_SYMBOL(string_list_join);
 
 void string_list_print_by_column(struct string_list *sl)
 {
diff --git a/lib/ucs2_string.c b/lib/ucs2_string.c
index db3f34f6b70c..6f027010d3a5 100644
--- a/lib/ucs2_string.c
+++ b/lib/ucs2_string.c
@@ -113,7 +113,7 @@ ucs2_strcmp(const ucs2_char_t *a, const ucs2_char_t *b)
 {
 	return ucs2_strncmp(a, b, ~0UL);
 }
-EXPORT_SYMBOL(ucs2_strncmp);
+EXPORT_SYMBOL(ucs2_strcmp);
 
 unsigned long
 ucs2_utf8size(const ucs2_char_t *src)
diff --git a/net/eth.c b/net/eth.c
index 857bd2ee70dd..4201ed1c6b66 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -22,6 +22,7 @@
 #include <linux/stat.h>
 
 DEFINE_DEV_CLASS(eth_class, "eth");
+EXPORT_SYMBOL(eth_class);
 
 LIST_HEAD(ethaddr_list);
 
diff --git a/net/net.c b/net/net.c
index 9c5999604b67..60f325ec63de 100644
--- a/net/net.c
+++ b/net/net.c
@@ -364,6 +364,7 @@ IPaddr_t net_get_ip(struct eth_device *edev)
 {
 	return edev->ipaddr;
 }
+EXPORT_SYMBOL(net_get_ip);
 
 void net_set_netmask(struct eth_device *edev, IPaddr_t nm)
 {
-- 
2.47.3



