Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034x-BI
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:07 +0200
Message-Id: <1275645309-9756-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] rework device parameters
To: barebox@lists.infradead.org

Change device parameters so that the memory management is in generic
code. This also removes the need of storing statically initialized
parameters as they are stored in a struct list_head for each device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c    |   40 ++++++-----
 drivers/nand/nand.c |    7 +-
 drivers/video/fb.c  |   21 +++---
 drivers/video/imx.c |   17 +++--
 include/console.h   |    6 --
 include/driver.h    |    2 +-
 include/fb.h        |    2 -
 include/net.h       |    6 --
 include/param.h     |   15 ++++-
 lib/driver.c        |   12 +--
 lib/parameter.c     |  195 ++++++++++++++++++++++++++++++++-------------------
 net/eth.c           |   48 ++++---------
 12 files changed, 201 insertions(+), 170 deletions(-)

diff --git a/common/console.c b/common/console.c
index d3d31f7..7199d9a 100644
--- a/common/console.c
+++ b/common/console.c
@@ -57,26 +57,32 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
 	struct console_device *cdev = dev->type_data;
+	char active[4];
 	unsigned int flag = 0, i = 0;
 
+	if (!val)
+		dev_param_set_generic(dev, param, NULL);
+
 	if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
-		cdev->active[i++] = 'i';
+		active[i++] = 'i';
 		flag |= CONSOLE_STDIN;
 	}
 
 	if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
-		cdev->active[i++] = 'o';
+		active[i++] = 'o';
 		flag |= CONSOLE_STDOUT;
 	}
 
 	if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
-		cdev->active[i++] = 'e';
+		active[i++] = 'e';
 		flag |= CONSOLE_STDERR;
 	}
 
-	cdev->active[i] = 0;
+	active[i] = 0;
 	cdev->f_active = flag;
 
+	dev_param_set_generic(dev, param, active);
+
 	return 0;
 }
 
@@ -85,8 +91,12 @@ static int console_baudrate_set(struct device_d *dev, struct param_d *param,
 {
 	struct console_device *cdev = dev->type_data;
 	int baudrate;
+	char baudstr[16];
 	unsigned char c;
 
+	if (!val)
+		dev_param_set_generic(dev, param, NULL);
+
 	baudrate = simple_strtoul(val, NULL, 10);
 
 	if (cdev->f_active) {
@@ -101,7 +111,8 @@ static int console_baudrate_set(struct device_d *dev, struct param_d *param,
 	} else
 		cdev->setbrg(cdev, baudrate);
 
-	sprintf(cdev->baudrate_string, "%d", baudrate);
+	sprintf(baudstr, "%d", baudrate);
+	dev_param_set_generic(dev, param, baudstr);
 
 	return 0;
 }
@@ -129,29 +140,20 @@ int console_register(struct console_device *newcdev)
 	register_device(dev);
 
 	if (newcdev->setbrg) {
-		newcdev->baudrate_param.set = console_baudrate_set;
-		newcdev->baudrate_param.name = "baudrate";
-		sprintf(newcdev->baudrate_string, "%d",
-			CONFIG_BAUDRATE);
-		console_baudrate_set(dev, &newcdev->baudrate_param,
-			newcdev->baudrate_string);
-		newcdev->baudrate_param.value = newcdev->baudrate_string;
-		dev_add_param(dev, &newcdev->baudrate_param);
+		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
+		dev_set_param(dev, "baudrate", "115200");
 	}
 
-	newcdev->active_param.set = console_std_set;
-	newcdev->active_param.name  = "active";
-	newcdev->active_param.value = newcdev->active;
-	dev_add_param(dev, &newcdev->active_param);
+	dev_add_param(dev, "active", console_std_set, NULL, 0);
 
 	initialized = CONSOLE_INIT_FULL;
 #ifdef CONFIG_CONSOLE_ACTIVATE_ALL
-	console_std_set(dev, &newcdev->active_param, "ioe");
+	dev_set_param(dev, "active", "ioe");
 #endif
 #ifdef CONFIG_CONSOLE_ACTIVATE_FIRST
 	if (list_empty(&console_list)) {
 		first = 1;
-		console_std_set(dev, &newcdev->active_param, "ioe");
+		dev_set_param(dev, "active", "ioe");
 	}
 #endif
 
diff --git a/drivers/nand/nand.c b/drivers/nand/nand.c
index bcf52bd..4927231 100644
--- a/drivers/nand/nand.c
+++ b/drivers/nand/nand.c
@@ -210,6 +210,7 @@ static struct file_operations nand_ops_oob = {
 int add_mtd_device(struct mtd_info *mtd)
 {
 	struct nand_chip *chip = mtd->priv;
+	char str[16];
 
 	strcpy(mtd->class_dev.name, "nand");
 	register_device(&mtd->class_dev);
@@ -220,10 +221,8 @@ int add_mtd_device(struct mtd_info *mtd)
 	mtd->cdev.priv = mtd;
 	mtd->cdev.dev = &mtd->class_dev;
 
-	mtd->param_size.flags = PARAM_FLAG_RO;
-	mtd->param_size.name = "size";
-	mtd->param_size.value = asprintf("%u", mtd->size);
-	dev_add_param(&mtd->class_dev, &mtd->param_size);
+	sprintf(str, "%u", mtd->size);
+	dev_add_param_fixed(&mtd->class_dev, "size", str);
 
 	devfs_create(&mtd->cdev);
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 00a0f6a..841c3af 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -32,15 +32,22 @@ static int fb_enable_set(struct device_d *dev, struct param_d *param,
 {
 	struct fb_info *info = dev->priv;
 	int enable;
+	char *new;
+
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
 
 	enable = simple_strtoul(val, NULL, 0);
 
-	if (enable)
+	if (enable) {
 		info->fbops->fb_enable(info);
-	else
+		new = "1";
+	} else {
 		info->fbops->fb_disable(info);
+		new = "0";
+	}
 
-	sprintf(info->enable_string, "%d", !!enable);
+	dev_param_set_generic(dev, param, new);
 
 	return 0;
 }
@@ -71,13 +78,9 @@ int register_framebuffer(struct fb_info *info)
 
 	sprintf(dev->name, "fb");
 
-	info->param_enable.set = fb_enable_set;
-	info->param_enable.name = "enable";
-	sprintf(info->enable_string, "%d", 0);
-	info->param_enable.value = info->enable_string;
-	dev_add_param(dev, &info->param_enable);
-
 	register_device(&info->dev);
+	dev_add_param(dev, "enable", fb_enable_set, NULL, 0);
+	dev_set_param(dev, "enable", "0");
 
 	devfs_create(&info->cdev);
 
diff --git a/drivers/video/imx.c b/drivers/video/imx.c
index 67cae34..d9ba643 100644
--- a/drivers/video/imx.c
+++ b/drivers/video/imx.c
@@ -154,8 +154,6 @@ struct imxfb_info {
 
 
 	struct fb_info		overlay;
-	struct param_d		param_alpha;
-	char			alpha_string[4];
 };
 
 #define IMX_NAME	"IMX"
@@ -427,8 +425,12 @@ static int imxfb_alpha_set(struct device_d *dev, struct param_d *param,
 	struct fb_info *overlay = dev->priv;
 	struct imxfb_info *fbi = overlay->priv;
 	int alpha;
+	char alphastr[16];
 	unsigned int tmp;
 
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
 	alpha = simple_strtoul(val, NULL, 0);
 	alpha &= 0xff;
 
@@ -437,7 +439,9 @@ static int imxfb_alpha_set(struct device_d *dev, struct param_d *param,
 	tmp |= LGWCR_GWAV(alpha);
 	writel(tmp , fbi->regs + LCDC_LGWCR);
 
-	sprintf(fbi->alpha_string, "%d", alpha);
+	sprintf(alphastr, "%d", alpha);
+
+	dev_param_set_generic(dev, param, alphastr);
 
 	return 0;
 }
@@ -502,11 +506,8 @@ static int imxfb_register_overlay(struct imxfb_info *fbi, void *fb)
 		return ret;
 	}
 
-	fbi->param_alpha.set = imxfb_alpha_set;
-	fbi->param_alpha.name = "alpha";
-	sprintf(fbi->alpha_string, "%d", 0);
-	fbi->param_alpha.value = fbi->alpha_string;
-	dev_add_param(&overlay->dev, &fbi->param_alpha);
+	dev_add_param(&overlay->dev, "alpha", imxfb_alpha_set, NULL, 0);
+	dev_set_param(&overlay->dev, "alpha", "0");
 
 	return 0;
 }
diff --git a/include/console.h b/include/console.h
index 3568c56..3bcc5db 100644
--- a/include/console.h
+++ b/include/console.h
@@ -46,12 +46,6 @@ struct console_device {
 
 	unsigned char f_caps;
 	unsigned char f_active;
-
-	struct param_d baudrate_param;
-	char baudrate_string[8];
-
-	struct param_d active_param;
-	char active[4];
 };
 
 int console_register(struct console_device *cdev);
diff --git a/include/driver.h b/include/driver.h
index 1dde38e..6950c02 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -98,7 +98,7 @@ struct device_d {
 
 	/*! The parameters for this device. This is used to carry information
 	 * of board specific data from the board code to the device driver. */
-	struct param_d *param;
+	struct list_head parameters;
 
 	struct list_head cdevs;
 };
diff --git a/include/fb.h b/include/fb.h
index f213c42..218500b 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -80,8 +80,6 @@ struct fb_info {
 
 	struct fb_ops *fbops;
 	struct device_d dev;		/* This is this fb device */
-	struct param_d param_enable;
-	char enable_string[1];
 
 	void *screen_base;
 
diff --git a/include/net.h b/include/net.h
index 627b18b..f0321a7 100644
--- a/include/net.h
+++ b/include/net.h
@@ -41,12 +41,6 @@ struct eth_device {
 	struct eth_device *next;
 	void *priv;
 
-	struct param_d param_ip;
-	struct param_d param_netmask;
-	struct param_d param_gateway;
-	struct param_d param_serverip;
-	struct param_d param_ethaddr;
-
 	struct device_d dev;
 
 	struct list_head list;
diff --git a/include/param.h b/include/param.h
index fe4468e..207ad50 100644
--- a/include/param.h
+++ b/include/param.h
@@ -2,6 +2,7 @@
 #define PARAM_H
 
 #include <linux/types.h>
+#include <linux/list.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
 
@@ -15,12 +16,24 @@ struct param_d {
 	char *name;
 	struct param_d *next;
 	char *value;
+	struct list_head list;
 };
 
 const char *dev_get_param(struct device_d *dev, const char *name);
 int dev_set_param(struct device_d *dev, const char *name, const char *val);
 struct param_d *get_param_by_name(struct device_d *dev, const char *name);
-int dev_add_param(struct device_d *dev, struct param_d *par);
+
+int dev_add_param(struct device_d *dev, char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		char *(*get)(struct device_d *, struct param_d *p),
+		unsigned long flags);
+
+int dev_add_param_fixed(struct device_d *dev, char *name, char *value);
+
+void dev_remove_parameters(struct device_d *dev);
+
+int dev_param_set_generic(struct device_d *dev, struct param_d *p,
+		const char *val);
 
 /* Convenience functions to handle a parameter as an ip address */
 int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip);
diff --git a/lib/driver.c b/lib/driver.c
index f433c3e..b600745 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -107,6 +107,7 @@ int register_device(struct device_d *new_device)
 	list_add_tail(&new_device->list, &device_list);
 	INIT_LIST_HEAD(&new_device->children);
 	INIT_LIST_HEAD(&new_device->cdevs);
+	INIT_LIST_HEAD(&new_device->parameters);
 
 	for_each_driver(drv) {
 		if (!match(drv, new_device))
@@ -313,16 +314,11 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 		if (dev->driver)
 			dev->driver->info(dev);
 
-		param = dev->param;
+		printf("%s\n", list_empty(&dev->parameters) ?
+				"no parameters available" : "Parameters:");
 
-		printf("%s\n", param ?
-				"Parameters:" : "no parameters available");
-
-		while (param) {
+		list_for_each_entry(param, &dev->parameters, list)
 			printf("%16s = %s\n", param->name, param->value);
-			param = param->next;
-		}
-
 	}
 
 	return 0;
diff --git a/lib/parameter.c b/lib/parameter.c
index 6b32207..a3d178f 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -33,17 +33,22 @@
 
 struct param_d *get_param_by_name(struct device_d *dev, const char *name)
 {
-	struct param_d *param = dev->param;
+	struct param_d *p;
 
-	while (param) {
-		if (!strcmp(param->name, name))
-			return param;
-		param = param->next;
+	list_for_each_entry(p, &dev->parameters, list) {
+		if (!strcmp(p->name, name))
+			return p;
 	}
 
 	return NULL;
 }
 
+/**
+ * dev_get_param - get the value of a parameter
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @return	The value
+ */
 const char *dev_get_param(struct device_d *dev, const char *name)
 {
 	struct param_d *param = get_param_by_name(dev, name);
@@ -53,10 +58,7 @@ const char *dev_get_param(struct device_d *dev, const char *name)
 		return NULL;
 	}
 
-	if (param->get)
-		return param->get(dev, param);
-
-	return param->value;
+	return param->get(dev, param);
 }
 
 #ifdef CONFIG_NET
@@ -80,6 +82,12 @@ int dev_set_param_ip(struct device_d *dev, char *name, IPaddr_t ip)
 }
 #endif
 
+/**
+ * dev_set_param - set a parameter of a device to a new value
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param value	The new value of the parameter
+ */
 int dev_set_param(struct device_d *dev, const char *name, const char *val)
 {
 	struct param_d *param;
@@ -101,35 +109,122 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val)
 		return -EACCES;
 	}
 
-	if (param->set) {
-		errno = param->set(dev, param, val);
-		return errno;
-	}
-
-	if (param->value)
-		free(param->value);
+	errno = param->set(dev, param, val);
+	return errno;
+}
 
-	param->value = strdup(val);
+/**
+ * dev_param_set_generic - generic setter function for a parameter
+ * @param dev	The device
+ * @param p	the parameter
+ * @param val	The new value
+ *
+ * If used the value of a parameter is a string allocated with
+ * malloc and freed with free. If val is NULL the value is freed. This is
+ * used during deregistration of the parameter to free the alloctated
+ * memory.
+ */
+int dev_param_set_generic(struct device_d *dev, struct param_d *p,
+		const char *val)
+{
+	if (p->value)
+		free(p->value);
+	if (!val)
+		return 0;
+	p->value = strdup(val);
 	return 0;
 }
 
-int dev_add_param(struct device_d *dev, struct param_d *newparam)
+static char *param_get_generic(struct device_d *dev, struct param_d *p)
+{
+	return p->value;
+}
+
+static struct param_d *__dev_add_param(struct device_d *dev, char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		char *(*get)(struct device_d *dev, struct param_d *p),
+		unsigned long flags)
 {
-	struct param_d *param = dev->param;
+	struct param_d *param;
 
-	newparam->next = NULL;
+	param = xzalloc(sizeof(*param));
 
-	if (param) {
-		while (param->next)
-			param = param->next;
-			param->next = newparam;
-	} else {
-		dev->param = newparam;
-	}
+	if (set)
+		param->set = set;
+	else
+		param->set = dev_param_set_generic;
+	if (get)
+		param->get = get;
+	else
+		param->get = param_get_generic;
+
+	param->name = strdup(name);
+	param->flags = flags;
+	list_add_tail(&param->list, &dev->parameters);
+
+	return param;
+}
+
+/**
+ * dev_add_param - add a parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param set	setter function for the parameter
+ * @param get	getter function for the parameter
+ * @param flags
+ *
+ * This function adds a new parameter to a device. The get/set functions can
+ * be zero in which case the generic functions are used. The generic functions
+ * expect the parameter value to be a string which can be freed with free(). Do
+ * not use static arrays when using the generic functions.
+ */
+int dev_add_param(struct device_d *dev, char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		char *(*get)(struct device_d *dev, struct param_d *param),
+		unsigned long flags)
+{
+	struct param_d *param;
+
+	param = __dev_add_param(dev, name, set, get, flags);
+
+	return param ? 0 : -EINVAL;
+}
+
+/**
+ * dev_add_param_fixed - add a readonly parameter to a device
+ * @param dev	The device
+ * @param name	The name of the parameter
+ * @param value	The value of the parameter
+ */
+int dev_add_param_fixed(struct device_d *dev, char *name, char *value)
+{
+	struct param_d *param;
+
+	param = __dev_add_param(dev, name, NULL, NULL, PARAM_FLAG_RO);
+	if (!param)
+		return -EINVAL;
+
+	param->value = strdup(value);
 
 	return 0;
 }
 
+/**
+ * dev_remove_parameters - remove all parameters from a device and free their
+ * memory
+ * @param dev	The device
+ */
+void dev_remove_parameters(struct device_d *dev)
+{
+	struct param_d *p, *n;
+
+	list_for_each_entry_safe(p, n, &dev->parameters, list) {
+		p->set(dev, p, NULL);
+		list_del(&p->list);
+		free(p);
+	}
+}
+
 /** @page dev_params Device parameters
 
 @section params_devices Devices can have several parameters.
@@ -145,50 +240,6 @@ IP address of the first ethernet device is a matter of typing
 devices currently present. If called with a device id as parameter it shows the
 parameters available for a device.
 
-@section params_programming Device parameters programming API
-
-@code
-struct param_d {
-	char* (*get)(struct device_d *, struct param_d *param);
-	int (*set)(struct device_d *, struct param_d *param, const char *val);
-	ulong flags;
-	char *name;
-	struct param_d *next;
-	char *value;
-};
-@endcode
-
-@code
-int dev_add_param(struct device_d *dev, struct param_d *newparam);
-@endcode
-
-This function adds a new parameter to a device. At least the name field in
-the new parameter struct has to be initialized. The 'get' and 'set' fields
-can be set to NULL in which case the framework handles them. It is also
-allowed to implement only one of the get/set functions. Care must be taken
-with the initial value of the parameter. If the framework handles the set
-function it will try to free the value of the parameter. If this is a
-static array bad things will happen. A parameter can have the flag
-PARAM_FLAG_RO which means that the parameter is readonly. It is perfectly ok
-then to point the value to a static array.
-
-@code
-const char *dev_get_param(struct device_d *dev, const char *name);
-@endcode
-
-This function returns a pointer to the value of the parameter specified
-with dev and name.
-If the framework handles the get/set functions the parameter value strings
-are alloceted with malloc and freed with free when another value is set for
-this parameter. Drivers implementing set/get themselves are allowed to
-return values in static arrays. This means that the pointers returned from
-dev_get_param() are only valid until the next call to dev_get_param. If this
-is not long enough strdup() or similar must be used.
-
-@code
-int dev_set_param(struct device_d *dev, const char *name, const char *val);
-@endcode
-
-Set the value of a parameter.
+See the individual functions for parameter programming.
 
 */
diff --git a/net/eth.c b/net/eth.c
index fc16233..4d58191 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -102,11 +102,13 @@ static int eth_set_ethaddr(struct device_d *dev, struct param_d *param, const ch
 	struct eth_device *edev = dev->type_data;
 	char ethaddr[sizeof("xx:xx:xx:xx:xx:xx")];
 
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
 	if (string_to_ethaddr(val, ethaddr) < 0)
 		return -EINVAL;
 
-	free(param->value);
-	param->value = strdup(val);
+	dev_param_set_generic(dev, param, val);
 
 	edev->set_ethaddr(edev, ethaddr);
 
@@ -121,11 +123,13 @@ static int eth_set_ipaddr(struct device_d *dev, struct param_d *param, const cha
 	struct eth_device *edev = dev->type_data;
 	IPaddr_t ip;
 
+	if (!val)
+		return dev_param_set_generic(dev, param, NULL);
+
 	if (string_to_ip(val, &ip))
 		return -EINVAL;
 
-	free(param->value);
-	param->value = strdup(val);
+	dev_param_set_generic(dev, param, val);
 
 	if (edev == eth_current)
 		net_update_env();
@@ -148,21 +152,11 @@ int eth_register(struct eth_device *edev)
 	register_device(&edev->dev);
 
 	dev->type_data = edev;
-	edev->param_ip.name = "ipaddr";
-	edev->param_ip.set = &eth_set_ipaddr;
-	edev->param_ethaddr.name = "ethaddr";
-	edev->param_ethaddr.set = &eth_set_ethaddr;
-	edev->param_gateway.name = "gateway";
-	edev->param_gateway.set = &eth_set_ipaddr;
-	edev->param_netmask.name = "netmask";
-	edev->param_netmask.set = &eth_set_ipaddr;
-	edev->param_serverip.name = "serverip";
-	edev->param_serverip.set = &eth_set_ipaddr;
-	dev_add_param(dev, &edev->param_ip);
-	dev_add_param(dev, &edev->param_ethaddr);
-	dev_add_param(dev, &edev->param_gateway);
-	dev_add_param(dev, &edev->param_netmask);
-	dev_add_param(dev, &edev->param_serverip);
+	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
+	dev_add_param(dev, "gateway", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "netmask", eth_set_ipaddr, NULL, 0);
+	dev_add_param(dev, "serverip", eth_set_ipaddr, NULL, 0);
 
 	edev->init(edev);
 
@@ -182,21 +176,7 @@ int eth_register(struct eth_device *edev)
 
 void eth_unregister(struct eth_device *edev)
 {
-	if (edev->param_ip.value)
-		free(edev->param_ip.value);
-	if (edev->param_ethaddr.value)
-		free(edev->param_ethaddr.value);
-	if (edev->param_gateway.value)
-		free(edev->param_gateway.value);
-	if (edev->param_netmask.value)
-		free(edev->param_netmask.value);
-	if (edev->param_serverip.value)
-		free(edev->param_serverip.value);
-
-	if (eth_current == edev) {
-		eth_current->halt(eth_current);
-		eth_current = NULL;
-	}
+	dev_remove_parameters(&edev->dev);
 
 	list_del(&edev->list);
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
