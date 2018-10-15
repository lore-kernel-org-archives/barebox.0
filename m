Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWO-00073S-Ig
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:23:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id f18-v6so8512919plr.1
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:22:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:24 -0700
Message-Id: <20181015022125.24020-22-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 21/22] net: phy: mv88e6xxx: Port EEPROM support code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mv88e6xxx/chip.c    |  84 +++++++++
 drivers/net/phy/mv88e6xxx/chip.h    |  10 ++
 drivers/net/phy/mv88e6xxx/global2.c | 265 ++++++++++++++++++++++++++++
 drivers/net/phy/mv88e6xxx/global2.h |  29 +++
 4 files changed, 388 insertions(+)

diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index cc4bfc02e..7eb961fc0 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -4,6 +4,7 @@
 #include <linux/ethtool.h>
 #include <linux/phy.h>
 #include <linux/bitfield.h>
+#include <linux/nvmem-provider.h>
 
 #include <gpio.h>
 #include <of_device.h>
@@ -79,6 +80,8 @@ static const struct mv88e6xxx_ops mv88e6131_ops = {
 
 static const struct mv88e6xxx_ops mv88e6141_ops = {
 	/* MV88E6XXX_FAMILY_6341 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
@@ -104,6 +107,8 @@ static const struct mv88e6xxx_ops mv88e6171_ops = {
 
 static const struct mv88e6xxx_ops mv88e6172_ops = {
 	/* MV88E6XXX_FAMILY_6352 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
@@ -116,6 +121,8 @@ static const struct mv88e6xxx_ops mv88e6175_ops = {
 
 static const struct mv88e6xxx_ops mv88e6176_ops = {
 	/* MV88E6XXX_FAMILY_6352 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
@@ -129,48 +136,64 @@ static const struct mv88e6xxx_ops mv88e6185_ops = {
 
 static const struct mv88e6xxx_ops mv88e6190_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6190x_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6191_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6240_ops = {
 	/* MV88E6XXX_FAMILY_6352 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6290_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6320_ops = {
 	/* MV88E6XXX_FAMILY_6320 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6321_ops = {
 	/* MV88E6XXX_FAMILY_6320 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6341_ops = {
 	/* MV88E6XXX_FAMILY_6341 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
@@ -191,16 +214,22 @@ static const struct mv88e6xxx_ops mv88e6352_ops = {
 	/* MV88E6XXX_FAMILY_6352 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 };
 
 static const struct mv88e6xxx_ops mv88e6390_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
 
 static const struct mv88e6xxx_ops mv88e6390x_ops = {
 	/* MV88E6XXX_FAMILY_6390 */
+	.get_eeprom = mv88e6xxx_g2_get_eeprom8,
+	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 };
@@ -621,12 +650,48 @@ static int mv88e6xxx_switch_reset(struct mv88e6xxx_chip *chip)
 	return 0;
 }
 
+static int mv88e6xxx_eeprom_read(struct device_d *dev, const int offset,
+				 void *val, int bytes)
+{
+	struct mv88e6xxx_chip *chip = dev->parent->priv;
+	struct ethtool_eeprom eeprom = {
+		.offset = offset,
+		.len = bytes,
+	};
+
+	if (!chip->info->ops->get_eeprom)
+		return -ENOTSUPP;
+
+	return chip->info->ops->get_eeprom(chip, &eeprom, val);
+}
+
+static int mv88e6xxx_eeprom_write(struct device_d *dev, const int offset,
+				  const void *val, int bytes)
+{
+	struct mv88e6xxx_chip *chip = dev->parent->priv;
+	struct ethtool_eeprom eeprom = {
+		.offset = offset,
+		.len = bytes,
+	};
+
+	if (!chip->info->ops->set_eeprom)
+		return -ENOTSUPP;
+
+	return chip->info->ops->set_eeprom(chip, &eeprom, (void *)val);
+}
+
+static const struct nvmem_bus mv88e6xxx_eeprom_nvmem_bus = {
+	.write = mv88e6xxx_eeprom_write,
+	.read  = mv88e6xxx_eeprom_read,
+};
+
 static int mv88e6xxx_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
 	struct device_node *mdio_node;
 	struct mv88e6xxx_chip *chip;
 	enum of_gpio_flags of_flags;
+	u32 eeprom_len = 0;
 	int err;
 	u32 reg;
 
@@ -643,8 +708,11 @@ static int mv88e6xxx_probe(struct device_d *dev)
 
 	chip = xzalloc(sizeof(struct mv88e6xxx_chip));
 	chip->dev = dev;
+	dev->priv = chip;
 	chip->info = of_device_get_match_data(dev);
 
+	of_property_read_u32(np, "eeprom-length", &eeprom_len);
+
 	chip->parent_miibus = of_mdio_find_bus(np->parent);
 	if (!chip->parent_miibus)
 		return -EPROBE_DEFER;
@@ -676,6 +744,22 @@ static int mv88e6xxx_probe(struct device_d *dev)
 	err = mv88e6xxx_switch_reset(chip);
 	if (err)
 		return err;
+
+	if (eeprom_len) {
+		struct nvmem_config config = {
+			.name = basprintf("%s-eeprom", dev_name(dev)),
+			.dev = dev,
+			.word_size = 1,
+			.stride = 1,
+			.size = eeprom_len,
+			.read_only = false,
+			.bus = &mv88e6xxx_eeprom_nvmem_bus,
+		};
+
+		if (IS_ERR(nvmem_register(&config)))
+			dev_err(dev, "Failed to register EEPROM\n");
+	}
+
 	/*
 	 * In single-chip address mode addresses 0x10 - 0x1f are
 	 * reserved to access various switch registers and do not
diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
index d970099e1..eaf50ba0e 100644
--- a/drivers/net/phy/mv88e6xxx/chip.h
+++ b/drivers/net/phy/mv88e6xxx/chip.h
@@ -45,6 +45,11 @@ struct mv88e6xxx_chip {
 	int reset;
 };
 
+struct ethtool_eeprom {
+	__u32	offset;
+	__u32	len;
+};
+
 struct mv88e6xxx_ops {
 	int (*phy_read)(struct mv88e6xxx_chip *chip,
 			struct mii_bus *bus,
@@ -52,6 +57,11 @@ struct mv88e6xxx_ops {
 	int (*phy_write)(struct mv88e6xxx_chip *chip,
 			 struct mii_bus *bus,
 			 int addr, int reg, u16 val);
+
+	int (*get_eeprom)(struct mv88e6xxx_chip *chip,
+			  struct ethtool_eeprom *eeprom, u8 *data);
+	int (*set_eeprom)(struct mv88e6xxx_chip *chip,
+			  struct ethtool_eeprom *eeprom, u8 *data);
 };
 
 int mv88e6xxx_write(struct mv88e6xxx_chip *chip, int addr, int reg, u16 val);
diff --git a/drivers/net/phy/mv88e6xxx/global2.c b/drivers/net/phy/mv88e6xxx/global2.c
index a3c7bc0e5..970a7291e 100644
--- a/drivers/net/phy/mv88e6xxx/global2.c
+++ b/drivers/net/phy/mv88e6xxx/global2.c
@@ -18,6 +18,271 @@ int mv88e6xxx_g2_wait(struct mv88e6xxx_chip *chip, int reg, u16 mask)
 	return mv88e6xxx_wait(chip, chip->info->global2_addr, reg, mask);
 }
 
+/* Offset 0x14: EEPROM Command
+ * Offset 0x15: EEPROM Data (for 16-bit data access)
+ * Offset 0x15: EEPROM Addr (for 8-bit data access)
+ */
+
+static int mv88e6xxx_g2_eeprom_wait(struct mv88e6xxx_chip *chip)
+{
+	return mv88e6xxx_g2_wait(chip, MV88E6XXX_G2_EEPROM_CMD,
+				 MV88E6XXX_G2_EEPROM_CMD_BUSY |
+				 MV88E6XXX_G2_EEPROM_CMD_RUNNING);
+}
+
+static int mv88e6xxx_g2_eeprom_cmd(struct mv88e6xxx_chip *chip, u16 cmd)
+{
+	int err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_EEPROM_CMD,
+				 MV88E6XXX_G2_EEPROM_CMD_BUSY | cmd);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_eeprom_wait(chip);
+}
+
+static int mv88e6xxx_g2_eeprom_read8(struct mv88e6xxx_chip *chip,
+				     u16 addr, u8 *data)
+{
+	u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_READ;
+	int err;
+
+	err = mv88e6xxx_g2_eeprom_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6390_G2_EEPROM_ADDR, addr);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_eeprom_cmd(chip, cmd);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_EEPROM_CMD, &cmd);
+	if (err)
+		return err;
+
+	*data = cmd & 0xff;
+
+	return 0;
+}
+
+static int mv88e6xxx_g2_eeprom_write8(struct mv88e6xxx_chip *chip,
+				      u16 addr, u8 data)
+{
+	u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_WRITE |
+		MV88E6XXX_G2_EEPROM_CMD_WRITE_EN;
+	int err;
+
+	err = mv88e6xxx_g2_eeprom_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6390_G2_EEPROM_ADDR, addr);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_eeprom_cmd(chip, cmd | data);
+}
+
+static int mv88e6xxx_g2_eeprom_read16(struct mv88e6xxx_chip *chip,
+				      u8 addr, u16 *data)
+{
+	u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_READ | addr;
+	int err;
+
+	err = mv88e6xxx_g2_eeprom_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_eeprom_cmd(chip, cmd);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_read(chip, MV88E6352_G2_EEPROM_DATA, data);
+}
+
+static int mv88e6xxx_g2_eeprom_write16(struct mv88e6xxx_chip *chip,
+				       u8 addr, u16 data)
+{
+	u16 cmd = MV88E6XXX_G2_EEPROM_CMD_OP_WRITE | addr;
+	int err;
+
+	err = mv88e6xxx_g2_eeprom_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6352_G2_EEPROM_DATA, data);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_eeprom_cmd(chip, cmd);
+}
+
+int mv88e6xxx_g2_get_eeprom8(struct mv88e6xxx_chip *chip,
+			     struct ethtool_eeprom *eeprom, u8 *data)
+{
+	unsigned int offset = eeprom->offset;
+	unsigned int len = eeprom->len;
+	int err;
+
+	eeprom->len = 0;
+
+	while (len) {
+		err = mv88e6xxx_g2_eeprom_read8(chip, offset, data);
+		if (err)
+			return err;
+
+		eeprom->len++;
+		offset++;
+		data++;
+		len--;
+	}
+
+	return 0;
+}
+
+int mv88e6xxx_g2_set_eeprom8(struct mv88e6xxx_chip *chip,
+			     struct ethtool_eeprom *eeprom, u8 *data)
+{
+	unsigned int offset = eeprom->offset;
+	unsigned int len = eeprom->len;
+	int err;
+
+	eeprom->len = 0;
+
+	while (len) {
+		err = mv88e6xxx_g2_eeprom_write8(chip, offset, *data);
+		if (err)
+			return err;
+
+		eeprom->len++;
+		offset++;
+		data++;
+		len--;
+	}
+
+	return 0;
+}
+
+int mv88e6xxx_g2_get_eeprom16(struct mv88e6xxx_chip *chip,
+			      struct ethtool_eeprom *eeprom, u8 *data)
+{
+	unsigned int offset = eeprom->offset;
+	unsigned int len = eeprom->len;
+	u16 val;
+	int err;
+
+	eeprom->len = 0;
+
+	if (offset & 1) {
+		err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
+		if (err)
+			return err;
+
+		*data++ = (val >> 8) & 0xff;
+
+		offset++;
+		len--;
+		eeprom->len++;
+	}
+
+	while (len >= 2) {
+		err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
+		if (err)
+			return err;
+
+		*data++ = val & 0xff;
+		*data++ = (val >> 8) & 0xff;
+
+		offset += 2;
+		len -= 2;
+		eeprom->len += 2;
+	}
+
+	if (len) {
+		err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
+		if (err)
+			return err;
+
+		*data++ = val & 0xff;
+
+		offset++;
+		len--;
+		eeprom->len++;
+	}
+
+	return 0;
+}
+
+int mv88e6xxx_g2_set_eeprom16(struct mv88e6xxx_chip *chip,
+			      struct ethtool_eeprom *eeprom, u8 *data)
+{
+	unsigned int offset = eeprom->offset;
+	unsigned int len = eeprom->len;
+	u16 val;
+	int err;
+
+	/* Ensure the RO WriteEn bit is set */
+	err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_EEPROM_CMD, &val);
+	if (err)
+		return err;
+
+	if (!(val & MV88E6XXX_G2_EEPROM_CMD_WRITE_EN))
+		return -EROFS;
+
+	eeprom->len = 0;
+
+	if (offset & 1) {
+		err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
+		if (err)
+			return err;
+
+		val = (*data++ << 8) | (val & 0xff);
+
+		err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
+		if (err)
+			return err;
+
+		offset++;
+		len--;
+		eeprom->len++;
+	}
+
+	while (len >= 2) {
+		val = *data++;
+		val |= *data++ << 8;
+
+		err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
+		if (err)
+			return err;
+
+		offset += 2;
+		len -= 2;
+		eeprom->len += 2;
+	}
+
+	if (len) {
+		err = mv88e6xxx_g2_eeprom_read16(chip, offset >> 1, &val);
+		if (err)
+			return err;
+
+		val = (val & 0xff00) | *data++;
+
+		err = mv88e6xxx_g2_eeprom_write16(chip, offset >> 1, val);
+		if (err)
+			return err;
+
+		offset++;
+		len--;
+		eeprom->len++;
+	}
+
+	return 0;
+}
+
 static int mv88e6xxx_g2_smi_phy_wait(struct mv88e6xxx_chip *chip)
 {
 	return mv88e6xxx_g2_wait(chip, MV88E6XXX_G2_SMI_PHY_CMD,
diff --git a/drivers/net/phy/mv88e6xxx/global2.h b/drivers/net/phy/mv88e6xxx/global2.h
index 28bbd8c43..7c70d4bde 100644
--- a/drivers/net/phy/mv88e6xxx/global2.h
+++ b/drivers/net/phy/mv88e6xxx/global2.h
@@ -27,6 +27,26 @@
 /* Offset 0x19: SMI PHY Data Register */
 #define MV88E6XXX_G2_SMI_PHY_DATA	0x19
 
+/* Offset 0x14: EEPROM Command */
+#define MV88E6XXX_G2_EEPROM_CMD			0x14
+#define MV88E6XXX_G2_EEPROM_CMD_BUSY		0x8000
+#define MV88E6XXX_G2_EEPROM_CMD_OP_MASK		0x7000
+#define MV88E6XXX_G2_EEPROM_CMD_OP_WRITE	0x3000
+#define MV88E6XXX_G2_EEPROM_CMD_OP_READ		0x4000
+#define MV88E6XXX_G2_EEPROM_CMD_OP_LOAD		0x6000
+#define MV88E6XXX_G2_EEPROM_CMD_RUNNING		0x0800
+#define MV88E6XXX_G2_EEPROM_CMD_WRITE_EN	0x0400
+#define MV88E6352_G2_EEPROM_CMD_ADDR_MASK	0x00ff
+#define MV88E6390_G2_EEPROM_CMD_DATA_MASK	0x00ff
+
+/* Offset 0x15: EEPROM Data */
+#define MV88E6352_G2_EEPROM_DATA	0x15
+#define MV88E6352_G2_EEPROM_DATA_MASK	0xffff
+
+/* Offset 0x15: EEPROM Addr */
+#define MV88E6390_G2_EEPROM_ADDR	0x15
+#define MV88E6390_G2_EEPROM_ADDR_MASK	0xffff
+
 int mv88e6xxx_g2_read(struct mv88e6xxx_chip *chip, int reg, u16 *val);
 int mv88e6xxx_g2_write(struct mv88e6xxx_chip *chip, int reg, u16 val);
 int mv88e6xxx_g2_wait(struct mv88e6xxx_chip *chip, int reg, u16 mask);
@@ -38,4 +58,13 @@ int mv88e6xxx_g2_smi_phy_write(struct mv88e6xxx_chip *chip,
 			       struct mii_bus *bus,
 			       int addr, int reg, u16 val);
 
+int mv88e6xxx_g2_get_eeprom8(struct mv88e6xxx_chip *chip,
+			     struct ethtool_eeprom *eeprom, u8 *data);
+int mv88e6xxx_g2_set_eeprom8(struct mv88e6xxx_chip *chip,
+			     struct ethtool_eeprom *eeprom, u8 *data);
+int mv88e6xxx_g2_get_eeprom16(struct mv88e6xxx_chip *chip,
+			      struct ethtool_eeprom *eeprom, u8 *data);
+int mv88e6xxx_g2_set_eeprom16(struct mv88e6xxx_chip *chip,
+			      struct ethtool_eeprom *eeprom, u8 *data);
+
 #endif /* _MV88E6XXX_GLOBAL2_H */
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
