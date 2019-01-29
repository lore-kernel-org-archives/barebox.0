Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJz-0005JB-Be
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id z10so8355383pgp.7
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:48 -0800
Message-Id: <20190129065549.29161-19-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/19] drivers: mem: Create file to access second half of
 64-bit memory
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to allow access to second half of address space on 64-bit
machines, add code that creates /dev/highmem dedicated for that.

Note that due to maximum file size being limited to MAX_LFS_FILESIZE
or 0x7fff_ffff_ffff_ffff bytes at addresses 0x7fff_ffff_ffff_ffff and
0xffff_ffff_ffff_ffff cannot be access through /dev/mem and
/dev/hightmem correspondingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/misc/mem.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index 2f3316307..e3fb0d04a 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -7,6 +7,10 @@
 #include <driver.h>
 #include <init.h>
 
+#include <linux/pagemap.h>
+#include <linux/fs.h>
+
+
 static struct cdev_operations memops = {
 	.read  = mem_read_nofail,
 	.write = mem_write,
@@ -21,8 +25,7 @@ static int mem_probe(struct device_d *dev)
 	dev->priv = cdev;
 
 	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
-			   S64_MAX);
+	cdev->size = resource_size(&dev->resource[0]);
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
@@ -38,7 +41,21 @@ static struct driver_d mem_drv = {
 
 static int mem_init(void)
 {
-	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
+	const resource_size_t size = min_t(unsigned long long,
+					   MAX_LFS_FILESIZE,
+					   (resource_size_t)~0);
+	add_mem_device("mem", 0, size, IORESOURCE_MEM_WRITEABLE);
+	/*
+	 * We can't fit all of 64-bit address space into a single
+	 * file, so we create a separate one to allow acces to the
+	 * second half
+	 */
+	if (IS_ENABLED(CONFIG_CPU_64))
+		add_mem_device("highmem",
+			       (resource_size_t)MAX_LFS_FILESIZE + 1,
+			       size,
+			       IORESOURCE_MEM_WRITEABLE);
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
