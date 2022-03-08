Delivery-date: Tue, 08 Mar 2022 12:52:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOU-004bug-Ij
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOS-000762-Er
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eR3zz+ZQ0ytD3es1RBp/y2KIt/gfUpK+H3FSxxs0nlA=; b=mZ1IR7mdfrBNdO
	ljarIZumpDWbCWHIqKs9JpKPsRcgZ2aU9hRrbEPW2LImvi67G/J2576imQNhVfTgK6j/2IYheKfyR
	bhv3HMYu94rI/QDAhFx55wFayla5RuNEz7ebXqKCd7FRy2XHSgKH8qiBgDV336ymRTYLPfOWWviDR
	aMei435jvluVGZtIXB7Hzc7DVIF0zyCGYipL8YVjj4Q5AEE7ib2qGzn0xoOlf6/s9ecplMIoy5ecH
	OWEtfea+jOXGZt0NZa3xVte/KId1B0KkNYOGPnS7EPr6NSB/Iup6r0C99EKMNLYZO1ODf954B+xVF
	bghxrxhqUw89wuDc8qOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYNE-004DWS-27; Tue, 08 Mar 2022 11:51:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYMz-004DSW-Tb
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:16 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006io-NL; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00FdcR-3y; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:51:00 +0100
Message-Id: <20220308115103.3664883-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308115103.3664883-1-s.hauer@pengutronix.de>
References: <20220308115103.3664883-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035114_317863_D88567EC 
X-CRM114-Status: GOOD (  22.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] of: rename of_find_node_by_name() to
 of_find_node_by_name_address()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_find_node_by_name() has the same name as the corresponding kernel
function but a different semantics. A node name is comprised of the
nodes name and a unit address, separated with '@'. Linux
of_find_node_by_name() matches only the name before the '@' whereas the
barebox function compares the full name.
As several callers depend on the barebox semantics we can't just change
the semantics, so rename the barebox function to
of_find_node_by_name_address().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/ccxmx51.c         |  2 +-
 arch/arm/boards/gateworks-ventana/board.c |  4 ++--
 arch/arm/boards/phytec-som-imx6/board.c   |  2 +-
 arch/arm/boards/protonic-imx6/board.c     |  2 +-
 arch/arm/boards/skov-imx6/board.c         |  2 +-
 arch/arm/boards/zii-common/pn-fixup.c     |  2 +-
 arch/arm/boards/zii-imx51-rdu1/board.c    |  2 +-
 arch/arm/boards/zii-imx6q-rdu2/board.c    | 12 ++++++------
 arch/arm/boards/zii-imx8mq-dev/board.c    |  2 +-
 arch/arm/mach-imx/imx6.c                  |  2 +-
 arch/arm/mach-stm32mp/init.c              |  2 +-
 arch/riscv/cpu/core.c                     |  2 +-
 commands/of_display_timings.c             |  4 ++--
 common/oftree.c                           |  4 ++--
 drivers/aiodev/qoriq_thermal.c            |  2 +-
 drivers/net/cpsw.c                        |  2 +-
 drivers/net/phy/mv88e6xxx/port.c          |  2 +-
 drivers/of/base.c                         |  6 +++---
 drivers/of/fdt.c                          |  2 +-
 drivers/of/platform.c                     |  2 +-
 drivers/of/resolver.c                     |  4 ++--
 include/of.h                              | 16 ++++++++--------
 22 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 09437b047f..dfc26cd835 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -174,7 +174,7 @@ static void ccxmx51_power_init(struct mc13xxx *mc13xxx)
 
 static void ccxmx51_disable_device(struct device_node *root, const char *label)
 {
-	struct device_node *np = of_find_node_by_name(root, label);
+	struct device_node *np = of_find_node_by_name_address(root, label);
 	if (np)
 		of_device_disable(np);
 }
diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index 163f8338c6..c4c6960192 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -19,9 +19,9 @@ static int gw54xx_wdog_of_fixup(struct device_node *root, void *context)
 	struct device_node *np;
 
 	/* switch to the watchdog with internal reset capabilities */
-	np = of_find_node_by_name(root, "wdog@020c0000");
+	np = of_find_node_by_name_address(root, "wdog@020c0000");
 	of_device_disable(np);
-	np = of_find_node_by_name(root, "wdog@020bc000");
+	np = of_find_node_by_name_address(root, "wdog@020bc000");
 	of_device_enable(np);
 
 	return 0;
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 1e515a093a..c540aaeb3f 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -107,7 +107,7 @@ static int phycore_da9062_setup_buck_mode(void)
 	unsigned char value;
 	int ret;
 
-	pmic_np = of_find_node_by_name(NULL, "pmic@58");
+	pmic_np = of_find_node_by_name_address(NULL, "pmic@58");
 	if (!pmic_np)
 		return -ENODEV;
 
diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9b2a00c6c3..adde1be8d9 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -736,7 +736,7 @@ static int prt_imx6_get_id(struct prt_imx6_priv *priv)
 	struct device_node *gpio_np = NULL;
 	int ret;
 
-	gpio_np = of_find_node_by_name(NULL, "gpio@20a0000");
+	gpio_np = of_find_node_by_name_address(NULL, "gpio@20a0000");
 	if (!gpio_np)
 		return -ENODEV;
 
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index cd7b8e208d..7ceb3590c6 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -568,7 +568,7 @@ static void skov_init_board(const struct board_description *variant)
 			pr_err("Cannot find \"fsl,imx6q-ldb\" node\n");
 
 		/* ... as well as its channel 0 */
-		np = of_find_node_by_name(np, "lvds-channel@0");
+		np = of_find_node_by_name_address(np, "lvds-channel@0");
 		if (np)
 			of_device_enable(np);
 		else
diff --git a/arch/arm/boards/zii-common/pn-fixup.c b/arch/arm/boards/zii-common/pn-fixup.c
index 80785285b7..3c69f1a022 100644
--- a/arch/arm/boards/zii-common/pn-fixup.c
+++ b/arch/arm/boards/zii-common/pn-fixup.c
@@ -11,7 +11,7 @@ char *zii_read_part_number(const char *cell_name, size_t cell_size)
 {
 	struct device_node *np;
 
-	np = of_find_node_by_name(NULL, "device-info");
+	np = of_find_node_by_name_address(NULL, "device-info");
 	if (!np) {
 		pr_warn("No device information found\n");
 		return ERR_PTR(-ENOENT);
diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index 8fdcb76260..42c99ecc1e 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -99,7 +99,7 @@ static int zii_rdu1_load_config(void)
 			file = "shadow copy in RAVE SP EEPROM";
 
 			root = of_get_root_node();
-			np   = of_find_node_by_name(root, "eeprom@a4");
+			np   = of_find_node_by_name_address(root, "eeprom@a4");
 			if (!np)
 				return -ENODEV;
 
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index b915a05dd2..f57827cd13 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -199,19 +199,19 @@ static int rdu2_fixup_dsa(struct device_node *root, void *context)
 	if (!switch_np)
 		return -ENODEV;
 
-	np = of_find_node_by_name(switch_np, "port@2");
+	np = of_find_node_by_name_address(switch_np, "port@2");
 	if (!np)
 		return -ENODEV;
 
 	of_delete_node(np);
 
-	np = of_find_node_by_name(root, "i210@0");
+	np = of_find_node_by_name_address(root, "i210@0");
 	if (!np)
 		return -ENODEV;
 
 	i210_handle = of_node_create_phandle(np);
 
-	np = of_find_node_by_name(switch_np, "port@0");
+	np = of_find_node_by_name_address(switch_np, "port@0");
 	if (!np)
 		return -ENODEV;
 
@@ -265,7 +265,7 @@ static int rdu2_fixup_lvds(struct device_node *root,
 	/*
 	 * LVDS panels need the correct timings
 	 */
-	np = of_find_node_by_name(root, "panel");
+	np = of_find_node_by_name_address(root, "panel");
 	if (!np)
 		return -ENODEV;
 
@@ -280,7 +280,7 @@ static int rdu2_fixup_lvds(struct device_node *root,
 		 * Delete all mode entries, which aren't suited for the
 		 * current display
 		 */
-		np = of_find_node_by_name(np, "display-timings");
+		np = of_find_node_by_name_address(np, "display-timings");
 		if (!np)
 			return -ENODEV;
 
@@ -305,7 +305,7 @@ static int rdu2_fixup_lvds(struct device_node *root,
 	if (fixup->type == IT_DUAL_LVDS)
 		of_set_property(np, "fsl,dual-channel", NULL, 0, 1);
 
-	np = of_find_node_by_name(np, "lvds-channel@0");
+	np = of_find_node_by_name_address(np, "lvds-channel@0");
 	if (!np)
 		return -ENODEV;
 
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 4ad09663ac..02e257f35f 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -106,7 +106,7 @@ static int zii_imx8mq_dev_fixup_deb_internal(void)
 
 	unregister_device(dev);
 
-	np = of_find_node_by_name(NULL, "i210@0");
+	np = of_find_node_by_name_address(NULL, "i210@0");
 	if (!np)
 		return -ENODEV;
 
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 3ee42fd966..92d3e14ba1 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -363,7 +363,7 @@ static int imx6_fixup_cpus(struct device_node *root, void *context)
 	unsigned long scu_phys_base;
 	unsigned int max_core_index;
 
-	cpus_node = of_find_node_by_name(root, "cpus");
+	cpus_node = of_find_node_by_name_address(root, "cpus");
 	if (!cpus_node)
 		return 0;
 
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 01961ae456..bcd04b210a 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -140,7 +140,7 @@ static int stm32mp15_fixup_cpus(struct device_node *root, void *_ctx)
 	unsigned long ctx = (unsigned long)_ctx;
 	struct device_node *cpus_node, *np, *tmp;
 
-	cpus_node = of_find_node_by_name(root, "cpus");
+	cpus_node = of_find_node_by_name_address(root, "cpus");
 	if (!cpus_node)
 		return 0;
 
diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
index 1d5902a51f..c075301b1b 100644
--- a/arch/riscv/cpu/core.c
+++ b/arch/riscv/cpu/core.c
@@ -43,7 +43,7 @@ static int riscv_fixup_cpus(struct device_node *root, void *context)
 {
 	struct device_node *cpus_node, *np, *tmp;
 
-	cpus_node = of_find_node_by_name(root, "cpus");
+	cpus_node = of_find_node_by_name_address(root, "cpus");
 	if (!cpus_node)
 		return 0;
 
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index 4e5ec223b7..aab57b17d6 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -98,7 +98,7 @@ static int do_of_display_timings(int argc, char *argv[])
 		int found = 0;
 		const char *node = "display-timings";
 
-		for_each_node_by_name_from(display, root, node) {
+		for_each_node_by_name_address_from(display, root, node) {
 			for_each_child_of_node(display, timings) {
 				printf("%s\n", timings->full_name);
 				found = 1;
@@ -113,7 +113,7 @@ static int do_of_display_timings(int argc, char *argv[])
 		int found = 0;
 		const char *node = "display-timings";
 
-		for_each_node_by_name_from(display, root, node) {
+		for_each_node_by_name_address_from(display, root, node) {
 			timings = of_parse_phandle_from(display, root,
 							"native-mode", 0);
 			if (!timings)
diff --git a/common/oftree.c b/common/oftree.c
index 0738ab6e9e..bce0ff09d6 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -405,7 +405,7 @@ int of_autoenable_device_by_path(char *path)
 	struct device_node *node;
 	int ret;
 
-	node = of_find_node_by_name(NULL, path);
+	node = of_find_node_by_name_address(NULL, path);
 	if (!node)
 		node = of_find_node_by_path(path);
 
@@ -442,7 +442,7 @@ int of_autoenable_i2c_by_component(char *path)
 	if (!IS_ENABLED(CONFIG_I2C))
 		return -ENODEV;
 
-	node = of_find_node_by_name(NULL, path);
+	node = of_find_node_by_name_address(NULL, path);
 	if (!node)
 		node = of_find_node_by_path(path);
 	if (!node)
diff --git a/drivers/aiodev/qoriq_thermal.c b/drivers/aiodev/qoriq_thermal.c
index d62048ef13..1acb06a9de 100644
--- a/drivers/aiodev/qoriq_thermal.c
+++ b/drivers/aiodev/qoriq_thermal.c
@@ -118,7 +118,7 @@ static int qoriq_tmu_get_sensor_id(void)
 	struct of_phandle_args sensor_specs;
 	struct device_node *np, *sensor_np;
 
-	np = of_find_node_by_name(NULL, "thermal-zones");
+	np = of_find_node_by_name_address(NULL, "thermal-zones");
 	if (!np)
 		return -ENODEV;
 
diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 6725c7b9bd..748aa861f1 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1224,7 +1224,7 @@ static void cpsw_add_slave(struct cpsw_slave *slave, struct device_node *child,
 	uint32_t phy_id[2] = {-1, -1};
 	int ret;
 
-	if (!of_find_node_by_name(child, "fixed-link")) {
+	if (!of_find_node_by_name_address(child, "fixed-link")) {
 		ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
 		if (!ret)
 			dev_warn(slave->cpsw->dev, "phy_id is deprecated, use phy-handle\n");
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index ba2b03e18d..79694e5237 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -558,7 +558,7 @@ int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
 	struct device_node *port_nodes[DSA_MAX_PORTS] = { NULL };
 	int err, i;
 
-	switch_node = of_find_node_by_name(np, "ports");
+	switch_node = of_find_node_by_name_address(np, "ports");
 	if (!switch_node)
 		return -EINVAL;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 723bf2132d..d5cbb12a29 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -538,7 +538,7 @@ int of_device_is_compatible(const struct device_node *device,
 EXPORT_SYMBOL(of_device_is_compatible);
 
 /**
- *	of_find_node_by_name - Find a node by its "name" property
+ *	of_find_node_by_name_address - Find a node by its full name
  *	@from:	The node to start searching from or NULL, the node
  *		you pass will not be searched, only the next one
  *		will; typically, you pass what the previous call
@@ -547,7 +547,7 @@ EXPORT_SYMBOL(of_device_is_compatible);
  *
  *	Returns a pointer to the node found or NULL.
  */
-struct device_node *of_find_node_by_name(struct device_node *from,
+struct device_node *of_find_node_by_name_address(struct device_node *from,
 	const char *name)
 {
 	struct device_node *np;
@@ -558,7 +558,7 @@ struct device_node *of_find_node_by_name(struct device_node *from,
 
 	return NULL;
 }
-EXPORT_SYMBOL(of_find_node_by_name);
+EXPORT_SYMBOL(of_find_node_by_name_address);
 
 /**
  *	of_find_node_by_type - Find a node by its "device_type" property
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 770126c78e..5ccbd1bb69 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -486,7 +486,7 @@ void *of_flatten_dtb(struct device_node *node)
 	if (ret)
 		goto out_free;
 
-	memreserve = of_find_node_by_name(node, "memreserve");
+	memreserve = of_find_node_by_name_address(node, "memreserve");
 	if (memreserve) {
 		const void *entries = of_get_property(memreserve, "reg", &len);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 5a05001213..f22c5f2e76 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -202,7 +202,7 @@ struct device_d *of_device_enable_and_register_by_name(const char *name)
 {
 	struct device_node *node;
 
-	node = of_find_node_by_name(NULL, name);
+	node = of_find_node_by_name_address(NULL, name);
 	if (!node)
 		node = of_find_node_by_path(name);
 
diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
index 242775099e..2457ae96a4 100644
--- a/drivers/of/resolver.c
+++ b/drivers/of/resolver.c
@@ -214,7 +214,7 @@ struct device_node *of_resolve_phandles(struct device_node *root,
 	 * to a phandle defined in the overlay. We must update the references,
 	 * because we just adjusted the definitions.
 	 */
-	local_fixups = of_find_node_by_name(result, "__local_fixups__");
+	local_fixups = of_find_node_by_name_address(result, "__local_fixups__");
 	err = adjust_local_phandle_references(local_fixups, result, delta);
 	if (err) {
 		pr_err("failed to fix phandles in overlay\n");
@@ -227,7 +227,7 @@ struct device_node *of_resolve_phandles(struct device_node *root,
 	 * the base device tree. We must update the references, because they
 	 * are otherwise undefined.
 	 */
-	overlay_fixups = of_find_node_by_name(result, "__fixups__");
+	overlay_fixups = of_find_node_by_name_address(result, "__fixups__");
 	if (!overlay_fixups) {
 		pr_debug("overlay does not contain phandles to base devicetree\n");
 		goto out;
diff --git a/include/of.h b/include/of.h
index b449d10ec7..2c1a3f5510 100644
--- a/include/of.h
+++ b/include/of.h
@@ -136,7 +136,7 @@ extern struct property *of_new_property_const(struct device_node *node,
 					      const void *data, int len);
 extern void of_delete_property(struct property *pp);
 
-extern struct device_node *of_find_node_by_name(struct device_node *from,
+extern struct device_node *of_find_node_by_name_address(struct device_node *from,
 	const char *name);
 extern struct device_node *of_find_node_by_path_from(struct device_node *from,
 						const char *path);
@@ -653,7 +653,7 @@ static inline struct device_node *of_find_node_by_path(const char *path)
 	return NULL;
 }
 
-static inline struct device_node *of_find_node_by_name(struct device_node *from,
+static inline struct device_node *of_find_node_by_name_address(struct device_node *from,
 	const char *name)
 {
 	return NULL;
@@ -824,15 +824,15 @@ static inline int of_autoenable_i2c_by_component(char *path)
 
 #define for_each_property_of_node(dn, pp) \
 	list_for_each_entry(pp, &dn->properties, list)
-#define for_each_node_by_name(dn, name) \
-	for (dn = of_find_node_by_name(NULL, name); dn; \
-	     dn = of_find_node_by_name(dn, name))
+#define for_each_node_by_name_address(dn, name) \
+	for (dn = of_find_node_by_name_address(NULL, name); dn; \
+	     dn = of_find_node_by_name_address(dn, name))
 #define for_each_node_by_type(dn, type) \
 	for (dn = of_find_node_by_type(NULL, type); dn; \
 	     dn = of_find_node_by_type(dn, type))
-#define for_each_node_by_name_from(dn, root, name) \
-	for (dn = of_find_node_by_name(root, name); dn; \
-	     dn = of_find_node_by_name(dn, name))
+#define for_each_node_by_name_address_from(dn, root, name) \
+	for (dn = of_find_node_by_name_address(root, name); dn; \
+	     dn = of_find_node_by_name_address(dn, name))
 /* Iterate over compatible nodes starting from given root */
 #define for_each_compatible_node_from(dn, root, type, compatible) \
 	for (dn = of_find_compatible_node(root, type, compatible); dn; \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

