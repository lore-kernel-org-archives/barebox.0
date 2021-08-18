Delivery-date: Wed, 18 Aug 2021 14:22:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa8-0005YQ-HU
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 14:22:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGKa2-0004vn-FH
	for lore@pengutronix.de; Wed, 18 Aug 2021 14:22:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QTk/ZECou5w3TYNLB+m7UlnO2gDE00Ajo/pqHv4qJk=; b=afAtvKAo25ZVDB
	9W6/UqO5U3EoH4xZaVClLdqMawApLWpto8Wa+mjLPion7RY8tK7F/+ZiISYXjY0r9gSRXT2k7ucM8
	MCCNN0h+CW4eWqyLzKGhhechc1tOb9cDT9jyaupe26Bf5aEh1NzAjW42lm1cgjAKrOMyGF5ssPsJO
	bfqTL0jaZZqB4/sW1Vh8lPtnaVbQaP9M+uZ6dTCaipAaDUqo4hMmugc3xSczUv8HzMcsahk3A8I2C
	DMQTiIARA1rXDqXKOy+b53Ei2gw8sQp4JV3T9MpvpV39h0KLefTetUl11Up9dkwKVps03+EZlwSeJ
	VJJ+fPWl3vDZfoY1aXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKYG-005Tiq-HI; Wed, 18 Aug 2021 12:20:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKXy-005Tbk-TB
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:19:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXs-0004Jp-Lb; Wed, 18 Aug 2021 14:19:48 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mGKXr-0006nv-Je; Wed, 18 Aug 2021 14:19:47 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 18 Aug 2021 14:19:44 +0200
Message-Id: <20210818121945.26089-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818121945.26089-1-o.rempel@pengutronix.de>
References: <20210818121945.26089-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_051955_012865_298D7CBD 
X-CRM114-Status: GOOD (  14.16  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/6] ARM: boards: protonic-imx6: Add emmc_usdhc machine
 data variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

The i.MX6 ultralite only has 2 usdhc ports which will be indexed as '0'
and '1'. The bbu setup code assumes it is attached as '/dev/mmc2'.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 30 ++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 38630dc2af..0cfafdcc26 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -70,6 +70,7 @@ struct prt_machine_data {
 	unsigned int hw_rev;
 	unsigned int i2c_addr;
 	unsigned int i2c_adapter;
+	unsigned int emmc_usdhc;
 	unsigned int flags;
 	int (*init)(struct prt_imx6_priv *priv);
 };
@@ -411,6 +412,7 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 {
 	const struct prt_machine_data *dcfg = priv->dcfg;
 	u32 emmc_flags = 0;
+	char *devicefile;
 	int ret;
 
 	if (dcfg->flags & PRT_IMX6_BOOTSRC_SPI_NOR) {
@@ -422,7 +424,12 @@ static int prt_imx6_bbu(struct prt_imx6_priv *priv)
 		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
 	}
 
-	ret = imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2",
+	devicefile = basprintf("mmc%d", dcfg->emmc_usdhc);
+	if (!devicefile) {
+		ret = -ENOMEM;
+		goto exit_bbu;
+	}
+	ret = imx6_bbu_internal_mmcboot_register_handler("eMMC", devicefile,
 						   emmc_flags);
 	if (ret)
 		goto exit_bbu;
@@ -807,6 +814,7 @@ static const struct prt_machine_data prt_imx6_cfg_alti6p[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
 		.hw_id = UINT_MAX
@@ -819,6 +827,7 @@ static const struct prt_machine_data prt_imx6_cfg_victgo[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_victgo,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -832,12 +841,14 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x50,
 		.i2c_adapter = 1,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = HW_TYPE_VICUT1,
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_yaco,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -845,6 +856,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1[] = {
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_new,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -858,12 +870,14 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x50,
 		.i2c_adapter = 1,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = HW_TYPE_VICUT1,
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_yaco,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -871,6 +885,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_yaco,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -878,6 +893,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicut1q[] = {
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_new,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -891,6 +907,7 @@ static const struct prt_machine_data prt_imx6_cfg_vicutp[] = {
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.init = prt_imx6_init_kvg_new,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
@@ -904,6 +921,7 @@ static const struct prt_machine_data prt_imx6_cfg_lanmcu[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
 	}, {
 		.hw_id = UINT_MAX
@@ -916,6 +934,7 @@ static const struct prt_machine_data prt_imx6_cfg_plybas[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR | PRT_IMX6_USB_LONG_DELAY,
 	}, {
 		.hw_id = UINT_MAX
@@ -928,6 +947,7 @@ static const struct prt_machine_data prt_imx6_cfg_plym2m[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR | PRT_IMX6_USB_LONG_DELAY,
 	}, {
 		.hw_id = UINT_MAX
@@ -940,6 +960,7 @@ static const struct prt_machine_data prt_imx6_cfg_prti6g[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 1,
 		.init = prt_imx6_init_prti6g,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
@@ -953,12 +974,14 @@ static const struct prt_machine_data prt_imx6_cfg_prti6q[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 2,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = HW_TYPE_PRTI6Q,
 		.hw_rev = 1,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = UINT_MAX
@@ -971,6 +994,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtmvt[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = UINT_MAX
@@ -983,6 +1007,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtrvt[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_SPI_NOR,
 	}, {
 		.hw_id = UINT_MAX
@@ -995,6 +1020,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtvt7[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
 	}, {
 		.hw_id = UINT_MAX
@@ -1007,6 +1033,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd2[] = {
 		.hw_rev = 0,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
 		.hw_id = UINT_MAX
@@ -1019,6 +1046,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd3[] = {
 		.hw_rev = 2,
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
+		.emmc_usdhc = 2,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
 		.hw_id = UINT_MAX
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

