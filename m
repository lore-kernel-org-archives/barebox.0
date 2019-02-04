Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWN-0001KS-Sv
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:46:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:41 +0100
Message-Id: <20190204144641.19600-6-s.hauer@pengutronix.de>
In-Reply-To: <20190204144641.19600-1-s.hauer@pengutronix.de>
References: <20190204144641.19600-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] misc: fix /dev/mem size
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The size of /dev/mem was limited to the lower half of the 64bit address
range. This is unfortunate since on some architectures (MIPS64, namely)
the upper half contains meaningful addresses. We can't just set /dev/mem
to its real size since that's bigger than the maximum loff_t. Set the
DEVFS_IS_CHARACTER_DEV flag instead for /dev/mem which will cause the
size checks in lseek and friends to be bypassed.
Also fix the size the memory device is registered with. We used to set
the size to ~0, but the real size is one higher. To do this explicitly
register the device with specifying the end address rather than the
size. This will make /dev/mem appear with filesize 0, but so does
/dev/zero already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/mem.c | 35 ++++++++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index 60981a3e98..6dd7f687c9 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -21,8 +21,18 @@ static int mem_probe(struct device_d *dev)
 	dev->priv = cdev;
 
 	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
-			   S64_MAX);
+	if (dev->resource[0].start == 0 && dev->resource[0].end == ~0) {
+		/*
+		 * Special case for /dev/mem. We can't express it's size as it's
+		 * outside of our address range. Set DEVFS_IS_CHARACTER_DEV to
+		 * bypass size checks.
+		 */
+		cdev->size = 0;
+		cdev->flags = DEVFS_IS_CHARACTER_DEV;
+	} else {
+		cdev->size = resource_size(&dev->resource[0]);
+	}
+
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -38,7 +48,26 @@ static struct driver_d mem_drv = {
 
 static int mem_init(void)
 {
-	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
+	struct device_d *dev;
+	struct resource res = {
+		.start = 0,
+		.end = ~0,
+		.flags = IORESOURCE_MEM,
+		.name = "mem",
+	};
+	int ret;
+
+	dev = device_alloc("mem", DEVICE_ID_DYNAMIC);
+	if (!dev)
+		return -ENOMEM;
+
+	dev->resource = xmemdup(&res, sizeof(res));
+	dev->num_resources = 1;
+
+	ret = platform_device_register(dev);
+	if (ret)
+		return ret;
+
 	return platform_driver_register(&mem_drv);
 }
 device_initcall(mem_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
