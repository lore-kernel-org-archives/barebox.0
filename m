Delivery-date: Fri, 28 Jan 2022 09:25:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMZB-00FmYk-IH
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 09:25:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMZ2-0002Nq-Gc
	for lore@pengutronix.de; Fri, 28 Jan 2022 09:25:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83QQY/xnW1vLxliOmpFOmQmIwGCsSPIPg53fUpEsqk0=; b=gU679/8QqcyqEy
	/Mnmgck23xpUNLhLqibkBGPpWSbspKOoJ2BjHa7Focfy92jssMiLsSJ1jxwhf10bUjicIG/xi3MQ4
	qdNC+9rtFant7d/DmXghPkhQ4PWulCf0wpxlyOxEmjzmq3ePPS0ljbYJB6CuVhBKDZzbTvxBQwThC
	oEVv0g32Av8oJc1Vft9GIOfW4BHCcuZjBYNq9Jsoacbd9GAIe+dSqSxQ9zEmq/U97qXVNdTl5zQX/
	mVbsiO/cyOJlWamVHN2pgy4jQOySBYywFcDPByU3n1/yDmXSuKZujjvXMuJgCmEfHFd6x88MKe3pA
	e/IfWMfjUMF47EDiwrMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDMXj-000zae-BT; Fri, 28 Jan 2022 08:23:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDMXT-000zUf-90
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 08:23:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXQ-00026d-EI; Fri, 28 Jan 2022 09:23:20 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXP-00A74v-S5; Fri, 28 Jan 2022 09:23:19 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 28 Jan 2022 09:23:16 +0100
Message-Id: <20220128082317.2410427-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220128082317.2410427-1-o.rempel@pengutronix.de>
References: <20220128082317.2410427-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_002323_684284_578561CF 
X-CRM114-Status: GOOD (  23.37  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/4] ARM: rpi: validate devicetree compatible instead of
 changing model name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To cover all possible RPi variants we need to be able to work with DTs
provided by the 1. stage loader. If we get wrong DT for the barebox,
we will take wrong DT for kernel as well.

Since current device list was used only to update model name without
updating devicetree compatible, this patch will turn it around by using
device list to validate if we use right DT/compatible on the right HW.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 397 ++++++++++++++--------
 1 file changed, 259 insertions(+), 138 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index ab40dba50f..8c5f442843 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -6,6 +6,7 @@
 #include <init.h>
 #include <fs.h>
 #include <of.h>
+#include <of_device.h>
 #include <linux/stat.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
@@ -29,16 +30,20 @@
 
 #include "lowlevel.h"
 
-struct rpi_model {
-	const char *name;
-	void (*init)(void);
+struct rpi_priv;
+struct rpi_machine_data {
+	int (*init)(struct rpi_priv *priv);
+	u8 hw_id;
+#define RPI_OLD_SCHEMA			BIT(0)
+	u8 flags;
 };
 
-#define RPI_MODEL(_id, _name, _init)	\
-	[_id] = {				\
-		.name			= _name,\
-		.init			= _init,\
-	}
+struct rpi_priv {
+	struct device_d *dev;
+	const struct rpi_machine_data *dcfg;
+	unsigned int hw_id;
+	const char *name;
+};
 
 struct msg_get_arm_mem {
 	struct bcm2835_mbox_hdr hdr;
@@ -133,98 +138,56 @@ static void rpi_add_led(void)
 		led_set_trigger(LED_TRIGGER_HEARTBEAT, &l->led);
 }
 
-static void rpi_b_init(void)
+static int rpi_b_init(struct rpi_priv *priv)
 {
 	rpi_leds[0].gpio = 16;
 	rpi_leds[0].active_low = 1;
 	rpi_set_usbethaddr();
+
+	return 0;
 }
 
-static void rpi_b_plus_init(void)
+static int rpi_b_plus_init(struct rpi_priv *priv)
 {
 	rpi_leds[0].gpio = 47;
 	rpi_leds[1].gpio = 35;
 	rpi_set_usbethaddr();
+
+	return 0;
 }
 
-static void rpi_0_init(void)
+static int rpi_0_init(struct rpi_priv *priv)
 {
 	rpi_leds[0].gpio = 47;
 	rpi_set_usbotg("usb0");
+
+	return 0;
 }
 
-static void rpi_0_w_init(void)
+static int rpi_0_w_init(struct rpi_priv *priv)
 {
 	struct device_node *np;
 	int ret;
 
-	rpi_0_init();
+	rpi_0_init(priv);
 
 	np = of_find_node_by_path("/chosen");
 	if (!np)
-		return;
+		return -ENODEV;
 
 	if (!of_device_enable_and_register_by_alias("serial1"))
-		return;
+		return -ENODEV;
 
 	ret = of_property_write_string(np, "stdout-path", "serial1:115200n8");
 	if (ret)
-		return;
+		return ret;
 
-	of_device_disable_by_alias("serial0");
+	return of_device_disable_by_alias("serial0");
 }
 
-/* See comments in mbox.h for data source */
-static const struct rpi_model rpi_models_old_scheme[] = {
-	RPI_MODEL(0, "Unknown model", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", rpi_b_init),
-	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_10, "Model B+", rpi_b_plus_init),
-	RPI_MODEL(BCM2835_BOARD_REV_CM_11, "Compute Module", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_12, "Model A+", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_13, "Model B+", rpi_b_plus_init),
-	RPI_MODEL(BCM2835_BOARD_REV_CM_14, "Compute Module", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_15, "Model A+", NULL),
-};
-
-static const struct rpi_model rpi_models_new_scheme[] = {
-	RPI_MODEL(BCM2835_BOARD_REV_A, 		"Model A",	NULL ),
-	RPI_MODEL(BCM2835_BOARD_REV_B, 		"Model B", 	rpi_b_init ),
-	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, 	"Model A+", 	NULL ),
-	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, 	"Model B+", 	rpi_b_plus_init ),
-	RPI_MODEL(BCM2836_BOARD_REV_2_B, 	"Model 2B", 	rpi_b_plus_init),
-	RPI_MODEL(BCM283x_BOARD_REV_Alpha, 	"Alpha", 	NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_CM1, 	"Compute Module", NULL ),
-	RPI_MODEL(0x7, "Unknown model", NULL),
-	RPI_MODEL(BCM2837_BOARD_REV_3_B, 	"Model 3B", 	rpi_b_init ),
-	RPI_MODEL(BCM2835_BOARD_REV_ZERO, 	"Zero", 	rpi_0_init),
-	RPI_MODEL(BCM2837_BOARD_REV_CM3, 	"Compute Module 3", NULL ),
-	RPI_MODEL(0xb, "Unknown model", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_w_init),
-	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3B+", 	rpi_b_plus_init ),
-	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Model 3A+", 	rpi_b_plus_init),
-	RPI_MODEL(0xf, "Unknown model", NULL),
-	RPI_MODEL(BCM2837B0_BOARD_REV_CM3_PLUS, "Compute Module 3+", NULL),
-};
-
-static int rpi_board_rev = 0;
-static const struct rpi_model *model = NULL;
-
-static void rpi_get_board_rev(void)
+static int rpi_get_board_rev(struct rpi_priv *priv)
 {
 	int ret;
-	char *name;
-	const struct rpi_model *rpi_models;
-	size_t rpi_models_size;
 
 	BCM2835_MBOX_STACK_ALIGN(struct msg_get_board_rev, msg);
 	BCM2835_MBOX_INIT_HDR(msg);
@@ -232,9 +195,8 @@ static void rpi_get_board_rev(void)
 
 	ret = bcm2835_mbox_call_prop(BCM2835_MBOX_PROP_CHAN, &msg->hdr);
 	if (ret) {
-		printf("bcm2835: Could not query board revision\n");
-		/* Ignore error; not critical */
-		return;
+		dev_err(priv->dev, "Could not query board revision\n");
+		return ret;
 	}
 
 	/* Comments from u-boot:
@@ -248,53 +210,9 @@ static void rpi_get_board_rev(void)
 	 * http://www.raspberrypi.org/forums/viewtopic.php?f=63&t=98367&start=250
 	 * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
 	 */
-	rpi_board_rev = msg->get_board_rev.body.resp.rev;
-	if (rpi_board_rev & 0x800000) {
-		rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
-		rpi_models = rpi_models_new_scheme;
-		rpi_models_size = ARRAY_SIZE(rpi_models_new_scheme);
-
-	} else {
-		rpi_board_rev &= 0xff;
-		rpi_models = rpi_models_old_scheme;
-		rpi_models_size = ARRAY_SIZE(rpi_models_old_scheme);
-	}
-
-	if (rpi_board_rev >= rpi_models_size) {
-		printf("RPI: Board rev %u outside known range\n",
-		       rpi_board_rev);
-		goto unknown_rev;
-	}
-
-	if (!rpi_models[rpi_board_rev].name) {
-		printf("RPI: Board rev %u unknown\n", rpi_board_rev);
-		goto unknown_rev;
-	}
-
-	if (!rpi_board_rev)
-		goto unknown_rev;
-
-	model = &rpi_models[rpi_board_rev];
-	name = basprintf("RaspberryPi %s", model->name);
-	barebox_set_model(name);
-	free(name);
-
-	return;
-
-unknown_rev:
-	rpi_board_rev = 0;
-	barebox_set_model("RaspberryPi (unknown rev)");
-}
-
-static void rpi_model_init(void)
-{
-	if (!model)
-		return;
+	priv->hw_id = msg->get_board_rev.body.resp.rev;
 
-	if (!model->init)
-		return;
-
-	model->init();
+	return 0;
 }
 
 static int rpi_mem_init(void)
@@ -312,16 +230,6 @@ static int rpi_mem_init(void)
 }
 mem_initcall(rpi_mem_init);
 
-static int rpi_postcore_init(void)
-{
-	rpi_get_board_rev();
-	barebox_set_hostname("rpi");
-	rpi_model_init();
-
-	return 0;
-}
-postcore_initcall(rpi_postcore_init);
-
 static int rpi_env_init(void)
 {
 	struct stat s;
@@ -439,9 +347,52 @@ static void rpi_vc_fdt(void)
 	}
 }
 
+static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
+{
+	const struct rpi_machine_data *dcfg;
+
+	dcfg = of_device_get_match_data(priv->dev);
+	if (!dcfg)
+		return ERR_PTR(-EINVAL);
+
+	for (; dcfg->hw_id != U8_MAX; dcfg++) {
+		if (priv->hw_id & 0x800000) {
+			if (dcfg->hw_id != ((priv->hw_id >> 4) & 0xff))
+				continue;
+		} else {
+			if (!(dcfg->flags & RPI_OLD_SCHEMA))
+				continue;
+			if (dcfg->hw_id != (priv->hw_id & 0xff))
+				continue;
+		}
+
+		return dcfg;
+	}
+
+	dev_err(priv->dev, "Failed to get dcfg for board_id: 0x%x.\n",
+		priv->hw_id);
+	return ERR_PTR(-ENODEV);
+}
+
 static int rpi_devices_probe(struct device_d *dev)
 {
+	const struct rpi_machine_data *dcfg;
 	struct regulator *reg;
+	struct rpi_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+
+	ret = rpi_get_board_rev(priv);
+	if (ret)
+		goto free_priv;
+
+	dcfg = rpi_get_dcfg(priv);
+	if (IS_ERR(dcfg))
+		goto free_priv;
+
+	barebox_set_hostname("rpi");
 
 	rpi_add_led();
 	bcm2835_register_fb();
@@ -449,6 +400,9 @@ static int rpi_devices_probe(struct device_d *dev)
 	rpi_env_init();
 	rpi_vc_fdt();
 
+	if (dcfg->init)
+		dcfg->init(priv);
+
 	reg = regulator_get_name("bcm2835_usb");
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
@@ -456,28 +410,195 @@ static int rpi_devices_probe(struct device_d *dev)
 	regulator_enable(reg);
 
 	return 0;
+
+free_priv:
+	kfree(priv);
+	return ret;
 }
 
+static const struct rpi_machine_data rpi_model_a[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_A_7,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_A_8,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_A_9,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_A,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_a_plus[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_A_PLUS_12,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_A_PLUS_15,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_A_PLUS,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_b[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_B_I2C1_4,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_I2C1_5,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_I2C1_6,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_b_i2c0[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_B_I2C0_2,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_I2C0_3,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_b_rev2[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_B_REV2_d,
+		.flags = RPI_OLD_SCHEMA,
+		.init = rpi_b_init,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_REV2_e,
+		.flags = RPI_OLD_SCHEMA,
+		.init = rpi_b_init,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_REV2_f,
+		.flags = RPI_OLD_SCHEMA,
+		.init = rpi_b_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_b_plus[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_B_PLUS_10,
+		.flags = RPI_OLD_SCHEMA,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_PLUS_13,
+		.flags = RPI_OLD_SCHEMA,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_B_PLUS,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_compute_module[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_CM_11,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_CM_14,
+		.flags = RPI_OLD_SCHEMA,
+	}, {
+		.hw_id = BCM2835_BOARD_REV_CM1,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_zero[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_ZERO,
+		.init = rpi_0_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_zero_w[] = {
+	{
+		.hw_id = BCM2835_BOARD_REV_ZERO_W,
+		.init = rpi_0_w_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_2_model_b[] = {
+	{
+		.hw_id = BCM2836_BOARD_REV_2_B,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_3_model_a_plus[] = {
+	{
+		.hw_id = BCM2837B0_BOARD_REV_3A_PLUS,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_3_model_b[] = {
+	{
+		.hw_id = BCM2837_BOARD_REV_3_B,
+		.init = rpi_b_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_3_model_b_plus[] = {
+	{
+		.hw_id = BCM2837B0_BOARD_REV_3B_PLUS,
+		.init = rpi_b_plus_init,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
 static const struct of_device_id rpi_of_match[] = {
 	/* BCM2835 based Boards */
-	{ .compatible = "raspberrypi,model-a" },
-	{ .compatible = "raspberrypi,model-a-plus" },
-	{ .compatible = "raspberrypi,model-b" },
+	{ .compatible = "raspberrypi,model-a", .data = rpi_model_a },
+	{ .compatible = "raspberrypi,model-a-plus", .data = rpi_model_a_plus },
+	{ .compatible = "raspberrypi,model-b", .data = rpi_model_b },
 	/* Raspberry Pi Model B (no P5) */
-	{ .compatible = "raspberrypi,model-b-i2c0" },
-	{ .compatible = "raspberrypi,model-b-rev2" },
-	{ .compatible = "raspberrypi,model-b-plus" },
-	{ .compatible = "raspberrypi,compute-module" },
-	{ .compatible = "raspberrypi,model-zero" },
-	{ .compatible = "raspberrypi,model-zero-w" },
+	{ .compatible = "raspberrypi,model-b-i2c0", .data = rpi_model_b_i2c0 },
+	{ .compatible = "raspberrypi,model-b-rev2", .data = rpi_model_b_rev2 },
+	{ .compatible = "raspberrypi,model-b-plus", .data = rpi_model_b_plus },
+	{ .compatible = "raspberrypi,compute-module", .data = rpi_compute_module },
+	{ .compatible = "raspberrypi,model-zero", .data = rpi_model_zero },
+	{ .compatible = "raspberrypi,model-zero-w", .data = rpi_model_zero_w },
 
 	/* BCM2836 based Boards */
-	{ .compatible = "raspberrypi,2-model-b" },
+	{ .compatible = "raspberrypi,2-model-b", .data = rpi_2_model_b },
 
 	/* BCM2837 based Boards */
-	{ .compatible = "raspberrypi,3-model-a-plus" },
-	{ .compatible = "raspberrypi,3-model-b" },
-	{ .compatible = "raspberrypi,3-model-b-plus" },
+	{ .compatible = "raspberrypi,3-model-a-plus", .data = rpi_3_model_a_plus },
+	{ .compatible = "raspberrypi,3-model-b", .data = rpi_3_model_b },
+	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_model_b_plus },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

