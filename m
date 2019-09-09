Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7G1N-0001c8-0r
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:31:42 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 588A840020
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 09:31:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Sep 2019 11:31:28 +0200
Message-Id: <20190909093130.30666-2-ahmad@a3f.at>
In-Reply-To: <20190909093130.30666-1-ahmad@a3f.at>
References: <20190909093130.30666-1-ahmad@a3f.at>
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
Subject: [PATCH v2 1/3] sandbox: hostfile: allow probing from device tree
To: barebox@lists.infradead.org

When testing things like barebox state in sandbox, it's nice to be able
to refer to a partition on a hostfile by phandle. Support this by
checking for reading the barebox,filename property.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/hostfile.c                  | 16 ++++++++++++----
 arch/sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                       |  5 +++++
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index 745f078d1a79..e5a7580d0792 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -84,15 +84,16 @@ static int hf_probe(struct device_d *dev)
 	if (!dev->device_node)
 		return -ENODEV;
 
-	err = of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
-	if (err)
-		return err;
+	of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
 
 	err = of_property_read_string(dev->device_node, "barebox,filename",
 				      &priv->filename);
 	if (err)
 		return err;
 
+	if (!priv->fd)
+		priv->fd = linux_open(priv->filename, true);
+
 	priv->cdev.name = dev->device_node->name;
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &hf_fops;
@@ -101,7 +102,14 @@ static int hf_probe(struct device_d *dev)
 	dev->info = hf_info;
 	dev->priv = priv;
 
-	return devfs_create(&priv->cdev);
+	err = devfs_create(&priv->cdev);
+	if (err)
+		return err;
+
+	of_parse_partitions(&priv->cdev, dev->device_node);
+	of_partitions_register_fixup(&priv->cdev);
+
+	return 0;
 }
 
 static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 7d0ed55735e7..c344285473e6 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -10,6 +10,7 @@ struct fb_bitfield;
 int linux_register_device(const char *name, void *start, void *end);
 int tap_alloc(const char *dev);
 uint64_t linux_get_time(void);
+int linux_open(const char *filename, int readwrite);
 int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
 ssize_t linux_write(int fd, const void *buf, size_t count);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index a7ea8f2d3b18..86118822a177 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -121,6 +121,11 @@ void __attribute__((noreturn)) linux_exit(void)
 	exit(0);
 }
 
+int linux_open(const char *filename, int readwrite)
+{
+	return open(filename, readwrite ? O_RDWR : O_RDONLY);
+}
+
 int linux_read(int fd, void *buf, size_t count)
 {
 	ssize_t ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
