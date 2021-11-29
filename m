Delivery-date: Mon, 29 Nov 2021 11:55:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreJM-0003dN-O2
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 11:55:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreJL-0001J7-OL
	for lore@pengutronix.de; Mon, 29 Nov 2021 11:55:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qI/xquxieYjWrgf03K0vPIlhj9g6kqL5sCE6ZnEgM70=; b=doz+rJu04vmt+i
	q51/qxcCRcdjNziVA/d0VyuhS3dgwAkhfCo/r3L/SShH9WTiSJ54qk2tSAGgh2IHPvs5ifLAfXohG
	g2vZCdxDNZSSaWAKIIrwmqkETrdxTp7TUI+euK2ZQlmMRB2ZTYDS6D0VqaQwCcR9Zf3+FyJeTBela
	7Xy1xy3+T+k5k4iWIKnYAF8XoSAYOwrR0u6F4oGLKntpEjLWaXG6eIzdInO27r6JUpsWIGO4m5UaM
	TDx3rvhPOiHJVLqYno2mKs+A3J9vk7SPQykKLamhm16B4F07r8sGn2QfR95Adny7syqFX8YCJqhoB
	CT81lRABeXS6JlseD83A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mreHG-000Spt-Id; Mon, 29 Nov 2021 10:52:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mreHB-000SpU-E7
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 10:52:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mreH8-0001Fm-0s; Mon, 29 Nov 2021 11:52:46 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1mreH7-00CipG-IC; Mon, 29 Nov 2021 11:52:45 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 29 Nov 2021 11:52:44 +0100
Message-Id: <20211129105244.3032203-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_025249_495850_8AE0A8C1 
X-CRM114-Status: GOOD (  15.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] nvmem: bsec.c: add optional permanent write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To be able to fuze MAC address we need to be able to use BSEC_SMC_PROG_OTP
instead of BSEC_SMC_WRITE_SHADOW.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/Kconfig | 11 +++++++++++
 drivers/nvmem/bsec.c  | 22 +++++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d809fb6eab..1bb477a997 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -66,6 +66,17 @@ config STM32_BSEC
 	  This adds support for the STM32 OTP controller. Reads and writes
 	  to will go to the shadow RAM, not the OTP fuses themselvers.
 
+config STM32_BSEC_WRITE
+	bool
+	prompt "Enable write support of STM32 CPUs OTP fuses"
+	depends on STM32_BSEC
+	help
+	  This adds write support to STM32 On-Chip OTP registers. Example of set
+	  MAC to 12:34:56:78:9A:BC:
+	    bsec0.permanent_write_enable=1
+	    mw -l -d /dev/stm32-bsec 0x000000e4+4 0x78563412
+	    mw -l -d /dev/stm32-bsec 0x000000e8+4 0x0000bc9a
+
 config STARFIVE_OTP
 	tristate "Starfive OTP Supprot"
 	depends on SOC_STARFIVE
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 2d35d12df3..86b943a45d 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -21,8 +21,10 @@
 #define BSEC_OTP_SERIAL	13
 
 struct bsec_priv {
+	struct device_d dev;
 	u32 svc_id;
 	struct regmap_config map_config;
+	int permanent_write_enable;
 };
 
 struct stm32_bsec_data {
@@ -59,13 +61,18 @@ static int stm32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
 	return bsec_smc(ctx, BSEC_SMC_READ_SHADOW, reg, 0, val);
 }
 
-static int stm32_bsec_reg_write_shadow(void *ctx, unsigned reg, unsigned val)
+static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
 {
-	return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
+	struct bsec_priv *priv = ctx;
+
+	if (priv->permanent_write_enable)
+		return bsec_smc(ctx, BSEC_SMC_PROG_OTP, reg, val, NULL);
+	else
+		return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
 }
 
 static struct regmap_bus stm32_bsec_regmap_bus = {
-	.reg_write = stm32_bsec_reg_write_shadow,
+	.reg_write = stm32_bsec_reg_write,
 	.reg_read = stm32_bsec_read_shadow,
 };
 
@@ -150,6 +157,10 @@ static int stm32_bsec_probe(struct device_d *dev)
 
 	priv->svc_id = data->svc_id;
 
+	dev_set_name(&priv->dev, "bsec");
+	priv->dev.parent = dev;
+	register_device(&priv->dev);
+
 	priv->map_config.reg_bits = 32;
 	priv->map_config.val_bits = 32;
 	priv->map_config.reg_stride = 4;
@@ -159,6 +170,11 @@ static int stm32_bsec_probe(struct device_d *dev)
 	if (IS_ERR(map))
 		return PTR_ERR(map);
 
+	if (IS_ENABLED(CONFIG_STM32_BSEC_WRITE)) {
+		dev_add_param_bool(&priv->dev, "permanent_write_enable",
+				NULL, NULL, &priv->permanent_write_enable, NULL);
+	}
+
 	nvmem = nvmem_regmap_register(map, "stm32-bsec");
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

