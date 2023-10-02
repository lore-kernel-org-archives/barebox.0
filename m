Delivery-date: Mon, 02 Oct 2023 12:18:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0Z-001uHO-Dg
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0W-00042X-FA
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dvTl/Ea73zKKmOL1mDvtRB7y6BazQIWsN9sh/IVPgqg=; b=MglwoqIeMlHonLri+nV/8ARgSk
	LXmm4kwKwTi5ccwA2nhJ6BGY6aKKA2Itf2RmM5aXvTIjDR44+oljiD3Uw4kjZ9dlQAm+Vxy7mSfM4
	XakhraJpvf8t0B4NhfRfQ3ks61ydxdxvErmdNWUxGviVhJ5KCqpQdZ3B0QKkN1HhAUSr8fuOPMm2Z
	ujiQa74cN8QlFKC1Nd/fu4RRYROB01fCbLJBoI4K9OuLi/gE30mm0fGXnXGZ9VcjjrQUDD8+hvBr5
	PxbavvBnrSEK5Z+EWAM96rnbQvFTQp89O/Z8+j85o3NBsHuGtpsEioz6sFWZdxAEmrTmpD+0lZGCJ
	FflWVbjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzK-00CImy-0m;
	Mon, 02 Oct 2023 10:17:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIh1-2y
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TT-Bs; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2Q-M5; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xLJ-23;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:50 +0200
Message-Id: <20231002101654.2373000-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002101654.2373000-1-o.rempel@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_980348_5C986B23 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 06/10] ARM: i.MX8MP: skov: refactor bootsource and BBU handlers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rework boot source and Barebox Update (BBU) handlers to support
multiple storage options in a scalable way. This commit allows for
easier extension and better maintainability.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 105 +++++++++++++++++++++++++---
 1 file changed, 95 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 398c74677d..58aca69236 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -9,21 +9,106 @@
 #include <mach/imx/bbu.h>
 #include <mach/imx/iomux-mx8mp.h>
 
-static int skov_imx8mp_probe(struct device *dev)
+struct skov_imx8mp_storage {
+	const char *name;
+	const char *env_path;
+	const char *dev_path;
+	enum bootsource bootsource;
+	int bootsource_ext_id;
+	bool mmc_boot_part;
+};
+
+enum skov_imx8mp_boot_source {
+	SKOV_BOOT_SOURCE_EMMC,
+	SKOV_BOOT_SOURCE_SD,
+	SKOV_BOOT_SOURCE_UNKNOWN,
+};
+
+static const struct skov_imx8mp_storage skov_imx8mp_storages[] = {
+	[SKOV_BOOT_SOURCE_EMMC] = {
+		/* default boot source */
+		.name = "eMMC",
+		.env_path = "/chosen/environment-emmc",
+		.dev_path = "/dev/mmc2",
+		.bootsource = BOOTSOURCE_MMC,
+		.bootsource_ext_id = 2,
+		.mmc_boot_part = true,
+	},
+	[SKOV_BOOT_SOURCE_SD] = {
+		.name = "SD",
+		.env_path = "/chosen/environment-sd",
+		.dev_path = "/dev/mmc1.barebox",
+		.bootsource = BOOTSOURCE_MMC,
+		.bootsource_ext_id = 1,
+	},
+};
+
+static void skov_imx8mp_enable_env(struct device *dev,
+				   const struct skov_imx8mp_storage *st,
+				   bool *enabled)
 {
-	int emmc_bbu_flag = 0;
-	int sd_bbu_flag = 0;
+	int ret;
 
-	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() == 1) {
-		of_device_enable_path("/chosen/environment-sd");
-		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	if (bootsource_get() != st->bootsource ||
+	    bootsource_get_instance() != st->bootsource_ext_id)
+		return;
+
+	ret = of_device_enable_path(st->env_path);
+	if (ret) {
+		dev_err(dev, "Failed to enable environment path: %s, %pe\n",
+			st->env_path, ERR_PTR(ret));
+		return;
+	}
+
+	*enabled = true;
+}
+
+static void skov_imx8mp_add_bbu(struct device *dev,
+				const struct skov_imx8mp_storage *st,
+				bool default_env)
+{
+	unsigned long flags = 0;
+	int ret;
+
+	if (default_env)
+		flags |= BBU_HANDLER_FLAG_DEFAULT;
+
+	if (st->mmc_boot_part) {
+		ret = imx8m_bbu_internal_mmcboot_register_handler(st->name,
+								  st->dev_path,
+								  flags);
 	} else {
-		of_device_enable_path("/chosen/environment-emmc");
-		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+		ret = imx8m_bbu_internal_mmc_register_handler(st->name,
+							      st->dev_path,
+							      flags);
+	}
+	if (ret)
+		dev_err(dev, "Failed to register %s BBU handler: %pe\n",
+			st->name, ERR_PTR(ret));
+}
+
+static void skov_imx8mp_init_storage(struct device *dev)
+{
+	int default_boot_src = SKOV_BOOT_SOURCE_EMMC;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(skov_imx8mp_storages); i++) {
+		bool enabled_env = false;
+
+		skov_imx8mp_enable_env(dev, &skov_imx8mp_storages[i],
+				       &enabled_env);
+		if (enabled_env)
+			default_boot_src = i;
 	}
 
-	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
-	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
+	for (i = 0; i < ARRAY_SIZE(skov_imx8mp_storages); i++)
+		skov_imx8mp_add_bbu(dev, &skov_imx8mp_storages[i],
+				    i == default_boot_src);
+}
+
+static int skov_imx8mp_probe(struct device *dev)
+{
+	skov_imx8mp_init_storage(dev);
 
 	return 0;
 }
-- 
2.39.2



