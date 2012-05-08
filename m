Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRfFP-0006CV-Qg
 for barebox@lists.infradead.org; Tue, 08 May 2012 07:54:18 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  8 May 2012 09:54:01 +0200
Message-Id: <1336463641-27219-9-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
References: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 8/8] arm: mxs: add write support for ocotp
To: barebox@lists.infradead.org

Since we now can change HCLK and VDDIO, we can now support writing to
OCOTP. Writing is done via a special data register. This is u32, so we
need to fill a temporary buffer when offset or count is not aligned. The
write is also protected by a special device variable.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig |   11 +++++
 arch/arm/mach-mxs/ocotp.c |  110 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 121 insertions(+)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 3348a3c..f646e0b 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -80,6 +80,17 @@ config MXS_OCOTP
 	  internal view). Don't use register offsets here, the SET, CLR and
 	  TGL registers are not mapped!
 
+config MXS_OCOTP_WRITABLE
+	bool "OCOTP write support"
+	depends on MXS_OCOTP
+	help
+	  Enable this option to add writing to OCOTP.
+	  Warning: blown bits can not be unblown. Use with care.
+
+	  Before being actually able to blow the bits, you need to explicitely
+	  enable writing:
+		 ocotp0.permanent_write_enable=1
+
 endmenu
 
 menu "Board specific settings       "
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index f18d066..df409ca 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -25,13 +25,19 @@
 #include <mach/generic.h>
 #include <mach/ocotp.h>
 #include <mach/imx-regs.h>
+#include <mach/clock-imx28.h>
+#include <mach/power.h>
 
 #define DRIVERNAME "ocotp"
 
 #define OCOTP_CTRL			0x0
+#  define OCOTP_CTRL_ADDR_MASK		0x3f
 #  define OCOTP_CTRL_BUSY		(1 << 8)
 #  define OCOTP_CTRL_ERROR		(1 << 9)
 #  define OCOTP_CTRL_RD_BANK_OPEN	(1 << 12)
+#  define OCOTP_CTRL_WR_UNLOCK		0x3e770000
+
+#define OCOTP_DATA			0x10
 
 #define OCOTP_WORD_OFFSET		0x20
 
@@ -92,11 +98,105 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	return size;
 }
 
+static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct ocotp_priv *priv = cdev->priv;
+	void __iomem *base = priv->base;
+	const char *write_param;
+	unsigned int write_enabled = 0;
+	unsigned long old_hclk, aligned_offset;
+	int old_vddio, num_words, num_bytes, i, ret = 0;
+	u8 *work_buf;
+	u32 reg;
+
+	write_param = dev_get_param(cdev->dev, "permanent_write_enable");
+	if (write_param)
+		write_enabled = simple_strtoul(write_param, NULL, 0);
+
+	if (!write_param || !write_enabled)
+		return -EPERM;
+
+	/* we can only work on u32, so calc some helpers */
+	aligned_offset = offset & ~3UL;
+	num_words = DIV_ROUND_UP(offset - aligned_offset + count, 4);
+	num_bytes = num_words << 2;
+
+	/* read in all words which will be modified */
+	work_buf = xmalloc(num_bytes);
+
+	i = mxs_ocotp_cdev_read(cdev, work_buf, num_bytes, aligned_offset, 0);
+	if (i != num_bytes) {
+		ret = -ENXIO;
+		goto free_mem;
+	}
+
+	/* modify read words with to be written data */
+	for (i = 0; i < count; i++)
+		work_buf[offset - aligned_offset + i] |= ((u8 *)buf)[i];
+
+	/* prepare system for OTP write */
+	old_hclk = imx_get_hclk();
+	old_vddio = imx_get_vddio();
+
+	imx_set_hclk(24000000);
+	imx_set_vddio(2800000);
+
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_CLR);
+
+	if (mxs_ocotp_wait_busy(priv)) {
+		ret = -ETIMEDOUT;
+		goto restore_system;
+	}
+
+	/* write word for word via data register */
+	for (i = 0; i < num_words; i++) {
+		reg = readl(base + OCOTP_CTRL) & ~OCOTP_CTRL_ADDR_MASK;
+		reg |= OCOTP_CTRL_WR_UNLOCK | ((aligned_offset >> 2) + i);
+		writel(reg, base + OCOTP_CTRL);
+
+		writel(((u32 *)work_buf)[i], base + OCOTP_DATA);
+
+		if (mxs_ocotp_wait_busy(priv)) {
+			ret = -ETIMEDOUT;
+			goto restore_system;
+		}
+
+		mdelay(2);
+	}
+
+restore_system:
+	imx_set_vddio(old_vddio);
+	imx_set_hclk(old_hclk);
+free_mem:
+	free(work_buf);
+
+	return ret;
+}
+
 static struct file_operations mxs_ocotp_ops = {
 	.read	= mxs_ocotp_cdev_read,
+	.write	= mxs_ocotp_cdev_write,
 	.lseek	= dev_lseek_default,
 };
 
+#ifdef CONFIG_MXS_OCOTP_WRITABLE
+static int mxs_ocotp_write_enable_set(struct device_d *dev, struct param_d *param,
+		const char *val)
+{
+	unsigned long write_enable;
+
+	if (!val)
+		return -EINVAL;
+
+	write_enable = simple_strtoul(val, NULL, 0);
+	if (write_enable > 1)
+		return -EINVAL;
+
+	return dev_param_set_generic(dev, param, write_enable ? "1" : "0");
+}
+#endif /* CONFIG_MXS_OCOTP_WRITABLE */
+
 static int mxs_ocotp_probe(struct device_d *dev)
 {
 	int err;
@@ -113,6 +213,16 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	if (err < 0)
 		return err;
 
+#ifdef CONFIG_MXS_OCOTP_WRITABLE
+	err = dev_add_param(dev, "permanent_write_enable",
+			mxs_ocotp_write_enable_set, NULL, 0);
+	if (err < 0)
+		return err;
+	err = dev_set_param(dev, "permanent_write_enable", "0");
+	if (err < 0)
+		return err;
+#endif /* CONFIG_MXS_OCOTP_WRITABLE */
+
 	return 0;
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
