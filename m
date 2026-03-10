Delivery-date: Tue, 10 Mar 2026 16:25:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-00A8Op-2H
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:25:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-0002V7-OT
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:25:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jcf2qDMYEO0ipGnYP9LfOL7sD8aUtG1hBCGLGhhO7DI=; b=ZlVgD96Bg8uB32
	uQnNr84RDbGEiXbRacp+oT+dL+faAFl4FslwXU9G0CJX3UfSS6/LmTQhdpzJZMklY+KiwmCnOuqVe
	gUT2NiyQFRFpch3HIMohZi4Emoaa53jaFzLTEblfhOKEZSzAu+MJntFP/vcPQo+gUbjmn6hZzZg2u
	or+vURXqttdstFTLEvVywQWjqKCyBQWxQsg+4JxqChZLKXVWT5Svvi+msykBB/tVpD4BYJIx1xAu6
	KaWmJoijvgB3B9MDgXQKzSqvEG7JasigAo1B/hyTfsKdOTfXX+TK3STrXfCQmRA9h6n4AHpm0Igp8
	Myah2HJLM6O5BNuwPHCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzyww-00000009neP-3KNP;
	Tue, 10 Mar 2026 15:24:46 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywq-00000009nXJ-3TsK
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=Jcf2qDMYEO0ipGnYP9LfOL7sD8aUtG1hBCGLGhhO7DI=;
	b=ucO1BsppWljEL2G8ntqUKUeUs0GY1ArFMm3unT3hwrjpD4GBeinKIlPwRppl9Vl9ncZclWqklSfRd
	 Jc3HYtP9kRdzHH/Lhd93FzDe0LhiPf0ftBQV4uszxe8a9CYiCBLBuwY48Vu4N92F1zDYd+9BuJtE2k
	 sqFrWFtTqdtc4CwL2OVlb+mE159xESjrCLLykvINJHEjlSaj9EUZo8ZQZBuJZSofyM95/klNgNZmRv
	 vv3weJfVWdgmys+oacUpCXnNhcCOkxBk8wpzL5LVE/CsFQRleJly2sctNKRbjJbesBFq8E4ZaZeup7
	 drEiOjOgfK9ey03H/JF/tx1lvgQj2Pg==
X-MSG-ID: 3fcc668f-1c95-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Tue, 10 Mar 2026 16:24:32 +0100
Message-ID: <20260310152433.786340-8-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_082441_004739_6D1AD38D 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>, David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/8] ARM: boards: protonic-rk356x: Move bbu setup to device late init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move bbu setup to a separate function and call it from the devices_init
late initcall.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 26 +++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index e8ec217dc6..af1fd9fc65 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -123,6 +123,20 @@ static int prt_rk356x_mecsbc_init(void)
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
@@ -130,6 +144,8 @@ static int prt_rk356x_devices_init(void)
 	if (!prt_priv.model)
 		return 0;
 
+	prt_rk356x_bbu();
+
 	if (prt_priv.model->init) {
 		ret = prt_priv.model->init();
 		if (ret) {
@@ -160,8 +176,6 @@ static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 static int prt_rk356x_probe(struct device *dev)
 {
 	int error;
-	enum bootsource bootsource = bootsource_get();
-	int instance = bootsource_get_instance();
 	const struct prt_rk356x_model *model;
 
 	error = of_device_ensure_probed_by_alias("saradc");
@@ -175,14 +189,6 @@ static int prt_rk356x_probe(struct device *dev)
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



