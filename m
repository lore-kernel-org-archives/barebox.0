Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYaET-0005m5-EH
 for barebox@lists.infradead.org; Fri, 11 Apr 2014 12:06:59 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <U.Bely@sam-solutions.com>)
 id 1WYaE4-0001ZW-JT
 for barebox@lists.infradead.org; Fri, 11 Apr 2014 15:06:32 +0300
From: Uladzimir Bely <u.bely@sam-solutions.net>
Date: Fri, 11 Apr 2014 15:06:24 +0300
Message-ID: <1397217984-16808-1-git-send-email-u.bely@sam-solutions.net>
In-Reply-To: <20140411073906.GN27055@pengutronix.de>
References: <20140411073906.GN27055@pengutronix.de>
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
Subject: [PATCH] imx6: ocotp: Add On-Chip OTP registers write support
To: barebox@lists.infradead.org
Cc: Uladzimir Bely <u.bely@sam-solutions.net>

FUSEs (OTP registers) can be written via /dev/imx-ocotp character device.

For example, writing MAC 12:34:56:78:9A:BC can be performed as
    > mw -l -d /dev/imx-ocotp 0x8c 0x00001234
    > mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
and reading as
    > md -l -s /dev/imx-ocotp 0x88+8
    00000088: 56789ABC 00001234
, where 0x88 (0x22*4) and 0x8C (0x23*4) are offsets of MAC OTP registers.

Notice: FUSEs are PROM, so "0" (unprogrammed) bits
can be replaced with "1" (but not vice versa) only once.

Also, for MAC there are convinient parameters:
    > ocotp0.permanent_write_enable=1
    > ocotp0.mac_addr=12:34:56:78:9A:BC
    imx_ocotp 21bc000.ocotp: reloading shadow registers...
    imx_ocotp 21bc000.ocotp: reloading shadow registers...
    > echo $ocotp0.mac_addr
    12:34:56:78:9A:BC

Signed-off-by: Uladzimir Bely <u.bely@sam-solutions.net>
---
 arch/arm/mach-imx/Kconfig    |  10 ++
 arch/arm/mach-imx/clk-imx6.c |   1 +
 arch/arm/mach-imx/ocotp.c    | 332 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 343 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d40c944..c2613bf 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -621,6 +621,16 @@ config IMX_OCOTP
 	  only supported functionality is reading the MAC address and assigning
 	  it to an ethernet device.
 
+config IMX_OCOTP_WRITE
+	bool
+	  prompt "Enable write support of i.MX6 CPUs OTP fuses"
+	  depends on IMX_OCOTP
+	help
+	  This adds write support to IMX6 On-Chip OTP registers.
+	  Example of set MAC to 12:34:56:78:9A:BC (2 words with offset 0x22 * 4):
+		mw -l -d /dev/imx-ocotp 0x8C 0x00001234
+		mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 518fc00..4598a62 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -433,6 +433,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ecspi_root], MX6_ECSPI5_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg_per], MX6_GPT_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX6_ENET_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX6_OCOTP_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usdhc1_podf], MX6_USDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usdhc2_podf], MX6_USDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usdhc3_podf], MX6_USDHC3_BASE_ADDR, NULL);
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index e36b484..0ad5b46 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -25,6 +25,8 @@
 #include <net.h>
 #include <io.h>
 #include <of.h>
+#include <clock.h>
+#include <linux/clk.h>
 
 /*
  * a single MAC address reference has the form
@@ -32,6 +34,270 @@
  */
 #define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))
 
+/* OCOTP Registers offsets */
+#define OCOTP_CTRL_SET			0x04
+#define OCOTP_CTRL_CLR			0x08
+#define OCOTP_TIMING			0x10
+#define OCOTP_DATA			0x20
+#define OCOTP_READ_CTRL			0x30
+#define OCOTP_READ_FUSE_DATA		0x40
+
+/* OCOTP Registers bits and masks */
+#define OCOTP_CTRL_WR_UNLOCK		16
+#define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
+#define OCOTP_CTRL_WR_UNLOCK_MASK	0xFFFF0000
+#define OCOTP_CTRL_ADDR			0
+#define OCOTP_CTRL_ADDR_MASK		0x0000007F
+#define OCOTP_CTRL_BUSY			(1 << 8)
+#define OCOTP_CTRL_ERROR		(1 << 9)
+#define OCOTP_CTRL_RELOAD_SHADOWS	(1 << 10)
+
+#define OCOTP_TIMING_STROBE_READ	16
+#define OCOTP_TIMING_STROBE_READ_MASK	0x003F0000
+#define OCOTP_TIMING_RELAX		12
+#define OCOTP_TIMING_RELAX_MASK		0x0000F000
+#define OCOTP_TIMING_STROBE_PROG	0
+#define OCOTP_TIMING_STROBE_PROG_MASK	0x00000FFF
+
+#define OCOTP_READ_CTRL_READ_FUSE	0x00000001
+
+#define BF(value, field)		(((value) << field) & field##_MASK)
+
+/* Other definitions */
+#define FUSE_REGS_COUNT			(16 * 8)
+#define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
+#define DEF_RELAX			20
+#define MAC_OFFSET			(0x22 * 4)
+#define MAC_BYTES			8
+
+struct ocotp_priv {
+	struct cdev cdev;
+	void __iomem *base;
+	struct clk *clk;
+	struct device_d dev;
+	int write_enable;
+	char ethaddr[6];
+};
+
+static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
+{
+	u32 clk_rate;
+	u32 relax, strobe_read, strobe_prog;
+	u32 timing;
+
+	clk_rate = clk_get_rate(priv->clk);
+
+	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
+	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
+	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
+
+	timing = BF(relax, OCOTP_TIMING_RELAX);
+	timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
+	timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);
+
+	writel(timing, priv->base + OCOTP_TIMING);
+
+	return 0;
+}
+
+static int imx6_ocotp_wait_busy(u32 flags, struct ocotp_priv *priv)
+{
+
+	uint64_t start = get_time_ns();
+	while ((OCOTP_CTRL_BUSY | OCOTP_CTRL_ERROR | flags) &
+			readl(priv->base)) {
+		if (is_timeout(start, MSECOND)) {
+			/* Clear ERROR bit */
+			writel(OCOTP_CTRL_ERROR, priv->base + OCOTP_CTRL_CLR);
+			return -ETIMEDOUT;
+		}
+	}
+
+	return 0;
+}
+
+static int imx6_ocotp_prepare(struct ocotp_priv *priv)
+{
+	int ret;
+
+	ret = imx6_ocotp_set_timing(priv);
+	if (ret)
+		return ret;
+
+	ret = imx6_ocotp_wait_busy(0, priv);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int fuse_read_addr(u32 addr, u32 *pdata, struct ocotp_priv *priv)
+{
+	u32 ctrl_reg;
+	int ret;
+
+	ctrl_reg = readl(priv->base);
+	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
+	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
+	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	writel(ctrl_reg, priv->base);
+
+	writel(OCOTP_READ_CTRL_READ_FUSE, priv->base + OCOTP_READ_CTRL);
+	ret = imx6_ocotp_wait_busy(0, priv);
+	if (ret)
+		return ret;
+
+	*pdata = readl(priv->base + OCOTP_READ_FUSE_DATA);
+
+	return 0;
+}
+
+int imx6_ocotp_read_one_u32(u32 index, u32 *pdata, struct ocotp_priv *priv)
+{
+	int ret;
+
+	ret = imx6_ocotp_prepare(priv);
+	if (ret) {
+		dev_err(priv->cdev.dev, "prepare to read failed\n");
+		return ret;
+	}
+
+	ret = fuse_read_addr(index, pdata, priv);
+	if (ret) {
+		dev_err(priv->cdev.dev, "read failed\n");
+		return ret;
+	}
+
+	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
+		dev_err(priv->cdev.dev, "bad read status\n");
+		return -EFAULT;
+	}
+	return 0;
+}
+
+static ssize_t imx6_ocotp_cdev_read(struct cdev *cdev, void *buf,
+		size_t count, loff_t offset, ulong flags)
+{
+	ulong i;
+	u32 index;
+	size_t read_count = 0;
+
+	index = offset >> 2;
+	count >>= 2;
+	if (count > (FUSE_REGS_COUNT - index))
+		count = FUSE_REGS_COUNT - index - 1;
+
+	for (i = index; i < (index + count); i++) {
+		imx6_ocotp_read_one_u32(i, buf, cdev->priv);
+		buf += 4;
+		read_count++;
+	}
+	read_count <<= 2;
+
+	return read_count;
+}
+
+static int fuse_blow_addr(u32 addr, u32 value, struct ocotp_priv *priv)
+{
+	u32 ctrl_reg;
+	int ret;
+
+	/* Control register */
+	ctrl_reg = readl(priv->base);
+	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
+	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	ctrl_reg |= BF(OCOTP_CTRL_WR_UNLOCK_KEY, OCOTP_CTRL_WR_UNLOCK);
+	writel(ctrl_reg, priv->base);
+
+	writel(value, priv->base + OCOTP_DATA);
+	ret = imx6_ocotp_wait_busy(0, priv);
+	if (ret)
+		return ret;
+
+	/* Write postamble */
+	udelay(2000);
+	return 0;
+}
+
+static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
+{
+	dev_info(priv->cdev.dev, "reloading shadow registers...\n");
+	writel(OCOTP_CTRL_RELOAD_SHADOWS, priv->base + OCOTP_CTRL_SET);
+	udelay(1);
+
+	return imx6_ocotp_wait_busy(OCOTP_CTRL_RELOAD_SHADOWS, priv);
+}
+
+int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value,
+		struct ocotp_priv *priv)
+{
+	int ret;
+
+	ret = imx6_ocotp_prepare(priv);
+	if (ret) {
+		dev_err(priv->cdev.dev, "prepare to write failed\n");
+		return ret;
+	}
+
+	ret = fuse_blow_addr(index, data, priv);
+	if (ret) {
+		dev_err(priv->cdev.dev, "fuse blow failed\n");
+		return ret;
+	}
+
+	ret = imx6_ocotp_reload_shadow(priv);
+	if (ret) {
+		dev_err(priv->cdev.dev, "reload shadow registers failed\n");
+		return ret;
+	}
+
+	if (readl(priv->base) & OCOTP_CTRL_ERROR) {
+		dev_err(priv->cdev.dev, "bad write status\n");
+		return -EFAULT;
+	}
+
+	ret = imx6_ocotp_read_one_u32(index, pfused_value, priv);
+
+	return ret;
+}
+
+static ssize_t imx6_ocotp_cdev_write(struct cdev *cdev, const void *buf,
+		size_t count, loff_t offset, ulong flags)
+{
+	ulong size, index, i;
+	u32 data, pfuse;
+
+	struct ocotp_priv *priv = cdev->priv;
+
+	index = offset >> 2;
+	size = count >> 2;
+
+	if (!priv->write_enable) {
+		dev_err(cdev->dev, "operation not permitted\n");
+		return -EPERM;
+	}
+
+	if (size > (FUSE_REGS_COUNT - index))
+		size = FUSE_REGS_COUNT - index - 1;
+
+	for (i = 0; i < size; i++) {
+		int ret;
+
+		memcpy(&data, buf + i * 4, 4);
+		ret = imx6_ocotp_blow_one_u32(index + i, data,
+				&pfuse, cdev->priv);
+		if (ret < 0)
+			return ret;
+	}
+
+	return count;
+}
+
+static struct file_operations imx6_ocotp_ops = {
+	.read	= imx6_ocotp_cdev_read,
+	.lseek	= dev_lseek_default,
+};
+
 static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 {
 	char mac[6];
@@ -70,16 +336,82 @@ static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 	}
 }
 
+static int imx_ocotp_get_mac(struct param_d *param, void *priv)
+{
+	struct ocotp_priv *ocotp_priv = priv;
+	char buf[8];
+	int i;
+
+	imx6_ocotp_cdev_read(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+
+	for (i = 0; i < 6; i++)
+		ocotp_priv->ethaddr[i] = buf[5 - i];
+
+	return 0;
+}
+
+static int imx_ocotp_set_mac(struct param_d *param, void *priv)
+{
+	struct ocotp_priv *ocotp_priv = priv;
+	char buf[8];
+	int i;
+
+	for (i = 0; i < 6; i++)
+		buf[5 - i] = ocotp_priv->ethaddr[i];
+	buf[6] = 0; buf[7] = 0;
+
+	imx6_ocotp_cdev_write(&ocotp_priv->cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+
+	return 0;
+}
+
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	void __iomem *base;
 
+	struct ocotp_priv *priv;
+	struct cdev *cdev;
+	int ret = 0;
+
 	base = dev_request_mem_region(dev, 0);
 	if (!base)
 		return -EBUSY;
 
 	imx_ocotp_init_dt(dev, base);
 
+	priv = xzalloc(sizeof(*priv));
+
+	priv->base	= base;
+	priv->clk	= clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	cdev		= &priv->cdev;
+	cdev->dev	= dev;
+	cdev->ops	= &imx6_ocotp_ops;
+	cdev->priv	= priv;
+	cdev->size	= 192;
+	cdev->name	= "imx-ocotp";
+	if (cdev->name == NULL)
+		return -ENOMEM;
+
+	ret = devfs_create(cdev);
+
+	if (ret < 0)
+		return ret;
+
+	strcpy(priv->dev.name, "ocotp");
+	priv->dev.parent = dev;
+	register_device(&priv->dev);
+
+	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
+		imx6_ocotp_ops.write = imx6_ocotp_cdev_write;
+		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
+				NULL, NULL, &priv->write_enable, NULL);
+		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
+				imx_ocotp_get_mac, priv->ethaddr, priv);
+	}
+
 	return 0;
 }
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
