Delivery-date: Tue, 17 Dec 2024 15:16:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNYMo-009GBx-1u
	for lore@lore.pengutronix.de;
	Tue, 17 Dec 2024 15:16:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNYMo-0008I6-Gk
	for lore@pengutronix.de; Tue, 17 Dec 2024 15:16:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d9UVK2bij97gRHIiWfJbdKOkHs7LTvE9mEFPV5xOTmE=; b=WqlKv5iu1jlAEjCYyWfIiUNoIN
	Nfu7OKMwYWtn3u7arz7pCyA80spST+gEsIINUwPJiDDkrUL7UWxu8wQgpmCyBURd+quAUBTq2iymi
	9ChXZzF1csGdXq9+sBw6yeNQMczTVGRzMccWnbNn6LVva6XjcEhUvdOAl5E1bHIRaW+OmU/nXxUjd
	tvCUeFKy42eK01RjUzV6z7yP9TSVqH7tHEqPkCCObMlGoARVMyU6mV7SBZgMmiCvSyKjiwdjAG8gU
	si8h2Ux4XUwC+vj9Xk+OYz2qSAldwcmBnshR+J2K491Vgtjh06lYMz65+/4oAfdwXskfXMvc4fIlw
	NamMUqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYM9-0000000Di2k-1HAL;
	Tue, 17 Dec 2024 14:15:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNYFY-0000000DgbP-2P4o
	for barebox@lists.infradead.org;
	Tue, 17 Dec 2024 14:08:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNYFW-0005Wn-W0; Tue, 17 Dec 2024 15:08:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNYFV-003sHx-2e;
	Tue, 17 Dec 2024 15:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNYFW-00FUkb-1d;
	Tue, 17 Dec 2024 15:08:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Dec 2024 15:08:33 +0100
Message-Id: <20241217140833.3693113-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_060836_618154_CBE573DA 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] video: dw-hdmi: fix I2C controller probe breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The dw-hdmi I2C controller binding doesn't support listing I2C slaves
as child nodes in the device tree. This is fine as the EDID I2C address
is well-known, but trying to parse the dw-hdmi device tree node as if it
were a normal I2C controller will fail:

  ERROR: i2c11: of_i2c: invalid reg on /hdmi@fe0a0000/ports

Fix this by only use the device tree node to find the alias if any and
not passing it alone to the I2C core.

Fixes: 474b6cb42ea5 ("video: dw-hdmi: populate missing I2C adapter device node")
Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/dw-hdmi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/video/dw-hdmi.c b/drivers/video/dw-hdmi.c
index cd5de17e9bd7..b86f3c7366c1 100644
--- a/drivers/video/dw-hdmi.c
+++ b/drivers/video/dw-hdmi.c
@@ -433,9 +433,15 @@ static struct i2c_adapter *dw_hdmi_i2c_adapter(struct dw_hdmi *hdmi)
 
 	adap = &i2c->adap;
 	adap->dev.parent = hdmi->dev;
-	adap->dev.of_node = hdmi->dev->of_node;
 	adap->master_xfer = dw_hdmi_i2c_xfer;
-	adap->nr = -1;
+
+	/*
+	 * The binding doesn't support listing slaves as OF child nodes,
+	 * therefore we use the device tree node only to check if
+	 * there is an alias.
+	 */
+	adap->dev.of_node = NULL;
+	adap->nr = of_alias_get_id(hdmi->dev->of_node, "i2c");
 
 	i2c->rinfo.sda_gpio = of_get_named_gpio_flags(hdmi->dev->of_node,
 							  "sda-gpios", 0,
-- 
2.39.5



