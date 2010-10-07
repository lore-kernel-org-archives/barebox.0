Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3qSg-00067Y-0x
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 13:24:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 15:24:16 +0200
Message-Id: <1286457858-29771-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
References: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/7] Add MCI card support to barebox
To: barebox@lists.infradead.org

This adds the basic framework to handle MCI cards in barebox.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/Kconfig        |    1 +
 drivers/Makefile       |    1 +
 drivers/mci/Kconfig    |   30 ++
 drivers/mci/Makefile   |    1 +
 drivers/mci/mci-core.c | 1308 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/mci.h          |  230 +++++++++
 6 files changed, 1571 insertions(+), 0 deletions(-)
 create mode 100644 drivers/mci/Kconfig
 create mode 100644 drivers/mci/Makefile
 create mode 100644 drivers/mci/mci-core.c
 create mode 100644 include/mci.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index f7154c6..13235f3 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -9,6 +9,7 @@ source "drivers/mtd/Kconfig"
 source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
+source "drivers/mci/Kconfig"
 source "drivers/clk/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 706e1c8..71d34f9 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -6,5 +6,6 @@ obj-y	+= usb/
 obj-$(CONFIG_ATA) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
+obj-$(CONFIG_MCI) += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
new file mode 100644
index 0000000..0abadb3
--- /dev/null
+++ b/drivers/mci/Kconfig
@@ -0,0 +1,30 @@
+menuconfig MCI
+	bool "MCI drivers                   "
+	select ATA
+	select ATA_DISK
+	help
+	  Add support for MCI drivers, used to handle MMC and SD cards
+
+if MCI
+
+comment "--- Feature list ---"
+
+config MCI_STARTUP
+	bool "Probe on system start"
+	help
+	  Say 'y' here if the MCI framework should probe for attached MCI cards
+	  on system start up. This is required if the card carries barebox's
+	  environment (for example on systems where the MCI card is the sole
+	  bootmedia). Otherwise probing run on demand with "mci*.probe=1"
+
+config MCI_INFO
+	bool "MCI Info"
+	depends on CMD_DEVINFO
+	default y
+	help
+	  This entry adds more info about the attached MCI card, when the
+	  'devinfo' command is used on the mci device.
+
+comment "--- MCI host drivers ---"
+
+endif
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
new file mode 100644
index 0000000..927618f
--- /dev/null
+++ b/drivers/mci/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MCI)	+= mci-core.o
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
new file mode 100644
index 0000000..a31b96f
--- /dev/null
+++ b/drivers/mci/mci-core.c
@@ -0,0 +1,1308 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert, Pengutronix
+ *
+ * This code is havily inspired and in parts from the u-boot project:
+ *
+ * Copyright 2008, Freescale Semiconductor, Inc
+ * Andy Fleming
+ *
+ * Based vaguely on the Linux code
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/* #define DEBUG */
+
+#include <init.h>
+#include <common.h>
+#include <mci.h>
+#include <malloc.h>
+#include <errno.h>
+#include <asm-generic/div64.h>
+#include <asm/byteorder.h>
+#include <ata.h>
+
+#define MAX_BUFFER_NUMBER 0xffffffff
+
+/**
+ * @file
+ * @brief Memory Card framework
+ *
+ * Checked with the following cards:
+ * - old Canon SD 16 MiB, does not like the 0x08 command (SD_CMD_SEND_IF_COND) -> failed
+ * - Kingston 512 MiB
+ * - SanDisk 512 MiB
+ * - Transcend SD Ultra, 1 GiB (Industrial)
+ */
+
+/**
+ * Call the MMC/SD instance driver to run the command on the MMC/SD card
+ * @param mci_dev MCI instance
+ * @param cmd The information about the command to run
+ * @param data The data according to the command (can be NULL)
+ * @return Driver's answer (0 on success)
+ */
+static int mci_send_cmd(struct device_d *mci_dev, struct mci_cmd *cmd, struct mci_data *data)
+{
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+
+	return (pdata->send_cmd)(pdata->hw_dev, cmd, data);
+}
+
+/**
+ * @param p Command definition to setup
+ * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
+ * @param arg Argument for the command (optional)
+ * @param response Command's response type (refer MMC_RSP_*)
+ *
+ * Note: When calling, the 'response' must match command's requirements
+ */
+static void mci_setup_cmd(struct mci_cmd *p, unsigned cmd, unsigned arg, unsigned response)
+{
+	p->cmdidx = cmd;
+	p->cmdarg = arg;
+	p->resp_type = response;
+}
+
+/**
+ * Setup SD/MMC card's blocklength to be used for future transmitts
+ * @param mci_dev MCI instance
+ * @param len Blocklength in bytes
+ * @return Transaction status (0 on success)
+ */
+static int mci_set_blocklen(struct device_d *mci_dev, unsigned len)
+{
+	struct mci_cmd cmd;
+
+	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
+	return mci_send_cmd(mci_dev, &cmd, NULL);
+}
+
+/**
+ * Write one block of data to the card
+ * @param mci_dev MCI instance
+ * @param src Where to read from to write to the card
+ * @param blocknum Block number to write
+ * @return Transaction status (0 on success)
+ */
+static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned blocknum)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_cmd cmd;
+	struct mci_data data;
+
+	mci_setup_cmd(&cmd,
+		MMC_CMD_WRITE_SINGLE_BLOCK,
+		mci->high_capacity != 0 ? blocknum : blocknum * mci->write_bl_len,
+		MMC_RSP_R1);
+
+	data.src = src;
+	data.blocks = 1;
+	data.blocksize = mci->write_bl_len;
+	data.flags = MMC_DATA_WRITE;
+
+	return mci_send_cmd(mci_dev, &cmd, &data);
+}
+
+/**
+ * Read one block of data from the card
+ * @param mci_dev MCI instance
+ * @param dst Where to store the data read from the card
+ * @param blocknum Block number to read
+ */
+static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_cmd cmd;
+	struct mci_data data;
+
+	mci_setup_cmd(&cmd,
+		MMC_CMD_READ_SINGLE_BLOCK,
+		mci->high_capacity != 0 ? blocknum : blocknum * mci->read_bl_len,
+		MMC_RSP_R1);
+
+	data.dest = dst;
+	data.blocks = 1;
+	data.blocksize = mci->read_bl_len;
+	data.flags = MMC_DATA_READ;
+
+	return mci_send_cmd(mci_dev, &cmd, &data);
+}
+
+/**
+ * Reset the attached MMC/SD card
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int mci_go_idle(struct device_d *mci_dev)
+{
+	struct mci_cmd cmd;
+	int err;
+
+	udelay(1000);
+
+	mci_setup_cmd(&cmd, MMC_CMD_GO_IDLE_STATE, 0, MMC_RSP_NONE);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+
+	if (err) {
+		pr_debug("Activating IDLE state failed: %d\n", err);
+		return err;
+	}
+
+	udelay(2000);	/* WTF? */
+
+	return 0;
+}
+
+/**
+ * FIXME
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int sd_send_op_cond(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_cmd cmd;
+	int timeout = 1000;
+	int err;
+
+	do {
+		mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, 0, MMC_RSP_R1);
+		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		if (err) {
+			pr_debug("Preparing SD for operating conditions failed: %d\n", err);
+			return err;
+		}
+
+		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
+			pdata->voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0),
+			MMC_RSP_R3);
+		err = mci_send_cmd(mci_dev, &cmd, NULL);
+		if (err) {
+			pr_debug("SD operation condition set failed: %d\n", err);
+			return err;
+		}
+		udelay(1000);
+	} while ((!(cmd.response[0] & OCR_BUSY)) && timeout--);
+
+	if (timeout <= 0) {
+		pr_debug("SD operation condition set timed out\n");
+		return -ENODEV;
+	}
+
+	if (mci->version != SD_VERSION_2)
+		mci->version = SD_VERSION_1_0;
+
+	mci->ocr = cmd.response[0];
+
+	mci->high_capacity = ((mci->ocr & OCR_HCS) == OCR_HCS);
+	mci->rca = 0;
+
+	return 0;
+}
+
+/**
+ * Setup the operation conditions to a MultiMediaCard
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int mmc_send_op_cond(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_cmd cmd;
+	int timeout = 1000;
+	int err;
+
+	/* Some cards seem to need this */
+	mci_go_idle(mci_dev);
+
+	do {
+		mci_setup_cmd(&cmd, MMC_CMD_SEND_OP_COND, OCR_HCS | pdata->voltages, MMC_RSP_R3);
+		err = mci_send_cmd(mci_dev, &cmd, NULL);
+
+		if (err) {
+			pr_debug("Preparing MMC for operating conditions failed: %d\n", err);
+			return err;
+		}
+
+		udelay(1000);
+	} while (!(cmd.response[0] & OCR_BUSY) && timeout--);
+
+	if (timeout <= 0) {
+		pr_debug("SD operation condition set timed out\n");
+		return -ENODEV;
+	}
+
+	mci->version = MMC_VERSION_UNKNOWN;
+	mci->ocr = cmd.response[0];
+
+	mci->high_capacity = ((mci->ocr & OCR_HCS) == OCR_HCS);
+	mci->rca = 0;
+
+	return 0;
+}
+
+/**
+ * FIXME
+ * @param mci_dev MCI instance
+ * @param ext_csd Buffer for a 512 byte sized extended CSD
+ * @return Transaction status (0 on success)
+ *
+ * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support this command
+ */
+static int mci_send_ext_csd(struct device_d *mci_dev, char *ext_csd)
+{
+	struct mci_cmd cmd;
+	struct mci_data data;
+
+	/* Get the Card Status Register */
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_EXT_CSD, 0, MMC_RSP_R1);
+
+	data.dest = ext_csd;
+	data.blocks = 1;
+	data.blocksize = 512;
+	data.flags = MMC_DATA_READ;
+
+	return mci_send_cmd(mci_dev, &cmd, &data);
+}
+
+/**
+ * FIXME
+ * @param mci_dev MCI instance
+ * @param set FIXME
+ * @param index FIXME
+ * @param value FIXME
+ * @return Transaction status (0 on success)
+ */
+static int mci_switch(struct device_d *mci_dev, unsigned set, unsigned index, unsigned value)
+{
+	struct mci_cmd cmd;
+
+	mci_setup_cmd(&cmd, MMC_CMD_SWITCH,
+		(MMC_SWITCH_MODE_WRITE_BYTE << 24) |
+		(index << 16) |
+		(value << 8),
+		 MMC_RSP_R1b);
+
+	return mci_send_cmd(mci_dev, &cmd, NULL);
+}
+
+/**
+ * Change transfer frequency foa a MMC card
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int mmc_change_freq(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	char ext_csd[512];	/* TODO why this works on ARM, while the same in the disk layer does not??? */
+	char cardtype;
+	int err;
+
+	mci->card_caps = 0;
+
+	/* Only version 4 supports high-speed */
+	if (mci->version < MMC_VERSION_4)
+		return 0;
+
+	mci->card_caps |= MMC_MODE_4BIT;
+
+	err = mci_send_ext_csd(mci_dev, ext_csd);
+	if (err) {
+		pr_debug("Preparing for frequency setup failed: %d\n", err);
+		return err;
+	}
+
+	if (ext_csd[212] || ext_csd[213] || ext_csd[214] || ext_csd[215])
+		mci->high_capacity = 1;
+
+	cardtype = ext_csd[196] & 0xf;
+
+	err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
+
+	if (err) {
+		pr_debug("MMC frequency changing failed: %d\n", err);
+		return err;
+	}
+
+	/* Now check to see that it worked */
+	err = mci_send_ext_csd(mci_dev, ext_csd);
+
+	if (err) {
+		pr_debug("Verifying frequency change failed: %d\n", err);
+		return err;
+	}
+
+	/* No high-speed support */
+	if (!ext_csd[185])
+		return 0;
+
+	/* High Speed is set, there are two types: 52MHz and 26MHz */
+	if (cardtype & MMC_HS_52MHZ)
+		mci->card_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
+	else
+		mci->card_caps |= MMC_MODE_HS;
+
+	return 0;
+}
+
+/**
+ * FIXME
+ * @param mci_dev MCI instance
+ * @param mode FIXME
+ * @param group FIXME
+ * @param value FIXME
+ * @param resp FIXME
+ * @return Transaction status (0 on success)
+ */
+static int sd_switch(struct device_d *mci_dev, unsigned mode, unsigned group, unsigned value, uint8_t *resp)
+{
+	struct mci_cmd cmd;
+	struct mci_data data;
+	unsigned arg;
+
+	arg = (mode << 31) | 0xffffff;
+	arg &= ~(0xf << (group << 2));
+	arg |= value << (group << 2);
+
+	/* Switch the frequency */
+	mci_setup_cmd(&cmd, SD_CMD_SWITCH_FUNC, arg, MMC_RSP_R1);
+
+	data.dest = resp;
+	data.blocksize = 64;
+	data.blocks = 1;
+	data.flags = MMC_DATA_READ;
+
+	return mci_send_cmd(mci_dev, &cmd, &data);
+}
+
+/**
+ * FIXME
+ * @param mci_dev MCI instance
+ * @return Transaction status (0 on success)
+ */
+static int sd_change_freq(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_cmd cmd;
+	struct mci_data data;
+	uint32_t switch_status[16];
+	uint scr[2];
+	int timeout;
+	int err;
+
+	pr_debug("Changing transfer frequency\n");
+	mci->card_caps = 0;
+
+	/* Read the SCR to find out if this card supports higher speeds */
+	mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Query SD card capabilities failed: %d\n", err);
+		return err;
+	}
+
+	mci_setup_cmd(&cmd, SD_CMD_APP_SEND_SCR, 0, MMC_RSP_R1);
+
+	timeout = 3;
+
+retry_scr:
+	pr_debug("Trying to read the SCR (try %d of %d)\n", 4 - timeout, 3);
+	data.dest = (char *)&scr;
+	data.blocksize = 8;
+	data.blocks = 1;
+	data.flags = MMC_DATA_READ;
+
+	err = mci_send_cmd(mci_dev, &cmd, &data);
+	if (err) {
+		pr_debug(" Catch error (%d)", err);
+		if (timeout--) {
+			pr_debug("-- retrying\n");
+			goto retry_scr;
+		}
+		pr_debug("-- giving up\n");
+		return err;
+	}
+
+	mci->scr[0] = __be32_to_cpu(scr[0]);
+	mci->scr[1] = __be32_to_cpu(scr[1]);
+
+	switch ((mci->scr[0] >> 24) & 0xf) {
+	case 0:
+		mci->version = SD_VERSION_1_0;
+		break;
+	case 1:
+		mci->version = SD_VERSION_1_10;
+		break;
+	case 2:
+		mci->version = SD_VERSION_2;
+		break;
+	default:
+		mci->version = SD_VERSION_1_0;
+		break;
+	}
+
+	/* Version 1.0 doesn't support switching */
+	if (mci->version == SD_VERSION_1_0)
+		return 0;
+
+	timeout = 4;
+	while (timeout--) {
+		err = sd_switch(mci_dev, SD_SWITCH_CHECK, 0, 1, (uint8_t*)&switch_status);
+		if (err) {
+			pr_debug("Checking SD transfer switch frequency feature failed: %d\n", err);
+			return err;
+		}
+
+		/* The high-speed function is busy.  Try again */
+		if (!(__be32_to_cpu(switch_status[7]) & SD_HIGHSPEED_BUSY))
+			break;
+	}
+
+	if (mci->scr[0] & SD_DATA_4BIT)
+		mci->card_caps |= MMC_MODE_4BIT;
+
+	/* If high-speed isn't supported, we return */
+	if (!(__be32_to_cpu(switch_status[3]) & SD_HIGHSPEED_SUPPORTED))
+		return 0;
+
+	err = sd_switch(mci_dev, SD_SWITCH_SWITCH, 0, 1, (uint8_t*)&switch_status);
+	if (err) {
+		pr_debug("Switching SD transfer frequency failed: %d\n", err);
+		return err;
+	}
+
+	if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)
+		mci->card_caps |= MMC_MODE_HS;
+
+	return 0;
+}
+
+/**
+ * Setup host's interface bus width and transfer frequency
+ * @param mci_dev MCI instance
+ */
+static void mci_set_ios(struct device_d *mci_dev)
+{
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+
+	(pdata->set_ios)(pdata->hw_dev, mci_dev, pdata->bus_width, pdata->clock);
+}
+
+/**
+ * Setup host's interface transfer frequency
+ * @param mci_dev MCI instance
+ * @param clock New clock in Hz to set
+ */
+static void mci_set_clock(struct device_d *mci_dev, unsigned clock)
+{
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+
+	/* check against any given limits */
+	if (clock > pdata->f_max)
+		clock = pdata->f_max;
+
+	if (clock < pdata->f_min)
+		clock = pdata->f_min;
+
+	pdata->clock = clock;	/* the new target frequency */
+	mci_set_ios(mci_dev);
+}
+
+/**
+ * Setup host's interface bus width
+ * @param mci_dev MCI instance
+ * @param width New interface bit width (1, 4 or 8)
+ */
+static void mci_set_bus_width(struct device_d *mci_dev, unsigned width)
+{
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+
+	pdata->bus_width = width;	/* the new target bus width */
+	mci_set_ios(mci_dev);
+}
+
+/**
+ * Extract card's version from its CSD
+ * @param mci_dev MCI instance
+ * @return 0 on success
+ */
+static void mci_detect_version_from_csd(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	int version;
+
+	if (mci->version == MMC_VERSION_UNKNOWN) {
+		/* the version is coded in the bits 127:126 (left aligned) */
+		version = (mci->csd[0] >> 26) & 0xf;	/* FIXME why other width? */
+
+		switch (version) {
+		case 0:
+			printf("Detecting a 1.2 revision card\n");
+			mci->version = MMC_VERSION_1_2;
+			break;
+		case 1:
+			printf("Detecting a 1.4 revision card\n");
+			mci->version = MMC_VERSION_1_4;
+			break;
+		case 2:
+			printf("Detecting a 2.2 revision card\n");
+			mci->version = MMC_VERSION_2_2;
+			break;
+		case 3:
+			printf("Detecting a 3.0 revision card\n");
+			mci->version = MMC_VERSION_3;
+			break;
+		case 4:
+			printf("Detecting a 4.0 revision card\n");
+			mci->version = MMC_VERSION_4;
+			break;
+		default:
+			printf("Unknow revision. Falling back to a 1.2 revision card\n");
+			mci->version = MMC_VERSION_1_2;
+			break;
+		}
+	}
+}
+
+/**
+ * meaning of the encoded 'unit' bits in the CSD's field 'TRAN_SPEED'
+ * (divided by 10 to be nice to platforms without floating point)
+ */
+static const unsigned tran_speed_unit[] = {
+	[0] = 10000,		/* 100 kbit/s */
+	[1] = 100000,		/* 1 Mbit/s */
+	[2] = 1000000,		/* 10 Mbit/s */
+	[3] = 10000000,		/* 100 Mbit/s */
+	/* [4]...[7] are reserved */
+};
+
+/**
+ * meaning of the 'time' bits  in the CSD's field 'TRAN_SPEED'
+ * (multiplied by 10 to be nice to platforms without floating point)
+ */
+static const unsigned char tran_speed_time[] = {
+	0,	/* reserved */
+	10,	/* 1.0 ns */
+	12,	/* 1.2 ns */
+	13,
+	15,
+	20,
+	25,
+	30,
+	35,
+	40,
+	45,
+	50,
+	55,
+	60,
+	70,	/* 7.0 ns */
+	80,	/* 8.0 ns */
+};
+
+/**
+ * Extract max. transfer speed from the CSD
+ * @param mci_dev MCI instance
+ *
+ * Encoded in bit 103:96 (103: reserved, 102:99: time, 98:96 unit)
+ */
+static void mci_extract_max_tran_speed_from_csd(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	unsigned unit, time;
+
+	unit = tran_speed_unit[(mci->csd[0] & 0x7)];
+	time = tran_speed_time[((mci->csd[0] >> 3) & 0xf)];
+	if ((unit == 0) || (time == 0)) {
+		pr_warning("Unsupported 'TRAN_SPEED' unit/time value. Can't calculate card's max. transfer speed\n");
+		return;
+	}
+
+	mci->tran_speed = time * unit;
+	pr_debug("Transfer speed: %u\n", mci->tran_speed);
+}
+
+/**
+ * Extract max read and write block length from the CSD
+ * @param mci_dev MCI instance
+ *
+ * Encoded in bit 83:80 (read) and 25:22 (write)
+ */
+static void mci_extract_block_lengths_from_csd(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+
+	mci->read_bl_len = 1 << ((mci->csd[1] >> 16) & 0xf);
+
+	if (IS_SD(mci))
+		mci->write_bl_len = mci->read_bl_len;	/* FIXME why? */
+	else
+		mci->write_bl_len = 1 << ((mci->csd[3] >> 22) & 0xf);
+
+	pr_debug("Max. block length are: Write=%u, Read=%u Bytes\n", mci->read_bl_len, mci->write_bl_len);
+}
+
+/**
+ * Extract card's capacitiy from the CSD
+ * @param mci_dev MCI instance
+ */
+static void mci_extract_card_capacity_from_csd(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	uint64_t csize, cmult;
+
+	if (mci->high_capacity) {
+		csize = (mci->csd[1] & 0x3f) << 16 | (mci->csd[2] & 0xffff0000) >> 16;
+		cmult = 8;
+	} else {
+		csize = (mci->csd[1] & 0x3ff) << 2 | (mci->csd[2] & 0xc0000000) >> 30;
+		cmult = (mci->csd[2] & 0x00038000) >> 15;
+	}
+
+	mci->capacity = (csize + 1) << (cmult + 2);
+	mci->capacity *= mci->read_bl_len;
+	pr_debug("Capacity: %u MiB\n", (unsigned)mci->capacity >> 20);
+}
+
+/**
+ * Scan the given host interfaces and detect connected MMC/SD cards
+ * @param mci_dev MCI instance
+ * @return 0 on success, negative value else
+ */
+static int mci_startup(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_cmd cmd;
+	int err;
+
+	pr_debug("Put the Card in Identify Mode\n");
+
+	/* Put the Card in Identify Mode */
+	mci_setup_cmd(&cmd, MMC_CMD_ALL_SEND_CID, 0, MMC_RSP_R2);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Can't bring card into identify mode: %d\n", err);
+		return err;
+	}
+
+	memcpy(mci->cid, cmd.response, 16);
+
+	pr_debug("Card's identification data is: %08X-%08X-%08X-%08X\n", mci->cid[0], mci->cid[1], mci->cid[2], mci->cid[3]);
+
+	/*
+	 * For MMC cards, set the Relative Address.
+	 * For SD cards, get the Relatvie Address.
+	 * This also puts the cards into Standby State
+	 */
+	pr_debug("Get/Set relative address\n");
+	mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, mci->rca << 16, MMC_RSP_R6);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Get/Set relative address failed: %d\n", err);
+		return err;
+	}
+
+	if (IS_SD(mci))
+		mci->rca = (cmd.response[0] >> 16) & 0xffff;
+
+	pr_debug("Get card's specific data\n");
+	/* Get the Card-Specific Data */
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, mci->rca << 16, MMC_RSP_R2);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Getting card's specific data failed: %d\n", err);
+		return err;
+	}
+
+	/* CSD is of 128 bit */
+	memcpy(mci->csd, cmd.response, 16);
+
+	pr_debug("Card's specific data is: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1], mci->csd[2], mci->csd[3]);
+
+	mci_detect_version_from_csd(mci_dev);
+	mci_extract_max_tran_speed_from_csd(mci_dev);
+	mci_extract_block_lengths_from_csd(mci_dev);
+	mci_extract_card_capacity_from_csd(mci_dev);
+
+	/* sanitiy? */
+	if (mci->read_bl_len > 512) {
+		mci->read_bl_len = 512;
+		pr_warning("Limiting max. read block size down to %u\n", mci->read_bl_len);
+	}
+
+	if (mci->write_bl_len > 512) {
+		mci->write_bl_len = 512;
+		pr_warning("Limiting max. write block size down to %u\n", mci->read_bl_len);
+	}
+	pr_debug("Read block length: %u, Write block length: %u\n", mci->read_bl_len, mci->write_bl_len);
+
+	pr_debug("Select the card, and put it into Transfer Mode\n");
+	/* Select the card, and put it into Transfer Mode */
+	mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, mci->rca << 16, MMC_RSP_R1b);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Putting in transfer mode failed: %d\n", err);
+		return err;
+	}
+
+	if (IS_SD(mci))
+		err = sd_change_freq(mci_dev);
+	else
+		err = mmc_change_freq(mci_dev);
+
+	if (err)
+		return err;
+
+	/* Restrict card's capabilities by what the host can do */
+	mci->card_caps &= pdata->host_caps;
+
+	if (IS_SD(mci)) {
+		if (mci->card_caps & MMC_MODE_4BIT) {
+			pr_debug("Prepare for bus width change\n");
+			mci_setup_cmd(&cmd, MMC_CMD_APP_CMD, mci->rca << 16, MMC_RSP_R1);
+			err = mci_send_cmd(mci_dev, &cmd, NULL);
+			if (err) {
+				pr_debug("Preparing SD for bus width change failed: %d\n", err);
+				return err;
+			}
+
+			pr_debug("Set SD bus width to 4 bit\n");
+			mci_setup_cmd(&cmd, SD_CMD_APP_SET_BUS_WIDTH, 2, MMC_RSP_R1);
+			err = mci_send_cmd(mci_dev, &cmd, NULL);
+			if (err) {
+				pr_debug("Changing SD bus width failed: %d\n", err);
+				/* TODO continue with 1 bit? */
+				return err;
+			}
+			mci_set_bus_width(mci_dev, 4);
+		}
+		/* if possible, speed up the transfer */
+		if (mci->card_caps & MMC_MODE_HS)
+			mci_set_clock(mci_dev, 50000000);
+		else
+			mci_set_clock(mci_dev, 25000000);
+	} else {
+		if (mci->card_caps & MMC_MODE_4BIT) {
+			pr_debug("Set MMC bus width to 4 bit\n");
+			/* Set the card to use 4 bit*/
+			err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_4);
+			if (err) {
+				pr_debug("Changing MMC bus width failed: %d\n", err);
+				return err;
+			}
+			mci_set_bus_width(mci_dev, 4);
+		} else if (mci->card_caps & MMC_MODE_8BIT) {
+			pr_debug("Set MMC bus width to 8 bit\n");
+			/* Set the card to use 8 bit*/
+			err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_BUS_WIDTH, EXT_CSD_BUS_WIDTH_8);
+			if (err) {
+				pr_debug("Changing MMC bus width failed: %d\n", err);
+				return err;
+			}
+			mci_set_bus_width(mci_dev, 8);
+		}
+		/* if possible, speed up the transfer */
+		if (mci->card_caps & MMC_MODE_HS) {
+			if (mci->card_caps & MMC_MODE_HS_52MHz)
+				mci_set_clock(mci_dev, 52000000);
+			else
+				mci_set_clock(mci_dev, 26000000);
+		} else
+			mci_set_clock(mci_dev, 20000000);
+	}
+
+	/* we setup the blocklength only one times for all accesses to this media  */
+	err = mci_set_blocklen(mci_dev, mci->read_bl_len);
+
+	return err;
+}
+
+/**
+ * Detect a SD 2.0 card and enable its features
+ * @param mci_dev MCI instance
+ * @return Transfer status (0 on success)
+ *
+ * By issuing the CMD8 command SDHC/SDXC cards realize that the host supports
+ * the Physical Layer Version 2.00 or later and the card can enable
+ * corresponding new functions.
+ *
+ * If this CMD8 command will end with a timeout it is a MultiMediaCard only.
+ */
+static int sd_send_if_cond(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct mci_cmd cmd;
+	int err;
+
+	mci_setup_cmd(&cmd, SD_CMD_SEND_IF_COND,
+	/* We set the bit if the host supports voltages between 2.7 and 3.6 V */
+		((pdata->voltages & 0x00ff8000) != 0) << 8 | 0xaa,
+		MMC_RSP_R7);
+	err = mci_send_cmd(mci_dev, &cmd, NULL);
+	if (err) {
+		pr_debug("Query interface conditions failed: %d\n", err);
+		return err;
+	}
+
+	if ((cmd.response[0] & 0xff) != 0xaa) {
+		pr_debug("Card cannot work with hosts supply voltages\n");
+		return -EINVAL;
+	} else {
+		pr_debug("SD Card Rev. 2.00 or later detected\n");
+		mci->version = SD_VERSION_2;
+	}
+
+	return 0;
+}
+
+/* ------------------ attach to the ATA API --------------------------- */
+
+/**
+ * Write a chunk of sectors to media
+ * @param disk_dev Disk device instance
+ * @param sector_start Sector's number to start write to
+ * @param sector_count Sectors to write
+ * @param buffer Buffer to write from
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to read all data!
+ */
+static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start, unsigned sector_count, const void *buffer)
+{
+	struct ata_interface *intf = disk_dev->platform_data;
+	struct device_d *mci_dev = intf->priv;
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	int rc;
+
+	pr_debug("%s called: Write %u block(s), starting at %lu", __func__, sector_count, (unsigned)sector_count);
+
+	if (mci->write_bl_len != 512) {
+		pr_warning("MMC/SD block size is not 512 bytes (its %u bytes instead)\n", mci->read_bl_len);
+		return -EINVAL;
+	}
+
+	while (sector_count) {
+		/* size of the block number field in the MMC/SD command is 32 bit only */
+		if (sector_start > MAX_BUFFER_NUMBER) {
+			pr_err("Cannot handle block number %llu. Too large!\n", sector_start);
+			return -EINVAL;
+		}
+		rc = mci_block_write(mci_dev, buffer, sector_start);
+		if (rc != 0) {
+			pr_err("Writing block %u failed\n", (unsigned)sector_start);
+			return rc;
+		}
+		sector_count--;
+		buffer += mci->write_bl_len;
+		sector_start++;
+	}
+
+	return 0;
+}
+
+/**
+ * Read a chunk of sectors from media
+ * @param disk_dev Disk device instance
+ * @param sector_start Sector's number to start read from
+ * @param sector_count Sectors to read
+ * @param buffer Buffer to read into
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to store all data!
+ */
+static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start, unsigned sector_count, void *buffer)
+{
+	struct ata_interface *intf = disk_dev->platform_data;
+	struct device_d *mci_dev = intf->priv;
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	int rc;
+
+	pr_debug("%s called: Read %u block(s), starting at %lu to %08X\n", __func__, sector_count, (unsigned)sector_start, buffer);
+
+	if (mci->read_bl_len != 512) {
+		pr_warning("MMC/SD block size is not 512 bytes (its %u bytes instead)\n", mci->read_bl_len);
+		return -EINVAL;
+	}
+
+	while (sector_count) {
+		if (sector_start > MAX_BUFFER_NUMBER) {
+			pr_err("Cannot handle block number %lu. Too large!\n", (unsigned)sector_start);
+			return -EINVAL;
+		}
+		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start);
+		if (rc != 0) {
+			pr_err("Reading block %lu failed\n", (unsigned)sector_start);
+			return rc;
+		}
+		sector_count--;
+		buffer += mci->read_bl_len;	/* FIXME always 512 bytes? */
+		sector_start++;
+	}
+
+	return 0;
+}
+
+/* ------------------ attach to the device API --------------------------- */
+
+#ifdef CONFIG_MCI_INFO
+/**
+ * Extract the Manufacturer ID from the CID
+ * @param mci Instance data
+ *
+ * The 'MID' is encoded in bit 127:120 in the CID
+ */
+static unsigned extract_mid(struct mci *mci)
+{
+	return mci->cid[0] >> 24;
+}
+
+/**
+ * Extract the OEM/Application ID from the CID
+ * @param mci Instance data
+ *
+ * The 'OID' is encoded in bit 119:104 in the CID
+ */
+static unsigned extract_oid(struct mci *mci)
+{
+	return (mci->cid[0] >> 8) & 0xffff;
+}
+
+/**
+ * Extract the product revision from the CID
+ * @param mci Instance data
+ *
+ * The 'PRV' is encoded in bit 63:56 in the CID
+ */
+static unsigned extract_prv(struct mci *mci)
+{
+	return mci->cid[2] >> 24;
+}
+
+/**
+ * Extract the product serial number from the CID
+ * @param mci Instance data
+ *
+ * The 'PSN' is encoded in bit 55:24 in the CID
+ */
+static unsigned extract_psn(struct mci *mci)
+{
+	return (mci->cid[2] << 8) | (mci->cid[3] >> 24);
+}
+
+/**
+ * Extract the month of the manufacturing date from the CID
+ * @param mci Instance data
+ *
+ * The 'MTD' is encoded in bit 19:8 in the CID, month in 11:8
+ */
+static unsigned extract_mtd_month(struct mci *mci)
+{
+	return (mci->cid[3] >> 8) & 0xf;
+}
+
+/**
+ * Extract the year of the manufacturing date from the CID
+ * @param mci Instance data
+ *
+ * The 'MTD' is encoded in bit 19:8 in the CID, year in 19:12
+ * An encoded 0 means the year 2000
+ */
+static unsigned extract_mtd_year(struct mci *mci)
+{
+	return ((mci->cid[3] >> 12) & 0xff) + 2000U;
+}
+
+/**
+ * Output some valuable information when the user runs 'devinfo' on an MCI device
+ * @param mci_dev MCI device instance
+ */
+static void mci_info(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+
+	if (mci->ready_for_use == 0) {
+		printf(" No information available:\n  MCI card not probed yet\n");
+		return;
+	}
+
+	printf(" Card:\n");
+	if (mci->version < SD_VERSION_SD) {
+		printf("  Attached is a MultiMediaCard (Version: %u.%u)\n", (mci->version >> 4) & 0xf, mci->version & 0xf);
+	} else {
+		printf("  Attached is an SD Card (Version: %u.%u)\n", (mci->version >> 4) & 0xf, mci->version & 0xf);
+	}
+	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
+
+	if (mci->high_capacity)
+		printf("  High capacity card\n");
+	printf("   CID: %08X-%08X-%08X-%08X\n", mci->cid[0], mci->cid[1], mci->cid[2], mci->cid[3]);
+	printf("   CSD: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1], mci->csd[2], mci->csd[3]);
+	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
+	printf("  Manufacturer ID: %02X\n", extract_mid(mci));
+	printf("  OEM/Application ID: %04X\n", extract_oid(mci));
+	printf("  Product name: '%c%c%c%c%c'\n", mci->cid[0] & 0xff, (mci->cid[1] >> 24), (mci->cid[1] >> 16) & 0xff,
+			(mci->cid[1] >> 8) & 0xff, mci->cid[1] & 0xff);
+	printf("  Product revision: %u.%u\n", extract_prv(mci) >> 4, extract_prv(mci) & 0xf);
+	printf("  Serial no: %0u\n", extract_psn(mci));
+	printf("  Manufacturing date: %u.%u\n", extract_mtd_month(mci), extract_mtd_year(mci));
+}
+#endif
+
+/**
+ * Check if the MCI card is already probed
+ * @param mci_dev MCI device instance
+ * @return 0 when not probed yet, -EPERM if already probed
+ *
+ * @a barebox cannot really cope with hot plugging. So, probing an attached
+ * MCI card is a one time only job. If its already done, there is no way to
+ * return.
+ */
+static int mci_check_if_already_initialized(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+
+	if (mci->ready_for_use != 0)
+		return -EPERM;
+
+	return 0;
+}
+
+/**
+ * Probe an MCI card at the given host interface
+ * @param mci_dev MCI device instance
+ * @return 0 on success, negative values else
+ */
+static int mci_card_probe(struct device_d *mci_dev)
+{
+	struct mci *mci = GET_MCI_DATA(mci_dev);
+	struct mci_platformdata *pdata = GET_MCI_PDATA(mci_dev);
+	struct device_d *disk_dev;
+	struct ata_interface *p;
+	int rc;
+
+	/* start with a host interface reset */
+	rc = (pdata->init)(pdata->hw_dev, mci_dev);
+	if (rc) {
+		pr_err("Cannot reset the SD/MMC interface\n");
+		return rc;
+	}
+
+	mci_set_bus_width(mci_dev, 1);
+	mci_set_clock(mci_dev, 1);	/* set the lowest available clock */
+
+	/* reset the card */
+	rc = mci_go_idle(mci_dev);
+	if (rc) {
+		pr_warning("Cannot reset the SD/MMC card\n");
+		goto on_error;
+	}
+
+	/* Check if this card can handle the "SD Card Physical Layer Specification 2.0" */
+	rc = sd_send_if_cond(mci_dev);
+	if (rc) {
+		/* If the command timed out, we check for an MMC card */
+		if (rc == -ETIMEDOUT) {
+			pr_debug("Card seems to be a MultiMediaCard\n");
+			rc = mmc_send_op_cond(mci_dev);
+			if (rc) {
+				printf("MultiMediaCard did not respond to voltage select!\n");
+				rc = -ENODEV;
+				goto on_error;
+			}
+		} else
+			goto on_error;
+	} else {
+		/* Its a 2.xx card. Setup operation conditions */
+		rc = sd_send_op_cond(mci_dev);
+		if (rc) {
+			pr_debug("Cannot setup SD card's operation condition\n");
+			goto on_error;
+		}
+	}
+
+	rc = mci_startup(mci_dev);
+	if (rc) {
+		printf("Card's startup fails with %d\n", rc);
+		goto on_error;
+	}
+
+	pr_debug("Card is up and running now, registering as a disk\n");
+	mci->ready_for_use = 1;	/* TODO now or later? */
+
+	/*
+	 * An MMC/SD card acts like an ordinary disk.
+	 * So, re-use the disk driver to gain access to this media
+	 */
+	disk_dev = xzalloc(sizeof(struct device_d) + sizeof(struct ata_interface));
+	if (disk_dev == NULL) {
+		pr_err("Out of memory when registering the MMC/SD device\n");
+		rc = -ENOMEM;
+		goto on_error;
+	}
+	p = (struct ata_interface*)&disk_dev[1];
+
+	p->write = mci_sd_write;
+	p->read = mci_sd_read;
+	p->priv = mci_dev;
+
+	strcpy(disk_dev->name, "disk");
+	disk_dev->size = mci->capacity;
+	disk_dev->map_base = 0;
+	disk_dev->platform_data = p;
+
+	register_device(disk_dev);
+
+	pr_debug("SD Card successfully added\n");
+
+on_error:
+	if (rc != 0) {
+		pdata->clock = 0;	/* disable the MCI clock */
+		mci_set_ios(mci_dev);
+	}
+
+	return rc;
+}
+
+/**
+ * Trigger probing of an attached MCI card
+ * @param mci_dev MCI device instance
+ * @param param FIXME
+ * @param val "0" does nothing, a "1" will probe for a MCI card
+ * @return 0 on success
+ */
+static int mci_set_probe(struct device_d *mci_dev, struct param_d *param, const char *val)
+{
+	int rc, probe;
+
+	rc = mci_check_if_already_initialized(mci_dev);
+	if (rc != 0)
+		return rc;
+
+	probe = simple_strtoul(val, NULL, 0);
+	if (probe != 0) {
+		rc = mci_card_probe(mci_dev);
+		if (rc != 0)
+			return rc;
+	}
+
+	return dev_param_set_generic(mci_dev, param, val);
+}
+
+/**
+ * Add parameter to the MCI device on demand
+ * @param mci_dev MCI device instance
+ * @return 0 on success
+ *
+ * This parameter is only available (or usefull) if MCI card probing is delayed
+ */
+static int add_mci_parameter(struct device_d *mci_dev)
+{
+	int rc;
+
+	/* provide a 'probing right now' parameter for the user */
+	rc = dev_add_param(mci_dev, "probe", mci_set_probe, NULL, 0);
+	if (rc != 0)
+		return rc;
+
+	return dev_set_param(mci_dev, "probe", "0");
+}
+
+/**
+ * Prepare for MCI card's usage
+ * @param mci_dev MCI device instance
+ * @return 0 on success
+ *
+ * This routine will probe an attached MCI card immediately or provide
+ * a parameter to do it later on user's demand.
+ */
+static int mci_probe(struct device_d *mci_dev)
+{
+	struct mci *mci;
+	int rc;
+
+	mci = xzalloc(sizeof(struct mci));
+	mci_dev->priv = mci;
+
+#ifdef CONFIG_MCI_STARTUP
+	/* if enabled, probe the attached card immediately */
+	rc = mci_card_probe(mci_dev);
+	if (rc == -ENODEV) {
+		/*
+		 * If it fails, add the 'probe' parameter to give the user
+		 * a chance to insert a card and try again. Note: This may fail
+		 * systems that rely on the MCI card for startup (for the
+		 * persistant environment for example)
+		 */
+		rc = add_mci_parameter(mci_dev);
+		if (rc != 0) {
+			pr_err("Failed to add 'probe' parameter to the MCI device\n");
+			goto on_error;
+		}
+	}
+#endif
+
+#ifndef CONFIG_MCI_STARTUP
+	/* add params on demand */
+	rc = add_mci_parameter(mci_dev);
+	if (rc != 0) {
+		pr_err("Failed to add 'probe' parameter to the MCI device\n");
+		goto on_error;
+	}
+#endif
+
+	return rc;
+
+on_error:
+	free(mci);
+	return rc;
+}
+
+static struct driver_d mci_driver = {
+	.name	= "mci",
+	.probe	= mci_probe,
+	.info	= mci_info,
+};
+
+static int mci_init(void)
+{
+	return register_driver(&mci_driver);
+}
+
+device_initcall(mci_init);
+
+/**
+ * Create a new mci device (for convenience)
+ * @param pdata MCI device's platform data for this MCI device
+ * @return 0 on success
+ */
+int mci_register(struct mci_platformdata *pdata)
+{
+	struct device_d *mci_dev;
+
+	mci_dev = xzalloc(sizeof(struct device_d));
+
+	strcpy(mci_dev->name, mci_driver.name);
+	mci_dev->platform_data = (void*)pdata;
+
+	return register_device(mci_dev);
+}
diff --git a/include/mci.h b/include/mci.h
new file mode 100644
index 0000000..b9d5c1c
--- /dev/null
+++ b/include/mci.h
@@ -0,0 +1,230 @@
+/*
+ * (C) Copyright 2010 Juergen Beisert, Pengutronix
+ *
+ * This code is partially based on u-boot code:
+ *
+ * Copyright 2008, Freescale Semiconductor, Inc
+ * Andy Fleming
+ *
+ * Based (loosely) on the Linux code
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef _MCI_H_
+#define _MCI_H_
+
+#include <linux/list.h>
+
+/* Firmware revisions for SD cards */
+#define SD_VERSION_SD		0x20000
+#define SD_VERSION_2		(SD_VERSION_SD | 0x20)
+#define SD_VERSION_1_0		(SD_VERSION_SD | 0x10)
+#define SD_VERSION_1_10		(SD_VERSION_SD | 0x1a)
+
+/* Firmware revisions for MMC cards */
+#define MMC_VERSION_MMC		0x10000
+#define MMC_VERSION_UNKNOWN	(MMC_VERSION_MMC)
+#define MMC_VERSION_1_2		(MMC_VERSION_MMC | 0x12)
+#define MMC_VERSION_1_4		(MMC_VERSION_MMC | 0x14)
+#define MMC_VERSION_2_2		(MMC_VERSION_MMC | 0x22)
+#define MMC_VERSION_3		(MMC_VERSION_MMC | 0x30)
+#define MMC_VERSION_4		(MMC_VERSION_MMC | 0x40)
+
+#define MMC_MODE_HS		0x001
+#define MMC_MODE_HS_52MHz	0x010
+#define MMC_MODE_4BIT		0x100
+#define MMC_MODE_8BIT		0x200
+
+#define SD_DATA_4BIT		0x00040000
+
+#define IS_SD(x) (x->version & SD_VERSION_SD)
+
+#define MMC_DATA_READ		1
+#define MMC_DATA_WRITE		2
+
+/* command list */
+#define MMC_CMD_GO_IDLE_STATE		0
+#define MMC_CMD_SEND_OP_COND		1
+#define MMC_CMD_ALL_SEND_CID		2
+#define MMC_CMD_SET_RELATIVE_ADDR	3
+#define MMC_CMD_SET_DSR			4
+#define MMC_CMD_SWITCH			6
+#define MMC_CMD_SELECT_CARD		7
+#define MMC_CMD_SEND_EXT_CSD		8
+#define MMC_CMD_SEND_CSD		9
+#define MMC_CMD_SEND_CID		10
+#define MMC_CMD_STOP_TRANSMISSION	12
+#define MMC_CMD_SEND_STATUS		13
+#define MMC_CMD_SET_BLOCKLEN		16
+#define MMC_CMD_READ_SINGLE_BLOCK	17
+#define MMC_CMD_READ_MULTIPLE_BLOCK	18
+#define MMC_CMD_WRITE_SINGLE_BLOCK	24
+#define MMC_CMD_WRITE_MULTIPLE_BLOCK	25
+#define MMC_CMD_APP_CMD			55
+
+#define SD_CMD_SEND_RELATIVE_ADDR	3
+#define SD_CMD_SWITCH_FUNC		6
+#define SD_CMD_SEND_IF_COND		8
+
+#define SD_CMD_APP_SET_BUS_WIDTH	6
+#define SD_CMD_APP_SEND_OP_COND		41
+#define SD_CMD_APP_SEND_SCR		51
+
+/* SCR definitions in different words */
+#define SD_HIGHSPEED_BUSY	0x00020000
+#define SD_HIGHSPEED_SUPPORTED	0x00020000
+
+#define MMC_HS_TIMING		0x00000100
+#define MMC_HS_52MHZ		0x2
+
+#define OCR_BUSY		0x80000000
+/** card's response in its OCR if it is a high capacity card */
+#define OCR_HCS			0x40000000
+
+#define MMC_VDD_165_195		0x00000080	/* VDD voltage 1.65 - 1.95 */
+#define MMC_VDD_20_21		0x00000100	/* VDD voltage 2.0 ~ 2.1 */
+#define MMC_VDD_21_22		0x00000200	/* VDD voltage 2.1 ~ 2.2 */
+#define MMC_VDD_22_23		0x00000400	/* VDD voltage 2.2 ~ 2.3 */
+#define MMC_VDD_23_24		0x00000800	/* VDD voltage 2.3 ~ 2.4 */
+#define MMC_VDD_24_25		0x00001000	/* VDD voltage 2.4 ~ 2.5 */
+#define MMC_VDD_25_26		0x00002000	/* VDD voltage 2.5 ~ 2.6 */
+#define MMC_VDD_26_27		0x00004000	/* VDD voltage 2.6 ~ 2.7 */
+#define MMC_VDD_27_28		0x00008000	/* VDD voltage 2.7 ~ 2.8 */
+#define MMC_VDD_28_29		0x00010000	/* VDD voltage 2.8 ~ 2.9 */
+#define MMC_VDD_29_30		0x00020000	/* VDD voltage 2.9 ~ 3.0 */
+#define MMC_VDD_30_31		0x00040000	/* VDD voltage 3.0 ~ 3.1 */
+#define MMC_VDD_31_32		0x00080000	/* VDD voltage 3.1 ~ 3.2 */
+#define MMC_VDD_32_33		0x00100000	/* VDD voltage 3.2 ~ 3.3 */
+#define MMC_VDD_33_34		0x00200000	/* VDD voltage 3.3 ~ 3.4 */
+#define MMC_VDD_34_35		0x00400000	/* VDD voltage 3.4 ~ 3.5 */
+#define MMC_VDD_35_36		0x00800000	/* VDD voltage 3.5 ~ 3.6 */
+
+#define MMC_SWITCH_MODE_CMD_SET		0x00 /** Change the command set */
+#define MMC_SWITCH_MODE_SET_BITS	0x01 /** Set bits in EXT_CSD byte addressed by index which are 1 in value field */
+#define MMC_SWITCH_MODE_CLEAR_BITS	0x02 /** Clear bits in EXT_CSD byte addressed by index, which are 1 in value field */
+#define MMC_SWITCH_MODE_WRITE_BYTE	0x03 /** Set target byte to value */
+
+#define SD_SWITCH_CHECK		0
+#define SD_SWITCH_SWITCH	1
+
+/*
+ * EXT_CSD fields
+ */
+
+#define EXT_CSD_BUS_WIDTH	183	/* R/W */
+#define EXT_CSD_HS_TIMING	185	/* R/W */
+#define EXT_CSD_CARD_TYPE	196	/* RO */
+#define EXT_CSD_REV		192	/* RO */
+#define EXT_CSD_SEC_CNT		212	/* RO, 4 bytes */
+
+/*
+ * EXT_CSD field definitions
+ */
+
+#define EXT_CSD_CMD_SET_NORMAL		(1<<0)
+#define EXT_CSD_CMD_SET_SECURE		(1<<1)
+#define EXT_CSD_CMD_SET_CPSECURE	(1<<2)
+
+#define EXT_CSD_CARD_TYPE_26	(1<<0)	/* Card can run at 26MHz */
+#define EXT_CSD_CARD_TYPE_52	(1<<1)	/* Card can run at 52MHz */
+
+#define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
+#define EXT_CSD_BUS_WIDTH_4	1	/* Card is in 4 bit mode */
+#define EXT_CSD_BUS_WIDTH_8	2	/* Card is in 8 bit mode */
+
+#define R1_ILLEGAL_COMMAND		(1 << 22)
+#define R1_APP_CMD			(1 << 5)
+
+/* response types */
+#define MMC_RSP_PRESENT (1 << 0)
+#define MMC_RSP_136     (1 << 1)                /* 136 bit response */
+#define MMC_RSP_CRC     (1 << 2)                /* expect valid crc */
+#define MMC_RSP_BUSY    (1 << 3)                /* card may send busy */
+#define MMC_RSP_OPCODE  (1 << 4)                /* response contains opcode */
+
+#define MMC_RSP_NONE    (0)
+#define MMC_RSP_R1      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
+#define MMC_RSP_R1b	(MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE|MMC_RSP_BUSY)
+#define MMC_RSP_R2      (MMC_RSP_PRESENT|MMC_RSP_136|MMC_RSP_CRC)
+#define MMC_RSP_R3      (MMC_RSP_PRESENT)
+#define MMC_RSP_R4      (MMC_RSP_PRESENT)
+#define MMC_RSP_R5      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
+#define MMC_RSP_R6      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
+#define MMC_RSP_R7      (MMC_RSP_PRESENT|MMC_RSP_CRC|MMC_RSP_OPCODE)
+
+/** command information to be sent to the SD/MMC card */
+struct mci_cmd {
+	unsigned cmdidx;	/**< Command to be sent to the SD/MMC card */
+	unsigned resp_type;	/**< Type of expected response, refer MMC_RSP_* macros */
+	unsigned cmdarg;	/**< Command's arguments */
+	unsigned response[4];	/**< card's response */
+};
+
+/** data information to be used with some SD/MMC commands */
+struct mci_data {
+	union {
+		uint8_t *dest;
+		const uint8_t *src; /**< src buffers don't get written to */
+	};
+	unsigned flags;		/**< refer MMC_DATA_* to define direction */
+	unsigned blocks;	/**< block count to handle in this command */
+	unsigned blocksize;	/**< block size in bytes (mostly 512) */
+};
+
+/** host information */
+struct mci_platformdata {
+	struct device_d *hw_dev;	/**< the host MCI hardware device */
+	unsigned voltages;
+	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* and FIXME */
+	unsigned f_min;		/**< host interface lower limit */
+	unsigned f_max;		/**< host interface upper limit */
+	unsigned clock;		/**< Current clock used to talk to the card */
+	unsigned bus_width;	/**< used data bus width to the card */
+
+	int (*init)(struct device_d*, struct device_d*);	/**< init the host interface */
+	void (*set_ios)(struct device_d*, struct device_d*, unsigned, unsigned);	/**< change host interface settings */
+	int (*send_cmd)(struct device_d*, struct mci_cmd*, struct mci_data*);	/**< handle a command */
+};
+
+/** MMC/SD and interface instance information */
+struct mci {
+	unsigned version;
+	int high_capacity;	/**< != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
+	unsigned card_caps;	/**< Card's capabilities */
+	unsigned ocr;		/**< card's "operation condition register" */
+	unsigned scr[2];
+	unsigned csd[4];	/**< card's "card specific data register" */
+	unsigned cid[4];	/**< card's "card identification register" */
+	unsigned short rca;	/* FIXME */
+	unsigned tran_speed;	/**< not yet used */
+	unsigned read_bl_len;	/**< currently used data block length for read accesses */
+	unsigned write_bl_len;	/**< currently used data block length for write accesses */
+	uint64_t capacity;	/**< Card's data capacity in bytes */
+	int ready_for_use;	/** true if already probed */
+};
+
+int mci_register(struct mci_platformdata*);
+
+#define GET_HOST_DATA(x) (x->priv)
+#define GET_HOST_PDATA(x) (x->platform_data)
+#define GET_MCI_DATA(x) (x->priv)
+#define GET_MCI_PDATA(x) (x->platform_data)
+
+#endif /* _MCI_H_ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
