Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwuPg-0004fJ-Ia
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 13:26:34 +0000
Received: from mail431.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 83B55DC6324
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 15:17:56 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1373453528-3723-9-git-send-email-s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 21:17:03 +0800
Message-Id: <14050E29-1044-43D1-B240-2AE619C18CA6@jcrosoft.com>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
 <1373453528-3723-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 8/9] Add configurability via devicetree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Jul 10, 2013, at 6:52 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> This adds the possibility to configure the place for the environment
> from the devicetree and to partition devices from the devicetree.
> 
> Configuration has the general form of devices with a regular compatible
> property. This allows to later add additional drivers or drivers with
> different behaviour (for example to add support for redundant environment).
> 
> The configuration is all in the /chosen/barebox/ hierarchy of the
> devicetree. This separates the configuration from the hardware
> description. Also it makes it possible to store the configuration
> in a completely separate devicetree (or devicetree overlay). For
> the same reason all configuration is done using nodepathes rather
> than phandles.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> Documentation/devicetree/bindings/barebox.txt      |  10 ++
> .../bindings/barebox/barebox,environment.txt       |  24 +++
> .../bindings/barebox/barebox,partition.txt         |  42 +++++
> drivers/of/Kconfig                                 |   9 +
> drivers/of/Makefile                                |   1 +
> drivers/of/barebox.c                               | 191 +++++++++++++++++++++
> drivers/of/of_path.c                               | 155 +++++++++++++++++
> fs/devfs-core.c                                    |   2 +
> include/driver.h                                   |   5 +
> include/of.h                                       |  11 ++
> 10 files changed, 450 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/barebox.txt
> create mode 100644 Documentation/devicetree/bindings/barebox/barebox,environment.txt
> create mode 100644 Documentation/devicetree/bindings/barebox/barebox,partition.txt
> create mode 100644 drivers/of/barebox.c
> create mode 100644 drivers/of/of_path.c
> 
> diff --git a/Documentation/devicetree/bindings/barebox.txt b/Documentation/devicetree/bindings/barebox.txt
> new file mode 100644
> index 0000000..906c4bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox.txt
> @@ -0,0 +1,10 @@
> +barebox specific devicetree bindings
> +====================================
> +
> +barebox uses some barebox specific devicetree bindings. All of these
> +are under the /chosen/barebox/ hierarchy in the devicetree.
> +
> +The bindings have the form of a device with regular 'compatible' properties.
> +drivers matching these devices do not handle physical devices but instead
> +influence / configure certain behaviours of barebox like the place where to
> +find the persistent environment or the partitioning of devices.
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.txt b/Documentation/devicetree/bindings/barebox/barebox,environment.txt
> new file mode 100644
> index 0000000..48fd376
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.txt
> @@ -0,0 +1,24 @@
> +barebox environment
> +
> +This driver provides an environment for barebox from the devicetree.
> +
> +Required properties:
> +- compatible: should be "barebox,environment"
> +- device-path: path to the environment
> +
> +The device-path is a multistring property. The first string should be a
> +nodepath to the node containing the physical device of the environment.
> +The subsequent strings are of the form <type>:<options> to further describe
> +the path to the environment. Supported values for <type>:
> +
> +partname:<partname>  This describes a partition on a device. <partname> can
> +                     be the label for mtd partitions, the number for DOS
> +		     partitions (beginning with 0) or the name for GPT
> +		     partitions
> +
> +Example:
> +
> +environment@0 {
> +	compatible = "barebox,environment";
> +	device-path = &flash, "partname:barebox-environment";
> +};
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,partition.txt b/Documentation/devicetree/bindings/barebox/barebox,partition.txt
> new file mode 100644
> index 0000000..f38e76d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox/barebox,partition.txt
> @@ -0,0 +1,42 @@
> +partition provider
> +
> +Driver to provide a partitioning for mtd devices. barebox provides a
> +separate driver for this instead of positioning the partitions under
> +the devicenode which actually provides the partitions. The reason for
> +this is that the devicetree contains the hardware description whereas
> +the partitioning of a device is not hardware specific. Having a separate
> +driver makes it possible to separate the hardware devicetree from the
> +configuration.
> +
> +Required properties:
> +
> +- compatible: should be "barebox,partition"
> +- device-path: should contain a nodepath to the physical device for which
> +               this device provides a partitioning
> +- #address-cells, #size-cells: number of cells for size/addresses in the
> +                               partitions
> +
> +Partition properties:
> +
> +- reg: The partition's offset and size
> +- label: The label/name for this partition
> +- read-only: if present, the partition is read-only
> +
> +Example:
> +
> +nor-partitions {
> +	compatible = "barebox,partition";
> +	device-path = &flash;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0x80000>;
> +	};
> +
> +	partition@1 {
> +		label = "barebox-environment";
> +		reg = <0x80000 0x80000>;
> +	};
> +};

This is duplicate with the mtd partition, isn't?

Best Regards,
J.

> diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
> index 03ae599..ab5eac8 100644
> --- a/drivers/of/Kconfig
> +++ b/drivers/of/Kconfig
> @@ -18,3 +18,12 @@ config OFDEVICE
> config OF_NET
> 	depends on NET
> 	def_bool y
> +
> +config OF_BAREBOX_DRIVERS
> +	depends on OFDEVICE
> +	bool "Enable barebox specific devicetree configuration drivers"
> +	help
> +	  barebox supports being configured from devicetree. This enables
> +	  support for this feature. This currently allows to configure the
> +	  environment path from devicetree and to partition devices. See
> +	  Documentation/devicetree/bindings/barebox/ for more information.
> diff --git a/drivers/of/Makefile b/drivers/of/Makefile
> index e7d0733..97fea9d 100644
> --- a/drivers/of/Makefile
> +++ b/drivers/of/Makefile
> @@ -3,3 +3,4 @@ obj-$(CONFIG_OFTREE_MEM_GENERIC) += mem_generic.o
> obj-$(CONFIG_GPIOLIB) += of_gpio.o
> obj-y += partition.o
> obj-y += of_net.o
> +obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o of_path.o
> diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
> new file mode 100644
> index 0000000..4d178a8
> --- /dev/null
> +++ b/drivers/of/barebox.c
> @@ -0,0 +1,191 @@
> +/*
> + * barebox.c
> + *
> + * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +#include <malloc.h>
> +#include <partition.h>
> +#include <envfs.h>
> +
> +struct of_partition {
> +	struct list_head list;
> +	char *nodepath;
> +	struct device_d *dev;
> +};
> +
> +static LIST_HEAD(of_partition_list);
> +
> +static struct device_node *cdev_find_node(struct cdev *cdev)
> +{
> +	struct device_d *dev = cdev->dev;
> +
> +	while (dev) {
> +		if (dev->device_node)
> +			return dev->device_node;
> +
> +		dev = dev->parent;
> +	}
> +
> +	return NULL;
> +}
> +
> +void of_cdev_register(struct cdev *cdev)
> +{
> +	struct device_node *np, *child;
> +	struct of_partition *op;
> +
> +	if (cdev->flags & DEVFS_IS_PARTITION)
> +		return;
> +
> +	if (cdev->partname)
> +		return;
> +
> +	np = cdev_find_node(cdev);
> +	if (!np)
> +		return;
> +
> +	list_for_each_entry(op, &of_partition_list, list)
> +		if (!strcmp(np->full_name, op->nodepath))
> +			goto found;
> +
> +	return;
> +
> +found:
> +	for_each_child_of_node(op->dev->device_node, child) {
> +		dev_dbg(op->dev, "adding partition %s to %s\n", child->name,
> +				cdev->name);
> +		of_parse_partition(cdev, child);
> +	}
> +
> +	list_del(&op->list);
> +	free(op);
> +}
> +
> +struct device_d *of_find_device_by_node_path(const char *path)
> +{
> +	struct device_d *dev;
> +
> +	for_each_device(dev) {
> +		if (!dev->device_node)
> +			continue;
> +		if (!strcmp(path, dev->device_node->full_name))
> +			return dev;
> +	}
> +
> +	return NULL;
> +}
> +
> +static int partition_probe(struct device_d *dev)
> +{
> +	const char *path;
> +	struct device_node *node = dev->device_node;
> +	int len;
> +	struct of_partition *op;
> +	struct cdev *cdev;
> +
> +	path = of_get_property(node, "device-path", &len);
> +	if (!path) {
> +		dev_err(dev, "cannot find 'device-path' property\n");
> +		return -EINVAL;
> +	}
> +
> +	node = of_find_node_by_path(path);
> +	if (!node) {
> +		dev_err(dev, "cannot find node with path '%s'\n", path);
> +		return -ENODEV;
> +	}
> +
> +	op = xzalloc(sizeof(*op));
> +	op->nodepath = xstrdup(path);
> +	op->dev = dev;
> +
> +	list_add_tail(&op->list, &of_partition_list);
> +
> +	cdev_for_each(cdev)
> +		of_cdev_register(cdev);
> +
> +	return 0;
> +}
> +
> +static struct of_device_id partition_dt_ids[] = {
> +	{
> +		.compatible = "barebox,partition",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d partition_driver = {
> +	.name		= "barebox-partition",
> +	.probe		= partition_probe,
> +	.of_compatible	= partition_dt_ids,
> +};
> +
> +static int environment_probe(struct device_d *dev)
> +{
> +	char *path;
> +	int ret;
> +
> +	ret = of_find_path(dev->device_node, "device-path", &path);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "setting default environment path to %s\n", path);
> +
> +	default_environment_path = path;
> +
> +	return 0;
> +}
> +
> +static struct of_device_id environment_dt_ids[] = {
> +	{
> +		.compatible = "barebox,environment",
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static struct driver_d environment_driver = {
> +	.name		= "barebox-environment",
> +	.probe		= environment_probe,
> +	.of_compatible	= environment_dt_ids,
> +};
> +
> +static int barebox_of_driver_init(void)
> +{
> +	struct device_node *node;
> +
> +	node = of_get_root_node();
> +	if (!node)
> +		return 0;
> +
> +	node = of_find_node_by_path("/chosen/barebox");
> +	if (!node)
> +		return 0;
> +
> +	of_platform_populate(node, of_default_bus_match_table, NULL);
> +
> +	platform_driver_register(&partition_driver);
> +	platform_driver_register(&environment_driver);
> +
> +	return 0;
> +}
> +late_initcall(barebox_of_driver_init);
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> new file mode 100644
> index 0000000..ab8618e
> --- /dev/null
> +++ b/drivers/of/of_path.c
> @@ -0,0 +1,155 @@
> +/*
> + * of_path.c
> + *
> + * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <malloc.h>
> +#include <of.h>
> +
> +struct of_path {
> +	struct cdev *cdev;
> +	struct device_d *dev;
> +};
> +
> +struct of_path_type {
> +	const char *name;
> +	int (*parse)(struct of_path *op, const char *str);
> +};
> +
> +/**
> + * of_path_type_partname - find a partition based on physical device and
> + *                         partition name
> + * @op: of_path context
> + * @name: the partition name to find
> + */
> +static int of_path_type_partname(struct of_path *op, const char *name)
> +{
> +	if (!op->dev)
> +		return -EINVAL;
> +
> +	op->cdev = device_find_partition(op->dev, name);
> +	if (op->cdev) {
> +		pr_debug("%s: found part '%s'\n", __func__, name);
> +		return 0;
> +	} else {
> +		pr_debug("%s: cannot find part '%s'\n", __func__, name);
> +		return -ENODEV;
> +	}
> +}
> +
> +static struct of_path_type of_path_types[] = {
> +	{
> +		.name = "partname",
> +		.parse = of_path_type_partname,
> +	},
> +};
> +
> +static int of_path_parse_one(struct of_path *op, const char *str)
> +{
> +	int i, ret;
> +	char *name, *desc;
> +
> +	pr_debug("parsing: %s\n", str);
> +
> +	name = xstrdup(str);
> +	desc = strchr(name, ':');
> +	if (!desc) {
> +		free(name);
> +		return -EINVAL;
> +	}
> +
> +	*desc = 0;
> +	desc++;
> +
> +	for (i = 0; i < ARRAY_SIZE(of_path_types); i++) {
> +		if (!strcmp(of_path_types[i].name, name)) {
> +			ret = of_path_types[i].parse(op, desc);
> +			goto out;
> +		}
> +	}
> +
> +	ret = -EINVAL;
> +out:
> +	free(name);
> +
> +	return ret;
> +}
> +
> +/**
> + * of_find_path - translate a path description in the devicetree to a barebox
> + *                path
> + *
> + * @node: the node containing the property with the path description
> + * @propname: the property name of the path description
> + * @outpath: if this function returns 0 outpath will contain the path belonging
> + *           to the input path description. Must be freed with free().
> + *
> + * pathes in the devicetree have the form of a multistring property. The first
> + * string contains the full path to the physical device containing the path.
> + * The remaining strings have the form "<type>:<options>". Currently supported
> + * for <type> are:
> + *
> + * partname:<partname> - find a partition by its partition name. For mtd
> + *                       partitions this is the label. For DOS partitions
> + *                       this is the number beginning with 0.
> + *
> + * examples:
> + *
> + * device-path = &mmc0, "partname:0";
> + * device-path = &norflash, "partname:barebox-environment";
> + */
> +int of_find_path(struct device_node *node, const char *propname, char **outpath)
> +{
> +	struct of_path op = {};
> +	struct device_node *rnode;
> +	const char *path, *str;
> +	int i, len, ret;
> +
> +	path = of_get_property(node, propname, &len);
> +	if (!path)
> +		return -EINVAL;
> +
> +	rnode = of_find_node_by_path(path);
> +	if (!rnode)
> +		return -ENODEV;
> +
> +	op.dev = of_find_device_by_node_path(rnode->full_name);
> +	if (!op.dev)
> +		return -ENODEV;
> +
> +	device_detect(op.dev);
> +
> +	i = 1;
> +
> +	while (1) {
> +		ret = of_property_read_string_index(node, propname, i++, &str);
> +		if (ret)
> +			break;
> +
> +		ret = of_path_parse_one(&op, str);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (!op.cdev)
> +		return -ENOENT;
> +
> +	*outpath = asprintf("/dev/%s", op.cdev->name);
> +
> +	return 0;
> +}
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index a92d434..b41ae53 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -244,6 +244,8 @@ int devfs_create(struct cdev *new)
> 	if (new->dev)
> 		list_add_tail(&new->devices_list, &new->dev->cdevs);
> 
> +	of_cdev_register(new);
> +
> 	return 0;
> }
> 
> diff --git a/include/driver.h b/include/driver.h
> index f95c93c..9abd41c 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -455,6 +455,11 @@ struct cdev {
> 	struct mtd_info *mtd;
> };
> 
> +extern struct list_head cdev_list;
> +
> +#define cdev_for_each(cdev) \
> +	list_for_each_entry(cdev, &cdev_list, list)
> +
> int devfs_create(struct cdev *);
> int devfs_remove(struct cdev *);
> int cdev_find_free_index(const char *);
> diff --git a/include/of.h b/include/of.h
> index 710383c..e977e23 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -229,6 +229,8 @@ void *of_flatten_dtb(struct device_node *node);
> int of_add_memory(struct device_node *node, bool dump);
> void of_add_memory_bank(struct device_node *node, bool dump, int r,
> 		u64 base, u64 size);
> +struct device_d *of_find_device_by_node_path(const char *path);
> +int of_find_path(struct device_node *node, const char *propname, char **outpath);
> #else
> static inline int of_parse_partitions(struct cdev *cdev,
> 					  struct device_node *node)
> @@ -560,6 +562,7 @@ static inline struct device_d *of_find_device_by_node(struct device_node *np)
> {
> 	return NULL;
> }
> +
> #endif
> 
> #define for_each_node_by_name(dn, name) \
> @@ -682,4 +685,12 @@ static inline int of_property_write_u64(struct device_node *np,
> 
> extern const struct of_device_id of_default_bus_match_table[];
> 
> +#ifdef CONFIG_OF_BAREBOX_DRIVERS
> +void of_cdev_register(struct cdev *cdev);
> +#else
> +static inline void of_cdev_register(struct cdev *cdev)
> +{
> +}
> +#endif
> +
> #endif /* __OF_H */
> -- 
> 1.8.3.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
