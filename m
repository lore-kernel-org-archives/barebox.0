Delivery-date: Fri, 25 Oct 2024 09:31:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Emx-000XNj-2u
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 09:31:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Emy-0006nV-Ae
	for lore@pengutronix.de; Fri, 25 Oct 2024 09:31:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P1qgf6fsUxmOmAIiy3dm3+m7FkYQ86IBqc1p5MD5c1M=; b=XV/bJpCzpjtK7cmnq5sWD+TMtE
	oANSjyvou8BczGGaELe5IhDNqKcdAz7apZwLH8s3CDKmESSSQ0yRCY4Nw/9jdk5g/PZG6txtw6bWq
	K/MPOH1VZEP7ZdAB64uDFPI7/X0l3KGTp+tSfkcd/rPR3W2XmKw4+jGBWVtu9M5Q2nvEFv522uTaa
	WjJeaAEkRp1il6GXZyO9milQGXern7n+6IdGHbCWNTA2Mc3SYehZO+VXrkV4NNgAkV6XeWl0J9SY7
	fqbNiwOVqYzG5TXIA/TUYqmJ6sW9jYF4mWcQX988l1MCKTvtxquCmSEgH0KOQjby7tBO/8/kVKlJP
	mjR3NfNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmJ-00000002oMN-0J0F;
	Fri, 25 Oct 2024 07:30:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmD-00000002oLM-3Alf
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 07:30:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-0006ZR-Bg; Fri, 25 Oct 2024 09:30:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-000KI7-0T;
	Fri, 25 Oct 2024 09:30:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-008HjI-0I;
	Fri, 25 Oct 2024 09:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 09:30:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-i2c-busnum-v1-1-332d9257eafe@pengutronix.de>
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
In-Reply-To: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729841428; l=5350;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0S6quE0303hULNOoukYdY9SOYMJUeNEI89whO+asiFw=;
 b=FR8mac9DyGod+vnrF+2/HMdJclP2U7CuGvHy+Hi/8fi+n3DVMRK7z0tL+bwPlshJhuKzw84gw
 H6CX30clhb1COCGzZgFo3humJMwvU1nv4D+zm/ONwk1/aNnNX0e9xb9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_003031_563198_267F151C 
X-CRM114-Status: GOOD (  12.05  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] i2c: set adapter.nr explicitly to -1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev->id will always be -1 for device tree instantiated devices. Instead
of setting adapter.nr to dev->id, set it to -1 explicitly for all I2C
bus drivers that are purely instantiated from device tree.

This is done for clarity just to show that all I2C bus numbers are
really dynamically assigned.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-at91.c       | 2 +-
 drivers/i2c/busses/i2c-bcm283x.c    | 2 +-
 drivers/i2c/busses/i2c-cadence.c    | 2 +-
 drivers/i2c/busses/i2c-designware.c | 2 +-
 drivers/i2c/busses/i2c-imx.c        | 2 +-
 drivers/i2c/busses/i2c-mv64xxx.c    | 2 +-
 drivers/i2c/busses/i2c-rockchip.c   | 2 +-
 drivers/i2c/busses/i2c-stm32.c      | 2 +-
 drivers/i2c/busses/i2c-tegra.c      | 2 +-
 9 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 5b1f456187..dbc5aa4ddf 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -558,7 +558,7 @@ static int at91_twi_probe(struct device *dev)
 
 	i2c_at91->adapter.master_xfer = at91_twi_xfer;
 	i2c_at91->adapter.dev.parent = dev;
-	i2c_at91->adapter.nr = dev->id;
+	i2c_at91->adapter.nr = -1;
 	i2c_at91->adapter.dev.of_node = dev->of_node;
 
 	rc = i2c_add_numbered_adapter(&i2c_at91->adapter);
diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index b40918932f..fb69515825 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -306,7 +306,7 @@ static int bcm283x_i2c_probe(struct device *dev)
 	}
 
 	bcm_i2c->adapter.master_xfer = bcm283x_i2c_xfer;
-	bcm_i2c->adapter.nr = dev->id;
+	bcm_i2c->adapter.nr = -1;
 	bcm_i2c->adapter.dev.parent = dev;
 	bcm_i2c->adapter.dev.of_node = np;
 
diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-cadence.c
index bf9ec30994..8551cd05da 100644
--- a/drivers/i2c/busses/i2c-cadence.c
+++ b/drivers/i2c/busses/i2c-cadence.c
@@ -422,7 +422,7 @@ static int cdns_i2c_probe(struct device *dev)
 		return err;
 
 	i2c->adapter.master_xfer = cdns_i2c_xfer;
-	i2c->adapter.nr = dev->id;
+	i2c->adapter.nr = -1;
 	i2c->adapter.dev.parent = dev;
 	i2c->adapter.dev.of_node = np;
 
diff --git a/drivers/i2c/busses/i2c-designware.c b/drivers/i2c/busses/i2c-designware.c
index 152b795c37..3ba10e172a 100644
--- a/drivers/i2c/busses/i2c-designware.c
+++ b/drivers/i2c/busses/i2c-designware.c
@@ -525,7 +525,7 @@ static int i2c_dw_probe(struct device *pdev)
 	}
 
 	dw->adapter.master_xfer = i2c_dw_xfer;
-	dw->adapter.nr = pdev->id;
+	dw->adapter.nr = -1;
 	dw->adapter.dev.parent = pdev;
 	dw->adapter.dev.of_node = pdev->of_node;
 
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 981db015ea..eabb8252ae 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -592,7 +592,7 @@ static int __init i2c_fsl_probe(struct device *pdev)
 
 	/* Setup i2c_fsl driver structure */
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
-	i2c_fsl->adapter.nr = pdev->id;
+	i2c_fsl->adapter.nr = -1;
 	i2c_fsl->adapter.dev.parent = pdev;
 	i2c_fsl->adapter.dev.of_node = pdev->of_node;
 	iores = dev_request_mem_resource(pdev, 0);
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index 44f1fd4ce6..6629e65b48 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -625,7 +625,7 @@ mv64xxx_i2c_probe(struct device *pd)
 
 	drv_data->adapter.master_xfer = mv64xxx_i2c_xfer;
 	drv_data->adapter.dev.parent = pd;
-	drv_data->adapter.nr = pd->id;
+	drv_data->adapter.nr = -1;
 	drv_data->adapter.dev.of_node = pd->of_node;
 
 	mv64xxx_i2c_hw_init(drv_data);
diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index ce029d148f..a7bd66781f 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -432,7 +432,7 @@ static int rk_i2c_probe(struct device *dev)
 		return dev_err_probe(dev, PTR_ERR(i2c->clk), "Can't get bus clk\n");
 
 	i2c->adapter.master_xfer = rockchip_i2c_xfer;
-	i2c->adapter.nr = dev->id;
+	i2c->adapter.nr = -1;
 	i2c->adapter.dev.parent = dev;
 	i2c->adapter.dev.of_node = np;
 
diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 1be52b3dd9..4d40ca3b51 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -941,7 +941,7 @@ static int __init stm32_i2c_probe(struct device *dev)
 
 	/* Setup stm32_i2c driver structure */
 	stm32_i2c->adapter.master_xfer = stm32_i2c_xfer;
-	stm32_i2c->adapter.nr = dev->id;
+	stm32_i2c->adapter.nr = -1;
 	stm32_i2c->adapter.dev.parent = dev;
 	stm32_i2c->adapter.dev.of_node = dev->of_node;
 
diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
index f86f64f573..4271a22f83 100644
--- a/drivers/i2c/busses/i2c-tegra.c
+++ b/drivers/i2c/busses/i2c-tegra.c
@@ -654,7 +654,7 @@ static int tegra_i2c_probe(struct device *dev)
 
 	i2c_dev->adapter.master_xfer = tegra_i2c_xfer;
 	i2c_dev->adapter.dev.parent = dev;
-	i2c_dev->adapter.nr = dev->id;
+	i2c_dev->adapter.nr = -1;
 	i2c_dev->adapter.dev.of_node = dev->of_node;
 
 	ret = i2c_add_numbered_adapter(&i2c_dev->adapter);

-- 
2.39.5



