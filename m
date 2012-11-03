Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUfPP-0007SF-LV
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 15:13:18 +0000
Received: from mail422.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 147B2FFB583
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 16:23:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 16:11:05 +0100
Message-Id: <1351955465-12206-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351955465-12206-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121103150823.GY29599@game.jcrosoft.org>
 <1351955465-12206-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] bus: add bus device
To: barebox@lists.infradead.org

automatically add it as parent of any bus device if none already specified

we have now a nice output per bus

barebox@Atmel at91sam9x5-ek:/
devices:
`---- platform
     `---- atmel_usart0
          `---- cs0
     `---- atmel_usart1
          `---- cs1
     `---- mem0
          `---- 0x00000000-0x07ffffff: /dev/ram0
     `---- mem1
          `---- 0x00000000-0x00007fff: /dev/sram0
     `---- mem2
          `---- 0x00000000-0x000037bf: /dev/defaultenv
     `---- mem3
          `---- 0x00000000-0xfffffffe: /dev/mem
     `---- cs2
     `---- w1-gpio
          `---- w1_bus0
               `---- w1-2d-0
                    `---- 0x00000000-0x0000007f: /dev/ds24310
               `---- w1-2d-1
                    `---- 0x00000000-0x0000007f: /dev/ds24311
               `---- w1-23-0
                    `---- 0x00000000-0x000001ff: /dev/ds24330
     `---- at91sam9x5cm
     `---- at91sam9x5ek
     `---- at91sam9x5dm
     `---- atmel_nand0
          `---- nand0
               `---- 0x00000000-0x1fffffff: /dev/nand0
               `---- 0x00000000-0x0003ffff: /dev/at91bootstrap_raw
               `---- 0x00040000-0x0009ffff: /dev/self_raw
               `---- 0x000a0000-0x000bffff: /dev/env_raw
               `---- 0x000c0000-0x000dffff: /dev/env_raw1
               `---- 0x00000000-0x0003ffff: /dev/nand0.at91bootstrap
               `---- 0x00040000-0x0009ffff: /dev/nand0.barebox
               `---- 0x000a0000-0x000bffff: /dev/nand0.bareboxenv
               `---- 0x000c0000-0x000dffff: /dev/nand0.bareboxenv2
               `---- 0x000e0000-0x000fffff: /dev/nand0.oftree
               `---- 0x00100000-0x001fffff: /dev/nand0.free
               `---- 0x00200000-0x007fffff: /dev/nand0.kernel
               `---- 0x00800000-0x07ffffff: /dev/nand0.rootfs
               `---- 0x08000000-0x1fffffff: /dev/nand0.data
     `---- macb0
          `---- miibus0
          `---- eth0
     `---- atmel_spi0
          `---- mtd_dataflash0
               `---- dataflash0
                    `---- 0x00000000-0x0041ffff: /dev/dataflash0
     `---- atmel_mci0
          `---- mci0
               `---- 0x00000000-0x1d9bfffff: /dev/disk0
               `---- 0x00100000-0x064fffff: /dev/disk0.0
               `---- 0x06500000-0x1d9bfffff: /dev/disk0.1
     `---- i2c-gpio0
          `---- i2c0
               `---- qt10700
                    `---- cs3
`---- mdio_bus
`---- spi
`---- i2c
`---- w1_bus
`---- fs
     `---- ramfs0
     `---- devfs0
`---- net
`---- global

drivers:
atmel_usart
ramfs
devfs
fat
macb
Generic PHY
atmel_nand
mtd_dataflash
m25p80
atmel_spi
i2c-gpio
mci
atmel_mci
qt1070
w1-gpio
ds2431
ds2433
mem

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/bus.c    |   10 ++++++++++
 drivers/base/driver.c |    5 +++++
 include/driver.h      |    2 ++
 3 files changed, 17 insertions(+)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 69782d2..e2204da 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -25,9 +25,19 @@ static struct bus_type *get_bus_by_name(const char *name)
 
 int bus_register(struct bus_type *bus)
 {
+	int ret;
+
 	if (get_bus_by_name(bus->name))
 		return -EEXIST;
 
+	strcpy(bus->dev.name, bus->name);
+	bus->dev.id = DEVICE_ID_SINGLE;
+
+	ret = register_device(&bus->dev);
+	if (ret)
+		return ret;
+
+
 	INIT_LIST_HEAD(&bus->device_list);
 	INIT_LIST_HEAD(&bus->driver_list);
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 64fe289..eaedac7 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -120,6 +120,11 @@ int register_device(struct device_d *new_device)
 	if (!new_device->bus)
 		return 0;
 
+	if (!new_device->parent) {
+		new_device->parent = &new_device->bus->dev;
+		dev_add_child(new_device->parent, new_device);
+	}
+
 	list_add_tail(&new_device->bus_list, &new_device->bus->device_list);
 
 	bus_for_each_driver(new_device->bus, drv) {
diff --git a/include/driver.h b/include/driver.h
index dd22c77..5d433ec 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -378,6 +378,8 @@ struct bus_type {
 	int (*probe)(struct device_d *dev);
 	void (*remove)(struct device_d *dev);
 
+	struct device_d dev;
+
 	struct list_head list;
 	struct list_head device_list;
 	struct list_head driver_list;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
