Delivery-date: Thu, 06 May 2021 11:31:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaM8-0001ZB-5Z
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:40 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaM4-0000iS-Ql
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ker1EsJseurewccJg/2w8b+aFflO1vKUTHliEv0PHHQ=; b=GuT2Lu4spdAT3A4OHRk0139PL
	yqjitgglS4yb2lNtCRpzG6MmaNrqo30/hh6eWCL//tA5i/PP/2GAbWpWoEMIoCQ9xxvrP/D2mtVtZ
	Rhl1qz1ya2BARYC0mN1tDL1t3bHF7gVEF8yC8s051+/tENLfovEHwGrPS0KVVNCH4gU2AFMo3MU2F
	YD6OF4PmIFALgAPzy4qcDqfeOWmXbsQZ6n8KHEH1YclOxCLXAUz1o4fJ4iN7D6UVAfhyjieqD5q13
	2UwsXRWEejCT6ziD/YBCqA5NwhFBKTgdG13fpW6b3n9dy7CYabjrCGRFJFe5yGUSDP3Ov4Dft4T3C
	8bVDRoHiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKb-003oA4-QV; Thu, 06 May 2021 09:30:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJl-003nro-Ha
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=SssE2e9ZfbLAv9a6B6BX80965tjzuZ688wLV+TQtXJU=; b=WYDU6QDhz/JGADSIdGHTzcnkRb
 GDTGkcZdlwGkD0HeCDCPSWcW5Eu/ZDwrxYOpNojsmwf3vMJ4WV1GCHgocGjWgb6S1C+VNfKH/D8jG
 S3H12UrFsmR/txjcUYXR/ppyTK5TewPxjB4yzD0mT2CnmFx47kiA9QMkJYDo9MYOHh8sh8nFLlbKS
 By+lNmCG39Fp1fHvPsh0139bynr19TAJMRpAl8pVscX9Fz78/eH9KC+cGdRfnJRCTBd9nWIBjpJxU
 w+pwKZd34byiv/fBIe0P0IEKwBIbRKdTIDM9hY9kL2n46peu2wlPcgYPuVgQhIRLGOops+QAFrERs
 qCSRjd+g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFe-UN
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:12 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pD-Jl; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lX-G0; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:53 +0200
Message-Id: <20210506092901.25461-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022907_341862_577DB810 
X-CRM114-Status: GOOD (  40.70  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/17] common: add initial barebox deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The barebox 'deep probe' or 'probe on demand' mechanism is the answer of
unwanted -EPROBE_DEFER failures. The EPROBE_DEFER error code was
introduced by commit ab3da15bc14c ("base: Introduce deferred probing")
and since then it causes a few problems.

The error is returned if either the device is not yet present or the
driver is not yet registered. This makes sense on linux systems where
modules and hot-plug devices are used very often but not for barebox.
The module support is rarely used and devices aren't hot pluggable.

The current barebox behaviour populates all devices before the drivers
are registered so all devices are present during the driver
registration. So the driver probe() function gets called immediately
after the driver registration and causes the -EPROBE_DEFER error if this
driver depends on an other not yet registered driver.

To get rid of the EPROBE_DEFER error code we need to reorder the device
population and the driver registration. All drivers must be registered
first. In an ideal world all driver can be registered by the same
initcall level. Then devices are getting populated which causes calling
the driver probe() function but this time resources/devices are created
on demand if not yet available.

Dependencies between devices are normally expressed as references to
other device nodes. With deep probe barebox provides helper functions
which take a device node and probe the device behind that node if
necessary. This means instead of returning -EPROBE_DEFER, we can now
make the desired resources available once we need them.

If the resource can't be created we are returning -ENODEV since we are
not supporting hot-plugging. Dropping EPROBE_DEFER is the long-term
goal, avoid initcall shifting is the short-term goal.

Call it deep-probe since the on-demand device creation can create very
deep stacks. This commit adds the initial support for: spi, i2c, reset,
regulator, gpio and clk resource on-demand creation. The deep-probe
mechanism must be enabled for each board to avoid breaking changes using
deep_probe_enable(). This can be changed later after all boards are
converted to the new mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-8-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile                   |   1 +
 common/deep-probe.c               |  39 +++++++
 drivers/base/driver.c             |  11 +-
 drivers/clk/clk.c                 |   5 +
 drivers/i2c/i2c.c                 |   8 ++
 drivers/of/base.c                 |  13 ++-
 drivers/of/of_gpio.c              |   4 +
 drivers/of/platform.c             | 162 ++++++++++++++++++++++++++++++
 drivers/regulator/core.c          |   6 ++
 drivers/reset/core.c              |   4 +
 drivers/spi/spi.c                 |   2 +
 include/asm-generic/barebox.lds.h |  10 +-
 include/deep-probe.h              |  26 +++++
 include/of.h                      |  26 +++++
 14 files changed, 314 insertions(+), 3 deletions(-)
 create mode 100644 common/deep-probe.c
 create mode 100644 include/deep-probe.h

diff --git a/common/Makefile b/common/Makefile
index c0b45d263e..aa06e6e82e 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -3,6 +3,7 @@ obj-y				+= memory_display.o
 pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
 obj-y				+= console_common.o
+obj-y				+= deep-probe.o
 obj-y				+= startup.o
 obj-y				+= misc.o
 obj-pbl-y			+= memsize.o
diff --git a/common/deep-probe.c b/common/deep-probe.c
new file mode 100644
index 0000000000..1020ad93b7
--- /dev/null
+++ b/common/deep-probe.c
@@ -0,0 +1,39 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <deep-probe.h>
+#include <of.h>
+
+enum deep_probe_state {
+	DEEP_PROBE_UNKONWN = -1,
+	DEEP_PROBE_NOT_SUPPORTED,
+	DEEP_PROBE_SUPPORTED
+};
+
+static enum deep_probe_state boardstate = DEEP_PROBE_UNKONWN;
+
+bool deep_probe_is_supported(void)
+{
+	struct deep_probe_entry *board;
+
+	if (boardstate > DEEP_PROBE_UNKONWN)
+		return boardstate;
+
+	/* determine boardstate */
+	for (board = &__barebox_deep_probe_start;
+	     board != &__barebox_deep_probe_end; board++) {
+		const struct of_device_id *matches = board->device_id;
+
+		for (; matches->compatible; matches++) {
+			if (of_machine_is_compatible(matches->compatible)) {
+				boardstate = DEEP_PROBE_SUPPORTED;
+				printk("Deep probe supported due to %s\n", matches->compatible);
+				return true;
+			}
+		}
+	}
+
+	boardstate = DEEP_PROBE_NOT_SUPPORTED;
+	return false;
+}
+EXPORT_SYMBOL_GPL(deep_probe_is_supported);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f60533c59e..58e6a8fcc9 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -21,6 +21,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <deep-probe.h>
 #include <driver.h>
 #include <malloc.h>
 #include <console.h>
@@ -95,7 +96,15 @@ int device_probe(struct device_d *dev)
 	if (ret == -EPROBE_DEFER) {
 		list_del(&dev->active);
 		list_add(&dev->active, &deferred);
-		dev_dbg(dev, "probe deferred\n");
+
+		/*
+		 * -EPROBE_DEFER should never appear on a deep-probe machine so
+		 * inform the user immediately.
+		 */
+		if (deep_probe_is_supported())
+			dev_err(dev, "probe deferred\n");
+		else
+			dev_dbg(dev, "probe deferred\n");
 		return ret;
 	}
 
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b04d44593b..e40dfae9ce 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -439,6 +439,11 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 {
 	struct of_clk_provider *provider;
 	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
+	int ret;
+
+	ret = of_device_ensure_probed(clkspec->np);
+	if (ret)
+		return ERR_PTR(ret);
 
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 57d8c7017f..12aac42794 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -407,6 +407,9 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	}
 	client->dev.info = i2c_info;
 
+	if (chip->of_node)
+		chip->of_node->dev = &client->dev;
+
 	return client;
 }
 
@@ -548,6 +551,11 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 {
 	struct i2c_adapter *adap;
+	int ret;
+
+	ret = of_device_ensure_probed(node);
+	if (ret)
+		return ERR_PTR(ret);
 
 	for_each_i2c_adapter(adap)
 		if (adap->dev.device_node == node)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1e3921f915..00141a394f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -15,6 +15,7 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
+#include <deep-probe.h>
 #include <of.h>
 #include <of_address.h>
 #include <errno.h>
@@ -1708,6 +1709,15 @@ int of_set_root_node(struct device_node *node)
 	return 0;
 }
 
+static int barebox_of_populate(void)
+{
+	if (IS_ENABLED(CONFIG_OFDEVICE) && deep_probe_is_supported())
+		return of_probe();
+
+	return 0;
+}
+of_populate_initcall(barebox_of_populate);
+
 void barebox_register_of(struct device_node *root)
 {
 	if (root_node)
@@ -1718,7 +1728,8 @@ void barebox_register_of(struct device_node *root)
 
 	if (IS_ENABLED(CONFIG_OFDEVICE)) {
 		of_clk_init(root, NULL);
-		of_probe();
+		if (!deep_probe_is_supported())
+			of_probe();
 	}
 }
 
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 7cbeeaf69e..4d3ded0599 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -63,6 +63,10 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 		return ret;
 	}
 
+	ret = of_device_ensure_probed(out_args.np);
+	if (ret)
+		return ret;
+
 	dev = of_find_device_by_node(out_args.np);
 	if (!dev) {
 		pr_debug("%s: unable to find device of node %s\n",
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 01de6f98af..4b79a9bc10 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -15,6 +15,7 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
+#include <deep-probe.h>
 #include <malloc.h>
 #include <of.h>
 #include <of_address.h>
@@ -29,6 +30,12 @@
 struct device_d *of_find_device_by_node(struct device_node *np)
 {
 	struct device_d *dev;
+	int ret;
+
+	ret = of_device_ensure_probed(np);
+	if (ret)
+		return NULL;
+
 	for_each_device(dev)
 		if (dev->device_node == np)
 			return dev;
@@ -353,3 +360,158 @@ int of_platform_populate(struct device_node *root,
 	return rc;
 }
 EXPORT_SYMBOL_GPL(of_platform_populate);
+
+static struct device_d *of_device_create_on_demand(struct device_node *np)
+{
+	struct device_node *parent;
+	struct device_d *parent_dev, *dev;
+
+	parent = of_get_parent(np);
+	if (!parent)
+		return NULL;
+
+	/* Create all parent devices needed for the requested device */
+	parent_dev = parent->dev ? : of_device_create_on_demand(parent);
+	if (IS_ERR(parent_dev))
+		return parent_dev;
+
+	/*
+	 * Parent devices like i2c/spi controllers are populating their own
+	 * devices. So it can be that the requested device already exists after
+	 * the parent device creation.
+	 */
+	if (np->dev)
+		return np->dev;
+
+	pr_debug("%s: Create %s (%s) on demand\n", __func__,
+		 np->name, np->full_name);
+
+	if (of_device_is_compatible(np, "arm,primecell"))
+		dev = of_amba_device_create(np);
+	else
+		dev = of_platform_device_create(np, parent_dev);
+
+	return dev ? : ERR_PTR(-ENODEV);
+}
+
+/**
+ * of_device_ensure_probed() - ensures that a device is probed
+ *
+ * @np: the device_node handle which should be probed
+ *
+ * Ensures that the device is populated and probed so frameworks can make use of
+ * it.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device can't be populated, the driver is
+ *	     missing or the driver probe returns an error.
+ */
+int of_device_ensure_probed(struct device_node *np)
+{
+	struct device_d *dev;
+
+	if (!deep_probe_is_supported())
+		return 0;
+
+	dev = of_device_create_on_demand(np);
+	if (IS_ERR(dev))
+		return PTR_ERR(dev);
+
+	BUG_ON(!dev);
+
+	/*
+	 * The deep-probe mechanism relies on the fact that all necessary
+	 * drivers are added before the device creation. Furthermore deep-probe
+	 * is the answer to the EPROBE_DEFER errno so we must ensure that the
+	 * driver was probed successfully after the device creation. Both
+	 * requirements are fulfilled if 'dev->driver' is not NULL.
+	 */
+	if (!dev->driver)
+		return -ENODEV;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_device_ensure_probed);
+
+/**
+ * of_device_ensure_probed_by_alias() - ensures that a device is probed
+ *
+ * @alias: the alias string to search for a device
+ *
+ * The function search for a given alias string and ensures that the device is
+ * populated and probed if found.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device can't be populated, the driver is
+ *	     missing or the driver probe returns an error
+ *	   %-EINVAL if alias can't be found
+ */
+int of_device_ensure_probed_by_alias(const char *alias)
+{
+	struct device_node *dev_node;
+
+	dev_node = of_find_node_by_alias(NULL, alias);
+	if (!dev_node)
+		return -EINVAL;
+
+	return of_device_ensure_probed(dev_node);
+}
+EXPORT_SYMBOL_GPL(of_device_ensure_probed_by_alias);
+
+/**
+ * of_devices_ensure_probed_by_dev_id() - ensures that devices are probed
+ *
+ * @ids: the matching 'struct of_device_id' ids
+ *
+ * The function start searching the device tree from @np and populates and
+ * probes devices which match @ids.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	     the driver is missing or the driver probe returns an error
+ */
+int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids)
+{
+	struct device_node *np;
+	int err, ret = 0;
+
+	for_each_matching_node(np, ids) {
+		if (!of_device_is_available(np))
+			continue;
+
+		err = of_device_ensure_probed(np);
+		if (err)
+			ret = err;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_dev_id);
+
+/**
+ * of_devices_ensure_probed_by_property() - ensures that devices are probed
+ *
+ * @property_name: The property name to search for
+ *
+ * The function starts searching the whole device tree and populates and probes
+ * devices which matches @property_name.
+ *
+ * Return: %0 on success
+ *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	     the driver is missing or the driver probe returns an error
+ */
+int of_devices_ensure_probed_by_property(const char *property_name)
+{
+	struct device_node *node;
+
+	for_each_node_with_property(node, property_name) {
+		int ret;
+
+		ret = of_device_ensure_probed(node);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index ac3a9b048e..097f7d779b 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -175,6 +175,7 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 		return PTR_ERR(ri);
 
 	ri->node = node;
+	node->dev = rd->dev;
 
 	if (rd->desc->off_on_delay)
 		ri->enable_time_us = rd->desc->off_on_delay;
@@ -197,6 +198,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	char *propname;
 	struct regulator_internal *ri;
 	struct device_node *node;
+	int ret;
 
 	propname = basprintf("%s-supply", supply);
 
@@ -228,6 +230,10 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 		goto out;
 	}
 
+	ret = of_device_ensure_probed(node);
+	if (ret)
+		return ERR_PTR(ret);
+
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
 			dev_dbg(dev, "Using %s regulator from %s\n",
diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 26a54f21df..e2edca6658 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -168,6 +168,10 @@ static struct reset_control *of_reset_control_get(struct device_node *node,
 	if (ret)
 		return ERR_PTR(ret);
 
+	ret = of_device_ensure_probed(args.np);
+	if (ret)
+		return ERR_PTR(ret);
+
 	rcdev = NULL;
 	list_for_each_entry(r, &reset_controller_list, list) {
 		if (args.np == r->of_node) {
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8421d9d7c1..d1d3bdcc41 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -107,6 +107,8 @@ struct spi_device *spi_new_device(struct spi_controller *ctrl,
 	if (status)
 		goto fail;
 
+	chip->device_node->dev = &proxy->dev;
+
 	return proxy;
 fail:
 	free(proxy);
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index a7d32160d1..c5f9d97547 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -114,6 +114,13 @@
 	KEEP(*(.rsa_keys.rodata.*));		\
 	__rsa_keys_end = .;			\
 
+#define BAREBOX_DEEP_PROBE			\
+	STRUCT_ALIGN();				\
+	__barebox_deep_probe_start = .;		\
+	KEEP(*(SORT_BY_NAME(.barebox_deep_probe*)))	\
+	__barebox_deep_probe_end = .;
+
+
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()  . = ALIGN(8);                      \
 			__ctors_start = .;                 \
@@ -136,7 +143,8 @@
 	BAREBOX_CLK_TABLE			\
 	BAREBOX_DTB				\
 	BAREBOX_RSA_KEYS			\
-	BAREBOX_PCI_FIXUP
+	BAREBOX_PCI_FIXUP			\
+	BAREBOX_DEEP_PROBE
 
 #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
 CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
diff --git a/include/deep-probe.h b/include/deep-probe.h
new file mode 100644
index 0000000000..f75ad1065c
--- /dev/null
+++ b/include/deep-probe.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DEEP_PROBE_H
+#define __DEEP_PROBE_H
+
+#include <linux/stringify.h>
+#include <linux/types.h>
+
+struct deep_probe_entry {
+	const struct of_device_id *device_id;
+};
+
+bool deep_probe_is_supported(void);
+
+extern struct deep_probe_entry __barebox_deep_probe_start;
+extern struct deep_probe_entry __barebox_deep_probe_end;
+
+#define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_device_id)			\
+	static const struct deep_probe_entry _entry			\
+	__attribute__ ((used,section (".barebox_deep_probe_" __stringify(_entry)))) = { \
+		.device_id = _device_id,				\
+	}
+
+#define BAREBOX_DEEP_PROBE_ENABLE(_device_id)	\
+	__BAREBOX_DEEP_PROBE_ENABLE(__UNIQUE_ID(deepprobe),_device_id)
+
+#endif /* __DEEP_PROBE_H */
diff --git a/include/of.h b/include/of.h
index a3527c1afd..78c06ec2c3 100644
--- a/include/of.h
+++ b/include/of.h
@@ -276,6 +276,11 @@ extern struct device_d *of_device_enable_and_register_by_name(const char *name);
 extern struct device_d *of_device_enable_and_register_by_alias(
 							const char *alias);
 
+extern int of_device_ensure_probed(struct device_node *np);
+extern int of_device_ensure_probed_by_alias(const char *alias);
+extern int of_devices_ensure_probed_by_property(const char *property_name);
+extern int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids);
+
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
@@ -359,6 +364,27 @@ static inline struct device_d *of_platform_device_create(struct device_node *np,
 	return NULL;
 }
 
+static inline int of_device_ensure_probed(struct device_node *np)
+{
+	return 0;
+}
+
+static inline int of_device_ensure_probed_by_alias(const char *alias)
+{
+	return 0;
+}
+
+static inline int of_devices_ensure_probed_by_property(const char *property_name)
+{
+	return 0;
+}
+
+static inline int
+of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids)
+{
+	return 0;
+}
+
 static inline int of_bus_n_addr_cells(struct device_node *np)
 {
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

