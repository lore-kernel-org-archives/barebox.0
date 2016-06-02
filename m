Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b8KjS-00014O-It
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:47 +0000
Received: by mail-pa0-x244.google.com with SMTP id x1so2243770pav.1
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:50 -0700
Message-Id: <1464843531-1824-22-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 21/22] e1000: Expose i210's iNVM as a cdev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code needed to expose iNVM memory on the chip as a cdev. The
driver also registers a dummy "invm" device that exposes "locked"
property which is used to implement iNMV line locking feature.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  |  35 +++++
 drivers/net/e1000/eeprom.c | 312 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 347 insertions(+)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index cb3e5ef..5570432 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -1978,6 +1978,11 @@ struct e1000_eeprom_info {
 #define ICH_FLASH_LINEAR_ADDR_MASK 0x00FFFFFF
 
 #define E1000_SW_FW_SYNC 0x05B5C /* Software-Firmware Synchronization - RW */
+#define E1000_PCIEMISC	 0x05BB8
+#define E1000_PCIEMISC_DMA_IDLE		(1 << 9)
+#define E1000_PCIEMISC_RESERVED_MASK    (~(E1000_PCIEMISC_DMA_IDLE))
+#define E1000_PCIEMISC_RESERVED_PATTERN1 0x8A
+#define E1000_PCIEMISC_RESERVED_PATTERN2 (0x122 << 10)
 
 /* SPI EEPROM Status Register */
 #define EEPROM_STATUS_RDY_SPI  0x01
@@ -2092,6 +2097,29 @@ struct e1000_eeprom_info {
 							after IMS clear */
 
 
+
+#define E1000_INVM_TEST(n)		(0x122A0 + 4 * (n))
+#define E1000_INVM_DATA_(n)		(0x12120 + 4 * (n))
+#if 0
+#define E1000_INVM_DATA(n)		E1000_INVM_TEST(n)
+#else
+#define E1000_INVM_DATA(n)		E1000_INVM_DATA_(n)
+#endif
+
+#define E1000_INVM_LOCK(n)		(0x12220 + 4 * (n))
+#define E1000_INVM_LOCK_BIT		(1 << 0)
+
+#define E1000_INVM_PROTECT		0x12324
+#define E1000_INVM_PROTECT_CODE		(0xABACADA << 4)
+#define E1000_INVM_PROTECT_BUSY		(1 << 2)
+#define E1000_INVM_PROTECT_WRITE_ERROR	(1 << 1)
+#define E1000_INVM_PROTECT_ALLOW_WRITE	(1 << 0)
+
+#define E1000_INVM_DATA_MAX_N		63
+
+#define E1000_EEMNGCTL_CFG_DONE		(1 << 18)
+
+
 struct e1000_hw {
 	struct eth_device edev;
 
@@ -2106,6 +2134,13 @@ struct e1000_hw {
 	e1000_media_type media_type;
 	e1000_fc_type fc;
 	struct e1000_eeprom_info eeprom;
+
+	struct {
+		struct cdev cdev;
+		struct device_d dev;
+		int line;
+	} invm;
+
 	uint32_t phy_id;
 	uint32_t phy_revision;
 	uint32_t original_fc;
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 9032c12..55ccf37 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -773,3 +773,315 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 
 	return -E1000_ERR_EEPROM;
 }
+
+static ssize_t e1000_invm_cdev_read(struct cdev *cdev, void *buf,
+				    size_t count, loff_t offset, unsigned long flags)
+{
+	uint8_t n, bnr;
+	uint32_t line;
+	size_t chunk, residue = count;
+	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
+
+	n = offset / sizeof(line);
+	if (n > E1000_INVM_DATA_MAX_N)
+		return -EINVAL;
+
+	bnr = offset % sizeof(line);
+	if (bnr) {
+		/*
+		 * if bnr in not zero it means we have a non 4-byte
+		 * aligned start and need to do a partial read
+		 */
+		const uint8_t *bptr;
+
+		bptr  = (uint8_t *)&line + bnr;
+		chunk = min(bnr - sizeof(line), count);
+		line  = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		line  = cpu_to_le32(line); /* to account for readl */
+		memcpy(buf, bptr, chunk);
+
+		goto start_adjusted;
+	}
+
+	do {
+		if (n > E1000_INVM_DATA_MAX_N)
+			return -EINVAL;
+
+		chunk = min(sizeof(line), residue);
+		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		line = cpu_to_le32(line); /* to account for readl */
+
+		/*
+		 * by using memcpy in conjunction with min should get
+		 * dangling tail reads as well as aligned reads
+		 */
+		memcpy(buf, &line, chunk);
+
+	start_adjusted:
+		residue -= chunk;
+		buf += chunk;
+		n++;
+	} while (residue);
+
+	return count;
+}
+
+static int e1000_invm_program(struct e1000_hw *hw, u32 offset, u32 value,
+			      unsigned int delay)
+{
+	int retries = 400;
+	do {
+		if ((e1000_read_reg(hw, offset) & value) == value)
+			return E1000_SUCCESS;
+
+		e1000_write_reg(hw, offset, value);
+
+		if (delay) {
+			udelay(delay);
+		} else {
+			int ret;
+
+			if (e1000_read_reg(hw, E1000_INVM_PROTECT) &
+			    E1000_INVM_PROTECT_WRITE_ERROR) {
+				dev_err(hw->dev, "Error while writing to %x\n", offset);
+				return -EIO;
+			}
+
+			ret = e1000_poll_reg(hw, E1000_INVM_PROTECT,
+					     E1000_INVM_PROTECT_BUSY,
+					     0,  SECOND);
+			if (ret < 0) {
+				dev_err(hw->dev,
+					"Timeout while waiting for INVM_PROTECT.BUSY\n");
+				return ret;
+			}
+		}
+	} while (retries--);
+
+	return -ETIMEDOUT;
+}
+
+static int e1000_invm_set_lock(struct param_d *param, void *priv)
+{
+	struct e1000_hw *hw = priv;
+
+	if (hw->invm.line > 31)
+		return -EINVAL;
+
+	return e1000_invm_program(hw,
+				  E1000_INVM_LOCK(hw->invm.line),
+				  E1000_INVM_LOCK_BIT,
+				  10);
+}
+
+static int e1000_invm_unlock(struct e1000_hw *hw)
+{
+	e1000_write_reg(hw, E1000_INVM_PROTECT, E1000_INVM_PROTECT_CODE);
+	/*
+	 * If we were successful at unlocking iNVM for programming we
+	 * should see ALLOW_WRITE bit toggle to 1
+	 */
+	if (!(e1000_read_reg(hw, E1000_INVM_PROTECT) &
+	      E1000_INVM_PROTECT_ALLOW_WRITE))
+		return -EIO;
+	else
+		return E1000_SUCCESS;
+}
+
+static void e1000_invm_lock(struct e1000_hw *hw)
+{
+	e1000_write_reg(hw, E1000_INVM_PROTECT, 0);
+}
+
+static int e1000_invm_write_prepare(struct e1000_hw *hw)
+{
+	int ret;
+	/*
+	 * This needs to be done accorging to the datasheet p. 541 and
+	 * p. 79
+	*/
+	e1000_write_reg(hw, E1000_PCIEMISC,
+			E1000_PCIEMISC_RESERVED_PATTERN1 |
+			E1000_PCIEMISC_DMA_IDLE          |
+			E1000_PCIEMISC_RESERVED_PATTERN2);
+
+	/*
+	 * Needed for programming iNVM on devices with Flash with valid
+	 * contents attached
+	 */
+	ret = e1000_poll_reg(hw, E1000_EEMNGCTL,
+			     E1000_EEMNGCTL_CFG_DONE,
+			     E1000_EEMNGCTL_CFG_DONE, SECOND);
+	if (ret < 0) {
+		dev_err(hw->dev,
+			"Timeout while waiting for EEMNGCTL.CFG_DONE\n");
+		return ret;
+	}
+
+	udelay(15);
+
+	return E1000_SUCCESS;
+}
+
+static ssize_t e1000_invm_cdev_write(struct cdev *cdev, const void *buf,
+				     size_t count, loff_t offset, unsigned long flags)
+{
+	int ret;
+	uint8_t n, bnr;
+	uint32_t line;
+	size_t chunk, residue = count;
+	struct e1000_hw *hw = container_of(cdev, struct e1000_hw, invm.cdev);
+
+	ret = e1000_invm_write_prepare(hw);
+	if (ret < 0)
+		return ret;
+
+	ret = e1000_invm_unlock(hw);
+	if (ret < 0)
+		goto exit;
+
+	n = offset / sizeof(line);
+	if (n > E1000_INVM_DATA_MAX_N) {
+		ret = -EINVAL;
+		goto exit;
+	}
+
+	bnr = offset % sizeof(line);
+	if (bnr) {
+		uint8_t *bptr;
+		/*
+		 * if bnr in not zero it means we have a non 4-byte
+		 * aligned start and need to do a read-modify-write
+		 * sequence
+		 */
+
+		/* Read */
+		line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+
+		/* Modify */
+		/*
+		 * We need to ensure that line is LE32 in order for
+		 * memcpy to copy byte from least significant to most
+		 * significant, since that's how i210 will write the
+		 * 32-bit word out to OTP
+		 */
+		line = cpu_to_le32(line);
+		bptr  = (uint8_t *)&line + bnr;
+		chunk = min(sizeof(line) - bnr, count);
+		memcpy(bptr, buf, chunk);
+		line = le32_to_cpu(line);
+
+		/* Jumping inside of the loop to take care of the
+		 * Write */
+		goto start_adjusted;
+	}
+
+	do {
+		if (n > E1000_INVM_DATA_MAX_N) {
+			ret = -EINVAL;
+			goto exit;
+		}
+
+		chunk = min(sizeof(line), residue);
+		if (chunk != sizeof(line)) {
+			/*
+			 * If chunk is smaller that sizeof(line), which
+			 * should be 4 bytes, we have a "dangling"
+			 * chunk and we should read the unchanged
+			 * portion of the 4-byte word from iNVM and do
+			 * a read-modify-write sequence
+			 */
+			line = e1000_read_reg(hw, E1000_INVM_DATA(n));
+		}
+
+		line = cpu_to_le32(line);
+		memcpy(&line, buf, chunk);
+		line = le32_to_cpu(line);
+
+	start_adjusted:
+		/*
+		 * iNVM is organized in 32 64-bit lines and each of
+		 * those lines can be locked to prevent any further
+		 * modification, so for every i-th 32-bit word we need
+		 * to check INVM_LINE[i/2] register to see if that word
+		 * can be modified
+		 */
+		if (e1000_read_reg(hw, E1000_INVM_LOCK(n / 2)) &
+		    E1000_INVM_LOCK_BIT) {
+			dev_err(hw->dev, "line %d is locked\n", n / 2);
+			ret = -EIO;
+			goto exit;
+		}
+
+		ret = e1000_invm_program(hw,
+					 E1000_INVM_DATA(n),
+					 line,
+					 0);
+		if (ret < 0)
+			goto exit;
+
+		residue -= chunk;
+		buf += chunk;
+		n++;
+	} while (residue);
+
+	ret = E1000_SUCCESS;
+exit:
+	e1000_invm_lock(hw);
+	return ret;
+}
+
+static struct file_operations e1000_invm_ops = {
+	.read	= e1000_invm_cdev_read,
+	.write	= e1000_invm_cdev_write,
+	.lseek	= dev_lseek_default,
+};
+
+int e1000_register_eeprom(struct e1000_hw *hw)
+{
+	int ret = E1000_SUCCESS;
+	u16 word;
+	struct param_d *p;
+
+	struct e1000_eeprom_info *eeprom = &hw->eeprom;
+
+	switch (eeprom->type) {
+	case e1000_eeprom_invm:
+		ret = e1000_read_eeprom(hw, 0x0A, 1, &word);
+		if (ret < 0)
+			return ret;
+
+		if (word & (1 << 15))
+			dev_warn(hw->dev, "iNVM lockout mechanism is active\n");
+
+		hw->invm.cdev.dev = hw->dev;
+		hw->invm.cdev.ops = &e1000_invm_ops;
+		hw->invm.cdev.priv = hw;
+		hw->invm.cdev.name = xasprintf("e1000-invm%d", hw->dev->id);
+		hw->invm.cdev.size = 32 * E1000_INVM_DATA_MAX_N;
+
+		ret = devfs_create(&hw->invm.cdev);
+		if (ret < 0)
+			break;
+
+		strcpy(hw->invm.dev.name, "invm");
+		hw->invm.dev.parent = hw->dev;
+		ret = register_device(&hw->invm.dev);
+		if (ret < 0) {
+			devfs_remove(&hw->invm.cdev);
+			break;
+		}
+
+		p = dev_add_param_int(&hw->invm.dev, "lock", e1000_invm_set_lock,
+				      NULL, &hw->invm.line, "%u", hw);
+		if (IS_ERR(p)) {
+			unregister_device(&hw->invm.dev);
+			devfs_remove(&hw->invm.cdev);
+			break;
+		}
+
+		break;
+	}
+
+	return ret;
+}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
