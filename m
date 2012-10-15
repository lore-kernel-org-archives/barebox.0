Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNeoV-0001DB-M4
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 07:10:12 +0000
Date: Mon, 15 Oct 2012 09:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015071010.GI27665@pengutronix.de>
References: <20121014205929.GU13639@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121014205929.GU13639@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/12] add bus device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 14, 2012 at 10:59:29PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> we have now a nice output per bus
> 
> barebox@ST SPEARr1340 EVB:/
> # devinfo 
> devices:
> `---- platfrom
>      `---- mem0
>           `---- 0x00000000-0x3fffffff: /dev/ram0
>      `---- smp_twd
>      `---- mem1
>           `---- 0x00000000-0x0000251f: /dev/defaultenv
>      `---- mem2
>           `---- 0x00000000-0xfffffffe: /dev/mem
>      `---- designware_eth0
>           `---- miibus0
>           `---- eth0
>      `---- fsmc-nand
>           `---- nand0
>                `---- 0x00000000-0x7fffffff: /dev/nand0
>                `---- 0x00000000-0x0000ffff: /dev/xloader
>                `---- 0x00010000-0x0004ffff: /dev/self_raw
>                `---- 0x00050000-0x0006ffff: /dev/env_raw
>                `---- 0x00000000-0x0003ffff: /dev/nand0.xloader
>                `---- 0x00040000-0x0007ffff: /dev/nand0.meminit
>                `---- 0x00080000-0x0027ffff: /dev/nand0.barebox
>                `---- 0x00280000-0x0057ffff: /dev/nand0.kernel
>                `---- 0x00580000-0x01b7ffff: /dev/nand0.rootfs
>                `---- 0x01b80000-0x07f7ffff: /dev/nand0.userfs
>                `---- 0x07f80000-0x07fdffff: /dev/nand0.free
>                `---- 0x07fe0000-0x07ffffff: /dev/nand0.bareboxenv
>      `---- smi
>           `---- smi0
>                `---- 0x00000000-0x007fffff: /dev/smi0
>      `---- sdhci-spear
>           `---- mci0
>                `---- 0x00000000-0x1e3dffff: /dev/disk0
>                `---- 0x0001da00-0x1e3d1fff: /dev/disk0.0
> `---- amba
>      `---- uart-pl0110
>           `---- cs0
>      `---- pl061_gpio0
>      `---- pl061_gpio1
>      `---- ssp-pl0220
>           `---- m25p0
>                `---- 0x00000000-0x0000ffff: /dev/m25p0
> `---- mdio_bus
> `---- usb
> `---- spi
> `---- i2c
> `---- fb
> `---- fs
>      `---- ramfs0
>      `---- devfs0
> `---- net
> `---- global

Look nice indeed. Why not do it simpler?


From f8e90176da267275fa25feca2b880cdf4d9f5daf Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 08:53:29 +0200
Subject: [PATCH] add bus devices

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/bus.c    |    9 +++++++++
 drivers/base/driver.c |    5 +++++
 include/driver.h      |    2 ++
 3 files changed, 16 insertions(+)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 69782d2..caff0af 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -25,12 +25,21 @@ static struct bus_type *get_bus_by_name(const char *name)
 
 int bus_register(struct bus_type *bus)
 {
+	int ret;
+
 	if (get_bus_by_name(bus->name))
 		return -EEXIST;
 
 	INIT_LIST_HEAD(&bus->device_list);
 	INIT_LIST_HEAD(&bus->driver_list);
 
+	safe_strncpy(bus->bus_dev.name, bus->name, MAX_DRIVER_NAME);
+	bus->bus_dev.id = DEVICE_ID_SINGLE;
+
+	ret = register_device(&bus->bus_dev);
+	if (ret)
+		return ret;
+
 	list_add_tail(&bus->list, &bus_list);
 
 	return 0;
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 5b7286a..395546b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -127,6 +127,11 @@ int register_device(struct device_d *new_device)
 
 	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
 
+	if (!new_device->parent) {
+		new_device->parent = &new_device->bus->dev;
+		dev_add_child(new_device->parent, new_device);
+	}
+
 	bus_for_each_driver(new_device->bus, drv) {
 		if (!match(drv, new_device))
 			break;
diff --git a/include/driver.h b/include/driver.h
index 4918054..100eb15 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -381,6 +381,8 @@ struct bus_type {
 	struct list_head list;
 	struct list_head device_list;
 	struct list_head driver_list;
+
+	struct device_d bus_dev;
 };
 
 int bus_register(struct bus_type *bus);
-- 
1.7.10.4


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
