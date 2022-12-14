Delivery-date: Wed, 14 Dec 2022 12:00:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUm-003YOD-VU
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 12:00:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5PUl-00067B-Qc
	for lore@pengutronix.de; Wed, 14 Dec 2022 12:00:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cvbedB8rulagUzQwC5aDBQ/zksrlBqUONxECFxCXl/U=; b=0da7JZ1gWlaC9tano0USvMJUp0
	yEQ3LATl9F6Usyldr8gFKRCiiMYdwjZD4I+u4+B3FPkQUUdGYEgBCiRnwe0Dj/Z2whLYsZMyxsGey
	qYV0/1ct+bkWpGjIovbbtNFEV5alOA/MEgRIUVA7KFYg0otZQ55uSAoU+h7zegsrKyaY09mGh2buI
	RfxTr2NRUNLUjqX5dCgM18e0OZLRUSVexE+E20esp67MQVZxYlkddQoE/qrGEO5gTIvQ8XeSj7i1/
	paPiL6FxiwrzGY3LZMHerlS03Su6fiVpLIj7Iyyn/MmLxBbiEIv6sSJbptXX0NDoTBPmjRsmNoH0/
	xTJB1KLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTe-00Fljw-Hq; Wed, 14 Dec 2022 10:59:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5PTA-00FlPu-Dy
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 10:58:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT9-0005E8-6C; Wed, 14 Dec 2022 11:58:35 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT7-004RvD-RJ; Wed, 14 Dec 2022 11:58:34 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p5PT6-003XhE-F3; Wed, 14 Dec 2022 11:58:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Dec 2022 11:58:25 +0100
Message-Id: <20221214105831.844421-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214105831.844421-1-a.fatoum@pengutronix.de>
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_025836_500767_2515410B 
X-CRM114-Status: GOOD (  11.51  )
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
Subject: [PATCH 05/11] i2c: at91: extend for SAMA5D4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver was recently updated for SAMA5D2 support and SAMA5D4/SAM9x60
is straight-forward to add on top. While at it, drop has_clear_cmd,
which denotes hardware I2C bus recovery support. We never used the
member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-at91.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index b100dc6c17b5..1feae6cbf067 100644
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



