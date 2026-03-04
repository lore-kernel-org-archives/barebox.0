Delivery-date: Wed, 04 Mar 2026 12:01:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyu-007xSG-1O
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:01:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxjyu-0005vP-N9
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:01:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ve5VXreL5fnJ2tloAnlZNJsJHKQP6faKtbfOncySkbI=; b=bOVFsdScbfU/s0
	Xv2j5BkRJvLNHurlNBWNsD/FsVAPm0lihOYtM/123AahHp0kOnkPDACQW8Msvw2ED8zOFMpAuHdC0
	ggmIH0jagvOyXNg6aSUvIGTPSolwxu929LMmChGmW5+qi3COIxA0UVEPaUCIiTdWcATjjH/oLKwmO
	Q5ICWqQmJGCMmZEcLNl5uZIEeX14PvjyR5YznZ1b4Q2klw6qMtAtUpfKO33GG1DqOwCFL1O2mXBqh
	gNYHKt9LKEXsA6VZ7+5ZbZ2fCoBD5jzNdyT4bIRbYWCEZIXBDnnVwEOufXy8LylkAYczHGkXxLhGM
	JB4qj0AK6iL1Osd345nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyQ-0000000H2BX-1kv3;
	Wed, 04 Mar 2026 11:01:02 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxjyN-0000000H200-3qBT
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=ve5VXreL5fnJ2tloAnlZNJsJHKQP6faKtbfOncySkbI=;
	b=gOP2dtHN2NRY6loHbDU0nACS8w+2dosdPkgH9levSo1Rv5C+l1OzqkbH/c85uMAfLCwxK5h49zPol
	 w553pgfeX8CI5LwzLadbVPhnlMcGTsKzj9hoH/RdhfhC6Oh0V9rQAvxvkiibYphAo/I2kFwSBBJYbt
	 2aqZeG2YIlpGJhsQauquI2yoCT7vsAzXO+vn4py3RGlondwkR0Ir8kM4nMh9UrZ/Gs6e5fN7jrSEcz
	 4ABNhQ3PaPYx0YONverUMDkxTobohtxXIlnQsigPFC9DxxmYB1iDfKbqR5DHSbK4WecKywVyK2d01m
	 bOcNhsfy4MJTtCyC5UYUk2j6+p8zdhw==
X-MSG-ID: 65a9a472-17b9-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 12:00:11 +0100
Message-ID: <20260304110013.495725-8-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
References: <20260304110013.495725-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030100_105221_D1C37077 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] ARM: boards: protonic-rk356x: Move bbu setup to device late init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move bbu setup to a separate function and call it from the devices_init
late initcall.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 26 +++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index 1d707bb715..5fba0be98a 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -123,10 +123,26 @@ static int prt_rk356x_mecsbc_init(void)
 	return 0;
 }
 
+static void prt_rk356x_bbu(void)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
+}
+
 static int prt_rk356x_devices_init(void)
 {
 	int ret;
 
+	prt_rk356x_bbu();
+
 	if (prt_priv.model->init) {
 		ret = prt_priv.model->init();
 		if (ret) {
@@ -157,8 +173,6 @@ static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 static int prt_rk356x_probe(struct device *dev)
 {
 	int error;
-	enum bootsource bootsource = bootsource_get();
-	int instance = bootsource_get_instance();
 	const struct prt_rk356x_model *model;
 
 	error = of_device_ensure_probed_by_alias("saradc");
@@ -172,14 +186,6 @@ static int prt_rk356x_probe(struct device *dev)
 	barebox_set_model(model->name);
 	barebox_set_hostname(model->shortname);
 
-	if (bootsource == BOOTSOURCE_MMC && instance == 1)
-		of_device_enable_path("/chosen/environment-sd");
-	else
-		of_device_enable_path("/chosen/environment-emmc");
-
-	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
-	rockchip_bbu_mmc_register("sd", 0, "/dev/mmc1");
-
 	prt_rk356x_process_adc(dev, &model->adc_channels);
 	prt_rk356x_of_fixup_hwrev(dev);
 
-- 
2.43.0



