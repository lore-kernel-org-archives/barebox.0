Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjxFN-0006YC-3y
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 02:17:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id c25so3700240pgb.4
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 18:17:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 18:16:50 -0800
Message-Id: <20190117021700.4443-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190117021700.4443-1-andrew.smirnov@gmail.com>
References: <20190117021700.4443-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 07/17] drivers: base: Port power management code from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port an extremely abridged version of power management/power domain
code from Linux as a dependency of i.MX7D PCIe work. Currenlty only
bare minimum of functionality is implemented.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/Kconfig         |   1 +
 drivers/base/Kconfig    |   3 +
 drivers/base/Makefile   |   4 +-
 drivers/base/platform.c |   7 ++
 drivers/base/power.c    | 249 ++++++++++++++++++++++++++++++++++++++++
 include/pm_domain.h     |  82 +++++++++++++
 6 files changed, 345 insertions(+), 1 deletion(-)
 create mode 100644 drivers/base/Kconfig
 create mode 100644 drivers/base/power.c
 create mode 100644 include/pm_domain.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 1e0246da6d..c3bf9dfe18 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,5 +1,6 @@
 menu "Drivers"
 
+source "drivers/base/Kconfig"
 source "drivers/efi/Kconfig"
 source "drivers/of/Kconfig"
 source "drivers/aiodev/Kconfig"
diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
new file mode 100644
index 0000000000..1e13e5ed9d
--- /dev/null
+++ b/drivers/base/Kconfig
@@ -0,0 +1,3 @@
+
+config PM_GENERIC_DOMAINS
+	bool
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 4bd4217745..6d2cef8e1a 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -2,4 +2,6 @@ obj-y	+= bus.o
 obj-y	+= driver.o
 obj-y	+= platform.o
 obj-y	+= resource.o
-obj-y	+= regmap/
\ No newline at end of file
+obj-y	+= regmap/
+
+obj-$(CONFIG_PM_GENERIC_DOMAINS) += power.o
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 85bdfb0149..1d3fa2eb44 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -21,9 +21,16 @@
 #include <errno.h>
 #include <init.h>
 #include <of.h>
+#include <pm_domain.h>
 
 static int platform_probe(struct device_d *dev)
 {
+	int ret;
+
+	ret = genpd_dev_pm_attach(dev);
+	if (ret < 0)
+		return ret;
+
 	return dev->driver->probe(dev);
 }
 
diff --git a/drivers/base/power.c b/drivers/base/power.c
new file mode 100644
index 0000000000..12674ca7d9
--- /dev/null
+++ b/drivers/base/power.c
@@ -0,0 +1,249 @@
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <of.h>
+
+#include <pm_domain.h>
+
+#define genpd_status_on(genpd)		(genpd->status == GPD_STATE_ACTIVE)
+
+static LIST_HEAD(gpd_list);
+
+/**
+ * pm_genpd_init - Initialize a generic I/O PM domain object.
+ * @genpd: PM domain object to initialize.
+ * @gov: PM domain governor to associate with the domain (may be NULL).
+ * @is_off: Initial value of the domain's power_is_off field.
+ *
+ * Returns 0 on successful initialization, else a negative error code.
+ */
+int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off)
+{
+	if (IS_ERR_OR_NULL(genpd))
+		return -EINVAL;
+
+	genpd->status = is_off ? GPD_STATE_POWER_OFF : GPD_STATE_ACTIVE;
+
+	list_add(&genpd->gpd_list_node, &gpd_list);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(pm_genpd_init);
+
+/**
+ * struct of_genpd_provider - PM domain provider registration structure
+ * @link: Entry in global list of PM domain providers
+ * @node: Pointer to device tree node of PM domain provider
+ * @xlate: Provider-specific xlate callback mapping a set of specifier cells
+ *         into a PM domain.
+ * @data: context pointer to be passed into @xlate callback
+ */
+struct of_genpd_provider {
+	struct list_head link;
+	struct device_node *node;
+	genpd_xlate_t xlate;
+	void *data;
+};
+
+/* List of registered PM domain providers. */
+static LIST_HEAD(of_genpd_providers);
+
+static bool genpd_present(const struct generic_pm_domain *genpd)
+{
+	const struct generic_pm_domain *gpd;
+
+	if (IS_ERR_OR_NULL(genpd))
+		return false;
+
+	list_for_each_entry(gpd, &gpd_list, gpd_list_node)
+		if (gpd == genpd)
+			return true;
+
+	return false;
+}
+
+/**
+ * genpd_xlate_simple() - Xlate function for direct node-domain mapping
+ * @genpdspec: OF phandle args to map into a PM domain
+ * @data: xlate function private data - pointer to struct generic_pm_domain
+ *
+ * This is a generic xlate function that can be used to model PM domains that
+ * have their own device tree nodes. The private data of xlate function needs
+ * to be a valid pointer to struct generic_pm_domain.
+ */
+static struct generic_pm_domain *genpd_xlate_simple(
+					struct of_phandle_args *genpdspec,
+					void *data)
+{
+	return data;
+}
+
+/**
+ * genpd_add_provider() - Register a PM domain provider for a node
+ * @np: Device node pointer associated with the PM domain provider.
+ * @xlate: Callback for decoding PM domain from phandle arguments.
+ * @data: Context pointer for @xlate callback.
+ */
+static int genpd_add_provider(struct device_node *np, genpd_xlate_t xlate,
+			      void *data)
+{
+	struct of_genpd_provider *cp;
+
+	cp = kzalloc(sizeof(*cp), GFP_KERNEL);
+	if (!cp)
+		return -ENOMEM;
+
+	cp->node  = np;
+	cp->data  = data;
+	cp->xlate = xlate;
+
+	list_add(&cp->link, &of_genpd_providers);
+	pr_debug("Added domain provider from %pOF\n", np);
+
+	return 0;
+}
+
+/**
+ * of_genpd_add_provider_simple() - Register a simple PM domain provider
+ * @np: Device node pointer associated with the PM domain provider.
+ * @genpd: Pointer to PM domain associated with the PM domain provider.
+ */
+int of_genpd_add_provider_simple(struct device_node *np,
+				 struct generic_pm_domain *genpd)
+{
+	int ret = -EINVAL;
+
+	if (!np || !genpd)
+		return -EINVAL;
+
+	if (genpd_present(genpd))
+		ret = genpd_add_provider(np, genpd_xlate_simple, genpd);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_genpd_add_provider_simple);
+
+/**
+ * genpd_get_from_provider() - Look-up PM domain
+ * @genpdspec: OF phandle args to use for look-up
+ *
+ * Looks for a PM domain provider under the node specified by @genpdspec and if
+ * found, uses xlate function of the provider to map phandle args to a PM
+ * domain.
+ *
+ * Returns a valid pointer to struct generic_pm_domain on success or ERR_PTR()
+ * on failure.
+ */
+static struct generic_pm_domain *genpd_get_from_provider(
+					struct of_phandle_args *genpdspec)
+{
+	struct generic_pm_domain *genpd = ERR_PTR(-ENOENT);
+	struct of_genpd_provider *provider;
+
+	if (!genpdspec)
+		return ERR_PTR(-EINVAL);
+
+	/* Check if we have such a provider in our array */
+	list_for_each_entry(provider, &of_genpd_providers, link) {
+		if (provider->node == genpdspec->np)
+			genpd = provider->xlate(genpdspec, provider->data);
+		if (!IS_ERR(genpd))
+			break;
+	}
+
+	return genpd;
+}
+
+static int _genpd_power_on(struct generic_pm_domain *genpd, bool timed)
+{
+	if (!genpd->power_on)
+		return 0;
+
+	return genpd->power_on(genpd);
+}
+
+/**
+ * genpd_power_on - Restore power to a given PM domain and its masters.
+ * @genpd: PM domain to power up.
+ * @depth: nesting count for lockdep.
+ *
+ * Restore power to @genpd and all of its masters so that it is possible to
+ * resume a device belonging to it.
+ */
+static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
+{
+	int ret;
+
+	if (genpd_status_on(genpd))
+		return 0;
+
+	ret = _genpd_power_on(genpd, true);
+	if (ret)
+		return ret;
+
+	genpd->status = GPD_STATE_ACTIVE;
+
+	return 0;
+}
+
+static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
+				 unsigned int index, bool power_on)
+{
+	struct of_phandle_args pd_args;
+	struct generic_pm_domain *pd;
+	int ret;
+
+	ret = of_parse_phandle_with_args(np, "power-domains",
+				"#power-domain-cells", index, &pd_args);
+	if (ret < 0)
+		return ret;
+
+	pd = genpd_get_from_provider(&pd_args);
+	if (IS_ERR(pd)) {
+		ret = PTR_ERR(pd);
+		dev_dbg(dev, "%s() failed to find PM domain: %d\n",
+			__func__, ret);
+		/*
+		 * Assume that missing genpds are unresolved
+		 * dependency are report them as deferred
+		 */
+		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
+	}
+
+	dev_dbg(dev, "adding to PM domain %s\n", pd->name);
+
+	if (power_on)
+		ret = genpd_power_on(pd, 0);
+
+	return ret ?: 1;
+}
+
+/**
+ * genpd_dev_pm_attach - Attach a device to its PM domain using DT.
+ * @dev: Device to attach.
+ *
+ * Parse device's OF node to find a PM domain specifier. If such is found,
+ * attaches the device to retrieved pm_domain ops.
+ *
+ * Returns 1 on successfully attached PM domain, 0 when the device don't need a
+ * PM domain or when multiple power-domains exists for it, else a negative error
+ * code. Note that if a power-domain exists for the device, but it cannot be
+ * found or turned on, then return -EPROBE_DEFER to ensure that the device is
+ * not probed and to re-try again later.
+ */
+int genpd_dev_pm_attach(struct device_d *dev)
+{
+	if (!dev->device_node)
+		return 0;
+
+	/*
+	 * Devices with multiple PM domains must be attached separately, as we
+	 * can only attach one PM domain per device.
+	 */
+	if (of_count_phandle_with_args(dev->device_node, "power-domains",
+				       "#power-domain-cells") != 1)
+		return 0;
+
+	return __genpd_dev_pm_attach(dev, dev->device_node, 0, true);
+}
+EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
diff --git a/include/pm_domain.h b/include/pm_domain.h
new file mode 100644
index 0000000000..6d59587ece
--- /dev/null
+++ b/include/pm_domain.h
@@ -0,0 +1,82 @@
+#ifndef _PM_DOMAIN_H
+#define _PM_DOMAIN_H
+
+enum gpd_status {
+	GPD_STATE_ACTIVE = 0,	/* PM domain is active */
+	GPD_STATE_POWER_OFF,	/* PM domain is off */
+};
+
+struct generic_pm_domain {
+	const char *name;
+	struct list_head gpd_list_node;	/* Node in the global PM domains list */
+
+	enum gpd_status status;	/* Current state of the domain */
+
+	int (*power_off)(struct generic_pm_domain *domain);
+	int (*power_on)(struct generic_pm_domain *domain);
+};
+
+typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
+						   void *data);
+
+#ifdef CONFIG_PM_GENERIC_DOMAINS
+
+int genpd_dev_pm_attach(struct device_d *dev);
+
+/**
+ * dev_pm_domain_attach - Attach a device to its PM domain.
+ * @dev: Device to attach.
+ * @power_on: Used to indicate whether we should power on the device.
+ *
+ * The @dev may only be attached to a single PM domain. By iterating through
+ * the available alternatives we try to find a valid PM domain for the device.
+ * As attachment succeeds, the ->detach() callback in the struct dev_pm_domain
+ * should be assigned by the corresponding attach function.
+ *
+ * This function should typically be invoked from subsystem level code during
+ * the probe phase. Especially for those that holds devices which requires
+ * power management through PM domains.
+ *
+ * Callers must ensure proper synchronization of this function with power
+ * management callbacks.
+ *
+ * Returns 0 on successfully attached PM domain or negative error code.
+ */
+static inline int dev_pm_domain_attach(struct device_d *dev, bool power_on)
+{
+	return genpd_dev_pm_attach(dev);
+}
+
+int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
+
+int of_genpd_add_provider_simple(struct device_node *np,
+				 struct generic_pm_domain *genpd);
+
+#else
+
+static inline int pm_genpd_init(struct generic_pm_domain *genpd,
+				void *gov, bool is_off)
+{
+	return -ENOSYS;
+}
+
+static inline int genpd_dev_pm_attach(struct device_d *dev)
+{
+	return 0;
+}
+
+static inline int dev_pm_domain_attach(struct device_d *dev, bool power_on)
+{
+	return 0;
+}
+
+static inline int
+of_genpd_add_provider_simple(struct device_node *np,
+			     struct generic_pm_domain *genpd)
+{
+	return -ENOTSUPP;
+}
+
+#endif
+
+#endif
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
