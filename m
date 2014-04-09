Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXrN4-0008U1-Mb
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 12:12:52 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <U.Bely@sam-solutions.com>)
 id 1WXrMf-0006ah-Aq
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 15:12:25 +0300
From: Uladzimir Bely <u.bely@sam-solutions.net>
Date: Wed, 9 Apr 2014 15:11:58 +0300
Message-ID: <1397045518-27913-1-git-send-email-u.bely@sam-solutions.net>
In-Reply-To: <3C20140403064122.GC17250@pengutronix.de>
References: <3C20140403064122.GC17250@pengutronix.de>
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

OCOTP imx6 driver updated and ocotptool command added.
MAC address can be written to PROM. "0" (unprogrammed) bits
of MAC can be replaced with "1" (but not vice versa) only once.

Tested on phytec-phyflex-imx6 board.

Signed-off-by: Uladzimir Bely <u.bely@sam-solutions.net>
---
 arch/arm/mach-imx/Kconfig |   7 ++
 arch/arm/mach-imx/ocotp.c | 304 ++++++++++++++++++++++++++++++++++++++++++++++
 commands/Kconfig          |  10 ++
 commands/Makefile         |   1 +
 commands/ocotptool.c      | 123 +++++++++++++++++++
 5 files changed, 445 insertions(+)
 create mode 100644 commands/ocotptool.c

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 81d16e1..0c81560 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -593,6 +593,13 @@ config IMX_OCOTP
 	  only supported functionality is reading the MAC address and assigning
 	  it to an ethernet device.
 
+config IMX_OCOTP_WRITE
+	bool
+	prompt "Enable write support of i.MX6 CPUs OTP fuses"
+	depends on IMX_OCOTP
+	help
+	  This adds support for writing to On-Chip OTP registers.
+
 endmenu
 
 endif
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index e36b484..1fa66a3 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -26,12 +26,298 @@
 #include <io.h>
 #include <of.h>
 
+#include <linux/clk.h>
+#include <mach/imx6-regs.h>
+
 /*
  * a single MAC address reference has the form
  * <&phandle regoffset>
  */
 #define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))
 
+/* OCOTP Registers bits and masks */
+#define OCOTP_CTRL_WR_UNLOCK		16
+#define OCOTP_CTRL_WR_UNLOCK_KEY	0x3E77
+#define OCOTP_CTRL_WR_UNLOCK_MASK	0xFFFF0000
+#define OCOTP_CTRL_ADDR			0
+#define OCOTP_CTRL_ADDR_MASK		0x0000007F
+#define OCOTP_CTRL_RELOAD_SHADOWS	10
+#define OCOTP_CTRL_ERROR		9
+#define OCOTP_CTRL_BUSY			8
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
+
+struct ocotp_priv {
+	struct cdev cdev;
+	void __iomem *base;
+};
+
+struct ocotp_regs {
+	u32 ctrl;
+	u32 ctrl_set;
+	u32 ctrl_clr;
+	u32 ctrl_tog;
+	u32 timing;
+	u32 rsvd0[3];
+	u32 data;
+	u32 rsvd1[3];
+	u32 read_ctrl;
+	u32 rsvd2[3];
+	u32 fuse_data;
+};
+
+static int imx6_ocotp_set_timing(void)
+{
+	u32 clk_rate;
+	u32 relax, strobe_read, strobe_prog;
+	u32 timing;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	/* Get clock */
+	clk_rate = clk_get_rate(clk_lookup("ipg"));
+	if (clk_rate == -1) {
+		printf("ERROR: imx6_get_gptclk failed\n");
+		return -1;
+	}
+
+	relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
+	strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
+	strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;
+
+	timing = BF(relax, OCOTP_TIMING_RELAX);
+	timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
+	timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);
+
+	writel(timing, &otp->timing);
+
+	return 0;
+}
+
+static int imx6_ocotp_wait_busy(u32 flags)
+{
+	int count;
+	u32 cf;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	for (count = 10000; count >= 0; count--) {
+		cf = (1 << OCOTP_CTRL_BUSY) | (1 << OCOTP_CTRL_ERROR) | flags;
+		cf &= readl(&otp->ctrl);
+		if (!cf)
+			break;
+	}
+
+	if (count < 0) {
+		printf("ERROR: otp_wait_busy timeout. 0x%X\n", cf);
+		/* Clear ERROR bit, BUSY bit will be cleared by controller */
+		writel(1 << OCOTP_CTRL_ERROR, &otp->ctrl_clr);
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
+static int imx6_ocotp_prepare(void)
+{
+	int ret;
+
+	ret = imx6_ocotp_set_timing();
+	if (ret)
+		return ret;
+
+	ret = imx6_ocotp_wait_busy(0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int fuse_read_addr(u32 addr, u32 *pdata)
+{
+	u32 ctrl_reg;
+	int ret;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	ctrl_reg = readl(&otp->ctrl);
+	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
+	ctrl_reg &= ~OCOTP_CTRL_WR_UNLOCK_MASK;
+	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	writel(ctrl_reg, &otp->ctrl);
+
+	writel(OCOTP_READ_CTRL_READ_FUSE, &otp->read_ctrl);
+	ret = imx6_ocotp_wait_busy(0);
+	if (ret)
+		return ret;
+
+	*pdata = readl(&otp->fuse_data);
+
+	return 0;
+}
+
+int imx6_ocotp_read_one_u32(u32 index, u32 *pdata)
+{
+	int ret;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	ret = imx6_ocotp_prepare();
+	if (ret) {
+		printf("ERROR: read preparation failed\n");
+		return ret;
+	}
+
+	ret = fuse_read_addr(index, pdata);
+	if (ret) {
+		printf("ERROR: read operation failed\n");
+		return ret;
+	}
+
+	if (readl(&otp->ctrl) & (1 << OCOTP_CTRL_ERROR)) {
+		printf("ERROR: bad read status\n");
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
+		imx6_ocotp_read_one_u32(i, buf);
+		buf += 4;
+		read_count++;
+	}
+	read_count <<= 2;
+
+	return read_count;
+}
+
+static int fuse_blow_addr(u32 addr, u32 value)
+{
+	u32 ctrl_reg;
+	int ret;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	/* Control register */
+	ctrl_reg = readl(&otp->ctrl);
+	ctrl_reg &= ~OCOTP_CTRL_ADDR_MASK;
+	ctrl_reg |= BF(addr, OCOTP_CTRL_ADDR);
+	ctrl_reg |= BF(OCOTP_CTRL_WR_UNLOCK_KEY, OCOTP_CTRL_WR_UNLOCK);
+	writel(ctrl_reg, &otp->ctrl);
+
+	writel(value, &otp->data);
+	ret = imx6_ocotp_wait_busy(0);
+	if (ret)
+		return ret;
+
+	/* Write postamble */
+	udelay(2000);
+	return 0;
+}
+
+static int imx6_ocotp_blow_post(void)
+{
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	printf("Reloading shadow registers...\n");
+	writel(1 << OCOTP_CTRL_RELOAD_SHADOWS, &otp->ctrl_set);
+	udelay(1);
+
+	return imx6_ocotp_wait_busy(1 << OCOTP_CTRL_RELOAD_SHADOWS);
+}
+
+int imx6_ocotp_blow_one_u32(u32 index, u32 data, u32 *pfused_value)
+{
+	int ret;
+	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
+
+	ret = imx6_ocotp_prepare();
+	if (ret) {
+		printf("ERROR: write preparation failed\n");
+		return ret;
+	}
+
+	ret = fuse_blow_addr(index, data);
+	if (ret) {
+		printf("ERROR: blow fuse failed\n");
+		return ret;
+	}
+
+	ret = imx6_ocotp_blow_post();
+	if (ret) {
+		printf("ERROR: blow post operation failed\n");
+		return ret;
+	}
+
+	if (readl(&otp->ctrl) & (1 << OCOTP_CTRL_ERROR)) {
+		printf("ERROR: bad write status\n");
+		return -EFAULT;
+	}
+
+	ret = imx6_ocotp_read_one_u32(index, pfused_value);
+	if (ret) {
+		printf("ERROR: read value written\n");
+		return ret;
+	}
+	return 0;
+}
+
+static ssize_t imx6_ocotp_cdev_write(struct cdev *cdev, const void *buf,
+		size_t count, loff_t offset, ulong flags)
+{
+	ulong size, index, i;
+	u32 data, pfuse;
+
+	index = offset >> 2;
+	size = count >> 2;
+
+	if (!IS_ENABLED(CONFIG_IMX_OCOTP_WRITE))
+		return -ENOSYS;
+
+	if (size > (FUSE_REGS_COUNT - index))
+		size = FUSE_REGS_COUNT - index - 1;
+
+	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
+		for (i = 0; i < size; i++) {
+			int ret;
+
+			memcpy(&data, buf + i * 4, 4);
+			ret = imx6_ocotp_blow_one_u32(index + i, data, &pfuse);
+			if (ret < 0)
+				return ret;
+		}
+	}
+
+	return count;
+}
+
+static struct file_operations imx6_ocotp_ops = {
+	.read	= imx6_ocotp_cdev_read,
+	.write	= imx6_ocotp_cdev_write,
+	.lseek	= dev_lseek_default,
+};
+
 static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 {
 	char mac[6];
@@ -74,12 +360,30 @@ static int imx_ocotp_probe(struct device_d *dev)
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
+	cdev		= &priv->cdev;
+	cdev->dev	= dev;
+	cdev->ops	= &imx6_ocotp_ops;
+	cdev->priv	= priv;
+	cdev->size	= 32;
+	cdev->name	= asprintf("imx-ocotp");
+	if (cdev->name == NULL)
+		return -ENOMEM;
+
+	ret = devfs_create(cdev);
+
 	return 0;
 }
 
diff --git a/commands/Kconfig b/commands/Kconfig
index 1e07b5b..560e426 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -733,6 +733,16 @@ config CMD_MIITOOL
 	  detailed MII status information, such as MII capabilities,
 	  current advertising mode, and link partner capabilities.
 
+config CMD_OCOTPTOOL
+	bool
+	depends on IMX_OCOTP
+	prompt "ocotptool"
+	help
+	  The ocotptool command allows to read and write to i.MX6 On-Chip
+	  OTP registers from barebox shell. Usage:
+		"ocotptool read mac" to read MAC
+		"ocotptool blow mac xx:xx:xx:xx:xx:xx" to write MAC
+
 config CMD_CLK
 	tristate
 	depends on COMMON_CLK
diff --git a/commands/Makefile b/commands/Makefile
index 58d27fa..01de356 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -93,3 +93,4 @@ obj-$(CONFIG_CMD_MIITOOL)	+= miitool.o
 obj-$(CONFIG_CMD_DETECT)	+= detect.o
 obj-$(CONFIG_CMD_BOOT)		+= boot.o
 obj-$(CONFIG_CMD_DEVINFO)	+= devinfo.o
+obj-$(CONFIG_CMD_OCOTPTOOL)	+= ocotptool.o
diff --git a/commands/ocotptool.c b/commands/ocotptool.c
new file mode 100644
index 0000000..468db4e
--- /dev/null
+++ b/commands/ocotptool.c
@@ -0,0 +1,123 @@
+/*
+ * ocotptool.c
+ *
+ * Copyright (c) 2014 Phytec Messtechnik GmbH
+ *
+ * Uladzimir Bely <u.bely@sam-solutions.com>,
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <net.h>
+
+#define DEVICENAME	"imx-ocotp"
+
+#define MAC_OFFSET	(0x22 * 4)
+#define MAC_BYTES	8
+
+static int read_mac(void)
+{
+	struct cdev *cdev;
+	char *name = asprintf(DEVICENAME);
+	int ret = 0;
+	char buf[8];
+
+	cdev = cdev_open(name, O_RDONLY);
+	if (!cdev)
+		return -ENODEV;
+	ret = cdev_read(cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+	if (ret == MAC_BYTES) {
+		printf("MAC is %02x:%02x:%02x:%02x:%02x:%02x\n",
+			buf[5], buf[4], buf[3], buf[2], buf[1], buf[0]);
+	}
+	cdev_close(cdev);
+	free(name);
+
+	return 0;
+}
+
+static int write_mac(char *enetaddr)
+{
+	struct cdev *cdev;
+	char *name = asprintf(DEVICENAME);
+	int ret = 0;
+	char buf[8];
+
+	buf[0] = enetaddr[5]; buf[1] = enetaddr[4];
+	buf[2] = enetaddr[3]; buf[3] = enetaddr[2];
+	buf[4] = enetaddr[1]; buf[5] = enetaddr[0];
+	buf[6] = 0; buf[7] = 0;
+	cdev = cdev_open(name, O_WRONLY);
+	if (!cdev)
+		return -ENODEV;
+	printf("Writing MAC to OCOTP registers...\n");
+	ret = cdev_write(cdev, buf, MAC_BYTES, MAC_OFFSET, 0);
+
+	cdev_close(cdev);
+	free(name);
+
+	return 0;
+}
+
+static int do_ocotptool(int argc, char *argv[])
+{
+	int opt, ret = COMMAND_ERROR_USAGE;
+	char enetaddr[12];
+
+	while ((opt = getopt(argc, argv, "r:w:")) > 0) {
+		switch (opt) {
+		case 'r':
+			if (!strcmp(optarg, "mac")) {
+				ret = read_mac();
+				return ret;
+			}
+		case 'w':
+			if (!strcmp(optarg, "mac")) {
+				if (optind >= argc) { /* If no more args */
+					printf("%s: specify MAC\n", argv[0]);
+					return COMMAND_ERROR_USAGE;
+				}
+				/* Check for next arg is MAC-address */
+				if (string_to_ethaddr(argv[optind], enetaddr)) {
+					printf("%s: incorrect MAC\n", argv[0]);
+					return COMMAND_ERROR_USAGE;
+				}
+
+				ret = write_mac(enetaddr);
+			} else
+				return COMMAND_ERROR_USAGE;
+			break;
+		default:
+			break;
+		}
+	}
+
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(ocotptool)
+BAREBOX_CMD_HELP_USAGE("ocotptool [OPTIONS]\n")
+BAREBOX_CMD_HELP_SHORT("Example:\n")
+BAREBOX_CMD_HELP_SHORT("  Reading MAC: ocotptool -r mac\n")
+BAREBOX_CMD_HELP_SHORT("  Writing MAC: ocotptool -w mac xx:xx:xx:xx:xx:xx\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ocotptool)
+	.cmd		= do_ocotptool,
+	.usage		= "read/write i.MX6 fuses (MAC)",
+	BAREBOX_CMD_HELP(cmd_ocotptool_help)
+BAREBOX_CMD_END
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
