Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003m0-8F
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:31 +0100
Message-Id: <1423731274-9860-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/17] mtd: Add a partitions parameter to mtd devices
To: Barebox List <barebox@lists.infradead.org>

The partitions parameter allows to partition a mtd device
using a standard cmdline partition description string. This
way the partitions of a mtd device can be changed at once.
The output of the string can be used to be passed to the kernel
as cmdline partition string. The partitions can also still be
changed with addpart/delpart, the partitions parameter will
be updated accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c | 97 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 96 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 99d50f1..ac1001e 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -18,6 +18,7 @@
 #include <common.h>
 #include <linux/mtd/nand.h>
 #include <linux/mtd/mtd.h>
+#include <cmdlinepart.h>
 #include <init.h>
 #include <xfuncs.h>
 #include <driver.h>
@@ -377,6 +378,98 @@ static struct file_operations mtd_ops = {
 	.lseek  = dev_lseek_default,
 };
 
+static int mtd_partition_set(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	struct mtd_info *mtdpart, *tmp;
+	int ret;
+
+	list_for_each_entry_safe(mtdpart, tmp, &mtd->partitions, partitions_entry) {
+		ret = mtd_del_partition(mtdpart);
+		if (ret)
+			return ret;
+	}
+
+	return cmdlinepart_do_parse(mtd->cdev.name, val, mtd->size, CMDLINEPART_ADD_DEVNAME);
+}
+
+static char *print_size(uint64_t s)
+{
+	if (!(s & ((1 << 20) - 1)))
+		return asprintf("%lldM", s >> 20);
+	if (!(s & ((1 << 10) - 1)))
+		return asprintf("%lldk", s >> 10);
+	return asprintf("0x%lld", s);
+}
+
+static int print_part(char *buf, int bufsize, struct mtd_info *mtd, uint64_t last_ofs,
+		int is_last)
+{
+	char *size = print_size(mtd->size);
+	char *ofs = print_size(mtd->master_offset);
+	int ret;
+
+	if (!size || !ofs) {
+		ret = -ENOMEM;
+		goto out;
+	}
+
+	if (mtd->master_offset == last_ofs)
+		ret = snprintf(buf, bufsize, "%s(%s)%s", size,
+				mtd->cdev.partname,
+				is_last ? "" : ",");
+	else
+		ret = snprintf(buf, bufsize, "%s@%s(%s)%s", size,
+				ofs,
+				mtd->cdev.partname,
+				is_last ? "" : ",");
+out:
+	free(size);
+	free(ofs);
+
+	return ret;
+}
+
+static int print_parts(char *buf, int bufsize, struct mtd_info *mtd)
+{
+	struct mtd_info *mtdpart;
+	uint64_t last_ofs = 0;
+	int ret = 0;
+
+	list_for_each_entry(mtdpart, &mtd->partitions, partitions_entry) {
+		int now;
+		int is_last = list_is_last(&mtdpart->partitions_entry,
+					&mtd->partitions);
+
+		now = print_part(buf, bufsize, mtdpart, last_ofs, is_last);
+		if (now < 0)
+			return now;
+
+		if (buf && bufsize) {
+			buf += now;
+			bufsize -= now;
+		}
+		ret += now;
+		last_ofs = mtdpart->master_offset + mtdpart->size;
+	}
+
+	return ret;
+}
+
+static const char *mtd_partition_get(struct device_d *dev, struct param_d *p)
+{
+	struct mtd_info *mtd = container_of(dev, struct mtd_info, class_dev);
+	int len = 0;
+
+	free(p->value);
+
+	len = print_parts(NULL, 0, mtd);
+	p->value = xzalloc(len + 1);
+	print_parts(p->value, len + 1, mtd);
+
+	return p->value;
+}
+
 static int mtd_part_compare(struct list_head *a, struct list_head *b)
 {
 	struct mtd_info *mtda = container_of(a, struct mtd_info, partitions_entry);
@@ -448,8 +541,10 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
 	if (mtd_can_have_bb(mtd))
 		mtd->cdev_bb = mtd_add_bb(mtd, NULL);
 
-	if (mtd->parent && !mtd->master)
+	if (mtd->parent && !mtd->master) {
+		dev_add_param(&mtd->class_dev, "partitions", mtd_partition_set, mtd_partition_get, 0);
 		of_parse_partitions(&mtd->cdev, mtd->parent->device_node);
+	}
 
 	list_for_each_entry(hook, &mtd_register_hooks, hook)
 		if (hook->add_mtd_device)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
