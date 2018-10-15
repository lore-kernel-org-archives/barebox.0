Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWX-000739-9F
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:23:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id r64-v6so8857732pfb.13
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:22:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:23 -0700
Message-Id: <20181015022125.24020-21-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 20/22] net: phy: Add basic driver for MV88E6XXX switches
 from Marvell
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port a very abridged version of MV88E6XXX DSA driver from Linux
kernel. Currently only internal MDIO bus connected to switch PHYs is
exposed.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

net: phy: mv88e6xxx: Expose internal MDIO bus
---
 drivers/net/phy/Kconfig             |   6 +
 drivers/net/phy/Makefile            |   1 +
 drivers/net/phy/mv88e6xxx/Makefile  |   5 +
 drivers/net/phy/mv88e6xxx/chip.c    | 723 ++++++++++++++++++++++++++++
 drivers/net/phy/mv88e6xxx/chip.h    |  61 +++
 drivers/net/phy/mv88e6xxx/global2.c | 124 +++++
 drivers/net/phy/mv88e6xxx/global2.h |  41 ++
 drivers/net/phy/mv88e6xxx/port.c    |  20 +
 drivers/net/phy/mv88e6xxx/port.h    |  89 ++++
 9 files changed, 1070 insertions(+)
 create mode 100644 drivers/net/phy/mv88e6xxx/Makefile
 create mode 100644 drivers/net/phy/mv88e6xxx/chip.c
 create mode 100644 drivers/net/phy/mv88e6xxx/chip.h
 create mode 100644 drivers/net/phy/mv88e6xxx/global2.c
 create mode 100644 drivers/net/phy/mv88e6xxx/global2.h
 create mode 100644 drivers/net/phy/mv88e6xxx/port.c
 create mode 100644 drivers/net/phy/mv88e6xxx/port.h

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 79fb917ee..3b1a6ea7e 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -48,6 +48,12 @@ config SMSC_PHY
 	---help---
 	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
 
+config NET_DSA_MV88E6XXX
+	tristate "Marvell 88E6xxx Ethernet switch fabric support"
+	help
+	  This driver adds support for most of the Marvell 88E6xxx models of
+	  Ethernet switch chips, except 88E6060.
+
 comment "MII bus device drivers"
 
 config MDIO_MVEBU
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 4424054d9..e4d9ec65a 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
+obj-$(CONFIG_NET_DSA_MV88E6XXX)	+= mv88e6xxx/
 
 obj-$(CONFIG_MDIO_MVEBU)	+= mdio-mvebu.o
 obj-$(CONFIG_MDIO_BITBANG)	+= mdio-bitbang.o
diff --git a/drivers/net/phy/mv88e6xxx/Makefile b/drivers/net/phy/mv88e6xxx/Makefile
new file mode 100644
index 000000000..8c8ba78cd
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/Makefile
@@ -0,0 +1,5 @@
+obj-y += mv88e6xxx.o
+
+mv88e6xxx-objs := chip.o
+mv88e6xxx-objs += global2.o
+mv88e6xxx-objs += port.o
\ No newline at end of file
diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
new file mode 100644
index 000000000..cc4bfc02e
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -0,0 +1,723 @@
+#include <common.h>
+#include <init.h>
+#include <linux/mii.h>
+#include <linux/ethtool.h>
+#include <linux/phy.h>
+#include <linux/bitfield.h>
+
+#include <gpio.h>
+#include <of_device.h>
+#include <of_gpio.h>
+
+#include "chip.h"
+#include "global2.h"
+#include "port.h"
+
+
+/* List of supported models */
+enum mv88e6xxx_model {
+	MV88E6085,
+	MV88E6095,
+	MV88E6097,
+	MV88E6123,
+	MV88E6131,
+	MV88E6141,
+	MV88E6161,
+	MV88E6165,
+	MV88E6171,
+	MV88E6172,
+	MV88E6175,
+	MV88E6176,
+	MV88E6185,
+	MV88E6190,
+	MV88E6190X,
+	MV88E6191,
+	MV88E6240,
+	MV88E6290,
+	MV88E6320,
+	MV88E6321,
+	MV88E6341,
+	MV88E6350,
+	MV88E6351,
+	MV88E6352,
+	MV88E6390,
+	MV88E6390X,
+};
+
+static const struct mv88e6xxx_ops mv88e6085_ops = {
+	/* MV88E6XXX_FAMILY_6097 */
+	/* FIXME: Was not ported due to lack of HW */
+	.phy_read = NULL,
+	.phy_write = NULL,
+};
+
+static const struct mv88e6xxx_ops mv88e6095_ops = {
+	/* MV88E6XXX_FAMILY_6095 */
+	/* FIXME: Was not ported due to lack of HW */
+	.phy_read = NULL,
+	.phy_write = NULL,
+};
+
+static const struct mv88e6xxx_ops mv88e6097_ops = {
+	/* MV88E6XXX_FAMILY_6097 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6123_ops = {
+	/* MV88E6XXX_FAMILY_6165 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6131_ops = {
+	/* MV88E6XXX_FAMILY_6185 */
+	/* FIXME: Was not ported due to lack of HW */
+	.phy_read = NULL,
+	.phy_write = NULL,
+};
+
+static const struct mv88e6xxx_ops mv88e6141_ops = {
+	/* MV88E6XXX_FAMILY_6341 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6161_ops = {
+	/* MV88E6XXX_FAMILY_6165 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6165_ops = {
+	/* MV88E6XXX_FAMILY_6165 */
+	/* FIXME: Was not ported due to lack of HW */
+	.phy_read = NULL,
+	.phy_write = NULL,
+};
+
+static const struct mv88e6xxx_ops mv88e6171_ops = {
+	/* MV88E6XXX_FAMILY_6351 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6172_ops = {
+	/* MV88E6XXX_FAMILY_6352 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6175_ops = {
+	/* MV88E6XXX_FAMILY_6351 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6176_ops = {
+	/* MV88E6XXX_FAMILY_6352 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6185_ops = {
+	/* MV88E6XXX_FAMILY_6185 */
+	/* FIXME: Was not ported due to lack of HW */
+	.phy_read = NULL,
+	.phy_write = NULL,
+};
+
+static const struct mv88e6xxx_ops mv88e6190_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6190x_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6191_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6240_ops = {
+	/* MV88E6XXX_FAMILY_6352 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6290_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6320_ops = {
+	/* MV88E6XXX_FAMILY_6320 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6321_ops = {
+	/* MV88E6XXX_FAMILY_6320 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6341_ops = {
+	/* MV88E6XXX_FAMILY_6341 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6350_ops = {
+	/* MV88E6XXX_FAMILY_6351 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6351_ops = {
+	/* MV88E6XXX_FAMILY_6351 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6352_ops = {
+	/* MV88E6XXX_FAMILY_6352 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6390_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_ops mv88e6390x_ops = {
+	/* MV88E6XXX_FAMILY_6390 */
+	.phy_read = mv88e6xxx_g2_smi_phy_read,
+	.phy_write = mv88e6xxx_g2_smi_phy_write,
+};
+
+static const struct mv88e6xxx_info mv88e6xxx_table[] = {
+	[MV88E6085] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6085,
+		.family = MV88E6XXX_FAMILY_6097,
+		.name = "Marvell 88E6085",
+		.num_ports = 10,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6085_ops,
+	},
+
+	[MV88E6095] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6095,
+		.family = MV88E6XXX_FAMILY_6095,
+		.name = "Marvell 88E6095/88E6095F",
+		.num_ports = 11,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6095_ops,
+	},
+
+	[MV88E6097] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6097,
+		.family = MV88E6XXX_FAMILY_6097,
+		.name = "Marvell 88E6097/88E6097F",
+		.num_ports = 11,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6097_ops,
+	},
+
+	[MV88E6123] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6123,
+		.family = MV88E6XXX_FAMILY_6165,
+		.name = "Marvell 88E6123",
+		.num_ports = 3,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6123_ops,
+	},
+
+	[MV88E6131] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6131,
+		.family = MV88E6XXX_FAMILY_6185,
+		.name = "Marvell 88E6131",
+		.num_ports = 8,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6131_ops,
+	},
+
+	[MV88E6141] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6141,
+		.family = MV88E6XXX_FAMILY_6341,
+		.name = "Marvell 88E6341",
+		.num_ports = 6,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6141_ops,
+	},
+
+	[MV88E6161] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6161,
+		.family = MV88E6XXX_FAMILY_6165,
+		.name = "Marvell 88E6161",
+		.num_ports = 6,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6161_ops,
+	},
+
+	[MV88E6165] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6165,
+		.family = MV88E6XXX_FAMILY_6165,
+		.name = "Marvell 88E6165",
+		.num_ports = 6,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6165_ops,
+	},
+
+	[MV88E6171] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6171,
+		.family = MV88E6XXX_FAMILY_6351,
+		.name = "Marvell 88E6171",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6171_ops,
+	},
+
+	[MV88E6172] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6172,
+		.family = MV88E6XXX_FAMILY_6352,
+		.name = "Marvell 88E6172",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6172_ops,
+	},
+
+	[MV88E6175] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6175,
+		.family = MV88E6XXX_FAMILY_6351,
+		.name = "Marvell 88E6175",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6175_ops,
+	},
+
+	[MV88E6176] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6176,
+		.family = MV88E6XXX_FAMILY_6352,
+		.name = "Marvell 88E6176",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6176_ops,
+	},
+
+	[MV88E6185] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6185,
+		.family = MV88E6XXX_FAMILY_6185,
+		.name = "Marvell 88E6185",
+		.num_ports = 10,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6185_ops,
+	},
+
+	[MV88E6190] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6190,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6190",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6190_ops,
+	},
+
+	[MV88E6190X] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6190X,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6190X",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6190x_ops,
+	},
+
+	[MV88E6191] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6191,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6191",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6191_ops,
+	},
+
+	[MV88E6240] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6240,
+		.family = MV88E6XXX_FAMILY_6352,
+		.name = "Marvell 88E6240",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6240_ops,
+	},
+
+	[MV88E6290] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6290,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6290",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6290_ops,
+	},
+
+	[MV88E6320] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6320,
+		.family = MV88E6XXX_FAMILY_6320,
+		.name = "Marvell 88E6320",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6320_ops,
+	},
+
+	[MV88E6321] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6321,
+		.family = MV88E6XXX_FAMILY_6320,
+		.name = "Marvell 88E6321",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6321_ops,
+	},
+
+	[MV88E6341] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6341,
+		.family = MV88E6XXX_FAMILY_6341,
+		.name = "Marvell 88E6341",
+		.num_ports = 6,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6341_ops,
+	},
+
+	[MV88E6350] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6350,
+		.family = MV88E6XXX_FAMILY_6351,
+		.name = "Marvell 88E6350",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6350_ops,
+	},
+
+	[MV88E6351] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6351,
+		.family = MV88E6XXX_FAMILY_6351,
+		.name = "Marvell 88E6351",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6351_ops,
+	},
+
+	[MV88E6352] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6352,
+		.family = MV88E6XXX_FAMILY_6352,
+		.name = "Marvell 88E6352",
+		.num_ports = 7,
+		.port_base_addr = 0x10,
+		.ops = &mv88e6352_ops,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6352_ops,
+	},
+
+	[MV88E6390] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6390,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6390",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6390_ops,
+	},
+
+	[MV88E6390X] = {
+		.prod_num = MV88E6XXX_PORT_SWITCH_ID_PROD_6390X,
+		.family = MV88E6XXX_FAMILY_6390,
+		.name = "Marvell 88E6390X",
+		.num_ports = 11,	/* 10 + Z80 */
+		.port_base_addr = 0x0,
+		.global2_addr = 0x1c,
+		.ops = &mv88e6390x_ops,
+	},
+};
+
+int mv88e6xxx_write(struct mv88e6xxx_chip *chip, int addr, int reg, u16 val)
+{
+	int ret;
+	ret = mdiobus_write(chip->parent_miibus, addr, reg, val);
+	if (ret < 0)
+		return ret;
+
+	dev_dbg(chip->dev, "<- addr: 0x%.2x reg: 0x%.2x val: 0x%.4x\n",
+		addr, reg, val);
+
+	return 0;
+}
+
+int mv88e6xxx_read(struct mv88e6xxx_chip *chip, int addr, int reg, u16 *val)
+{
+	int ret;
+
+	ret = mdiobus_read(chip->parent_miibus, addr, reg);
+	if (ret < 0)
+		return ret;
+
+	*val = ret & 0xffff;
+
+	dev_dbg(chip->dev, "-> addr: 0x%.2x reg: 0x%.2x val: 0x%.4x\n",
+		addr, reg, *val);
+
+	return 0;
+}
+
+int mv88e6xxx_wait(struct mv88e6xxx_chip *chip, int addr, int reg, u16 mask)
+{
+	int i;
+
+	for (i = 0; i < 16; i++) {
+		u16 val;
+		int err;
+
+		err = mv88e6xxx_read(chip, addr, reg, &val);
+		if (err)
+			return err;
+
+		if (!(val & mask))
+			return 0;
+
+		udelay(2000);
+	}
+
+	dev_err(chip->dev, "Timeout while waiting for switch\n");
+	return -ETIMEDOUT;
+}
+
+static int mv88e6xxx_mdio_read(struct mii_bus *bus, int phy, int reg)
+{
+	struct mv88e6xxx_chip *chip = bus->priv;
+	u16 val;
+	int err;
+
+	if (!chip->info->ops->phy_read)
+		return -EOPNOTSUPP;
+
+	err = chip->info->ops->phy_read(chip, bus, phy, reg, &val);
+
+	if (reg == MII_PHYSID2) {
+		/* Some internal PHYS don't have a model number.  Use
+		 * the mv88e6390 family model number instead.
+		 */
+		if (!(val & 0x3f0))
+			val |= MV88E6XXX_PORT_SWITCH_ID_PROD_6390 >> 4;
+	}
+
+	return err ?: val;
+}
+
+static int mv88e6xxx_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
+{
+	struct mv88e6xxx_chip *chip = bus->priv;
+	int err;
+
+	if (!chip->info->ops->phy_write)
+		return -EOPNOTSUPP;
+
+	err = chip->info->ops->phy_write(chip, bus, phy, reg, val);
+
+	return err;
+}
+
+static const struct mv88e6xxx_info *
+mv88e6xxx_lookup_info(unsigned int prod_num)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(mv88e6xxx_table); ++i)
+		if (mv88e6xxx_table[i].prod_num == prod_num)
+			return &mv88e6xxx_table[i];
+
+	return NULL;
+}
+
+static int mv88e6xxx_detect(struct mv88e6xxx_chip *chip)
+{
+	const struct mv88e6xxx_info *info;
+	unsigned int prod_num, rev;
+	u16 id;
+	int err;
+
+	err = mv88e6xxx_port_read(chip, 0, MV88E6XXX_PORT_SWITCH_ID, &id);
+	if (err)
+		return err;
+
+	prod_num = id & MV88E6XXX_PORT_SWITCH_ID_PROD_MASK;
+	rev = id & MV88E6XXX_PORT_SWITCH_ID_REV_MASK;
+
+	info = mv88e6xxx_lookup_info(prod_num);
+	if (!info)
+		return -ENODEV;
+
+	/* Update the compatible info with the probed one */
+	chip->info = info;
+
+	dev_info(chip->dev, "switch 0x%x detected: %s, revision %u\n",
+		 chip->info->prod_num, chip->info->name, rev);
+
+	return 0;
+}
+
+/*
+ * Linux driver has this delay at 20ms, but it doesn't seem to be
+ * enough in Barebox and trying to access switch registers immediately
+ * after this function will return all F's on some platforms
+ * tested. Increasing this to 50ms seem to resolve the issue.
+ */
+static void mv88e6xxx_hardware_reset_delay(void)
+{
+	udelay(50000);
+}
+
+static void mv88e6xxx_hardware_reset(struct mv88e6xxx_chip *chip)
+{
+	/* If there is a GPIO connected to the reset pin, toggle it */
+	if (gpio_is_valid(chip->reset)) {
+		gpio_set_active(chip->reset, 1);
+		mv88e6xxx_hardware_reset_delay();
+		gpio_set_active(chip->reset, 0);
+		mv88e6xxx_hardware_reset_delay();
+	}
+}
+
+static int mv88e6xxx_switch_reset(struct mv88e6xxx_chip *chip)
+{
+	mv88e6xxx_hardware_reset(chip);
+	return 0;
+}
+
+static int mv88e6xxx_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct device_node *mdio_node;
+	struct mv88e6xxx_chip *chip;
+	enum of_gpio_flags of_flags;
+	int err;
+	u32 reg;
+
+	err = of_property_read_u32(np, "reg", &reg);
+	if (err) {
+		dev_err(dev, "Couldn't determine switch MIDO address\n");
+		return err;
+	}
+
+	if (reg) {
+		dev_err(dev, "Only single-chip address mode is supported\n");
+		return -ENOTSUPP;
+	}
+
+	chip = xzalloc(sizeof(struct mv88e6xxx_chip));
+	chip->dev = dev;
+	chip->info = of_device_get_match_data(dev);
+
+	chip->parent_miibus = of_mdio_find_bus(np->parent);
+	if (!chip->parent_miibus)
+		return -EPROBE_DEFER;
+
+	chip->reset = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
+	if (gpio_is_valid(chip->reset)) {
+		unsigned long flags = GPIOF_OUT_INIT_INACTIVE;
+		char *name;
+
+		if (of_flags & OF_GPIO_ACTIVE_LOW)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		name = basprintf("%s reset", dev_name(dev));
+		err = gpio_request_one(chip->reset, flags, name);
+		if (err < 0)
+			return err;
+		/*
+		 * We assume that reset line was previously held low
+		 * and give the switch time to initialize before
+		 * trying to read its registers
+		 */
+		mv88e6xxx_hardware_reset_delay();
+	}
+
+	err = mv88e6xxx_detect(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_switch_reset(chip);
+	if (err)
+		return err;
+	/*
+	 * In single-chip address mode addresses 0x10 - 0x1f are
+	 * reserved to access various switch registers and do not
+	 * correspond to any PHYs, so we mask them to pervent from
+	 * being exposed as phy devices
+	 */
+	chip->parent_miibus->phy_mask |= GENMASK(0x1f, 0x10);
+	/*
+	 * Address 0x0f on internal bus is dedicated to SERDES
+	 * registers and won't be very useful against standard PHY
+	 * driver
+	 */
+	chip->miibus.phy_mask |= GENMASK(0x1f, 0x0f);
+
+	chip->miibus.read = mv88e6xxx_mdio_read;
+	chip->miibus.write = mv88e6xxx_mdio_write;
+
+	chip->miibus.priv = chip;
+	chip->miibus.parent = dev;
+
+	mdio_node = of_get_child_by_name(np, "mdio");
+	if (mdio_node)
+		chip->miibus.dev.device_node = mdio_node;
+
+	return mdiobus_register(&chip->miibus);
+}
+
+static const struct of_device_id mv88e6xxx_of_match[] = {
+	{
+		.compatible = "marvell,mv88e6085",
+		.data = &mv88e6xxx_table[MV88E6085],
+	},
+	{
+		.compatible = "marvell,mv88e6190",
+		.data = &mv88e6xxx_table[MV88E6190],
+	},
+	{},
+};
+
+static struct driver_d mv88e6xxx_driver = {
+	.name	       = "mv88e6085",
+	.probe         = mv88e6xxx_probe,
+	.of_compatible = mv88e6xxx_of_match,
+};
+device_platform_driver(mv88e6xxx_driver);
diff --git a/drivers/net/phy/mv88e6xxx/chip.h b/drivers/net/phy/mv88e6xxx/chip.h
new file mode 100644
index 000000000..d970099e1
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/chip.h
@@ -0,0 +1,61 @@
+#ifndef _MV88E6XXX_CHIP_H
+#define _MV88E6XXX_CHIP_H
+
+#include <common.h>
+#include <init.h>
+#include <linux/mii.h>
+#include <linux/phy.h>
+
+/* sub-devices MDIO addresses */
+#define MV88E6XXX_SWITCH_GLOBAL_REGS_1		0x1b
+#define MV88E6XXX_SWITCH_GLOBAL_REGS_2		0x1c
+
+enum mv88e6xxx_family {
+	MV88E6XXX_FAMILY_NONE,
+	MV88E6XXX_FAMILY_6065,	/* 6031 6035 6061 6065 */
+	MV88E6XXX_FAMILY_6095,	/* 6092 6095 */
+	MV88E6XXX_FAMILY_6097,	/* 6046 6085 6096 6097 */
+	MV88E6XXX_FAMILY_6165,	/* 6123 6161 6165 */
+	MV88E6XXX_FAMILY_6185,	/* 6108 6121 6122 6131 6152 6155 6182 6185 */
+	MV88E6XXX_FAMILY_6320,	/* 6320 6321 */
+	MV88E6XXX_FAMILY_6341,	/* 6141 6341 */
+	MV88E6XXX_FAMILY_6351,	/* 6171 6175 6350 6351 */
+	MV88E6XXX_FAMILY_6352,	/* 6172 6176 6240 6352 */
+	MV88E6XXX_FAMILY_6390,  /* 6190 6190X 6191 6290 6390 6390X */
+};
+
+struct mv88e6xxx_ops;
+
+struct mv88e6xxx_info {
+	enum mv88e6xxx_family family;
+	u16 prod_num;
+	const char *name;
+	unsigned int num_ports;
+	unsigned int port_base_addr;
+	unsigned int global2_addr;
+
+	const struct mv88e6xxx_ops *ops;
+};
+
+struct mv88e6xxx_chip {
+	const struct mv88e6xxx_info *info;
+	struct mii_bus *parent_miibus;
+	struct mii_bus miibus;
+	struct device_d *dev;
+	int reset;
+};
+
+struct mv88e6xxx_ops {
+	int (*phy_read)(struct mv88e6xxx_chip *chip,
+			struct mii_bus *bus,
+			int addr, int reg, u16 *val);
+	int (*phy_write)(struct mv88e6xxx_chip *chip,
+			 struct mii_bus *bus,
+			 int addr, int reg, u16 val);
+};
+
+int mv88e6xxx_write(struct mv88e6xxx_chip *chip, int addr, int reg, u16 val);
+int mv88e6xxx_read(struct mv88e6xxx_chip *chip, int addr, int reg, u16 *val);
+int mv88e6xxx_wait(struct mv88e6xxx_chip *chip, int addr, int reg, u16 mask);
+
+#endif /* _MV88E6XXX_CHIP_H */
\ No newline at end of file
diff --git a/drivers/net/phy/mv88e6xxx/global2.c b/drivers/net/phy/mv88e6xxx/global2.c
new file mode 100644
index 000000000..a3c7bc0e5
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/global2.c
@@ -0,0 +1,124 @@
+#include <linux/ethtool.h>
+#include <linux/bitfield.h>
+
+#include "global2.h"
+
+int mv88e6xxx_g2_read(struct mv88e6xxx_chip *chip, int reg, u16 *val)
+{
+	return mv88e6xxx_read(chip, chip->info->global2_addr, reg, val);
+}
+
+int mv88e6xxx_g2_write(struct mv88e6xxx_chip *chip, int reg, u16 val)
+{
+	return mv88e6xxx_write(chip, chip->info->global2_addr, reg, val);
+}
+
+int mv88e6xxx_g2_wait(struct mv88e6xxx_chip *chip, int reg, u16 mask)
+{
+	return mv88e6xxx_wait(chip, chip->info->global2_addr, reg, mask);
+}
+
+static int mv88e6xxx_g2_smi_phy_wait(struct mv88e6xxx_chip *chip)
+{
+	return mv88e6xxx_g2_wait(chip, MV88E6XXX_G2_SMI_PHY_CMD,
+				 MV88E6XXX_G2_SMI_PHY_CMD_BUSY);
+}
+
+static int mv88e6xxx_g2_smi_phy_cmd(struct mv88e6xxx_chip *chip, u16 cmd)
+{
+	int err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SMI_PHY_CMD,
+				 MV88E6XXX_G2_SMI_PHY_CMD_BUSY | cmd);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_smi_phy_wait(chip);
+}
+
+static int mv88e6xxx_g2_smi_phy_access(struct mv88e6xxx_chip *chip,
+				       bool external, bool c45, u16 op, int dev,
+				       int reg)
+{
+	u16 cmd = op;
+
+	if (external)
+		cmd |= MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL;
+	else
+		cmd |= MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL; /* empty mask */
+
+	if (c45)
+		cmd |= MV88E6XXX_G2_SMI_PHY_CMD_MODE_45; /* empty mask */
+	else
+		cmd |= MV88E6XXX_G2_SMI_PHY_CMD_MODE_22;
+
+	dev <<= __bf_shf(MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK);
+	cmd |= dev & MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK;
+	cmd |= reg & MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK;
+
+	return mv88e6xxx_g2_smi_phy_cmd(chip, cmd);
+}
+
+static int mv88e6xxx_g2_smi_phy_access_c22(struct mv88e6xxx_chip *chip,
+					   bool external, u16 op, int dev,
+					   int reg)
+{
+	return mv88e6xxx_g2_smi_phy_access(chip, external, false, op, dev, reg);
+}
+
+/* IEEE 802.3 Clause 22 Read Data Register */
+static int mv88e6xxx_g2_smi_phy_read_data_c22(struct mv88e6xxx_chip *chip,
+					      bool external, int dev, int reg,
+					      u16 *data)
+{
+	u16 op = MV88E6XXX_G2_SMI_PHY_CMD_OP_22_READ_DATA;
+	int err;
+
+	err = mv88e6xxx_g2_smi_phy_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_smi_phy_access_c22(chip, external, op, dev, reg);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_read(chip, MV88E6XXX_G2_SMI_PHY_DATA, data);
+}
+
+/* IEEE 802.3 Clause 22 Write Data Register */
+static int mv88e6xxx_g2_smi_phy_write_data_c22(struct mv88e6xxx_chip *chip,
+					       bool external, int dev, int reg,
+					       u16 data)
+{
+	u16 op = MV88E6XXX_G2_SMI_PHY_CMD_OP_22_WRITE_DATA;
+	int err;
+
+	err = mv88e6xxx_g2_smi_phy_wait(chip);
+	if (err)
+		return err;
+
+	err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SMI_PHY_DATA, data);
+	if (err)
+		return err;
+
+	return mv88e6xxx_g2_smi_phy_access_c22(chip, external, op, dev, reg);
+}
+
+
+int mv88e6xxx_g2_smi_phy_read(struct mv88e6xxx_chip *chip, struct mii_bus *bus,
+			      int addr, int reg, u16 *val)
+{
+	bool external = false;
+
+	return mv88e6xxx_g2_smi_phy_read_data_c22(chip, external, addr, reg,
+						  val);
+}
+
+int mv88e6xxx_g2_smi_phy_write(struct mv88e6xxx_chip *chip, struct mii_bus *bus,
+			       int addr, int reg, u16 val)
+{
+	bool external = false;
+
+	return mv88e6xxx_g2_smi_phy_write_data_c22(chip, external, addr, reg,
+						   val);
+}
diff --git a/drivers/net/phy/mv88e6xxx/global2.h b/drivers/net/phy/mv88e6xxx/global2.h
new file mode 100644
index 000000000..28bbd8c43
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/global2.h
@@ -0,0 +1,41 @@
+#ifndef _MV88E6XXX_GLOBAL2_H
+#define _MV88E6XXX_GLOBAL2_H
+
+#include "chip.h"
+
+/* Offset 0x18: SMI PHY Command Register */
+#define MV88E6XXX_G2_SMI_PHY_CMD			0x18
+#define MV88E6XXX_G2_SMI_PHY_CMD_BUSY			0x8000
+#define MV88E6390_G2_SMI_PHY_CMD_FUNC_MASK		0x6000
+#define MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL		0x0000
+#define MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL		0x2000
+#define MV88E6390_G2_SMI_PHY_CMD_FUNC_SETUP		0x4000
+#define MV88E6XXX_G2_SMI_PHY_CMD_MODE_MASK		0x1000
+#define MV88E6XXX_G2_SMI_PHY_CMD_MODE_45		0x0000
+#define MV88E6XXX_G2_SMI_PHY_CMD_MODE_22		0x1000
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_MASK		0x0c00
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_22_WRITE_DATA	0x0400
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_22_READ_DATA	0x0800
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_45_WRITE_ADDR	0x0000
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_45_WRITE_DATA	0x0400
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_45_READ_DATA_INC	0x0800
+#define MV88E6XXX_G2_SMI_PHY_CMD_OP_45_READ_DATA	0x0c00
+#define MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK		0x03e0
+#define MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK		0x001f
+#define MV88E6XXX_G2_SMI_PHY_CMD_SETUP_PTR_MASK		0x03ff
+
+/* Offset 0x19: SMI PHY Data Register */
+#define MV88E6XXX_G2_SMI_PHY_DATA	0x19
+
+int mv88e6xxx_g2_read(struct mv88e6xxx_chip *chip, int reg, u16 *val);
+int mv88e6xxx_g2_write(struct mv88e6xxx_chip *chip, int reg, u16 val);
+int mv88e6xxx_g2_wait(struct mv88e6xxx_chip *chip, int reg, u16 mask);
+
+int mv88e6xxx_g2_smi_phy_read(struct mv88e6xxx_chip *chip,
+			      struct mii_bus *bus,
+			      int addr, int reg, u16 *val);
+int mv88e6xxx_g2_smi_phy_write(struct mv88e6xxx_chip *chip,
+			       struct mii_bus *bus,
+			       int addr, int reg, u16 val);
+
+#endif /* _MV88E6XXX_GLOBAL2_H */
\ No newline at end of file
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
new file mode 100644
index 000000000..59afdbd97
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -0,0 +1,20 @@
+#include <common.h>
+#include <init.h>
+
+#include "port.h"
+
+int mv88e6xxx_port_read(struct mv88e6xxx_chip *chip, int port, int reg,
+			u16 *val)
+{
+	int addr = chip->info->port_base_addr + port;
+
+	return mv88e6xxx_read(chip, addr, reg, val);
+}
+
+int mv88e6xxx_port_write(struct mv88e6xxx_chip *chip, int port, int reg,
+			 u16 val)
+{
+	int addr = chip->info->port_base_addr + port;
+
+	return mv88e6xxx_write(chip, addr, reg, val);
+}
diff --git a/drivers/net/phy/mv88e6xxx/port.h b/drivers/net/phy/mv88e6xxx/port.h
new file mode 100644
index 000000000..84c76c42c
--- /dev/null
+++ b/drivers/net/phy/mv88e6xxx/port.h
@@ -0,0 +1,89 @@
+#ifndef _MV88E6XXX_PORT_H
+#define _MV88E6XXX_PORT_H
+
+#include "chip.h"
+
+/* Offset 0x00: Port Status Register */
+#define MV88E6XXX_PORT_STS			0x00
+#define MV88E6XXX_PORT_STS_PAUSE_EN		0x8000
+#define MV88E6XXX_PORT_STS_MY_PAUSE		0x4000
+#define MV88E6XXX_PORT_STS_HD_FLOW		0x2000
+#define MV88E6XXX_PORT_STS_PHY_DETECT		0x1000
+#define MV88E6XXX_PORT_STS_LINK			0x0800
+#define MV88E6XXX_PORT_STS_DUPLEX		0x0400
+#define MV88E6XXX_PORT_STS_SPEED_MASK		0x0300
+#define MV88E6XXX_PORT_STS_SPEED_10		0x0000
+#define MV88E6XXX_PORT_STS_SPEED_100		0x0100
+#define MV88E6XXX_PORT_STS_SPEED_1000		0x0200
+#define MV88E6352_PORT_STS_EEE			0x0040
+#define MV88E6165_PORT_STS_AM_DIS		0x0040
+#define MV88E6185_PORT_STS_MGMII		0x0040
+#define MV88E6XXX_PORT_STS_TX_PAUSED		0x0020
+#define MV88E6XXX_PORT_STS_FLOW_CTL		0x0010
+#define MV88E6XXX_PORT_STS_CMODE_MASK		0x000f
+#define MV88E6XXX_PORT_STS_CMODE_100BASE_X	0x0008
+#define MV88E6XXX_PORT_STS_CMODE_1000BASE_X	0x0009
+#define MV88E6XXX_PORT_STS_CMODE_SGMII		0x000a
+#define MV88E6XXX_PORT_STS_CMODE_2500BASEX	0x000b
+#define MV88E6XXX_PORT_STS_CMODE_XAUI		0x000c
+#define MV88E6XXX_PORT_STS_CMODE_RXAUI		0x000d
+
+/* Offset 0x01: MAC (or PCS or Physical) Control Register */
+#define MV88E6XXX_PORT_MAC_CTL				0x01
+#define MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK	0x8000
+#define MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK	0x4000
+#define MV88E6390_PORT_MAC_CTL_FORCE_SPEED		0x2000
+#define MV88E6390_PORT_MAC_CTL_ALTSPEED			0x1000
+#define MV88E6352_PORT_MAC_CTL_200BASE			0x1000
+#define MV88E6XXX_PORT_MAC_CTL_FC			0x0080
+#define MV88E6XXX_PORT_MAC_CTL_FORCE_FC			0x0040
+#define MV88E6XXX_PORT_MAC_CTL_LINK_UP			0x0020
+#define MV88E6XXX_PORT_MAC_CTL_FORCE_LINK		0x0010
+#define MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL		0x0008
+#define MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX		0x0004
+#define MV88E6XXX_PORT_MAC_CTL_SPEED_MASK		0x0003
+#define MV88E6XXX_PORT_MAC_CTL_SPEED_10			0x0000
+#define MV88E6XXX_PORT_MAC_CTL_SPEED_100		0x0001
+#define MV88E6065_PORT_MAC_CTL_SPEED_200		0x0002
+#define MV88E6XXX_PORT_MAC_CTL_SPEED_1000		0x0002
+#define MV88E6390_PORT_MAC_CTL_SPEED_10000		0x0003
+#define MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED		0x0003
+
+/* Offset 0x03: Switch Identifier Register */
+#define MV88E6XXX_PORT_SWITCH_ID		0x03
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_MASK	0xfff0
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6085	0x04a0
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6095	0x0950
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6097	0x0990
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6190X	0x0a00
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6390X	0x0a10
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6131	0x1060
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6320	0x1150
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6123	0x1210
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6161	0x1610
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6165	0x1650
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6171	0x1710
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6172	0x1720
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6175	0x1750
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6176	0x1760
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6190	0x1900
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6191	0x1910
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6185	0x1a70
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6240	0x2400
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6290	0x2900
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6321	0x3100
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6141	0x3400
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6341	0x3410
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6352	0x3520
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6350	0x3710
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6351	0x3750
+#define MV88E6XXX_PORT_SWITCH_ID_PROD_6390	0x3900
+#define MV88E6XXX_PORT_SWITCH_ID_REV_MASK	0x000f
+
+int mv88e6xxx_port_read(struct mv88e6xxx_chip *chip, int port, int reg,
+			u16 *val);
+int mv88e6xxx_port_write(struct mv88e6xxx_chip *chip, int port, int reg,
+			 u16 val);
+
+
+#endif /* _MV88E6XXX_PORT_H */
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
