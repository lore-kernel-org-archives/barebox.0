Delivery-date: Tue, 20 Sep 2022 14:59:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqM-00ATGD-0x
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 14:59:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oacqK-0005F1-2a
	for lore@pengutronix.de; Tue, 20 Sep 2022 14:59:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w5wFbUQx8lQTJ7AOqaI9Xi29EO5jW7znUXKFKa2si3w=; b=Zm7/x5Rk8jd0WmNxgp3QEF4Z1M
	QI2MxGTBC/s2gphH1HEBxTK8Ae7AFC/aoHwh5miUaxbcIqBRZ5JahwX3sMzwALRlkQGscLgGEyQf+
	+VvdKoHSSAeXO87MdcQtvWM7/IwccEARnerRvw9HBBxzPZJXYolaQ0C9VvGDXxInZy86hndAo9iGZ
	cdkdNFFhJqzwbEeIKU7ydp2HgZq0YegdTYa2uspHeiTku24X8eQfda0ilcUjya6wBSa+tYokP2SI5
	YJAxT46nY9pJg4i3XaIZPKD9aqTykjSPRQYNfV0gAG3fh93HNajpUSJbCuXF+GLwAqJY3OJyzR78Z
	rtgOawfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacoP-003sAc-8j; Tue, 20 Sep 2022 12:57:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacms-003rKw-Ge
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 12:55:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmm-0002zZ-Q9; Tue, 20 Sep 2022 14:55:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacmn-001rYn-GM; Tue, 20 Sep 2022 14:55:36 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oacml-00ATcn-80; Tue, 20 Sep 2022 14:55:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 20 Sep 2022 14:55:31 +0200
Message-Id: <20220920125533.2497108-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_055542_827128_D9C70AAC 
X-CRM114-Status: GOOD (  19.90  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/3] net: port support for microchip SMI0 MDIO bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SMI0 is a mangled version of MDIO. The main low level difference is
the MDIO C22 OP code is always 0, not 0x2 or 0x1 for Read/Write. The
read/write information is instead encoded in the PHY address.

Extend the bit-bang code to allow the op code to be overridden, but
default to normal C22 values. Add an extra compatible to the mdio-gpio
driver, and when this compatible is present, set the op codes to 0.

A higher level driver, sitting on top of the basic MDIO bus driver can
then implement the rest of the microchip SMI0 odderties.

This code was ported from the kernel v6.0-rc2.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/mdio-bitbang.c | 8 ++++++--
 drivers/net/phy/mdio-gpio.c    | 8 ++++++++
 include/linux/mdio-bitbang.h   | 3 +++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/mdio-bitbang.c b/drivers/net/phy/mdio-bitbang.c
index 839a7d1eb8..656557589d 100644
--- a/drivers/net/phy/mdio-bitbang.c
+++ b/drivers/net/phy/mdio-bitbang.c
@@ -158,7 +158,7 @@ static int mdiobb_read(struct mii_bus *bus, int phy, int reg)
 		reg = mdiobb_cmd_addr(ctrl, phy, reg);
 		mdiobb_cmd(ctrl, MDIO_C45_READ, phy, reg);
 	} else
-		mdiobb_cmd(ctrl, MDIO_READ, phy, reg);
+		mdiobb_cmd(ctrl, ctrl->op_c22_read, phy, reg);
 
 	ctrl->ops->set_mdio_dir(ctrl, 0);
 
@@ -188,7 +188,7 @@ static int mdiobb_write(struct mii_bus *bus, int phy, int reg, u16 val)
 		reg = mdiobb_cmd_addr(ctrl, phy, reg);
 		mdiobb_cmd(ctrl, MDIO_C45_WRITE, phy, reg);
 	} else
-		mdiobb_cmd(ctrl, MDIO_WRITE, phy, reg);
+		mdiobb_cmd(ctrl, ctrl->op_c22_write, phy, reg);
 
 	/* send the turnaround (10) */
 	mdiobb_send_bit(ctrl, 1);
@@ -219,6 +219,10 @@ struct mii_bus *alloc_mdio_bitbang(struct mdiobb_ctrl *ctrl)
 	bus->write = mdiobb_write;
 	bus->reset = mdiobb_reset;
 	bus->priv = ctrl;
+	if (!ctrl->override_op_c22) {
+		ctrl->op_c22_read = MDIO_READ;
+		ctrl->op_c22_write = MDIO_WRITE;
+	}
 
 	return bus;
 }
diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index 80d2394f4b..c64f2b3925 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -193,6 +193,13 @@ static int mdio_gpio_probe(struct device_d *dev)
 		goto free_mdo;
 	}
 
+	if (np &&
+	    of_device_is_compatible(np, "microchip,mdio-smi0")) {
+		info->ctrl.op_c22_read = 0;
+		info->ctrl.op_c22_write = 0;
+		info->ctrl.override_op_c22 = 1;
+	}
+
 	bus = alloc_mdio_bitbang(&info->ctrl);
 	bus->parent = dev;
 	bus->dev.device_node = np;
@@ -217,6 +224,7 @@ free_info:
 
 static const struct of_device_id gpio_mdio_dt_ids[] = {
 	{ .compatible = "virtual,mdio-gpio", },
+	{ .compatible = "microchip,mdio-smi0" },
 	{ /* sentinel */ }
 };
 
diff --git a/include/linux/mdio-bitbang.h b/include/linux/mdio-bitbang.h
index a6e6057886..49fe435429 100644
--- a/include/linux/mdio-bitbang.h
+++ b/include/linux/mdio-bitbang.h
@@ -36,6 +36,9 @@ struct mdiobb_ctrl {
 	const struct mdiobb_ops *ops;
 	/* reset callback */
 	int (*reset)(struct mii_bus *bus);
+	unsigned int override_op_c22;
+	u8 op_c22_read;
+	u8 op_c22_write;
 };
 
 /* The returned bus is not yet registered with the phy layer. */
-- 
2.30.2



