Delivery-date: Sat, 22 Jun 2024 19:49:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sL4rR-00ATzs-1p
	for lore@lore.pengutronix.de;
	Sat, 22 Jun 2024 19:49:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sL4rQ-0006HB-7X
	for lore@pengutronix.de; Sat, 22 Jun 2024 19:49:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QIE3ORXn8YNkLg8FpVEygzpMmMNIKRkteKbVIEqLsD8=; b=H+mfGjNktPYzPbI4V1Z3eyZjnD
	uAwN/aH1LY5EWrvkHmNRGOimri/jz4tPw31Mfrw43jID5WkZ4RdQTc4MJp5CpuezRNWzpgh90nZgd
	/M+pQbu8ld8YU84vqTLkIQAvLBPweu4OopLAt2qO6Z2eWpmNcx6sLyHvRndPgwosw4mLzTUZYWodZ
	+n/g8/AmVGT7HuotdT3QjDPes5ILpG1VRNZHpxubchV5Uj1pKqUEuhUzejYpRQQaB93XQ65RPtTrO
	rOTzVlbnVUAMWk4WmVaH+96vIUTFLl1av4GE/ZwT3GJrOQ+c96J9X08wymsfu2+1+hu5Zyed1E2Ol
	ALD7l1Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL4qh-0000000CXe4-0abE;
	Sat, 22 Jun 2024 17:48:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sL4qb-0000000CXcn-1fD3
	for barebox@lists.infradead.org;
	Sat, 22 Jun 2024 17:48:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qY-0006BY-D6; Sat, 22 Jun 2024 19:48:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qY-004E9i-0b; Sat, 22 Jun 2024 19:48:18 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sL4qX-00D8Vw-39;
	Sat, 22 Jun 2024 19:48:17 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 22 Jun 2024 19:48:15 +0200
Message-Id: <20240622174815.3130885-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240622174815.3130885-1-o.rempel@pengutronix.de>
References: <20240622174815.3130885-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_104821_783150_EEB5F758 
X-CRM114-Status: GOOD (  27.62  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: at91: microchip-sama5d3-eds: implement MDIO and SPI extension boards detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Detect extension boards managed over MDIO or SPI buses. For now following
extension boards are supported:
- EVB-VSC8541-EDS
- EVB-LAN8841
- EVB-LAN9370-LC

If supported board is detected, the board code will apply devicetree
overlay on the barebox and fixup kernel DT too.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../arm/boards/microchip-sama5d3-eds/Makefile |   1 +
 arch/arm/boards/microchip-sama5d3-eds/board.c | 414 ++++++++++++++++++
 arch/arm/dts/Makefile                         |   3 +
 arch/arm/dts/at91-microchip-sama5d3-eds.dts   |  29 ++
 arch/arm/dts/sama5d3_eds_lan9370.dtso         |  77 ++++
 arch/arm/dts/sama5d3_eds_rgmii_phy.dtso       |  52 +++
 arch/arm/mach-at91/Kconfig                    |   1 +
 7 files changed, 577 insertions(+)
 create mode 100644 arch/arm/boards/microchip-sama5d3-eds/board.c
 create mode 100644 arch/arm/dts/sama5d3_eds_lan9370.dtso
 create mode 100644 arch/arm/dts/sama5d3_eds_rgmii_phy.dtso

diff --git a/arch/arm/boards/microchip-sama5d3-eds/Makefile b/arch/arm/boards/microchip-sama5d3-eds/Makefile
index 458f520900..da63d2625f 100644
--- a/arch/arm/boards/microchip-sama5d3-eds/Makefile
+++ b/arch/arm/boards/microchip-sama5d3-eds/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/microchip-sama5d3-eds/board.c b/arch/arm/boards/microchip-sama5d3-eds/board.c
new file mode 100644
index 0000000000..f14071efcd
--- /dev/null
+++ b/arch/arm/boards/microchip-sama5d3-eds/board.c
@@ -0,0 +1,414 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2024 Oleksij Rempel <o.rempel@pengutronix.de>
+
+#include <common.h>
+#include <deep-probe.h>
+#include <envfs.h>
+#include <environment.h>
+#include <gpio.h>
+#include <init.h>
+#include <linux/phy.h>
+#include <spi/spi.h>
+
+#define BASE_BOARD_NAME_SIZE 100
+static char base_board_name[BASE_BOARD_NAME_SIZE] = "MCP_S5D3_EDS";
+
+extern char __dtbo_sama5d3_eds_rgmii_phy_start[];
+extern char __dtbo_sama5d3_eds_lan9370_start[];
+
+#define MCP_S5D3_EDS_MDIO_EXT_BOARD_FLAG_IGNGORE	BIT(0)
+
+struct mcp_s5d3_eds_mdio_ext_board {
+	int mdio_bus_idx;
+	int phy_addr;
+	int phy_id1;
+	int phy_id2;
+	char board_name[32];
+	char board_abbreviation[8];
+	const void *overlay;
+	u32 flags;
+};
+
+static const struct
+mcp_s5d3_eds_mdio_ext_board mcp_s5d3_eds_mdio_ext_boards[] = {
+	{
+		.mdio_bus_idx = 0,
+		.phy_addr = 3,
+		.phy_id1 = 0x0007,
+		.phy_id2 = 0x0772,
+		.board_name = "EVB-VSC8541-EDS",
+		.board_abbreviation = "VSC8541",
+		.overlay = __dtbo_sama5d3_eds_rgmii_phy_start,
+	},
+	{
+		.mdio_bus_idx = 0,
+		.phy_addr = 3,
+		.phy_id1 = 0x0022,
+		.phy_id2 = 0x1652,
+		.board_name = "EVB-LAN8841",
+		.board_abbreviation = "LAN8841",
+		.overlay = __dtbo_sama5d3_eds_rgmii_phy_start,
+	},
+	{
+		.mdio_bus_idx = 1,
+		.phy_addr = 1,
+		.phy_id1 = 0x0007,
+		.phy_id2 = 0xc1d1,
+		/* Manly EVB-LAN9370-LC is managed over SPI. Ignore MDIO
+		 * interface
+		 */
+		.flags = MCP_S5D3_EDS_MDIO_EXT_BOARD_FLAG_IGNGORE,
+	},
+};
+
+struct mcp_s5d3_eds_spi_scan {
+	int spi_bus_idx;
+	int spi_chip_select;
+};
+
+static const struct mcp_s5d3_eds_spi_scan mcp_s5d3_eds_spi_scans[] = {
+	{
+		.spi_bus_idx = 1,
+		.spi_chip_select = 0,
+	},
+	{
+		.spi_bus_idx = 1,
+		.spi_chip_select = 3,
+	},
+	{
+		.spi_bus_idx = 0,
+		.spi_chip_select = 0,
+	},
+	{
+		.spi_bus_idx = 0,
+		.spi_chip_select = 3,
+	},
+};
+
+struct mcp_s5d3_eds_spi_ext_board {
+	int spi_bus_idx;
+	int spi_chip_select;
+	u8 expected_response[4];
+	char board_name[32];
+	char board_abbreviation[8];
+	const void *overlay;
+};
+
+static const struct mcp_s5d3_eds_spi_ext_board mcp_s5d3_eds_spi_ext_boards[] = {
+	{
+		.spi_bus_idx = 1,
+		.spi_chip_select = 3,
+		.expected_response = { 0x00, 0x93, 0x70, 0x10 },
+		.board_name = "EVB-LAN9370-LC",
+		.board_abbreviation = "LAN9370",
+		.overlay = __dtbo_sama5d3_eds_lan9370_start,
+	},
+};
+
+static void mcp_s5d3_eds_append_board_name_part(const char *part)
+{
+	if (base_board_name[0] != '\0')
+		strncat(base_board_name, "-",
+			BASE_BOARD_NAME_SIZE - strlen(base_board_name) - 1);
+
+	strncat(base_board_name, part,
+		BASE_BOARD_NAME_SIZE - strlen(base_board_name) - 1);
+}
+
+static void mcp_s5d3_eds_apply_overlay(struct device *dev,
+				       const void *raw_overlay)
+{
+	struct device_node *overlay;
+	int ret;
+
+	overlay = of_unflatten_dtb(raw_overlay, INT_MAX);
+	ret = of_overlay_apply_tree(dev->of_node, overlay);
+	if (ret)
+		dev_warn(dev, "Failed to apply overlay: %pe\n", ERR_PTR(ret));
+
+	ret = of_register_overlay(overlay);
+	if (ret)
+		dev_warn(dev, "Failed to register overlay: %pe\n",
+			 ERR_PTR(ret));
+
+}
+
+static int mcp_s5d3_eds_spi_find_ksz_switch(struct device *dev, int bus_idx,
+					    int chip_select, u8 *response,
+					    size_t response_size)
+{
+	struct device_node *spi_node;
+	struct spi_device spi = {
+		.max_speed_hz = 1 * 1000 * 1000,  /* 1 MHz */
+		.bits_per_word = 8,
+		.chip_select = chip_select,
+	};
+	/* read command for ksz switch */
+	u8 tx_buf[4] = {0x60, 0x00, 0x00, 0x00};
+	u8 rx_buf[4] = {0};
+	int ret, i;
+	bool all_zeros = true, all_ones = true;
+	char spi_alias[] = "spiX";
+
+	snprintf(spi_alias, sizeof(spi_alias), "spi%d", bus_idx);
+
+	spi_node = of_find_node_by_alias(NULL, spi_alias);
+	if (!spi_node)
+		return -ENODEV;
+
+	of_device_ensure_probed(spi_node);
+
+	spi.controller = spi_get_controller(bus_idx);
+	spi.master = spi.controller;
+
+	if (!spi.controller) {
+		dev_err(dev, "SPI bus %d not found\n", bus_idx);
+		return -ENODEV;
+	}
+
+	ret = spi.controller->setup(&spi);
+	if (ret) {
+		dev_err(dev, "Cannot setup SPI controller %d (%d)\n", bus_idx,
+			ret);
+		return ret;
+	}
+
+	ret = spi_write_then_read(&spi, tx_buf, sizeof(tx_buf), rx_buf,
+				  sizeof(rx_buf));
+	if (ret) {
+		dev_err(dev, "Failed to communicate with SPI device on bus %d chip select %d\n",
+			bus_idx, chip_select);
+		return ret;
+	}
+
+	for (i = 0; i < sizeof(rx_buf); i++) {
+		if (rx_buf[i] != 0x00) {
+			all_zeros = false;
+		}
+		if (rx_buf[i] != 0xFF) {
+			all_ones = false;
+		}
+	}
+
+	if (all_zeros || all_ones)
+		return 0;
+
+	if (response_size < sizeof(rx_buf)) {
+		dev_err(dev, "Response storage is too small\n");
+		return -EINVAL;
+	}
+
+	memcpy(response, rx_buf, sizeof(rx_buf));
+
+	return 1;
+}
+
+static bool mcp_s5d3_eds_spi_check_and_apply_board(struct device *dev,
+						   int bus_idx, int chip_select,
+						   u8 *response)
+{
+	const struct mcp_s5d3_eds_spi_ext_board *detected_board = NULL;
+	bool switch_detected = false;
+
+	for (int i = 0; i < ARRAY_SIZE(mcp_s5d3_eds_spi_ext_boards); i++) {
+		const struct mcp_s5d3_eds_spi_ext_board *board =
+			&mcp_s5d3_eds_spi_ext_boards[i];
+
+		if (board->spi_bus_idx == bus_idx &&
+		    board->spi_chip_select == chip_select &&
+		    memcmp(response, board->expected_response,
+			   sizeof(board->expected_response)) == 0) {
+
+			switch_detected = true;
+			detected_board = board;
+			break;
+		}
+	}
+
+	if (!switch_detected)
+		return false;
+	
+	dev_info(dev, "Found SPI managed extension board: %s\n",
+		 detected_board->board_name);
+
+	mcp_s5d3_eds_append_board_name_part(detected_board->board_abbreviation);
+
+	if (detected_board->overlay)
+		mcp_s5d3_eds_apply_overlay(dev, detected_board->overlay);
+
+	return true;
+}
+
+static void mcp_s5d3_eds_scan_spi_buses(struct device *dev)
+{
+	u8 response[4];
+	int ret, i;
+
+	for (i = 0; i < (ARRAY_SIZE(mcp_s5d3_eds_spi_scans)); i++) {
+		const struct mcp_s5d3_eds_spi_scan *scan =
+			&mcp_s5d3_eds_spi_scans[i];
+		bool found = false;
+
+		ret = mcp_s5d3_eds_spi_find_ksz_switch(dev, scan->spi_bus_idx,
+						       scan->spi_chip_select,
+						       response,
+						       sizeof(response));
+		if (ret <= 0)
+			continue;
+	
+		found = mcp_s5d3_eds_spi_check_and_apply_board(dev,
+							scan->spi_bus_idx,
+							scan->spi_chip_select,
+							response);
+		if (!found)
+			dev_warn(dev, "No match for SPI device on bus %d chip select %d, response: %02x %02x %02x %02x\n",
+				 scan->spi_bus_idx, scan->spi_chip_select,
+				 response[0], response[1], response[2],
+				 response[3]);
+	}
+}
+
+static int mcp_s5d3_eds_mdio_find_first_dev(struct mii_bus *bus, int *phy_addr,
+					    int *phy_id1, int *phy_id2)
+{
+	int i, reg2, reg3;
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		reg2 = mdiobus_read(bus, i, MII_PHYSID1);
+		if (reg2 < 0)
+			return reg2;
+
+		if (reg2 == 0xffff || reg2 == 0x0)
+			continue;
+
+		reg3 = mdiobus_read(bus, i, MII_PHYSID2);
+		if (reg3 < 0)
+			return reg3;
+
+		*phy_addr = i;
+		*phy_id1 = reg2;
+		*phy_id2 = reg3;
+
+		return 1;
+	}
+
+	return 0;
+}
+
+static bool mcp_s5d3_eds_mdio_check_and_apply_board(struct device *dev,
+						    int board_idx,
+						    int mdio_bus_idx,
+						    int phy_addr, int phy_id1,
+						    int phy_id2)
+{
+	const struct mcp_s5d3_eds_mdio_ext_board *board =
+		&mcp_s5d3_eds_mdio_ext_boards[board_idx];
+
+	if (board->mdio_bus_idx != mdio_bus_idx ||
+	    board->phy_addr != phy_addr || board->phy_id1 != phy_id1 ||
+	    board->phy_id2 != phy_id2)
+		return false;
+
+	if (board->flags & MCP_S5D3_EDS_MDIO_EXT_BOARD_FLAG_IGNGORE)
+		return true;
+
+	dev_info(dev, "Found MDIO managed extension board: %s\n",
+		 board->board_name);
+
+	mcp_s5d3_eds_append_board_name_part(board->board_abbreviation);
+
+	if (board->overlay)
+		mcp_s5d3_eds_apply_overlay(dev, board->overlay);
+
+	return true;
+}
+
+static int mcp_s5d3_eds_scan_mdio_bus(struct device *dev,
+				      int mdio_bus_idx)
+{
+	struct device_node *eth_node, *mdio_node;
+	int phy_addr, phy_id1, phy_id2;
+	char eth_alias[] = "ethernetX";
+	char mdio_alias[] = "mdioX";
+	struct mii_bus *mdio_bus;
+	bool found = false;
+	int ret;
+
+	snprintf(eth_alias, sizeof(eth_alias), "ethernet%d", mdio_bus_idx);
+	snprintf(mdio_alias, sizeof(mdio_alias), "mdio%d", mdio_bus_idx);
+
+	eth_node = of_find_node_by_alias(NULL, eth_alias);
+	if (!eth_node)
+		return -ENODEV;
+
+	of_device_ensure_probed(eth_node);
+
+	mdio_node = of_find_node_by_alias(NULL, mdio_alias);
+	if (!mdio_node)
+		return -ENODEV;
+
+	of_device_ensure_probed(mdio_node);
+
+	mdio_bus = of_mdio_find_bus(mdio_node);
+	if (!mdio_bus)
+		return -ENODEV;
+
+	ret = mcp_s5d3_eds_mdio_find_first_dev(mdio_bus, &phy_addr, &phy_id1,
+					       &phy_id2);
+	if (ret < 0)
+		return ret;
+	else if (!ret)
+		return 0;
+
+	for (int i = 0; i < ARRAY_SIZE(mcp_s5d3_eds_mdio_ext_boards); i++) {
+		found = mcp_s5d3_eds_mdio_check_and_apply_board(dev, i,
+								mdio_bus_idx,
+								phy_addr,
+								phy_id1,
+								phy_id2);
+
+		if (found)
+			break;
+	}
+
+	if (!found)
+		dev_warn(dev, "No match for MDIO device at bus %d, address %d: %04x:%04x\n",
+			 mdio_bus_idx, phy_addr, phy_id1, phy_id2);
+
+	return 0;
+}
+
+static void mcp_s5d3_eds_scan_mdio_buses(struct device *dev)
+{
+	int ret, i;
+
+	for (i = 0; i < 2; i++) {
+		ret = mcp_s5d3_eds_scan_mdio_bus(dev, i);
+		if (ret)
+			dev_warn(dev, "Failed to scan mdio%d bus: %pe\n", i,
+				 ERR_PTR(ret));
+	}
+}
+
+static int mcp_s5d3_eds_probe(struct device *dev)
+{
+	mcp_s5d3_eds_scan_mdio_buses(dev);
+	mcp_s5d3_eds_scan_spi_buses(dev);
+
+	barebox_set_model(base_board_name);
+
+	return 0;
+}
+
+static const struct of_device_id mcp_s5d3_eds_of_match[] = {
+	{ .compatible = "microchip,sama5d3-eds"},
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(mcp_s5d3_eds_of_match);
+
+static struct driver mcp_s5d3_eds_board_driver = {
+	.name = "board-microchip-sama5d3-eds",
+	.probe = mcp_s5d3_eds_probe,
+	.of_compatible = DRV_OF_COMPAT(mcp_s5d3_eds_of_match),
+};
+device_platform_driver(mcp_s5d3_eds_board_driver);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 68585e1e4b..1302a059bb 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -230,6 +230,9 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcusto
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 			       imx93-tqma9352-mba93xxla.dtb.o
 
+obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += sama5d3_eds_rgmii_phy.dtbo.o
+obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) += sama5d3_eds_lan9370.dtbo.o
+
 obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
index d35c8c3c6e..250e64d7a1 100644
--- a/arch/arm/dts/at91-microchip-sama5d3-eds.dts
+++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
@@ -11,4 +11,33 @@ environment {
 			file-path = "barebox.env";
 		};
 	};
+
+	aliases {
+		ethernet0 = &macb0;
+		ethernet1 = &macb1;
+		mdio0 = &mdio0;
+		mdio1 = &mdio1;
+		spi0 = &spi0;
+		spi1 = &spi1;
+	};
+};
+
+&macb0 {
+	phy-mode = "rgmii-id";
+	status = "okay";
+
+	mdio0: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&macb1 {
+	phy-mode = "rmii";
+	status = "okay";
+
+	mdio1: mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
 };
diff --git a/arch/arm/dts/sama5d3_eds_lan9370.dtso b/arch/arm/dts/sama5d3_eds_lan9370.dtso
new file mode 100644
index 0000000000..eb45ec27d1
--- /dev/null
+++ b/arch/arm/dts/sama5d3_eds_lan9370.dtso
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for SAMA5D3 EDS board
+ * overlay blob for the LAN9370 RMII add-on board.
+ *
+ * Copyright (C) 2022 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Jerry Ray <jerry.ray@microchip.com>
+ *
+ * 5-Port 100BASE-T1 Gigabit Ethernet Switch
+ * https://www.microchip.com/en-us/development-tool/EV64C55A
+ *
+ */
+/dts-v1/;
+/plugin/;
+
+#include "dt-bindings/interrupt-controller/irq.h"
+#include "dt-bindings/pinctrl/at91.h"
+
+&macb1 {
+	phy-mode = "rmii";
+	status = "okay";
+
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&spi1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	lan9370: lan9370@3 {
+		compatible = "microchip,lan9370";
+		reg = <3>;
+		spi-max-frequency = <44000000>;
+		interrupt-parent = <&pioB>;
+		interrupts = <28 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&pinctrl_spi_irqn>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0x0>;
+				phy-mode = "internal";
+				label = "lan1";
+			};
+			port@1 {
+				reg = <0x1>;
+				phy-mode = "internal";
+				label = "lan2";
+			};
+			port@2 {
+				reg = <0x2>;
+				phy-mode = "internal";
+				label = "lan3";
+			};
+			port@3 {
+				reg = <0x3>;
+				phy-mode = "internal";
+				label = "lan4";
+			};
+			port@4 {
+				reg = <4>;
+				phy-mode = "rmii";
+				ethernet = <&macb1>;
+				fixed-link {
+					speed = <100>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso b/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
new file mode 100644
index 0000000000..5d7e1ee54c
--- /dev/null
+++ b/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
@@ -0,0 +1,52 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for SAMA5D3 EDS board
+ *
+ * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Jerry Ray <jerry.ray@microchip.com>
+ *
+ * Supported extension boards:
+ * - EVB-LAN8841 - https://www.microchip.com/en-us/development-tool/EV19G28A
+ *   Note: Depopulate R43 (remove RXER signal) to allow this board to
+ *         function properly with the SAMA5D3-EDS.
+ * - EVB-VSC8541-EDS - https://www.microchip.com/en-us/development-tool/EV35M06A
+ */
+/dts-v1/;
+/plugin/;
+
+#include "dt-bindings/gpio/gpio.h"
+#include "dt-bindings/interrupt-controller/irq.h"
+#include "dt-bindings/pinctrl/at91.h"
+
+&macb0 {
+	phy-mode = "rgmii-id";
+	phy-handle = <&rgmii_phy>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rgmii_phy: ethernet-phy@3 {
+			reg = <0x3>;
+			pinctrl-0 = <&pinctrl_rgmii_rstn>;
+			pinctrl-1 = <&pinctrl_spi_irqn>;
+			interrupt-parent = <&pioB>;
+			interrupts = <28 IRQ_TYPE_EDGE_FALLING>;
+			resetb-gpios = <&pioD 18 GPIO_ACTIVE_LOW>;
+			/* LAN8841 - 1us */
+			/* VSC8541 - 100ns */
+			/* take one 1ms to be safe */
+			reset-assert-us = <1000>;
+			/* LAN8841 - 10ms? */
+			/* VSC8541- 15ms */
+			reset-deassert-us = <15000>;
+			status = "okay";
+		};
+	};
+};
+
+&usart0 {
+	status = "disabled";    /* Conflicts with using pioD 18 as GPIO */
+};
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index afcea257c3..3cf40463be 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -612,6 +612,7 @@ config MACH_MICROCHIP_SAMA5D3_EDS
 	select OFDEVICE
 	select MCI_ATMEL_PBL
 	select COMMON_CLK_OF_PROVIDER
+	select OF_OVERLAY
 	help
 	  Select this if you are using Microchip's SAMA5D3 Ethernet Development
 	  System.
-- 
2.39.2



