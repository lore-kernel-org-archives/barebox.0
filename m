Delivery-date: Tue, 10 Mar 2026 16:25:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-00A8Od-1V
	for lore@lore.pengutronix.de;
	Tue, 10 Mar 2026 16:25:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzyxK-0002Up-Im
	for lore@pengutronix.de; Tue, 10 Mar 2026 16:25:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJKRTRSzzvGb9195m4wj8nCk+MK05rTTeERCA2A3DmQ=; b=1x9nZRa3o8U5/w
	4wmrDvrazAvLIhUK4DRb0FFD6Hk/Ev9c6Sho06QTbM6k4qsi4D8/q5+6GRqogYD48Md52rZ8AeV2N
	g5ADyzKEmISe5Y5Vus9QCQ7RJB6EpebW8OfBE9t51g+EOcpebdvLhrr/cwFW6Mo9FAUQDjRBpVQJR
	kDfrZNUrqpEbaBxa0w+hDDjawRQTeE20mwjZ2aztYsbAPSr+VH4lObHhbeIwuHt0kjWPmKW3ez08t
	ggcrqxVdtkPUXybyCYmb+6pGKvtb4D71bOePB7LOS3csH/k2crgumb6X5wIfra56tuPt8dgkHJ7bq
	rt84PihqzyA2ese3tbyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywx-00000009nf1-0h6H;
	Tue, 10 Mar 2026 15:24:47 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzywr-00000009nXC-0RB4
	for barebox@lists.infradead.org;
	Tue, 10 Mar 2026 15:24:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=KJKRTRSzzvGb9195m4wj8nCk+MK05rTTeERCA2A3DmQ=;
	b=vnUCiaKOZlD4adEWXdlHGXDBHg31bAkpvajjfmKhFeMZmMbxCICF3pzV+sgRTC+FB6p5DUk5UBQuF
	 o02YNtgQN/+UDLqlcIz6lG2ZjRCmMsDYuA5PeBsiNN6IUcbc8zcNdiYbk0rFYM5TKObxb2fPGt9pAO
	 ejGgEa9TMrwHVxO0dWDkFSCIJKKzumhyPId8yWRB51q9c+XFQwHEWIYw6dSrdZoOX5x2mxb/Uh8l6L
	 2XPFLTDtR5jswTdiYeY/RgjpTapUz4peeIxdzHxrU1SgO3DOElY4x3tqF5cfhbYrUGAbO0Bx7jpQCd
	 OaP1d5oN3GcgmIPlkKpzvyo/G19SGig==
X-MSG-ID: 3f4826f5-1c95-11f1-bcce-00505681446f
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Tue, 10 Mar 2026 16:24:28 +0100
Message-ID: <20260310152433.786340-4-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
References: <20260310152433.786340-1-robin.van.der.gracht@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_082441_274235_FCDC5777 
X-CRM114-Status: GOOD (  15.52  )
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
Subject: [PATCH v2 3/8] ARM: boards: protonic-rk356x: Use devicetree alias for saradc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using an alias in the device tree is cleaner and more flexible than a
hard coded address. This change paves the way for adding support for a
chip with the saradc at a different address (i.e. RK3562) later on.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/boards/protonic-rk356x/board.c | 18 ++++++++++--------
 arch/arm/dts/rk3568-mecsbc.dts          |  1 +
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/protonic-rk356x/board.c b/arch/arm/boards/protonic-rk356x/board.c
index c01438847a..aec0303e94 100644
--- a/arch/arm/boards/protonic-rk356x/board.c
+++ b/arch/arm/boards/protonic-rk356x/board.c
@@ -40,7 +40,7 @@ static int saradc_get_value(const char *chan)
 
 static bool prt_rk356x_get_usb_boot(void)
 {
-	return saradc_get_value("aiodev0.in_value0_mV") < 74;
+	return saradc_get_value("saradc.in_value0_mV") < 74;
 }
 
 static int prt_rk356x_adc_id_values[] = {
@@ -64,8 +64,8 @@ static int prt_rk356x_get_adc_id(const char *chan)
 
 static void prt_rk356x_process_adc(struct device *dev)
 {
-	prt_priv.hw_id = prt_rk356x_get_adc_id("aiodev0.in_value1_mV");
-	prt_priv.hw_rev = prt_rk356x_get_adc_id("aiodev0.in_value3_mV");
+	prt_priv.hw_id = prt_rk356x_get_adc_id("saradc.in_value1_mV");
+	prt_priv.hw_rev = prt_rk356x_get_adc_id("saradc.in_value3_mV");
 
 	dev_add_param_uint32_ro(dev, "boardrev", &prt_priv.hw_rev, "%u");
 	dev_add_param_uint32_ro(dev, "boardid", &prt_priv.hw_id, "%u");
@@ -123,14 +123,16 @@ static int prt_rk356x_of_fixup_hwrev(struct device *dev)
 
 static int prt_rk356x_probe(struct device *dev)
 {
-	int ret = 0;
+	int error;
 	enum bootsource bootsource = bootsource_get();
 	int instance = bootsource_get_instance();
 	const struct prt_rk356x_model *model;
-	struct device_node *np;
 
-	np = of_find_node_by_name_address(NULL, "saradc@fe720000");
-	of_device_ensure_probed(np);
+	error = of_device_ensure_probed_by_alias("saradc");
+	if (error) {
+		pr_err("saradc is not available\n");
+		return error;
+	}
 
 	model = device_get_match_data(dev);
 
@@ -148,7 +150,7 @@ static int prt_rk356x_probe(struct device *dev)
 	prt_rk356x_process_adc(dev);
 	prt_rk356x_of_fixup_hwrev(dev);
 
-	return ret;
+	return 0;
 }
 
 static const struct prt_rk356x_model mecsbc = {
diff --git a/arch/arm/dts/rk3568-mecsbc.dts b/arch/arm/dts/rk3568-mecsbc.dts
index 1beea32f03..7407f59f9e 100644
--- a/arch/arm/dts/rk3568-mecsbc.dts
+++ b/arch/arm/dts/rk3568-mecsbc.dts
@@ -10,6 +10,7 @@ / {
 
 	aliases {
 		state = &state_emmc;
+		saradc = &saradc;
 	};
 
 	chosen: chosen {
-- 
2.43.0



