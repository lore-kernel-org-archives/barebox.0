Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LW-L6
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:04 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DC9BEE000D
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:38 +0200
Message-Id: <20190827143239.15682-6-ahmad@a3f.at>
In-Reply-To: <20190827143239.15682-1-ahmad@a3f.at>
References: <20190827143239.15682-1-ahmad@a3f.at>
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
Subject: [PATCH 5/6] sandbox: hostfile: allow probing from device tree
To: barebox@lists.infradead.org

When testing things like barebox state in sandbox, it's nice to be able
to refer to a partition on a hostfile by phandle. Support this by
checking for reading the barebox,filename property.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/hostfile.c                 | 16 ++++--
 arch/sandbox/dts/sandbox-state.dtsi           | 50 +++++++++++++++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                      |  5 ++
 4 files changed, 68 insertions(+), 4 deletions(-)
 create mode 100644 arch/sandbox/dts/sandbox-state.dtsi

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
diff --git a/arch/sandbox/dts/sandbox-state.dtsi b/arch/sandbox/dts/sandbox-state.dtsi
new file mode 100644
index 000000000000..fc17bd078899
--- /dev/null
+++ b/arch/sandbox/dts/sandbox-state.dtsi
@@ -0,0 +1,50 @@
+/ {
+	aliases {
+		state = &state;
+	};
+
+	disk {
+		compatible = "barebox,hostfile";
+		barebox,filename = "disk";
+		reg = <0x0 0x0 0x100000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			hostfile_state: state@0 {
+				reg = <0x0 0x1000>;
+				label = "state";
+			};
+		};
+	};
+
+	state: state {
+		magic = <0xaa3b86a6>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&hostfile_state>;
+		backend-storage-type = "direct";
+		backend-stridesize = <64>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		vars {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			x {
+				reg = <0x0 0x4>;
+				type = "uint32";
+				default = <1>;
+			};
+
+			y {
+				reg = <0x4 0x4>;
+				type = "uint32";
+				default = <3>;
+			};
+		};
+	};
+};
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
