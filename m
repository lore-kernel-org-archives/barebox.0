Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WdHVi-0003F4-Ux
 for barebox@lists.infradead.org; Thu, 24 Apr 2014 11:08:12 +0000
Date: Thu, 24 Apr 2014 13:07:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140424110746.GX5858@pengutronix.de>
References: <20140411073906.GN27055@pengutronix.de>
 <1397217984-16808-1-git-send-email-u.bely@sam-solutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397217984-16808-1-git-send-email-u.bely@sam-solutions.net>
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
Subject: Re: [PATCH] imx6: ocotp: Add On-Chip OTP registers write support
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: barebox@lists.infradead.org

Hi Uladzimir,

Sorry for the delay, I was on holidays.

On Fri, Apr 11, 2014 at 03:06:24PM +0300, Uladzimir Bely wrote:
> FUSEs (OTP registers) can be written via /dev/imx-ocotp character device.
> 
> For example, writing MAC 12:34:56:78:9A:BC can be performed as
>     > mw -l -d /dev/imx-ocotp 0x8c 0x00001234
>     > mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
> and reading as
>     > md -l -s /dev/imx-ocotp 0x88+8
>     00000088: 56789ABC 00001234
> , where 0x88 (0x22*4) and 0x8C (0x23*4) are offsets of MAC OTP registers.
> 
> Notice: FUSEs are PROM, so "0" (unprogrammed) bits
> can be replaced with "1" (but not vice versa) only once.
> 
> Also, for MAC there are convinient parameters:
>     > ocotp0.permanent_write_enable=1
>     > ocotp0.mac_addr=12:34:56:78:9A:BC
>     imx_ocotp 21bc000.ocotp: reloading shadow registers...
>     imx_ocotp 21bc000.ocotp: reloading shadow registers...
>     > echo $ocotp0.mac_addr
>     12:34:56:78:9A:BC
> 

This version looks mostly fine. I'd like to include the following into
your patch. This changes the behaviour for the shadow fuse registers. It
introduces a 'sense_enable' boolean parameter. If it is false the driver
will read from the shadow registers, otherwise it explicitly senses the
fuses. Also, writing is always allowed. If permanent_write_enable is
false, we will write to the shadow registers instead of the fuses. This
allows for some operations without burning the precious fuses.

Sascha

From be9d6004d0bfd2dd403c94b33ba00186b173b250 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Apr 2014 12:58:23 +0200
Subject: [PATCH] fixup! imx6: ocotp: Add On-Chip OTP registers write support

---
 arch/arm/mach-imx/ocotp.c | 110 ++++++++++++++++++++++++++++------------------
 1 file changed, 67 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 0ad5b46..476b376 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -75,7 +75,8 @@ struct ocotp_priv {
 	void __iomem *base;
 	struct clk *clk;
 	struct device_d dev;
-	int write_enable;
+	int permanent_write_enable;
+	int sense_enable;
 	char ethaddr[6];
 };
 
@@ -102,8 +103,8 @@ static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
 
 static int imx6_ocotp_wait_busy(u32 flags, struct ocotp_priv *priv)
 {
-
 	uint64_t start = get_time_ns();
+
 	while ((OCOTP_CTRL_BUSY | OCOTP_CTRL_ERROR | flags) &
 			readl(priv->base)) {
 		if (is_timeout(start, MSECOND)) {
@@ -158,43 +159,53 @@ int imx6_ocotp_read_one_u32(u32 index, u32 *pdata, struct ocotp_priv *priv)
 
 	ret = imx6_ocotp_prepare(priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "prepare to read failed\n");
+		dev_err(priv->cdev.dev, "failed to prepare read fuse 0x%08x\n",
+				index);
 		return ret;
 	}
 
 	ret = fuse_read_addr(index, pdata, priv);
 	if (ret) {
-		dev_err(priv->cdev.dev, "read failed\n");
+		dev_err(priv->cdev.dev, "failed to read fuse 0x%08x\n", index);
 		return ret;
 	}
 
 	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
-		dev_err(priv->cdev.dev, "bad read status\n");
+		dev_err(priv->cdev.dev, "bad read status at fuse 0x%08x\n", index);
 		return -EFAULT;
 	}
+
 	return 0;
 }
 
 static ssize_t imx6_ocotp_cdev_read(struct cdev *cdev, void *buf,
-		size_t count, loff_t offset, ulong flags)
+		size_t count, loff_t offset, unsigned long flags)
 {
-	ulong i;
 	u32 index;
-	size_t read_count = 0;
+	ssize_t read_count = 0;
+	int ret, i;
+	struct ocotp_priv *priv = container_of(cdev, struct ocotp_priv, cdev);
 
 	index = offset >> 2;
 	count >>= 2;
+
 	if (count > (FUSE_REGS_COUNT - index))
 		count = FUSE_REGS_COUNT - index - 1;
 
 	for (i = index; i < (index + count); i++) {
-		imx6_ocotp_read_one_u32(i, buf, cdev->priv);
+		if (priv->sense_enable) {
+			ret = imx6_ocotp_read_one_u32(i, buf, priv);
+			if (ret)
+				return ret;
+		} else {
+			*(u32 *)buf = readl(priv->base + 0x400 + i * 0x10);
+		}
+
 		buf += 4;
 		read_count++;
 	}
-	read_count <<= 2;
 
-	return read_count;
+	return read_count << 2;
 }
 
 static int fuse_blow_addr(u32 addr, u32 value, struct ocotp_priv *priv)
@@ -245,12 +256,6 @@ int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value,
 		return ret;
 	}
 
-	ret = imx6_ocotp_reload_shadow(priv);
-	if (ret) {
-		dev_err(priv->cdev.dev, "reload shadow registers failed\n");
-		return ret;
-	}
-
 	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
 		dev_err(priv->cdev.dev, "bad write status\n");
 		return -EFAULT;
@@ -262,39 +267,56 @@ int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value,
 }
 
 static ssize_t imx6_ocotp_cdev_write(struct cdev *cdev, const void *buf,
-		size_t count, loff_t offset, ulong flags)
+		size_t count, loff_t offset, unsigned long flags)
 {
-	ulong size, index, i;
-	u32 data, pfuse;
-
 	struct ocotp_priv *priv = cdev->priv;
+	int index, i;
+	ssize_t write_count = 0;
+	const u32 *data;
+	u32 pfuse;
+	int ret;
+
+	/* We could do better, but currently this is what's implemented */
+	if (offset & 0x3 || count & 0x3) {
+		dev_err(cdev->dev, "only u32 aligned writes allowed\n");
+		return -EINVAL;
+	}
 
 	index = offset >> 2;
-	size = count >> 2;
+	count >>= 2;
 
-	if (!priv->write_enable) {
-		dev_err(cdev->dev, "operation not permitted\n");
-		return -EPERM;
-	}
+	if (count > (FUSE_REGS_COUNT - index))
+		count = FUSE_REGS_COUNT - index - 1;
 
-	if (size > (FUSE_REGS_COUNT - index))
-		size = FUSE_REGS_COUNT - index - 1;
+	data = buf;
 
-	for (i = 0; i < size; i++) {
-		int ret;
+	for (i = index; i < (index + count); i++) {
+		if (priv->permanent_write_enable) {
+			ret = imx6_ocotp_blow_one_u32(i, *data,
+					&pfuse, priv);
+			if (ret < 0) {
+				goto out;
+			}
+		} else {
+			writel(*data, priv->base + 0x400 + i * 0x10);
+		}
 
-		memcpy(&data, buf + i * 4, 4);
-		ret = imx6_ocotp_blow_one_u32(index + i, data,
-				&pfuse, cdev->priv);
-		if (ret < 0)
-			return ret;
+		data++;
+		write_count++;
 	}
 
-	return count;
+	ret = 0;
+
+out:
+	if (priv->permanent_write_enable)
+		imx6_ocotp_reload_shadow(priv);
+
+	return ret < 0 ? ret : (write_count << 2);
 }
 
 static struct file_operations imx6_ocotp_ops = {
 	.read	= imx6_ocotp_cdev_read,
+	.write	= imx6_ocotp_cdev_write,
 	.lseek	= dev_lseek_default,
 };
 
@@ -354,13 +376,15 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 {
 	struct ocotp_priv *ocotp_priv = priv;
 	char buf[8];
-	int i;
+	int i, ret;
 
 	for (i = 0; i < 6; i++)
 		buf[5 - i] = ocotp_priv->ethaddr[i];
 	buf[6] = 0; buf[7] = 0;
 
-	imx6_ocotp_cdev_write(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+	ret = imx6_ocotp_cdev_write(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }
@@ -368,7 +392,6 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	void __iomem *base;
-
 	struct ocotp_priv *priv;
 	struct cdev *cdev;
 	int ret = 0;
@@ -405,13 +428,14 @@ static int imx_ocotp_probe(struct device_d *dev)
 	register_device(&priv->dev);
 
 	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
-		imx6_ocotp_ops.write = imx6_ocotp_cdev_write;
 		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
-				NULL, NULL, &priv->write_enable, NULL);
-		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
-				imx_ocotp_get_mac, priv->ethaddr, priv);
+				NULL, NULL, &priv->permanent_write_enable, NULL);
 	}
 
+	dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
+			imx_ocotp_get_mac, priv->ethaddr, priv);
+	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
+
 	return 0;
 }
 
-- 
1.9.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
