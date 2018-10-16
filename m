Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpo-0004kv-Lq
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:18:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id t70-v6so11295049pgd.12
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:52 -0700
Message-Id: <20181016191552.16690-23-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 22/22] net: phy: mv88e6xxx: Add support for MAC ports
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for MAC-only/no-PHY ports by adding code that will create
a pseudo PHY device for such ports and a driver to match
against. Original Linux driver exposes all of the ports using DSA
subystem, but lacking that in Barebox, creating pseudo PHYs is the
simplest option to have code to properly configure various interface
parameters.

This is needed, for example, on ZII RPU2 board where FEC is connected
directly to one of the MAC-only ports. That link requires proper RGMII
delay configuration in order to be functional.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mv88e6xxx/chip.c | 124 +++++-
 drivers/net/phy/mv88e6xxx/chip.h |  71 ++++
 drivers/net/phy/mv88e6xxx/port.c | 643 +++++++++++++++++++++++++++++++
 drivers/net/phy/mv88e6xxx/port.h |  48 +++
 4 files changed, 877 insertions(+), 9 deletions(-)

diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index 7eb961fc0..ac08b5ef5 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -63,12 +63,20 @@ static const struct mv88e6xxx_ops mv88e6097_ops = {
 	/* MV88E6XXX_FAMILY_6097 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6123_ops = {
 	/* MV88E6XXX_FAMILY_6165 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6131_ops = {
@@ -84,12 +92,20 @@ static const struct mv88e6xxx_ops mv88e6141_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6161_ops = {
 	/* MV88E6XXX_FAMILY_6165 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6165_ops = {
@@ -103,6 +119,11 @@ static const struct mv88e6xxx_ops mv88e6171_ops = {
 	/* MV88E6XXX_FAMILY_6351 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6172_ops = {
@@ -111,12 +132,22 @@ static const struct mv88e6xxx_ops mv88e6172_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6352_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6175_ops = {
 	/* MV88E6XXX_FAMILY_6351 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6176_ops = {
@@ -125,6 +156,11 @@ static const struct mv88e6xxx_ops mv88e6176_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6352_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6185_ops = {
@@ -140,6 +176,11 @@ static const struct mv88e6xxx_ops mv88e6190_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6190x_ops = {
@@ -148,6 +189,11 @@ static const struct mv88e6xxx_ops mv88e6190x_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390x_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6191_ops = {
@@ -156,6 +202,11 @@ static const struct mv88e6xxx_ops mv88e6191_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6240_ops = {
@@ -164,6 +215,11 @@ static const struct mv88e6xxx_ops mv88e6240_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6352_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6290_ops = {
@@ -172,6 +228,11 @@ static const struct mv88e6xxx_ops mv88e6290_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390_port_set_speed,
+	.port_set_cmode = mv88e6390x_port_set_cmode,
 };
 
 static const struct mv88e6xxx_ops mv88e6320_ops = {
@@ -180,6 +241,10 @@ static const struct mv88e6xxx_ops mv88e6320_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6321_ops = {
@@ -188,6 +253,10 @@ static const struct mv88e6xxx_ops mv88e6321_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6341_ops = {
@@ -196,18 +265,33 @@ static const struct mv88e6xxx_ops mv88e6341_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6350_ops = {
 	/* MV88E6XXX_FAMILY_6351 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6351_ops = {
 	/* MV88E6XXX_FAMILY_6351 */
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6185_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6352_ops = {
@@ -216,6 +300,11 @@ static const struct mv88e6xxx_ops mv88e6352_ops = {
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
 	.get_eeprom = mv88e6xxx_g2_get_eeprom16,
 	.set_eeprom = mv88e6xxx_g2_set_eeprom16,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6352_port_set_rgmii_delay,
+	.port_set_speed = mv88e6352_port_set_speed,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6390_ops = {
@@ -224,6 +313,12 @@ static const struct mv88e6xxx_ops mv88e6390_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390_port_set_speed,
+	.port_set_cmode = mv88e6390x_port_set_cmode,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_ops mv88e6390x_ops = {
@@ -232,6 +327,12 @@ static const struct mv88e6xxx_ops mv88e6390x_ops = {
 	.set_eeprom = mv88e6xxx_g2_set_eeprom8,
 	.phy_read = mv88e6xxx_g2_smi_phy_read,
 	.phy_write = mv88e6xxx_g2_smi_phy_write,
+	.port_set_link = mv88e6xxx_port_set_link,
+	.port_set_duplex = mv88e6xxx_port_set_duplex,
+	.port_set_rgmii_delay = mv88e6390_port_set_rgmii_delay,
+	.port_set_speed = mv88e6390x_port_set_speed,
+	.port_set_cmode = mv88e6390x_port_set_cmode,
+	.port_link_state = mv88e6352_port_link_state,
 };
 
 static const struct mv88e6xxx_info mv88e6xxx_table[] = {
@@ -761,18 +862,19 @@ static int mv88e6xxx_probe(struct device_d *dev)
 	}
 
 	/*
-	 * In single-chip address mode addresses 0x10 - 0x1f are
-	 * reserved to access various switch registers and do not
-	 * correspond to any PHYs, so we mask them to pervent from
-	 * being exposed as phy devices
+	 * In single-chip address mode addresses 0x10 -
+	 * port_base_address are reserved to access various switch
+	 * registers and do not correspond to any PHYs, so we mask
+	 * them to pervent from being exposed.
 	 */
-	chip->parent_miibus->phy_mask |= GENMASK(0x1f, 0x10);
+	chip->parent_miibus->phy_mask |= GENMASK(0x1f,
+						 chip->info->port_base_addr);
 	/*
-	 * Address 0x0f on internal bus is dedicated to SERDES
-	 * registers and won't be very useful against standard PHY
-	 * driver
+	 * Mask all of the devices on child MDIO bus. Call to
+	 * mv88e6xxx_port_probe() will unmask port that can be probed
+	 * using standard methods
 	 */
-	chip->miibus.phy_mask |= GENMASK(0x1f, 0x0f);
+	chip->miibus.phy_mask |= GENMASK(0x1f, 0x00);
 
 	chip->miibus.read = mv88e6xxx_mdio_read;
 	chip->miibus.write = mv88e6xxx_mdio_write;
@@ -784,6 +886,10 @@ static int mv88e6xxx_probe(struct device_d *dev)
 	if (mdio_node)
 		chip->miibus.dev.device_node = mdio_node;
 
+	err = mv88e6xxx_port_probe(chip);
+	if (err)
+		return err;
+
 	return mdiobus_register(&chip->miibus);
 }
 
diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
index 3a798a11e..7548358de 100644
--- a/drivers/net/phy/mv88e6xxx/chip.h
+++ b/drivers/net/phy/mv88e6xxx/chip.h
@@ -26,6 +26,8 @@ enum mv88e6xxx_family {
 
 struct mv88e6xxx_ops;
 
+#define DSA_MAX_PORTS		12
+
 struct mv88e6xxx_info {
 	enum mv88e6xxx_family family;
 	u16 prod_num;
@@ -37,12 +39,19 @@ struct mv88e6xxx_info {
 	const struct mv88e6xxx_ops *ops;
 };
 
+struct mv88e6xxx_port {
+	u8 cmode;
+};
+
 struct mv88e6xxx_chip {
 	const struct mv88e6xxx_info *info;
 	struct mii_bus *parent_miibus;
 	struct mii_bus miibus;
 	struct device_d *dev;
 	int reset;
+
+	/* Array of port structures. */
+	struct mv88e6xxx_port ports[DSA_MAX_PORTS];
 };
 
 struct ethtool_eeprom {
@@ -50,6 +59,16 @@ struct ethtool_eeprom {
 	__u32	len;
 };
 
+struct phylink_link_state {
+	phy_interface_t interface;
+	int speed;
+	int duplex;
+	int pause;
+	unsigned int link:1;
+	unsigned int an_enabled:1;
+	unsigned int an_complete:1;
+};
+
 struct mv88e6xxx_ops {
 	int (*phy_read)(struct mv88e6xxx_chip *chip,
 			struct mii_bus *bus,
@@ -62,6 +81,58 @@ struct mv88e6xxx_ops {
 			  struct ethtool_eeprom *eeprom, u8 *data);
 	int (*set_eeprom)(struct mv88e6xxx_chip *chip,
 			  struct ethtool_eeprom *eeprom, u8 *data);
+
+	/* RGMII Receive/Transmit Timing Control
+	 * Add delay on PHY_INTERFACE_MODE_RGMII_*ID, no delay otherwise.
+	 */
+	int (*port_set_rgmii_delay)(struct mv88e6xxx_chip *chip, int port,
+				    phy_interface_t mode);
+
+#define LINK_FORCED_DOWN	0
+#define LINK_FORCED_UP		1
+#define LINK_UNFORCED		-2
+
+	/* Port's MAC link state
+	 * Use LINK_FORCED_UP or LINK_FORCED_DOWN to force link up or down,
+	 * or LINK_UNFORCED for normal link detection.
+	 */
+	int (*port_set_link)(struct mv88e6xxx_chip *chip, int port, int link);
+
+#define DUPLEX_UNFORCED		-2
+
+	/* Port's MAC duplex mode
+	 *
+	 * Use DUPLEX_HALF or DUPLEX_FULL to force half or full duplex,
+	 * or DUPLEX_UNFORCED for normal duplex detection.
+	 */
+	int (*port_set_duplex)(struct mv88e6xxx_chip *chip, int port, int dup);
+
+#define PAUSE_ON		1
+#define PAUSE_OFF		0
+
+	/* Enable/disable sending Pause */
+	int (*port_set_pause)(struct mv88e6xxx_chip *chip, int port,
+			      int pause);
+
+#define SPEED_MAX		INT_MAX
+#define SPEED_UNFORCED		-2
+
+	/* Port's MAC speed (in Mbps)
+	 *
+	 * Depending on the chip, 10, 100, 200, 1000, 2500, 10000 are valid.
+	 * Use SPEED_UNFORCED for normal detection, SPEED_MAX for max value.
+	 */
+	int (*port_set_speed)(struct mv88e6xxx_chip *chip, int port, int speed);
+
+	/* CMODE control what PHY mode the MAC will use, eg. SGMII, RGMII, etc.
+	 * Some chips allow this to be configured on specific ports.
+	 */
+	int (*port_set_cmode)(struct mv88e6xxx_chip *chip, int port,
+			      phy_interface_t mode);
+
+	/* Return the port link state, as required by phylink */
+	int (*port_link_state)(struct mv88e6xxx_chip *chip, int port,
+			       struct phylink_link_state *state);
 };
 
 int mv88e6xxx_write(struct mv88e6xxx_chip *chip, int addr, int reg, u16 val);
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 59afdbd97..52f95d622 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -1,6 +1,9 @@
 #include <common.h>
 #include <init.h>
 
+#include <linux/bitfield.h>
+#include <linux/marvell_phy.h>
+
 #include "port.h"
 
 int mv88e6xxx_port_read(struct mv88e6xxx_chip *chip, int port, int reg,
@@ -18,3 +21,643 @@ int mv88e6xxx_port_write(struct mv88e6xxx_chip *chip, int port, int reg,
 
 	return mv88e6xxx_write(chip, addr, reg, val);
 }
+
+/* Offset 0x00: MAC (or PCS or Physical) Status Register
+ *
+ * For most devices, this is read only. However the 6185 has the MyPause
+ * bit read/write.
+ */
+int mv88e6185_port_set_pause(struct mv88e6xxx_chip *chip, int port,
+			     int pause)
+{
+	u16 reg;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
+	if (err)
+		return err;
+
+	if (pause)
+		reg |= MV88E6XXX_PORT_STS_MY_PAUSE;
+	else
+		reg &= ~MV88E6XXX_PORT_STS_MY_PAUSE;
+
+	return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_STS, reg);
+}
+
+/* Offset 0x01: MAC (or PCS or Physical) Control Register
+ *
+ * Link, Duplex and Flow Control have one force bit, one value bit.
+ *
+ * For port's MAC speed, ForceSpd (or SpdValue) bits 1:0 program the value.
+ * Alternative values require the 200BASE (or AltSpeed) bit 12 set.
+ * Newer chips need a ForcedSpd bit 13 set to consider the value.
+ */
+
+static int mv88e6xxx_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
+					  phy_interface_t mode)
+{
+	u16 reg;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
+	if (err)
+		return err;
+
+	reg &= ~(MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK |
+		 MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK);
+
+	switch (mode) {
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+		reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK;
+		break;
+	case PHY_INTERFACE_MODE_RGMII_ID:
+		reg |= MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK |
+			MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK;
+		break;
+	case PHY_INTERFACE_MODE_RGMII:
+		break;
+	default:
+		return 0;
+	}
+
+	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
+	if (err)
+		return err;
+
+	dev_dbg(chip->dev, "p%d: delay RXCLK %s, TXCLK %s\n", port,
+		reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK ? "yes" : "no",
+		reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK ? "yes" : "no");
+
+	return 0;
+}
+
+int mv88e6352_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
+				   phy_interface_t mode)
+{
+	if (port < 5)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_rgmii_delay(chip, port, mode);
+}
+
+int mv88e6390_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
+				   phy_interface_t mode)
+{
+	if (port != 0)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_rgmii_delay(chip, port, mode);
+}
+
+int mv88e6xxx_port_set_link(struct mv88e6xxx_chip *chip, int port, int link)
+{
+	u16 reg;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
+	if (err)
+		return err;
+
+	reg &= ~(MV88E6XXX_PORT_MAC_CTL_FORCE_LINK |
+		 MV88E6XXX_PORT_MAC_CTL_LINK_UP);
+
+	switch (link) {
+	case LINK_FORCED_DOWN:
+		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_LINK;
+		break;
+	case LINK_FORCED_UP:
+		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_LINK |
+			MV88E6XXX_PORT_MAC_CTL_LINK_UP;
+		break;
+	case LINK_UNFORCED:
+		/* normal link detection */
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
+	if (err)
+		return err;
+
+	dev_dbg(chip->dev, "p%d: %s link %s\n", port,
+		reg & MV88E6XXX_PORT_MAC_CTL_FORCE_LINK ? "Force" : "Unforce",
+		reg & MV88E6XXX_PORT_MAC_CTL_LINK_UP ? "up" : "down");
+
+	return 0;
+}
+
+int mv88e6xxx_port_set_duplex(struct mv88e6xxx_chip *chip, int port, int dup)
+{
+	u16 reg;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
+	if (err)
+		return err;
+
+	reg &= ~(MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
+		 MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL);
+
+	switch (dup) {
+	case DUPLEX_HALF:
+		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX;
+		break;
+	case DUPLEX_FULL:
+		reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
+			MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL;
+		break;
+	case DUPLEX_UNFORCED:
+		/* normal duplex detection */
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
+	if (err)
+		return err;
+
+	dev_dbg(chip->dev, "p%d: %s %s duplex\n", port,
+		reg & MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX ? "Force" : "Unforce",
+		reg & MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL ? "full" : "half");
+
+	return 0;
+}
+
+static int mv88e6xxx_port_set_speed(struct mv88e6xxx_chip *chip, int port,
+				    int speed, bool alt_bit, bool force_bit)
+{
+	u16 reg, ctrl;
+	int err;
+
+	switch (speed) {
+	case 10:
+		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_10;
+		break;
+	case 100:
+		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_100;
+		break;
+	case 200:
+		if (alt_bit)
+			ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_100 |
+				MV88E6390_PORT_MAC_CTL_ALTSPEED;
+		else
+			ctrl = MV88E6065_PORT_MAC_CTL_SPEED_200;
+		break;
+	case 1000:
+		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_1000;
+		break;
+	case 2500:
+		ctrl = MV88E6390_PORT_MAC_CTL_SPEED_10000 |
+			MV88E6390_PORT_MAC_CTL_ALTSPEED;
+		break;
+	case 10000:
+		/* all bits set, fall through... */
+	case SPEED_UNFORCED:
+		ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
+	if (err)
+		return err;
+
+	reg &= ~MV88E6XXX_PORT_MAC_CTL_SPEED_MASK;
+	if (alt_bit)
+		reg &= ~MV88E6390_PORT_MAC_CTL_ALTSPEED;
+	if (force_bit) {
+		reg &= ~MV88E6390_PORT_MAC_CTL_FORCE_SPEED;
+		if (speed != SPEED_UNFORCED)
+			ctrl |= MV88E6390_PORT_MAC_CTL_FORCE_SPEED;
+	}
+	reg |= ctrl;
+
+	err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
+	if (err)
+		return err;
+
+	if (speed)
+		dev_dbg(chip->dev, "p%d: Speed set to %d Mbps\n", port, speed);
+	else
+		dev_dbg(chip->dev, "p%d: Speed unforced\n", port);
+
+	return 0;
+}
+
+/* Support 10, 100, 200 Mbps (e.g. 88E6065 family) */
+int mv88e6065_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
+{
+	if (speed == SPEED_MAX)
+		speed = 200;
+
+	if (speed > 200)
+		return -EOPNOTSUPP;
+
+	/* Setting 200 Mbps on port 0 to 3 selects 100 Mbps */
+	return mv88e6xxx_port_set_speed(chip, port, speed, false, false);
+}
+
+/* Support 10, 100, 1000 Mbps (e.g. 88E6185 family) */
+int mv88e6185_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
+{
+	if (speed == SPEED_MAX)
+		speed = 1000;
+
+	if (speed == 200 || speed > 1000)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_speed(chip, port, speed, false, false);
+}
+
+/* Support 10, 100, 200, 1000 Mbps (e.g. 88E6352 family) */
+int mv88e6352_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
+{
+	if (speed == SPEED_MAX)
+		speed = 1000;
+
+	if (speed > 1000)
+		return -EOPNOTSUPP;
+
+	if (speed == 200 && port < 5)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_speed(chip, port, speed, true, false);
+}
+
+/* Support 10, 100, 200, 1000, 2500 Mbps (e.g. 88E6390) */
+int mv88e6390_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
+{
+	if (speed == SPEED_MAX)
+		speed = port < 9 ? 1000 : 2500;
+
+	if (speed > 2500)
+		return -EOPNOTSUPP;
+
+	if (speed == 200 && port != 0)
+		return -EOPNOTSUPP;
+
+	if (speed == 2500 && port < 9)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_speed(chip, port, speed, true, true);
+}
+
+/* Support 10, 100, 200, 1000, 2500, 10000 Mbps (e.g. 88E6190X) */
+int mv88e6390x_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
+{
+	if (speed == SPEED_MAX)
+		speed = port < 9 ? 1000 : 10000;
+
+	if (speed == 200 && port != 0)
+		return -EOPNOTSUPP;
+
+	if (speed >= 2500 && port < 9)
+		return -EOPNOTSUPP;
+
+	return mv88e6xxx_port_set_speed(chip, port, speed, true, true);
+}
+
+int mv88e6390x_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
+			      phy_interface_t mode)
+{
+	u16 cmode;
+
+	if (mode == PHY_INTERFACE_MODE_NA)
+		return 0;
+
+	if (port != 9 && port != 10)
+		return -EOPNOTSUPP;
+
+	switch (mode) {
+	case PHY_INTERFACE_MODE_1000BASEX:
+		cmode = MV88E6XXX_PORT_STS_CMODE_1000BASE_X;
+		break;
+	case PHY_INTERFACE_MODE_SGMII:
+		cmode = MV88E6XXX_PORT_STS_CMODE_SGMII;
+		break;
+	case PHY_INTERFACE_MODE_2500BASEX:
+		cmode = MV88E6XXX_PORT_STS_CMODE_2500BASEX;
+		break;
+	case PHY_INTERFACE_MODE_XGMII:
+	case PHY_INTERFACE_MODE_XAUI:
+		cmode = MV88E6XXX_PORT_STS_CMODE_XAUI;
+		break;
+	case PHY_INTERFACE_MODE_RXAUI:
+		cmode = MV88E6XXX_PORT_STS_CMODE_RXAUI;
+		break;
+	default:
+		cmode = 0;
+	}
+
+	chip->ports[port].cmode = cmode;
+
+	return 0;
+}
+
+int mv88e6352_port_link_state(struct mv88e6xxx_chip *chip, int port,
+			      struct phylink_link_state *state)
+{
+	int err;
+	u16 reg;
+
+	err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
+	if (err)
+		return err;
+
+	switch (reg & MV88E6XXX_PORT_STS_SPEED_MASK) {
+	case MV88E6XXX_PORT_STS_SPEED_10:
+		state->speed = SPEED_10;
+		break;
+	case MV88E6XXX_PORT_STS_SPEED_100:
+		state->speed = SPEED_100;
+		break;
+	case MV88E6XXX_PORT_STS_SPEED_1000:
+		state->speed = SPEED_1000;
+		break;
+	case MV88E6XXX_PORT_STS_SPEED_10000:
+		if ((reg & MV88E6XXX_PORT_STS_CMODE_MASK) ==
+		    MV88E6XXX_PORT_STS_CMODE_2500BASEX)
+			state->speed = SPEED_2500;
+		else
+			state->speed = SPEED_10000;
+		break;
+	}
+
+	state->duplex = reg & MV88E6XXX_PORT_STS_DUPLEX ?
+			DUPLEX_FULL : DUPLEX_HALF;
+	state->link = !!(reg & MV88E6XXX_PORT_STS_LINK);
+	state->an_enabled = 1;
+	state->an_complete = state->link;
+
+	return 0;
+}
+
+int mv88e6185_port_link_state(struct mv88e6xxx_chip *chip, int port,
+			      struct phylink_link_state *state)
+{
+	if (state->interface == PHY_INTERFACE_MODE_1000BASEX) {
+		u8 cmode = chip->ports[port].cmode;
+
+		/* When a port is in "Cross-chip serdes" mode, it uses
+		 * 1000Base-X full duplex mode, but there is no automatic
+		 * link detection. Use the sync OK status for link (as it
+		 * would do for 1000Base-X mode.)
+		 */
+		if (cmode == MV88E6185_PORT_STS_CMODE_SERDES) {
+			u16 mac;
+			int err;
+
+			err = mv88e6xxx_port_read(chip, port,
+						  MV88E6XXX_PORT_MAC_CTL, &mac);
+			if (err)
+				return err;
+
+			state->link = !!(mac & MV88E6185_PORT_MAC_CTL_SYNC_OK);
+			state->an_enabled = 1;
+			state->an_complete =
+				!!(mac & MV88E6185_PORT_MAC_CTL_AN_DONE);
+			state->duplex =
+				state->link ? DUPLEX_FULL : DUPLEX_UNKNOWN;
+			state->speed =
+				state->link ? SPEED_1000 : SPEED_UNKNOWN;
+
+			return 0;
+		}
+	}
+
+	return mv88e6352_port_link_state(chip, port, state);
+}
+
+
+static int mv88e6xxx_port_setup_mac(struct mv88e6xxx_chip *chip, int port,
+				    int link, int speed, int duplex, int pause,
+				    phy_interface_t mode)
+{
+	int err;
+
+	if (!chip->info->ops->port_set_link)
+		return 0;
+
+	/* Port's MAC control must not be changed unless the link is down */
+	err = chip->info->ops->port_set_link(chip, port, 0);
+	if (err)
+		return err;
+
+	if (chip->info->ops->port_set_speed) {
+		err = chip->info->ops->port_set_speed(chip, port, speed);
+		if (err && err != -EOPNOTSUPP)
+			goto restore_link;
+	}
+
+	if (chip->info->ops->port_set_pause) {
+		err = chip->info->ops->port_set_pause(chip, port, pause);
+		if (err)
+			goto restore_link;
+
+	}
+
+	if (chip->info->ops->port_set_duplex) {
+		err = chip->info->ops->port_set_duplex(chip, port, duplex);
+		if (err && err != -EOPNOTSUPP)
+			goto restore_link;
+	}
+
+	if (chip->info->ops->port_set_rgmii_delay) {
+		err = chip->info->ops->port_set_rgmii_delay(chip, port, mode);
+		if (err && err != -EOPNOTSUPP)
+			goto restore_link;
+	}
+
+	if (chip->info->ops->port_set_cmode) {
+		err = chip->info->ops->port_set_cmode(chip, port, mode);
+		if (err && err != -EOPNOTSUPP)
+			goto restore_link;
+	}
+
+	err = 0;
+restore_link:
+	if (chip->info->ops->port_set_link(chip, port, link))
+		dev_err(chip->dev, "p%d: failed to restore MAC's link\n", port);
+
+	return err;
+}
+
+static int mv88e6xxx_port_config_init(struct phy_device *phydev)
+{
+	struct mv88e6xxx_chip *chip = phydev->dev.priv;
+	int port = phydev->addr - chip->info->port_base_addr;
+	int err;
+
+	err = mv88e6xxx_port_setup_mac(chip, port, phydev->link, phydev->speed,
+				       phydev->duplex, phydev->pause,
+				       phydev->interface);
+
+	if (err && err != -EOPNOTSUPP)
+		dev_err(&phydev->dev, "p%d: failed to configure MAC\n", port);
+
+	return err;
+}
+
+static int mv88e6xxx_port_config_aneg(struct phy_device *phydev)
+{
+	return 0;
+}
+
+static int mv88e6xxx_port_read_status(struct phy_device *phydev)
+{
+	struct mv88e6xxx_chip *chip = phydev->dev.priv;
+	int port = phydev->addr - chip->info->port_base_addr;
+	struct phylink_link_state state;
+	int err;
+
+	err = mv88e6352_port_link_state(chip, port, &state);
+	if (err)
+		return err;
+
+	phydev->link = state.link;
+	phydev->duplex = state.duplex;
+	phydev->speed = state.speed;
+
+	phydev->pause = phydev->asym_pause = 0;
+
+ 	return 0;
+}
+
+/*
+ * Fake switch PHY_ID used to match this driver against devices
+ * create in mv88e6xxx_port_probe.
+ */
+#define MV88E6XXX_SWITCH_PORT_PHY_ID (0x01410000 | \
+				      MV88E6XXX_PORT_SWITCH_ID_PROD_6085)
+
+static struct phy_driver mv88e6xxx_port_driver = {
+	.phy_id         = MV88E6XXX_SWITCH_PORT_PHY_ID,
+	.phy_id_mask    = MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvel 88E6xxx Port",
+	.features	= PHY_GBIT_FEATURES & ~SUPPORTED_Autoneg,
+	.config_init	= mv88e6xxx_port_config_init,
+	.config_aneg	= mv88e6xxx_port_config_aneg,
+	.read_status	= mv88e6xxx_port_read_status,
+};
+
+static int __init mv88e6xxx_port_driver_register(void)
+{
+	return phy_driver_register(&mv88e6xxx_port_driver);
+}
+fs_initcall(mv88e6xxx_port_driver_register);
+
+int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
+{
+	struct device_d *dev = chip->dev;
+	struct device_node *np = dev->device_node;
+	struct device_node *port_node, *switch_node;
+	struct device_node *port_nodes[DSA_MAX_PORTS] = { NULL };
+	int err, i;
+
+	switch_node = of_find_node_by_name(np, "ports");
+	if (!switch_node)
+		return -EINVAL;
+
+ 	for_each_available_child_of_node(switch_node, port_node) {
+		u32 nr;
+
+ 		err = of_property_read_u32(port_node, "reg", &nr);
+		if (err) {
+			dev_err(dev,
+				"Error: Failed to find reg for child %s\n",
+				port_node->full_name);
+			continue;
+		}
+
+		port_nodes[nr] = port_node;
+	}
+
+	/*
+	 * Walk through all of the ports and unmask those that are
+	 * connected to a PHY via child MDIO bus, so the can be picked
+	 * up via regular PHY discover.
+	 *
+	 * While at it, also create PHY objects for ports that are
+	 * not, so they can be correctly configured
+	 */
+	for (i = 0; i < chip->info->num_ports; i++) {
+		struct phy_device *phydev;
+		u16 status;
+		bool force_mac = false;
+		int addr = i;
+
+		err = mv88e6xxx_port_read(chip, i, MV88E6XXX_PORT_STS,
+					  &status);
+		if (err)
+			return err;
+
+		/*
+		 * FIXME: This most likely affects more than 6161, so
+		 * this will have to be expanded to more chips
+		 */
+		if (chip->info->prod_num ==
+		    MV88E6XXX_PORT_SWITCH_ID_PROD_6161) {
+			const uint8_t cmode =
+				FIELD_GET(MV88E6185_PORT_STS_CMODE_MASK,
+					  status);
+			switch (i) {
+			case 4:
+			case 5:	/* FALLTHROUGH */
+				if (cmode == MV88E6165_PORT_STS_CMODE_SGMII) {
+					/*
+					 * Port is configured to SGMII
+					 * bypassing SERDES/PHY
+					 */
+					force_mac = true;
+					break;
+				}
+
+				if (cmode != MV88E6165_PORT_STS_CMODE_PHY) {
+					/*
+					 * If port is configured to
+					 * SERDES we need to adjust
+					 * its MDIO address
+					 */
+					addr += MV88E6165_PORT_SERDES_OFFSET;
+				}
+
+				break;
+			}
+		}
+
+		if (status & MV88E6XXX_PORT_STS_PHY_DETECT && !force_mac) {
+			/*
+			 * True PHYs will be automaticall handled by
+			 * generic PHY driver, so we ignore those.
+			 */
+			chip->miibus.phy_mask &= ~BIT(addr);
+			continue;
+		}
+
+		/*
+		 * In order to expose MAC-only ports on the switch, so
+		 * they can be properly configured to match other
+		 * end's settings, we create pseudo PHY devices that
+		 * will match against our special PHY driver
+		 */
+ 		phydev = phy_device_create(chip->parent_miibus,
+					   chip->info->port_base_addr + i,
+					   MV88E6XXX_SWITCH_PORT_PHY_ID);
+		phydev->dev.device_node = port_nodes[i];
+		phydev->dev.priv = chip;
+		phydev->duplex = DUPLEX_UNFORCED;
+
+		err = phy_register_device(phydev);
+		if (err)
+			dev_err(dev, "Error: Failed to register a PHY\n");
+	}
+
+	return 0;
+}
\ No newline at end of file
diff --git a/drivers/net/phy/mv88e6xxx/port.h b/drivers/net/phy/mv88e6xxx/port.h
index 7bb2e8bb4..07d937ecb 100644
--- a/drivers/net/phy/mv88e6xxx/port.h
+++ b/drivers/net/phy/mv88e6xxx/port.h
@@ -15,6 +15,7 @@
 #define MV88E6XXX_PORT_STS_SPEED_10		0x0000
 #define MV88E6XXX_PORT_STS_SPEED_100		0x0100
 #define MV88E6XXX_PORT_STS_SPEED_1000		0x0200
+#define MV88E6XXX_PORT_STS_SPEED_10000		0x0300
 #define MV88E6352_PORT_STS_EEE			0x0040
 #define MV88E6165_PORT_STS_AM_DIS		0x0040
 #define MV88E6185_PORT_STS_MGMII		0x0040
@@ -27,14 +28,32 @@
 #define MV88E6XXX_PORT_STS_CMODE_2500BASEX	0x000b
 #define MV88E6XXX_PORT_STS_CMODE_XAUI		0x000c
 #define MV88E6XXX_PORT_STS_CMODE_RXAUI		0x000d
+#define MV88E6185_PORT_STS_CDUPLEX		0x0008
+#define MV88E6185_PORT_STS_CMODE_MASK		0x0007
+#define MV88E6185_PORT_STS_CMODE_GMII_FD	0x0000
+#define MV88E6185_PORT_STS_CMODE_MII_100_FD_PS	0x0001
+#define MV88E6185_PORT_STS_CMODE_MII_100	0x0002
+#define MV88E6185_PORT_STS_CMODE_MII_10		0x0003
+#define MV88E6185_PORT_STS_CMODE_SERDES		0x0004
+#define MV88E6165_PORT_STS_CMODE_PHY		0x0004
+#define MV88E6185_PORT_STS_CMODE_1000BASE_X	0x0005
+#define MV88E6185_PORT_STS_CMODE_PHY		0x0006
+#define MV88E6165_PORT_STS_CMODE_SGMII		0x0006
+#define MV88E6185_PORT_STS_CMODE_DISABLED	0x0007
+
+
 
 /* Offset 0x01: MAC (or PCS or Physical) Control Register */
 #define MV88E6XXX_PORT_MAC_CTL				0x01
 #define MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK	0x8000
 #define MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK	0x4000
+#define MV88E6185_PORT_MAC_CTL_SYNC_OK			0x4000
 #define MV88E6390_PORT_MAC_CTL_FORCE_SPEED		0x2000
 #define MV88E6390_PORT_MAC_CTL_ALTSPEED			0x1000
 #define MV88E6352_PORT_MAC_CTL_200BASE			0x1000
+#define MV88E6185_PORT_MAC_CTL_AN_EN			0x0400
+#define MV88E6185_PORT_MAC_CTL_AN_RESTART		0x0200
+#define MV88E6185_PORT_MAC_CTL_AN_DONE			0x0100
 #define MV88E6XXX_PORT_MAC_CTL_FC			0x0080
 #define MV88E6XXX_PORT_MAC_CTL_FORCE_FC			0x0040
 #define MV88E6XXX_PORT_MAC_CTL_LINK_UP			0x0020
@@ -80,10 +99,39 @@
 #define MV88E6XXX_PORT_SWITCH_ID_PROD_6390	0x3900
 #define MV88E6XXX_PORT_SWITCH_ID_REV_MASK	0x000f
 
+
+/*
+ * SERDES connected to port 0x04 is accessible at address 0xC
+ */
+#define MV88E6165_PORT_SERDES_OFFSET		(0x0C - 0x04)
+
 int mv88e6xxx_port_read(struct mv88e6xxx_chip *chip, int port, int reg,
 			u16 *val);
 int mv88e6xxx_port_write(struct mv88e6xxx_chip *chip, int port, int reg,
 			 u16 val);
 
+int mv88e6185_port_set_pause(struct mv88e6xxx_chip *chip, int port,
+			     int pause);
+int mv88e6352_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
+				   phy_interface_t mode);
+int mv88e6390_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
+				   phy_interface_t mode);
+int mv88e6xxx_port_set_link(struct mv88e6xxx_chip *chip, int port, int link);
+int mv88e6xxx_port_set_duplex(struct mv88e6xxx_chip *chip, int port, int dup);
+int mv88e6065_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
+int mv88e6185_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
+int mv88e6352_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
+int mv88e6390_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
+int mv88e6390x_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
+int mv88e6390x_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
+			      phy_interface_t mode);
+int mv88e6352_port_link_state(struct mv88e6xxx_chip *chip, int port,
+			      struct phylink_link_state *state);
+int mv88e6185_port_link_state(struct mv88e6xxx_chip *chip, int port,
+			      struct phylink_link_state *state);
+
+/* Barebox specific */
+int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip);
+
 
 #endif /* _MV88E6XXX_PORT_H */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
