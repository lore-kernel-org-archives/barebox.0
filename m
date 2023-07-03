Delivery-date: Mon, 03 Jul 2023 12:43:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGH1U-00DPh7-CA
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 12:43:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGH1Q-0008Ek-7G
	for lore@pengutronix.de; Mon, 03 Jul 2023 12:43:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=woKnKJ5eTBJgUX/FIsJYxmeGbFkrunS2FtdmaXLR2IM=; b=4dYWomsIVDrlItPfU36aev1B20
	r+hMBISnjZ2EFrAgkEjDF6jl/VW694DQd+S3RmLkWIx5ae7uIwXc3zhR+ZjRZtncNNJo0uGLSBzpe
	Z/Non5RscVCMvMrC4K3UA6TpWdGCt0oM2D0SYhSEvc3HZniWUN3fDC90gbyl2pX/t9coCnfQjgjtw
	DISqFN1YHOUURRms0nv7hZvWZOz/02e5CvLeGeuWLE5CVx5q5Pn2AshJdwIBn/csRy/aFo1YAShj7
	dUyiHK7eDUZjR72eIgHuH6aMkDInTVRP13d/SjrHqqzD685GxPN+TB9OdFiKlyLH0Czm5ceIxkzuu
	XzN/+cPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGzt-00AHOi-0w;
	Mon, 03 Jul 2023 10:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGGzm-00AHNn-10
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 10:41:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGGzk-00088b-Ao; Mon, 03 Jul 2023 12:41:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGGzj-00BmXX-M8; Mon, 03 Jul 2023 12:41:23 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGGzi-003vi3-Tz; Mon, 03 Jul 2023 12:41:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  3 Jul 2023 12:41:22 +0200
Message-Id: <20230703104122.936811-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_034126_864753_FF24D7F5 
X-CRM114-Status: GOOD (  17.86  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] treewide: Print device nodes with %pOF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have the %pOF format specifier for printing device nodes. Use it
where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c |  4 +--
 arch/arm/boards/skov-imx6/board.c         |  4 +--
 arch/arm/cpu/psci-of.c                    |  2 +-
 commands/devinfo.c                        |  2 +-
 commands/of_display_timings.c             |  4 +--
 commands/of_dump.c                        |  2 +-
 common/complete.c                         |  2 +-
 common/image-fit.c                        | 30 ++++++++++------------
 common/state/state.c                      |  8 +++---
 crypto/rsa.c                              |  4 +--
 drivers/base/featctrl.c                   |  7 +++--
 drivers/bus/imx-weim.c                    |  7 +++--
 drivers/bus/omap-gpmc.c                   |  9 +++----
 drivers/bus/ti-sysc.c                     |  4 +--
 drivers/clk/clk-conf.c                    | 16 ++++++------
 drivers/clk/clk-qoric.c                   |  6 ++---
 drivers/clk/clk.c                         |  2 +-
 drivers/clk/clkdev.c                      |  4 +--
 drivers/gpio/gpio-vf610.c                 |  4 +--
 drivers/i2c/i2c.c                         | 11 ++++----
 drivers/input/matrix-keymap.c             |  8 +++---
 drivers/led/led-gpio.c                    |  4 +--
 drivers/mci/atmel_mci.c                   |  4 +--
 drivers/mci/mci-core.c                    |  4 +--
 drivers/mtd/core.c                        |  4 +--
 drivers/mtd/nand/nand_denali_dt.c         |  6 ++---
 drivers/net/fsl-fman.c                    |  4 +--
 drivers/net/phy/mdio_bus.c                |  8 +++---
 drivers/net/phy/mv88e6xxx/port.c          |  4 +--
 drivers/nvmem/core.c                      |  3 +--
 drivers/of/address.c                      | 16 +++++-------
 drivers/of/base.c                         | 31 ++++++++++-------------
 drivers/of/of_gpio.c                      |  4 +--
 drivers/of/of_path.c                      | 14 +++++-----
 drivers/of/overlay.c                      |  2 +-
 drivers/of/partition.c                    |  6 ++---
 drivers/of/platform.c                     | 13 +++++-----
 drivers/pci/pci.c                         |  4 +--
 drivers/phy/phy-core.c                    |  4 +--
 drivers/pinctrl/imx-iomux-v1.c            |  6 ++---
 drivers/pinctrl/imx-iomux-v3.c            |  5 ++--
 drivers/pinctrl/mvebu/common.c            |  3 +--
 drivers/pinctrl/pinctrl-at91-pio4.c       |  3 +--
 drivers/pinctrl/pinctrl-mxs.c             |  6 ++---
 drivers/pinctrl/pinctrl-single.c          |  5 ++--
 drivers/pinctrl/pinctrl-stm32.c           | 15 +++++------
 drivers/pinctrl/pinctrl-vf610.c           |  3 +--
 drivers/pinctrl/pinctrl.c                 |  4 +--
 drivers/regulator/core.c                  |  4 +--
 drivers/regulator/scmi-regulator.c        | 12 ++++-----
 drivers/video/imx-ipu-v3/ipufb.c          |  4 +--
 drivers/video/of_display_timing.c         | 31 ++++++++++-------------
 drivers/video/stm32_ltdc.c                |  2 +-
 drivers/video/vpl.c                       | 16 ++++++------
 54 files changed, 183 insertions(+), 211 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 319a3d85ea..56e7eebd61 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -219,8 +219,8 @@ static char *of_read_vc_string(struct device_node *node,
 
 	str = of_get_property(node, prop_name, &len);
 	if (!str) {
-		pr_warn("no property '%s' found in vc fdt's '%s' node\n",
-			prop_name, node->full_name);
+		pr_warn("no property '%s' found in vc fdt's '%pOF' node\n",
+			prop_name, node);
 		return NULL;
 	}
 	return xstrndup(str, len);
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 8f941623cb..b3f170cfdf 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -46,8 +46,8 @@ static int eth_of_fixup_node(struct device_node *root, const char *node_path,
 
 	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
 	if (ret)
-		dev_err(skov_priv->dev, "Setting mac-address property of %s failed with: %s.\n",
-		        node->full_name, strerror(-ret));
+		dev_err(skov_priv->dev, "Setting mac-address property of %pOF failed with: %s.\n",
+		        node, strerror(-ret));
 
 	return ret;
 }
diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
index be16b08617..1b6371ddd6 100644
--- a/arch/arm/cpu/psci-of.c
+++ b/arch/arm/cpu/psci-of.c
@@ -40,7 +40,7 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version,
 		if (!cpu)
 			break;
 		of_property_write_string(cpu, "enable-method", "psci");
-		pr_debug("Fixed %s\n", cpu->full_name);
+		pr_debug("Fixed %pOF\n", cpu);
 	}
 
 	ret = of_property_write_string(psci, "compatible", compat);
diff --git a/commands/devinfo.c b/commands/devinfo.c
index 2487786c71..d89d8c2f0a 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -103,7 +103,7 @@ static int do_devinfo(int argc, char *argv[])
 		}
 #ifdef CONFIG_OFDEVICE
 		if (dev->of_node) {
-			printf("Device node: %s\n", dev->of_node->full_name);
+			printf("Device node: %pOF\n", dev->of_node);
 			of_print_nodes(dev->of_node, 0, ~0);
 		}
 #endif
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index 1fb0c4eb00..4cc79ec88d 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -82,7 +82,7 @@ static int do_of_display_timings(int argc, char *argv[])
 
 		for_each_node_by_name_address_from(display, root, node) {
 			for_each_child_of_node(display, timings) {
-				printf("%s\n", timings->full_name);
+				printf("%pOF\n", timings);
 				found = 1;
 			}
 		}
@@ -101,7 +101,7 @@ static int do_of_display_timings(int argc, char *argv[])
 			if (!timings)
 				continue;
 
-			printf("%s\n", timings->full_name);
+			printf("%pOF\n", timings);
 			found = 1;
 		}
 
diff --git a/commands/of_dump.c b/commands/of_dump.c
index c77dc27c99..2508d4ce11 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -21,7 +21,7 @@ static void of_print_nodenames(struct device_node *node)
 {
 	struct device_node *n;
 
-	printf("%s\n", node->full_name);
+	printf("%pOF\n", node);
 
 	list_for_each_entry(n, &node->children, parent_list) {
 		if (ctrlc())
diff --git a/common/complete.c b/common/complete.c
index 327e82dd0a..e9f3f8ee03 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -230,7 +230,7 @@ int devicetree_nodepath_complete(struct string_list *sl, char *instr)
 	for_each_child_of_node(node, child) {
 		if (strncmp(base, child->name, strlen(base)))
 			continue;
-		string_list_add_asprintf(sl, "%s/", child->full_name);
+		string_list_add_asprintf(sl, "%pOF/", child);
 	}
 out:
 	free(path);
diff --git a/common/image-fit.c b/common/image-fit.c
index 9bea62bb34..93fe5eca8b 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -264,7 +264,7 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 
 	sig_value = of_get_property(sig_node, "value", &sig_len);
 	if (!sig_value) {
-		pr_err("signature value not found in %s\n", sig_node->full_name);
+		pr_err("signature value not found in %pOF\n", sig_node);
 		return -EINVAL;
 	}
 
@@ -310,12 +310,12 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 
 	if (of_property_read_u32_index(sig_node, "hashed-strings", 0,
 	    &hashed_strings_start)) {
-		pr_err("hashed-strings start not found in %s\n", sig_node->full_name);
+		pr_err("hashed-strings start not found in %pOF\n", sig_node);
 		return -EINVAL;
 	}
 	if (of_property_read_u32_index(sig_node, "hashed-strings", 1,
 	    &hashed_strings_size)) {
-		pr_err("hashed-strings size not found in %s\n", sig_node->full_name);
+		pr_err("hashed-strings size not found in %pOF\n", sig_node);
 		return -EINVAL;
 	}
 
@@ -323,7 +323,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 	string_list_init(&exc_props);
 
 	if (of_read_string_list(sig_node, "hashed-nodes", &inc_nodes)) {
-		pr_err("hashed-nodes property not found in %s\n", sig_node->full_name);
+		pr_err("hashed-nodes property not found in %pOF\n", sig_node);
 		ret = -EINVAL;
 		goto out_sl;
 	}
@@ -381,30 +381,29 @@ static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
 		hash = of_get_child_by_name(image, "hash@1");
 	if (!hash) {
 		if (ret)
-			pr_err("image %s does not have hashes\n",
-			       image->full_name);
+			pr_err("image %pOF does not have hashes\n", image);
 		return ret;
 	}
 
 	value_read = of_get_property(hash, "value", &hash_len);
 	if (!value_read) {
-		pr_err("%s: \"value\" property not found\n", hash->full_name);
+		pr_err("%pOF: \"value\" property not found\n", hash);
 		return -EINVAL;
 	}
 
 	if (of_property_read_string(hash, "algo", &algo)) {
-		pr_err("%s: \"algo\" property not found\n", hash->full_name);
+		pr_err("%pOF: \"algo\" property not found\n", hash);
 		return -EINVAL;
 	}
 
 	d = digest_alloc(algo);
 	if (!d) {
-		pr_err("%s: unsupported algo %s\n", hash->full_name, algo);
+		pr_err("%pOF: unsupported algo %s\n", hash, algo);
 		return -EINVAL;
 	}
 
 	if (hash_len != digest_length(d)) {
-		pr_err("%s: invalid hash length %d\n", hash->full_name, hash_len);
+		pr_err("%pOF: invalid hash length %d\n", hash, hash_len);
 		ret = -EINVAL;
 		goto err_digest_free;
 	}
@@ -413,10 +412,10 @@ static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
 	digest_update(d, data, data_len);
 
 	if (digest_verify(d, value_read)) {
-		pr_info("%s: hash BAD\n", hash->full_name);
+		pr_info("%pOF: hash BAD\n", hash);
 		ret =  -EBADMSG;
 	} else {
-		pr_info("%s: hash OK\n", hash->full_name);
+		pr_info("%pOF: hash OK\n", hash);
 		ret = 0;
 	}
 
@@ -453,7 +452,7 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	if (!sig_node)
 		sig_node = of_get_child_by_name(image, "signature@1");
 	if (!sig_node) {
-		pr_err("Image %s has no signature\n", image->full_name);
+		pr_err("Image %pOF has no signature\n", image);
 		return ret;
 	}
 
@@ -602,7 +601,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
 
 	of_property_read_string(image, "type", &type);
 	if (!type) {
-		pr_err("No \"type\" property found in %s\n", image->full_name);
+		pr_err("No \"type\" property found in %pOF\n", image);
 		return -EINVAL;
 	}
 
@@ -678,8 +677,7 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	}
 
 	if (ret < 0) {
-		pr_err("configuration '%s' does not have a signature\n",
-		       conf_node->full_name);
+		pr_err("configuration '%pOF' does not have a signature\n", conf_node);
 		return ret;
 	}
 
diff --git a/common/state/state.c b/common/state/state.c
index 9940a91fe3..219309d715 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -621,7 +621,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 
 	alias = of_alias_get(node);
 	if (!alias) {
-		pr_err("State node %s does not have an alias in the /aliases/ node\n", node->full_name);
+		pr_err("State node %pOF does not have an alias in the /aliases/ node\n", node);
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -653,13 +653,13 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 			goto out_release_state;
 		}
 
-		pr_debug("%s: backend GPT partition looked up via PartitionTypeGUID\n",
-			 node->full_name);
+		pr_debug("%pOF: backend GPT partition looked up via PartitionTypeGUID\n",
+			 node);
 	}
 
 	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
 
-	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
+	pr_debug("%pOF: backend resolved to %s\n", node, state->backend_path);
 
 	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
 
diff --git a/crypto/rsa.c b/crypto/rsa.c
index fc21efdb6d..b798badce0 100644
--- a/crypto/rsa.c
+++ b/crypto/rsa.c
@@ -507,8 +507,8 @@ static void rsa_init_keys_of(void)
 	for_each_child_of_node(sigs, sig) {
 		key = rsa_of_read_key(sig);
 		if (IS_ERR(key)) {
-			pr_err("Cannot read rsa key from %s: %pe\n",
-			       sig->full_name, key);
+			pr_err("Cannot read rsa key from %pOF: %pe\n",
+			       sig, key);
 			continue;
 		}
 
diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
index 0b81f80105..153720e5ee 100644
--- a/drivers/base/featctrl.c
+++ b/drivers/base/featctrl.c
@@ -107,7 +107,7 @@ int of_feature_controller_check(struct device_node *np)
 
 		ret = featctrl->check(featctrl, gateid);
 
-		dev_dbg(featctrl->dev, "checking %s: %d\n", np->full_name, ret);
+		dev_dbg(featctrl->dev, "checking %pOF: %d\n", np, ret);
 
 		if (ret == FEATCTRL_OKAY)
 			return FEATCTRL_OKAY;
@@ -135,12 +135,11 @@ static int of_featctrl_fixup(struct device_node *root, void *context)
 
 		dstnp = of_get_node_by_reproducible_name(root, srcnp);
 		if (!dstnp) {
-			pr_debug("gated node %s not in fixup DT\n",
-				 srcnp->full_name);
+			pr_debug("gated node %pOF not in fixup DT\n", srcnp);
 			continue;
 		}
 
-		pr_debug("fixing up gating of node %s\n", dstnp->full_name);
+		pr_debug("fixing up gating of node %pOF\n", dstnp);
 		/* Convention is deleting non-existing CPUs, not disable them. */
 		if (of_property_match_string(srcnp, "device_type", "cpu") >= 0)
 			of_delete_node(dstnp);
diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index a85395ac91..4907577164 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -113,16 +113,15 @@ static int weim_parse_dt(struct imx_weim *weim)
 
 		ret = weim_timing_setup(weim, child);
 		if (ret) {
-			dev_err(weim->dev, "%s set timing failed.\n",
-				child->full_name);
+			dev_err(weim->dev, "%pOF set timing failed.\n", child);
 			return ret;
 		}
 	}
 
 	ret = of_platform_populate(weim->dev->of_node, NULL, weim->dev);
 	if (ret)
-		dev_err(weim->dev, "%s fail to create devices.\n",
-			weim->dev->of_node->full_name);
+		dev_err(weim->dev, "%pOF failed to create devices.\n",
+			weim->dev->of_node);
 	return ret;
 }
 
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index b52333e245..f720933a0a 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -464,8 +464,7 @@ static int gpmc_probe_nand_child(struct device *dev,
 	int ret, i;
 
 	if (of_property_read_u32(child, "reg", &val) < 0) {
-		dev_err(dev, "%s has no 'reg' property\n",
-			child->full_name);
+		dev_err(dev, "%pOF has no 'reg' property\n", child);
 		return -ENODEV;
 	}
 
@@ -548,14 +547,12 @@ static int gpmc_probe_generic_child(struct device *dev,
 	resource_size_t size;
 
 	if (of_property_read_u32(child, "reg", &cs) < 0) {
-		dev_err(dev, "%s has no 'reg' property\n",
-			child->full_name);
+		dev_err(dev, "%pOF has no 'reg' property\n", child);
 		return -ENODEV;
 	}
 
 	if (of_address_to_resource(child, 0, &res) < 0) {
-		dev_err(dev, "%s has malformed 'reg' property\n",
-			child->full_name);
+		dev_err(dev, "%pOF has malformed 'reg' property\n", child);
 		return -ENODEV;
 	}
 
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
index 3b64e29db7..967c9d1f57 100644
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -15,8 +15,8 @@ static int ti_sysc_probe(struct device *dev)
 	ret = of_platform_populate(dev->of_node,
 					of_default_bus_match_table, dev);
 	if (ret)
-		dev_err(dev, "%s fail to create devices.\n",
-					dev->of_node->full_name);
+		dev_err(dev, "%pOF failed to create devices.\n",
+					dev->of_node);
 	return ret;
 };
 
diff --git a/drivers/clk/clk-conf.c b/drivers/clk/clk-conf.c
index 0bd99993cc..ca596f2cf3 100644
--- a/drivers/clk/clk-conf.c
+++ b/drivers/clk/clk-conf.c
@@ -22,8 +22,8 @@ static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 	num_parents = of_count_phandle_with_args(node, "assigned-clock-parents",
 						 "#clock-cells");
 	if (num_parents == -EINVAL)
-		pr_err("clk: invalid value of clock-parents property at %s\n",
-		       node->full_name);
+		pr_err("clk: invalid value of clock-parents property at %pOF\n",
+		       node);
 
 	for (index = 0; index < num_parents; index++) {
 		rc = of_parse_phandle_with_args(node, "assigned-clock-parents",
@@ -39,8 +39,8 @@ static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 			return 0;
 		pclk = of_clk_get_from_provider(&clkspec);
 		if (IS_ERR(pclk)) {
-			pr_warn("clk: couldn't get parent clock %d for %s\n",
-				index, node->full_name);
+			pr_warn("clk: couldn't get parent clock %d for %pOF\n",
+				index, node);
 			return PTR_ERR(pclk);
 		}
 
@@ -54,8 +54,8 @@ static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 		}
 		clk = of_clk_get_from_provider(&clkspec);
 		if (IS_ERR(clk)) {
-			pr_warn("clk: couldn't get parent clock %d for %s\n",
-				index, node->full_name);
+			pr_warn("clk: couldn't get parent clock %d for %pOF\n",
+				index, node);
 			rc = PTR_ERR(clk);
 			goto err;
 		}
@@ -98,8 +98,8 @@ static int __set_clk_rates(struct device_node *node, bool clk_supplier)
 
 			clk = of_clk_get_from_provider(&clkspec);
 			if (IS_ERR(clk)) {
-				pr_warn("clk: couldn't get clock %d for %s\n",
-					index, node->full_name);
+				pr_warn("clk: couldn't get clock %d for %pOF\n",
+					index, node);
 				return PTR_ERR(clk);
 			}
 
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 667ce6df29..895810ccd1 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -581,7 +581,7 @@ static void __init clockgen_init(struct device_node *np,
 	clockgen.node = np;
 	clockgen.regs = of_iomap(np, 0);
 	if (!clockgen.regs) {
-		pr_err("of_iomap failed for %s\n", np->full_name);
+		pr_err("of_iomap failed for %pOF\n", np);
 		return;
 	}
 
@@ -605,8 +605,8 @@ static void __init clockgen_init(struct device_node *np,
 
 	ret = of_clk_add_provider(np, clockgen_clk_get, &clockgen);
 	if (ret) {
-		pr_err("Couldn't register clk provider for node %s: %d\n",
-		       np->full_name, ret);
+		pr_err("Couldn't register clk provider for node %pOF: %d\n",
+		       np, ret);
 	}
 
 	return;
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 7406dba260..5b85c375cf 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -636,7 +636,7 @@ static int __of_clk_add_provider(struct device_node *np,
 	cp->get_hw = clk_hw_src_get;
 
 	list_add(&cp->link, &of_clk_providers);
-	pr_debug("Added clock from %s\n", np ? np->full_name : "<none>");
+	pr_debug("Added clock from %pOF\n", np);
 
 	of_clk_set_defaults(np, true);
 
diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index c5f2135f54..68c6ac36a0 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -70,8 +70,8 @@ struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
 		if (!IS_ERR(clk))
 			break;
 		else if (name && index >= 0) {
-			pr_err("ERROR: could not get clock %s:%s(%i)\n",
-				np->full_name, name ? name : "", index);
+			pr_err("ERROR: could not get clock %pOF:%s(%i)\n",
+				np, name ? name : "", index);
 			return clk;
 		}
 
diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 314dac2326..43b2a18496 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -100,8 +100,8 @@ static int vf610_gpio_probe(struct device *dev)
 
 	gpio_ranges = of_get_property(dev->of_node, "gpio-ranges", &size);
 	if (!gpio_ranges) {
-		dev_err(dev, "Couldn't read 'gpio-ranges' propery of %s\n",
-			dev->of_node->full_name);
+		dev_err(dev, "Couldn't read 'gpio-ranges' propery of %pOF\n",
+			dev->of_node);
 		ret = -EINVAL;
 		goto free_port;
 	}
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 4c7b7008ce..300365bd1f 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -442,22 +442,21 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 
 		addr = of_get_property(n, "reg", &len);
 		if (!addr || (len < sizeof(int))) {
-			dev_err(&adap->dev, "of_i2c: invalid reg on %s\n",
-				n->full_name);
+			dev_err(&adap->dev, "of_i2c: invalid reg on %pOF\n", n);
 			continue;
 		}
 
 		info.addr = be32_to_cpup(addr);
 		if (info.addr > (1 << 10) - 1) {
-			dev_err(&adap->dev, "of_i2c: invalid addr=%x on %s\n",
-				info.addr, n->full_name);
+			dev_err(&adap->dev, "of_i2c: invalid addr=%x on %pOF\n",
+				info.addr, n);
 			continue;
 		}
 
 		result = i2c_new_device(adap, &info);
 		if (!result)
-			dev_err(&adap->dev, "of_i2c: Failure registering %s\n",
-			        n->full_name);
+			dev_err(&adap->dev, "of_i2c: Failure registering %pOF\n",
+			        n);
 	}
 }
 
diff --git a/drivers/input/matrix-keymap.c b/drivers/input/matrix-keymap.c
index f0c030fc3a..70551d4a2b 100644
--- a/drivers/input/matrix-keymap.c
+++ b/drivers/input/matrix-keymap.c
@@ -14,14 +14,14 @@ static int matrix_keypad_parse_of_keymap(struct device *dev,
 
 	prop = of_get_property(np, propname, &proplen);
 	if (!prop) {
-		dev_err(dev, "OF: %s property not defined in %s\n",
-			propname, np->full_name);
+		dev_err(dev, "OF: %s property not defined in %pOF\n",
+			propname, np);
 		return -ENOENT;
 	}
 
 	if (proplen % sizeof(u32)) {
-		dev_err(dev, "OF: Malformed keycode property %s in %s\n",
-			propname, np->full_name);
+		dev_err(dev, "OF: Malformed keycode property %s in %pOF\n",
+			propname, np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 0d405268af..4b282c7886 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -215,8 +215,8 @@ static int led_gpio_of_probe(struct device *dev)
 		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
 		if (gpio < 0) {
 			if (gpio != -EPROBE_DEFER)
-				dev_err(dev, "failed to get gpio for %s: %d\n",
-					child->full_name, gpio);
+				dev_err(dev, "failed to get gpio for %pOF: %d\n",
+					child, gpio);
 			ret = gpio;
 			goto err;
 		}
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 30738d6f00..431331ddc3 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -105,8 +105,8 @@ static int atmci_probe(struct device *hw_dev)
 
 		for_each_child_of_node(np, cnp) {
 			if (of_property_read_u32(cnp, "reg", &slot_id)) {
-				dev_warn(hw_dev, "reg property is missing for %s\n",
-					 cnp->full_name);
+				dev_warn(hw_dev, "reg property is missing for %pOF\n",
+					 cnp);
 				continue;
 			}
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 32edd53823..bc049c8029 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1927,8 +1927,8 @@ static int of_broken_cd_fixup(struct device_node *root, void *ctx)
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 	if (!np) {
-		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
-			 hw_dev->of_node->full_name);
+		dev_warn(hw_dev, "Cannot find nodepath %pOF, cannot fixup\n",
+			 hw_dev->of_node);
 		return -EINVAL;
 	}
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 513ae38ab8..ae6b0f9cd4 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -644,8 +644,8 @@ static int mtd_partition_fixup_generic(struct mtd_info *mtd, struct device_node
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 	if (!np) {
-		dev_err(&mtd->dev, "Cannot find nodepath %s, cannot fixup\n",
-				mtdnp->full_name);
+		dev_err(&mtd->dev, "Cannot find nodepath %pOF, cannot fixup\n",
+				mtdnp);
 		return -EINVAL;
 	}
 
diff --git a/drivers/mtd/nand/nand_denali_dt.c b/drivers/mtd/nand/nand_denali_dt.c
index 9ccf09f83b..cf902fe6c4 100644
--- a/drivers/mtd/nand/nand_denali_dt.c
+++ b/drivers/mtd/nand/nand_denali_dt.c
@@ -77,16 +77,14 @@ static int denali_partition_fixup(struct mtd_info *mtd, struct device_node *root
 	free(name);
 
 	if (np) {
-		dev_info(denali->dev, "Fixing up chip node %s\n",
-			 np->full_name);
+		dev_info(denali->dev, "Fixing up chip node %pOF\n", np);
 	} else {
 		name = of_get_reproducible_name(mtdnp->parent);
 		np = of_find_node_by_reproducible_name(root, name);
 		free(name);
 
 		if (np)
-			dev_info(denali->dev, "Fixing up controller node %s\n",
-				 np->full_name);
+			dev_info(denali->dev, "Fixing up controller node %pOF\n", np);
 	}
 
 	if (!np)
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 74320387b1..ff32fa8fc7 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1129,8 +1129,8 @@ static int fsl_fman_memac_port_bind(struct fm_eth *fm_eth, enum fman_port_type t
 
 	portnp = of_parse_phandle(macnp, "fsl,fman-ports", type);
 	if (!portnp) {
-		dev_err(fm_eth->dev, "of_parse_phandle(%s, fsl,fman-ports) failed\n",
-			macnp->full_name);
+		dev_err(fm_eth->dev, "of_parse_phandle(%pOF, fsl,fman-ports) failed\n",
+			macnp);
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 581d134649..332db6c05b 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -251,14 +251,14 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 	for_each_available_child_of_node(np, child) {
 		ret = of_property_read_u32(child, "reg", &addr);
 		if (ret) {
-			dev_dbg(&mdio->dev, "%s has invalid PHY address\n",
-				child->full_name);
+			dev_dbg(&mdio->dev, "%pOF has invalid PHY address\n",
+				child);
 			continue;
 		}
 
 		if (addr >= PHY_MAX_ADDR) {
-			dev_err(&mdio->dev, "%s PHY address %i is too large\n",
-				child->full_name, addr);
+			dev_err(&mdio->dev, "%pOF PHY address %i is too large\n",
+				child, addr);
 			continue;
 		}
 
diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
index 9e538b1718..29ea4ec882 100644
--- a/drivers/net/phy/mv88e6xxx/port.c
+++ b/drivers/net/phy/mv88e6xxx/port.c
@@ -580,8 +580,8 @@ int mv88e6xxx_port_probe(struct mv88e6xxx_chip *chip)
  		err = of_property_read_u32(port_node, "reg", &nr);
 		if (err) {
 			dev_err(dev,
-				"Error: Failed to find reg for child %s\n",
-				port_node->full_name);
+				"Error: Failed to find reg for child %pOF\n",
+				port_node);
 			continue;
 		}
 
diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 595514f2eb..67bb1d7993 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -409,8 +409,7 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 
 	addr = of_get_property(cell_np, "reg", &len);
 	if (!addr || (len < 2 * sizeof(u32))) {
-		dev_err(&nvmem->dev, "nvmem: invalid reg on %s\n",
-			cell_np->full_name);
+		dev_err(&nvmem->dev, "nvmem: invalid reg on %pOF\n", cell_np);
 		rval  = -EINVAL;
 		goto err_mem;
 	}
diff --git a/drivers/of/address.c b/drivers/of/address.c
index 65e67973ad..03868406e2 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -362,7 +362,7 @@ static u64 __of_translate_address(struct device_node *dev,
 	int na, ns, pna, pns;
 	u64 result = OF_BAD_ADDR;
 
-	pr_vdebug("OF: ** translation for device %s **\n", dev->full_name);
+	pr_vdebug("OF: ** translation for device %pOF **\n", dev);
 
 	/* Get parent & match bus type */
 	parent = of_get_parent(dev);
@@ -373,14 +373,13 @@ static u64 __of_translate_address(struct device_node *dev,
 	/* Count address cells & copy address locally */
 	bus->count_cells(dev, &na, &ns);
 	if (!OF_CHECK_COUNTS(na, ns)) {
-		pr_vdebug("prom_parse: Bad cell count for %s\n",
-			 dev->full_name);
+		pr_vdebug("prom_parse: Bad cell count for %pOF\n", dev);
 		return OF_BAD_ADDR;
 	}
 	memcpy(addr, in_addr, na * 4);
 
-	pr_vdebug("OF: bus is %s (na=%d, ns=%d) on %s\n",
-	    bus->name, na, ns, parent->full_name);
+	pr_vdebug("OF: bus is %s (na=%d, ns=%d) on %pOF\n",
+	    bus->name, na, ns, parent);
 	of_dump_addr("OF: translating address:", addr, na);
 
 	/* Translate */
@@ -400,13 +399,12 @@ static u64 __of_translate_address(struct device_node *dev,
 		pbus = of_match_bus(parent);
 		pbus->count_cells(dev, &pna, &pns);
 		if (!OF_CHECK_COUNTS(pna, pns)) {
-			printk(KERN_ERR "prom_parse: Bad cell count for %s\n",
-			       dev->full_name);
+			printk(KERN_ERR "prom_parse: Bad cell count for %pOF\n", dev);
 			break;
 		}
 
-		pr_vdebug("OF: parent bus is %s (na=%d, ns=%d) on %s\n",
-		    pbus->name, pna, pns, parent->full_name);
+		pr_vdebug("OF: parent bus is %s (na=%d, ns=%d) on %pOF\n",
+		    pbus->name, pna, pns, parent);
 
 		/* Apply bus translation */
 		if (of_translate_one(dev, bus, pbus, addr, na, ns, pna, rprop))
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4dc1c76b13..d3f83633f6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -154,8 +154,8 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 	strncpy(ap->stem, stem, stem_len);
 	ap->stem[stem_len] = 0;
 	list_add_tail(&ap->link, &aliases_lookup);
-	pr_debug("adding DT alias:%s: stem=%s id=%i node=%s\n",
-		 ap->alias, ap->stem, ap->id, np->full_name);
+	pr_debug("adding DT alias:%s: stem=%s id=%i node=%pOF\n",
+		 ap->alias, ap->stem, ap->id, np);
 }
 
 static struct device_node *of_alias_resolve(struct device_node *root, struct property *pp)
@@ -1474,15 +1474,13 @@ static int __of_parse_phandle_with_args(const struct device_node *np,
 			 */
 			node = of_find_node_by_phandle(phandle);
 			if (!node) {
-				pr_err("%s: could not find phandle\n",
-					 np->full_name);
+				pr_err("%pOF: could not find phandle\n", np);
 				goto err;
 			}
 			if (cells_name &&
 			    of_property_read_u32(node, cells_name, &count)) {
-				pr_err("%s: could not get %s for %s\n",
-					 np->full_name, cells_name,
-					 node->full_name);
+				pr_err("%pOF: could not get %s for %pOF\n",
+					 np, cells_name, node);
 				goto err;
 			}
 
@@ -1491,8 +1489,7 @@ static int __of_parse_phandle_with_args(const struct device_node *np,
 			 * remaining property data length
 			 */
 			if (list + count > list_end) {
-				pr_err("%s: arguments longer than property\n",
-					 np->full_name);
+				pr_err("%pOF: arguments longer than property\n", np);
 				goto err;
 			}
 		}
@@ -2211,8 +2208,8 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 
 	if (parent) {
 		node->name = xstrdup(name);
-		node->full_name = basprintf("%s/%s",
-					      node->parent->full_name, name);
+		node->full_name = basprintf("%pOF/%s",
+					      node->parent, name);
 		list_add(&node->list, &parent->list);
 	} else {
 		node->name = xstrdup("");
@@ -3036,8 +3033,8 @@ int of_graph_parse_endpoint(const struct device_node *node,
 	struct device_node *port_node = of_get_parent(node);
 
 	if (!port_node)
-		pr_warn("%s(): endpoint %s has no parent node\n",
-			__func__, node->full_name);
+		pr_warn("%s(): endpoint %pOF has no parent node\n",
+			__func__, node);
 
 	memset(endpoint, 0, sizeof(*endpoint));
 
@@ -3109,15 +3106,15 @@ struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
 
 		port = of_get_child_by_name(parent, "port");
 		if (!port) {
-			pr_err("%s(): no port node found in %s\n",
-			       __func__, parent->full_name);
+			pr_err("%s(): no port node found in %pOF\n",
+			       __func__, parent);
 			return NULL;
 		}
 	} else {
 		port = of_get_parent(prev);
 		if (!port) {
-			pr_warn("%s(): endpoint %s has no parent node\n",
-			      __func__, prev->full_name);
+			pr_warn("%s(): endpoint %pOF has no parent node\n",
+			      __func__, prev);
 			return NULL;
 		}
 	}
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 7a6435e229..25496a3cf1 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -30,8 +30,8 @@ static void of_gpio_flags_quirks(struct device_node *np,
 		 * be actively ignored.
 		 */
 		if ((*flags & OF_GPIO_ACTIVE_LOW) && !active_low) {
-			pr_warn("%s GPIO handle specifies active low - ignored\n",
-				np->full_name);
+			pr_warn("%pOF GPIO handle specifies active low - ignored\n",
+				np);
 			*flags &= ~OF_GPIO_ACTIVE_LOW;
 		}
 		if (active_low)
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 22903da15e..12a2dfce55 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -192,14 +192,14 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 	 */
 	rnp = of_find_node_by_path_from(root, np->full_name);
 	if (!rnp) {
-		pr_debug("%s path %s: %s not found in passed tree\n", __func__, path,
-			np->full_name);
+		pr_debug("%s path %s: %pOF not found in passed tree\n", __func__, path,
+			np);
 		return NULL;
 	}
 
 	if (!is_partition) {
-		pr_debug("%s path %s: returning full device node %s\n", __func__, path,
-			rnp->full_name);
+		pr_debug("%s path %s: returning full device node %pOF\n", __func__, path,
+			rnp);
 		return rnp;
 	}
 
@@ -226,7 +226,7 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 		ns = of_n_size_cells(np);
 
 		if (len < (na + ns) * sizeof(__be32)) {
-			pr_err("reg property too small in %s\n", np->full_name);
+			pr_err("reg property too small in %pOF\n", np);
 			continue;
 		}
 
@@ -234,8 +234,8 @@ struct device_node *of_find_node_by_devpath(struct device_node *root, const char
 		size = of_read_number(reg + na, ns);
 
 		if (part_offset == offset && part_size == size) {
-			pr_debug("%s path %s: found matching partition in %s\n", __func__, path,
-				np->full_name);
+			pr_debug("%s path %s: found matching partition in %pOF\n", __func__, path,
+				np);
 			return np;
 		}
 	}
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 223ebb318b..2d2367fc10 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -114,7 +114,7 @@ static char *of_overlay_fix_path(struct device_node *root,
 	prefix = of_get_child_by_name(fragment, "__overlay__")->full_name;
 	path_tail = path + strlen(prefix);
 
-	return basprintf("%s%s", target->full_name, path_tail);
+	return basprintf("%pOF%s", target, path_tail);
 }
 
 static int of_overlay_apply_symbols(struct device_node *root,
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 9ace9b437d..9b73419a83 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -46,7 +46,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	ns = of_n_size_cells(node);
 
 	if (len < (na + ns) * sizeof(__be32)) {
-		pr_err("reg property too small in %s\n", node->full_name);
+		pr_err("reg property too small in %pOF\n", node);
 		return NULL;
 	}
 
@@ -289,8 +289,8 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	np = of_find_node_by_reproducible_name(root, name);
 	free(name);
 	if (!np) {
-		dev_err(cdev->dev, "Cannot find nodepath %s, cannot fixup\n",
-				cdev->device_node->full_name);
+		dev_err(cdev->dev, "Cannot find nodepath %pOF, cannot fixup\n",
+				cdev->device_node);
 		return -EINVAL;
 	}
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 78b8a31331..bd5f2ad82c 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -304,7 +304,7 @@ static struct device *of_amba_device_create(struct device_node *np)
 	struct amba_device *dev;
 	int ret;
 
-	debug("Creating amba device %s\n", np->full_name);
+	debug("Creating amba device %pOF\n", np);
 
 	if (!of_device_is_available(np))
 		return NULL;
@@ -374,8 +374,8 @@ static int of_platform_bus_create(struct device_node *bus,
 
 	/* Make sure it has a compatible property */
 	if (!of_get_property(bus, "compatible", NULL)) {
-		pr_debug("%s() - skipping %s, no compatible prop\n",
-			__func__, bus->full_name);
+		pr_debug("%s() - skipping %pOF, no compatible prop\n",
+			__func__, bus);
 		return 0;
 	}
 
@@ -389,7 +389,7 @@ static int of_platform_bus_create(struct device_node *bus,
 		return 0;
 
 	for_each_child_of_node(bus, child) {
-		pr_debug("   create child: %s\n", child->full_name);
+		pr_debug("   create child: %pOF\n", child);
 		rc = of_platform_bus_create(child, matches, dev);
 		if (rc)
 			break;
@@ -445,7 +445,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 		device_rescan(parent->dev);
 
 	if (!np->dev)
-		pr_debug("Creating device for %s\n", np->full_name);
+		pr_debug("Creating device for %pOF\n", np);
 
 	/* Create all parent devices needed for the requested device */
 	parent_dev = parent->dev ? : of_device_create_on_demand(parent);
@@ -492,8 +492,7 @@ int of_device_ensure_probed(struct device_node *np)
 		return PTR_ERR(dev);
 
 	if (!dev)
-		panic("deep-probe: device for '%s' couldn't be created\n",
-			 np->full_name);
+		panic("deep-probe: device for '%pOF' couldn't be created\n", np);
 
 	/*
 	 * The deep-probe mechanism relies on the fact that all necessary
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 3fb3e6165b..d1b7549d71 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -403,8 +403,8 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->dev.parent = bus->parent;
 		dev->dev.of_node = pci_of_match_device(bus->parent, devfn);
 		if (dev->dev.of_node)
-			pr_debug("found DT node %s for device %04x:%04x\n",
-				 dev->dev.of_node->full_name,
+			pr_debug("found DT node %pOF for device %04x:%04x\n",
+				 dev->dev.of_node,
 				 dev->vendor, dev->device);
 
 		/* non-destructively determine if device can be a master: */
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 1a23f35b95..0a2f1b0d11 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -323,8 +323,8 @@ struct phy *of_phy_get_by_phandle(struct device *dev, const char *phandle,
 
 	np = of_parse_phandle(dev->of_node, phandle, index);
 	if (!np) {
-		dev_dbg(dev, "failed to get %s phandle in %s node\n", phandle,
-			dev->of_node->full_name);
+		dev_dbg(dev, "failed to get %s phandle in %pOF node\n", phandle,
+			dev->of_node);
 		return ERR_PTR(-ENODEV);
 	}
 
diff --git a/drivers/pinctrl/imx-iomux-v1.c b/drivers/pinctrl/imx-iomux-v1.c
index d57c503a5d..a0878fa9eb 100644
--- a/drivers/pinctrl/imx-iomux-v1.c
+++ b/drivers/pinctrl/imx-iomux-v1.c
@@ -206,7 +206,7 @@ static int imx_iomux_v1_set_state(struct pinctrl_device *pdev, struct device_nod
 	const __be32 *list;
 	int npins, size, i;
 
-	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+	dev_dbg(iomux->pinctrl.dev, "set state: %pOF\n", np);
 
 	list = of_get_property(np, "fsl,pins", &size);
 	if (!list)
@@ -225,8 +225,8 @@ static int imx_iomux_v1_set_state(struct pinctrl_device *pdev, struct device_nod
 		unsigned int gpio_iconfa = MX1_MUX_ICONFA(mux);
 		unsigned int gpio_iconfb = MX1_MUX_ICONFB(mux);
 
-		dev_dbg(pdev->dev, "%s, pin 0x%x, function %d, gpio %d, direction %d, oconf %d, iconfa %d, iconfb %d\n",
-				np->full_name, pin_id, afunction, gpio_in_use,
+		dev_dbg(pdev->dev, "%pOF, pin 0x%x, function %d, gpio %d, direction %d, oconf %d, iconfa %d, iconfb %d\n",
+				np, pin_id, afunction, gpio_in_use,
 				direction, gpio_oconf, gpio_iconfa,
 				gpio_iconfb);
 
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 025b1100eb..5dbb745b13 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -77,7 +77,7 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 	const char *name;
 	u32 share_conf_val = 0;
 
-	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+	dev_dbg(iomux->pinctrl.dev, "set state: %pOF\n", np);
 
 	if (share_conf) {
 		u32 drive_strength, slew_rate;
@@ -120,8 +120,7 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		return -EINVAL;
 
 	if (!size || size % fsl_pin_size) {
-		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %s\n",
-				np->full_name);
+		dev_err(iomux->pinctrl.dev, "Invalid fsl,pins property in %pOF\n", np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/mvebu/common.c b/drivers/pinctrl/mvebu/common.c
index 6ff8023b2c..e41ab0a40d 100644
--- a/drivers/pinctrl/mvebu/common.c
+++ b/drivers/pinctrl/mvebu/common.c
@@ -57,8 +57,7 @@ static int mvebu_pinctrl_set_state(struct pinctrl_device *pdev,
 
 	ret = of_property_read_string(np, "marvell,function", &function);
 	if (ret) {
-		dev_err(pdev->dev, "missing marvell,function in node %s\n",
-			np->full_name);
+		dev_err(pdev->dev, "missing marvell,function in node %pOF\n", np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 6251f4c604..f6d40b392f 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -96,8 +96,7 @@ static int __pinctrl_at91_pio4_set_state(struct pinctrl_device *pdev,
 	npins /= sizeof(__be32);
 
 	if (!npins) {
-		dev_err(pdev->dev, "Invalid pinmux property in %s\n",
-			np->full_name);
+		dev_err(pdev->dev, "Invalid pinmux property in %pOF\n", np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/pinctrl-mxs.c b/drivers/pinctrl/pinctrl-mxs.c
index 55aef58521..6a2b22145e 100644
--- a/drivers/pinctrl/pinctrl-mxs.c
+++ b/drivers/pinctrl/pinctrl-mxs.c
@@ -33,15 +33,15 @@ static int mxs_pinctrl_set_state(struct pinctrl_device *pdev, struct device_node
 	int ret;
 	int ma_present = 0, vol_present = 0, pull_present = 0;
 
-	dev_dbg(iomux->pinctrl.dev, "set state: %s\n", np->full_name);
+	dev_dbg(iomux->pinctrl.dev, "set state: %pOF\n", np);
 
 	list = of_get_property(np, "fsl,pinmux-ids", &size);
 	if (!list)
 		return -EINVAL;
 
 	if (!size || size % 4) {
-		dev_err(iomux->pinctrl.dev, "Invalid fsl,pinmux-ids property in %s\n",
-				np->full_name);
+		dev_err(iomux->pinctrl.dev, "Invalid fsl,pinmux-ids property in %pOF\n",
+				np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 3b09511acf..0e706656b9 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -64,7 +64,7 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
 	unsigned int offset, val, rows, mask, reg, i;
 	const __be32 *mux;
 
-	dev_dbg(pcs->pinctrl.dev, "set state: %s\n", np->full_name);
+	dev_dbg(pcs->pinctrl.dev, "set state: %pOF\n", np);
 	if (pcs->bits_per_mux) {
 		mux = of_get_property(np, "pinctrl-single,bits", &size);
 		if (size % 3 != 0)
@@ -89,8 +89,7 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
 		size /= sizeof(*mux);	/* Number of elements in array */
 
 		if (!mux || !size || (size % (pcs->args_count + 1))) {
-			dev_err(pcs->pinctrl.dev, "bad data for mux %s\n",
-				np->full_name);
+			dev_err(pcs->pinctrl.dev, "bad data for mux %pOF\n", np);
 			return -EINVAL;
 		}
 
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 081d54a244..c45676b3d2 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -101,8 +101,7 @@ static int __stm32_pinctrl_set_state(struct device *dev,
 	of_get_property(pins, "pinmux", &num_pins);
 	num_pins /= sizeof(__be32);
 	if (!num_pins) {
-		dev_err(dev, "Invalid pinmux property in %s\n",
-			pins->full_name);
+		dev_err(dev, "Invalid pinmux property in %pOF\n", pins);
 		return -EINVAL;
 	}
 
@@ -129,7 +128,7 @@ static int __stm32_pinctrl_set_state(struct device *dev,
 	else if (of_get_property(pins, "output-high", NULL))
 		dir = PIN_OUTPUT_HIGH;
 
-	dev_dbg(dev, "%s: multiplexing %d pins\n", pins->full_name, num_pins);
+	dev_dbg(dev, "%pOF: multiplexing %d pins\n", pins, num_pins);
 
 	for (i = 0; i < num_pins; i++) {
 		struct stm32_gpio_bank *bank = NULL;
@@ -286,8 +285,7 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	gpio_ranges = of_get_property(np, "gpio-ranges", &size);
 	size /= sizeof(__be32);
 	if (!gpio_ranges || size < GPIO_RANGE_NCELLS) {
-		dev_err(dev, "Couldn't read 'gpio-ranges' property in %s\n",
-			np->full_name);
+		dev_err(dev, "Couldn't read 'gpio-ranges' property in %pOF\n", np);
 		return -EINVAL;
 	}
 
@@ -298,14 +296,13 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	bank->chip.ngpio = ngpios;
 
 	if (size > GPIO_RANGE_NCELLS) {
-		dev_err(dev, "Unsupported disjunct 'gpio-ranges' in %s\n",
-			np->full_name);
+		dev_err(dev, "Unsupported disjunct 'gpio-ranges' in %pOF\n", np);
 		return -EINVAL;
 	}
 
 	if (ngpios > STM32_GPIO_PINS_PER_BANK) {
-		dev_err(dev, "ngpios property expected to be %u at most in %s\n",
-			ngpios, np->full_name);
+		dev_err(dev, "ngpios property expected to be %u at most in %pOF\n",
+			ngpios, np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index df63865c0f..ada0e28751 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -41,8 +41,7 @@ static int pinctrl_vf610_set_state(struct pinctrl_device *pdev,
 		return -EINVAL;
 
 	if (!size || size % PINCTRL_VF610_MUX_LINE_SIZE) {
-		dev_err(pdev->dev, "Invalid fsl,pins property in %s\n",
-			np->full_name);
+		dev_err(pdev->dev, "Invalid fsl,pins property in %pOF\n", np);
 		return -EINVAL;
 	}
 
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 1f272daef7..95e7b0ea96 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -138,8 +138,8 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 			/* Look up the pin configuration node */
 			np_config = of_find_node_by_phandle(phandle);
 			if (!np_config) {
-				pr_err("prop %s %s index %i invalid phandle\n",
-					np->full_name, propname, config);
+				pr_err("prop %pOF %s index %i invalid phandle\n",
+					np, propname, config);
 				ret = -EINVAL;
 				goto err;
 			}
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index f914641c87..97e76b0db9 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -308,8 +308,8 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
 
 	list_for_each_entry(ri, &regulator_list, list) {
 		if (ri->node == node) {
-			dev_dbg(dev, "Using %s regulator from %s\n",
-					propname, node->full_name);
+			dev_dbg(dev, "Using %s regulator from %pOF\n",
+					propname, node);
 			goto out;
 		}
 	}
diff --git a/drivers/regulator/scmi-regulator.c b/drivers/regulator/scmi-regulator.c
index 2a007ac620..39736d3cab 100644
--- a/drivers/regulator/scmi-regulator.c
+++ b/drivers/regulator/scmi-regulator.c
@@ -231,8 +231,8 @@ static int scmi_regulator_common_init(struct scmi_regulator *sreg)
 	 * be non-negative from here on.
 	 */
 	if (vinfo->negative_volts_allowed) {
-		dev_warn(dev, "Negative voltages NOT supported...skip %s\n",
-			 sreg->of_node->full_name);
+		dev_warn(dev, "Negative voltages NOT supported...skip %pOF\n",
+			 sreg->of_node);
 		return -EOPNOTSUPP;
 	}
 
@@ -264,8 +264,8 @@ static int process_scmi_regulator_of_node(struct scmi_device *sdev,
 
 	if (rinfo->sregv[dom]) {
 		dev_err(&sdev->dev,
-			"SCMI Voltage Domain %d already in use. Skipping: %s\n",
-			dom, np->full_name);
+			"SCMI Voltage Domain %d already in use. Skipping: %pOF\n",
+			dom, np);
 		return -EINVAL;
 	}
 
@@ -281,8 +281,8 @@ static int process_scmi_regulator_of_node(struct scmi_device *sdev,
 	rinfo->sregv[dom]->of_node = np;
 
 	dev_dbg(&sdev->dev,
-		"Found SCMI Regulator entry -- OF node [%d] -> %s\n",
-		dom, np->full_name);
+		"Found SCMI Regulator entry -- OF node [%d] -> %pOF\n",
+		dom, np);
 
 	return 0;
 }
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index b39f70cb20..e4ac988053 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -307,8 +307,8 @@ static int ipufb_probe(struct device *dev)
 
 	node = of_graph_get_port_by_id(dev->parent->of_node, 2 + pdata->di);
 	if (node && of_graph_port_is_available(node)) {
-		dev_dbg(fbi->dev, "register vpl for %s\n",
-			dev->parent->of_node->full_name);
+		dev_dbg(fbi->dev, "register vpl for %pOF\n",
+			dev->parent->of_node);
 
 		fbi->vpl.node = dev->parent->of_node;
 		ret = vpl_register(&fbi->vpl);
diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
index 6082d45493..74b01239cb 100644
--- a/drivers/video/of_display_timing.c
+++ b/drivers/video/of_display_timing.c
@@ -37,8 +37,8 @@ static int parse_timing_property(const struct device_node *np, const char *name,
 
 	prop = of_find_property(np, name, &length);
 	if (!prop) {
-		pr_err("%s: could not find property %s\n",
-			np->full_name, name);
+		pr_err("%pOF: could not find property %s\n",
+			np, name);
 		return -EINVAL;
 	}
 
@@ -46,8 +46,8 @@ static int parse_timing_property(const struct device_node *np, const char *name,
 	if ((cells == 1) || (cells == 3)) {
 		ret = of_property_read_u32(np, name, res);
 	} else {
-		pr_err("%s: illegal timing specification in %s\n",
-			np->full_name, name);
+		pr_err("%pOF: illegal timing specification in %s\n",
+			np, name);
 		return -EINVAL;
 	}
 
@@ -90,8 +90,7 @@ static int of_parse_display_timing(const struct device_node *np,
 				DISPLAY_FLAGS_PIXDATA_NEGEDGE;
 
 	if (ret) {
-		pr_err("%s: error reading timing properties\n",
-			np->full_name);
+		pr_err("%pOF: error reading timing properties\n", np);
 		return -EINVAL;
 	}
 
@@ -136,8 +135,7 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 
 	timings_np = of_get_child_by_name(np, "display-timings");
 	if (!timings_np) {
-		pr_debug("%s: could not find display-timings node\n",
-			np->full_name);
+		pr_debug("%pOF: could not find display-timings node\n", np);
 		return NULL;
 	}
 
@@ -149,20 +147,19 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 		entry = of_get_next_available_child(np, NULL);
 	/* if there is no child, it is useless to go on */
 	if (!entry) {
-		pr_err("%s: no timing specifications given\n",
-			np->full_name);
+		pr_err("%pOF: no timing specifications given\n", np);
 		goto fail;
 	}
 
-	pr_debug("%s: using %s as default timing\n",
-		np->full_name, entry->name);
+	pr_debug("%pOF: using %s as default timing\n",
+		np, entry->name);
 
 	native_mode = entry;
 
 	disp->num_modes = of_get_child_count(timings_np);
 	if (disp->num_modes == 0) {
 		/* should never happen, as entry was already found above */
-		pr_err("%s: no timings specified\n", np->full_name);
+		pr_err("%pOF: no timings specified\n", np);
 		goto fail;
 	}
 
@@ -183,8 +180,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 			 * to not encourage wrong devicetrees, fail in case of
 			 * an error
 			 */
-			pr_err("%s: error in timing %d\n",
-				np->full_name, disp->num_modes + 1);
+			pr_err("%pOF: error in timing %d\n",
+				np, disp->num_modes + 1);
 			goto fail;
 		}
 
@@ -196,8 +193,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
 		disp->num_modes++;
 	}
 
-	pr_debug("%s: got %d timings. Using timing #%d as default\n",
-		np->full_name, disp->num_modes,
+	pr_debug("%pOF: got %d timings. Using timing #%d as default\n",
+		np, disp->num_modes,
 		disp->native_mode + 1);
 
 	return disp;
diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index b4940ab937..d1c36b1f45 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -285,7 +285,7 @@ static int ltdc_probe(struct device *dev)
 		if (ret)
 			return ret;
 
-		dev_dbg(hw->dev, "register vpl for %s\n", np->full_name);
+		dev_dbg(hw->dev, "register vpl for %pOF\n", np);
 
 		priv = xzalloc(sizeof(*priv));
 		priv->hw = hw;
diff --git a/drivers/video/vpl.c b/drivers/video/vpl.c
index 6d67861681..f8c2159cd9 100644
--- a/drivers/video/vpl.c
+++ b/drivers/video/vpl.c
@@ -18,7 +18,7 @@ int vpl_register(struct vpl *vpl)
 {
 	list_add_tail(&vpl->list, &vpls);
 
-	pr_debug("%s: %s\n", __func__, vpl->node->full_name);
+	pr_debug("%s: %pOF\n", __func__, vpl->node);
 
 	return 0;
 }
@@ -40,13 +40,13 @@ struct vpl *of_vpl_get(struct device_node *node, int port)
 	if (!node)
 		return NULL;
 
-	pr_debug("%s: port: %s\n", __func__, node->full_name);
+	pr_debug("%s: port: %pOF\n", __func__, node);
 
 	node = of_graph_get_remote_port_parent(node);
 	if (!node)
 		return NULL;
 
-	pr_debug("%s: remote port parent: %s\n", __func__, node->full_name);
+	pr_debug("%s: remote port parent: %pOF\n", __func__, node);
 
 	return of_find_vpl(node);
 }
@@ -57,11 +57,11 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 	struct device_node *node, *endpoint;
 	int ret;
 
-	pr_debug("%s: %s port %d\n", __func__, vpl->node->full_name, port);
+	pr_debug("%s: %pOF port %d\n", __func__, vpl->node, port);
 
 	node = of_graph_get_port_by_id(vpl->node, port);
 	if (!node) {
-		pr_err("%s: no port %d on %s\n", __func__, port, vpl->node->full_name);
+		pr_err("%s: no port %d on %pOF\n", __func__, port, vpl->node);
 		return -ENODEV;
 	}
 
@@ -72,7 +72,7 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 
 		remote = of_graph_get_remote_port(endpoint);
 		if (!remote) {
-			pr_debug("%s: no remote for endpoint %s\n", __func__, endpoint->full_name);
+			pr_debug("%s: no remote for endpoint %pOF\n", __func__, endpoint);
 			continue;
 		}
 
@@ -89,11 +89,11 @@ int vpl_ioctl(struct vpl *vpl, unsigned int port,
 
 		remote_vpl = of_find_vpl(remote_parent);
 		if (!remote_vpl) {
-			pr_debug("%s: cannot find remote vpl %s\n", __func__, remote->full_name);
+			pr_debug("%s: cannot find remote vpl %pOF\n", __func__, remote);
 			continue;
 		}
 
-		pr_debug("%s: looked up %s: %pS\n", __func__, remote->full_name, remote_vpl->ioctl);
+		pr_debug("%s: looked up %pOF: %pS\n", __func__, remote, remote_vpl->ioctl);
 		ret = remote_vpl->ioctl(remote_vpl, remote_port_id, cmd, ptr);
 		if (ret)
 			return ret;
-- 
2.39.2



