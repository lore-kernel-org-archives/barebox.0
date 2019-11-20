Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLSo-0006kr-Kd
 for barebox@lists.infradead.org; Wed, 20 Nov 2019 08:35:52 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 20 Nov 2019 09:35:36 +0100
Message-Id: <20191120083537.2548-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] remoteproc: register a device for new remoteproc instances
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

struct rproc has a device_d dev field, but so far it was unregistered.
The implementation had a few downsides:

- dev_printf prints NULL, because the unique_name of the device is NULL
- The name used by firmwareload is the device tree node's name, which
  might be unnecessarily verbose, e.g. mlahb:m4@10000000.of
- All remoteproc devices are given the same (unused) name and index

Fix these by registering a device for the remoteproc and using it where
appropriate. While at it, allow the remoteproc name to come from a
device tree alias as well.

This breaks user behavior in that firmwareload now uses the alias or
remoteprocN to reference the remoteproc instance. This is probably
acceptable as the driver is a very recent addition.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/remoteproc/remoteproc_core.c | 29 ++++++++++++++++++++++------
 include/linux/remoteproc.h           |  1 -
 2 files changed, 23 insertions(+), 7 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 7cac47e06ce9..8a28c1bafc1b 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -107,14 +107,36 @@ static int rproc_firmware_finish(struct firmware_handler *fh)
 	return ret;
 }
 
+static int rproc_register_dev(struct rproc *rproc, const char *alias)
+{
+	if (alias) {
+		rproc->dev.id = DEVICE_ID_SINGLE;
+		dev_set_name(&rproc->dev, alias);
+	} else {
+		rproc->dev.id = DEVICE_ID_DYNAMIC;
+		dev_set_name(&rproc->dev, "remoteproc");
+	}
+
+	return register_device(&rproc->dev);
+}
+
 int rproc_add(struct rproc *rproc)
 {
 	struct device_d *dev = &rproc->dev;
 	struct firmware_handler *fh;
+	const char *alias = NULL;
 	int ret;
 
+	if (dev->device_node)
+		alias = of_alias_get(dev->device_node);
+
+	ret = rproc_register_dev(rproc, alias);
+	if (ret)
+		return ret;
+
 	fh = &rproc->fh;
-	fh->id = xstrdup(rproc->name);
+	fh->id = xstrdup(dev_name(dev));
+	fh->model = xstrdup(rproc->name);
 	fh->open = rproc_firmware_start;
 	fh->write = rproc_firmware_write_buf;
 	fh->close = rproc_firmware_finish;
@@ -153,11 +175,6 @@ struct rproc *rproc_alloc(struct device_d *dev, const char *name,
 	rproc->dev.parent = dev;
 	rproc->dev.priv = rproc;
 
-	/* Assign a unique device index and name */
-	rproc->index = 1;
-
-	dev_set_name(&rproc->dev, "remoteproc%d", rproc->index);
-
 	/* Default to ELF loader if no load function is specified */
 	if (!rproc->ops->load)
 		rproc->ops->load = rproc_elf_load_segments;
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index feee9ee4eea7..c6264d1c0a49 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -38,7 +38,6 @@ struct rproc {
 	void *priv;
 	struct rproc_ops *ops;
 	struct device_d dev;
-	int index;
 
 	void *fw_buf;
 	size_t fw_buf_ofs;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
