Delivery-date: Mon, 09 Jan 2023 14:10:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruq-006gFu-FS
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 14:10:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEruo-0001V9-BJ
	for lore@pengutronix.de; Mon, 09 Jan 2023 14:10:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GxR4x3sLMwqUXNvIz3h/rsT7R0yqRk8SH4xpBEIrDDI=; b=nhxKIfwacRI3y6ICZ6u3ulL46D
	tNKe3s/eXeIg3lZbyV2qDA6/xX3y8HqsVeIB6VjgdeTzTeA4g0aipFO0tZ3YoVln9IDq+bXkN1GCh
	z5YacSbDDs8wrYzF/qwPpjFk8zXO2spPVol3p+0ssMPKilbR3MVCN1pMuAcZHBnP8WT6Tr44roABs
	+wlwog5mmbJlJW06LxDt1ySULvGxf5paxv2xr2lIWM8P8iWLnGIomSJGasycRzS3I4hKoGIkCgpeh
	TBnPg76/OX2xJchUgWwTnefqXFwiP9PX/L1Vm/g7W+CHUYF85HhSGai9BCBtZQG8/XcOFU9zOzAvO
	82NsDbdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErtI-001RQw-T6; Mon, 09 Jan 2023 13:08:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErt9-001RLe-FN
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 13:08:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt5-0000qm-Gf; Mon, 09 Jan 2023 14:08:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt4-004qvt-RY; Mon, 09 Jan 2023 14:08:26 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pErt3-006zGf-FM; Mon, 09 Jan 2023 14:08:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 14:08:16 +0100
Message-Id: <20230109130822.1657470-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
References: <20230109130822.1657470-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_050831_546758_E13D34C5 
X-CRM114-Status: GOOD (  12.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/11] i2c: at91: extend for SAMA5D4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver was recently updated for SAMA5D2 support and SAMA5D4/SAM9x60
is straight-forward to add on top. While at it, drop has_clear_cmd,
which denotes hardware I2C bus recovery support. We never used the
member.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-at91.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 2fe21a7ec95d..86fa4c03b7bf 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -78,7 +78,6 @@ struct at91_twi_pdata {
 	bool has_dig_filtr;
 	bool has_adv_dig_filtr;
 	bool has_ana_filtr;
-	bool has_clear_cmd;
 };
 
 struct at91_twi_dev {
@@ -438,6 +437,13 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_unre_flag = false,
 };
 
+static struct at91_twi_pdata sama5d4_config = {
+	.clk_max_div = 7,
+	.clk_offset = 4,
+	.has_hold_field = true,
+	.has_dig_filtr = true,
+};
+
 static struct at91_twi_pdata sama5d2_config = {
 	.clk_max_div = 7,
 	.clk_offset = 3,
@@ -492,9 +498,15 @@ static struct of_device_id at91_twi_dt_ids[] = {
 	}, {
 		.compatible = "atmel,at91sam9x5-i2c",
 		.data = &at91sam9x5_config,
+	}, {
+		.compatible = "atmel,sama5d4-i2c",
+		.data = &sama5d4_config,
 	}, {
 		.compatible = "atmel,sama5d2-i2c",
 		.data = &sama5d2_config,
+	}, {
+		.compatible = "microchip,sam9x60-i2c",
+		.data = &sama5d2_config,
 	}, {
 		/* sentinel */
 	}
-- 
2.30.2



