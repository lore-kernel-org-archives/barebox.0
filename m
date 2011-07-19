Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006kz-Tp
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:47 +0200
Message-Id: <1311064803-6305-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/19] add a add_mem_device function
To: barebox@lists.infradead.org

Add a helper function for boards to register their memory
devices. This makes the board code smaller and also helps
getting rid of map_base.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c   |   25 +++++++++++++++++++++++++
 include/driver.h |    6 ++++++
 2 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 8df5f0a..745eec4 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -587,6 +587,31 @@ static struct file_operations memops = {
 	.lseek = dev_lseek_default,
 };
 
+struct device_d *add_mem_device(const char *name, unsigned long start, size_t size,
+		unsigned int flags)
+{
+	struct device_d *dev;
+	struct memory_platform_data *pdata;
+
+	dev = xzalloc(sizeof(*dev));
+	strcpy(dev->name, "mem");
+	dev->id = -1;
+	dev->resource = xzalloc(sizeof(struct resource));
+	dev->num_resources = 1;
+	dev->resource[0].start = start;
+	dev->resource[0].size = size;
+	dev->resource[0].flags = IORESOURCE_MEM;
+	pdata = xzalloc(sizeof(*pdata));
+	dev->platform_data = pdata;
+
+	pdata->flags = flags;
+	pdata->name = xstrdup(name);
+
+	register_device(dev);
+
+	return dev;
+}
+
 static int mem_probe(struct device_d *dev)
 {
 	struct memory_platform_data *pdata = dev->platform_data;
diff --git a/include/driver.h b/include/driver.h
index 0fc254d..5d5544f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -202,6 +202,12 @@ static inline void __iomem *dev_request_mem_region(struct device_d *dev, int num
 	return dev_get_mem_region(dev, num);
 }
 
+/*
+ * register a memory device
+ */
+struct device_d *add_mem_device(const char *name, unsigned long start,
+		size_t size, unsigned int flags);
+
 /* linear list over all available devices
  */
 extern struct list_head device_list;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
