Delivery-date: Tue, 02 Jan 2024 18:02:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9b-000qIt-2F
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 18:02:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKi9a-0006zD-M7
	for lore@pengutronix.de; Tue, 02 Jan 2024 18:02:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIGg6Si/D3xlYlRIiLcvzM6063cU9EZkn6aNPV5fVKo=; b=WpnLliGen9ACTxeseSK/bKNmRM
	lLgx7YbZOaAJRidWGUQyckF4jogSKMNqjfF4NaYjlvj6Of4KJgitpXC/WMezSoGYY7bPY5yvt2aUV
	hna8u03H8JEYzqq03Sr3UbLhV0Os0sRUr/nnD8g+XWXi9X4wSovd1IIkfMdk5mEp6fIkQfBYOlKSE
	g235C4Ya2Xvl2jVJA2PknmReZQ3LcR7rA2neg58nOTjjXZB70TaXwlldppGiJ2x4W9dCJxruKXucp
	JD7+SLPEJkqMU0CNkJOsWmZssTixTM1P8PGrOZwczw0RxgtsClnjoyOhxLYXHlEA6mALGGVMLfpdT
	U6gYLPfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8b-008Xto-0c;
	Tue, 02 Jan 2024 17:01:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKi8W-008XrB-0J
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 17:01:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-0006Go-Rd; Tue, 02 Jan 2024 18:01:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8T-003DrL-AQ; Tue, 02 Jan 2024 18:01:02 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKi8U-006ocT-0v;
	Tue, 02 Jan 2024 18:01:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jan 2024 18:00:56 +0100
Message-Id: <20240102170100.1596372-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_090104_152309_49D363D6 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/7] nvmem: startfive-otp: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The max_register must be a multiple of the register stride, which is not
the case for 0x200 - 1 == 0x1ff. Instead, we should be setting
(0x1ff * 4), so fix the calculation to do this.

Fixes: 88f3d13bafc6 ("nvmem: add StarFive OTP support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/starfive-otp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/starfive-otp.c b/drivers/nvmem/starfive-otp.c
index d22350b10ef2..47b94b1399a7 100644
--- a/drivers/nvmem/starfive-otp.c
+++ b/drivers/nvmem/starfive-otp.c
@@ -172,7 +172,7 @@ static int starfive_otp_probe(struct device *dev)
 	config.reg_bits = 32;
 	config.val_bits = 32;
 	config.reg_stride = 4;
-	config.max_register = total_fuses;
+	config.max_register = (total_fuses - 1) * config.reg_stride;
 
 	priv = xzalloc(sizeof(*priv));
 
-- 
2.39.2



