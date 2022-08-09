Delivery-date: Tue, 09 Aug 2022 08:26:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgl-00GzpH-8K
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:26:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIgm-0006qU-2a
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:26:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XFt1gbr3oXFWWrEAp4PPSDJx59d52QbrZIdCTcr+zss=; b=Jb4YWtxiOEhsacoFtItg+gKwwG
	QMLGyO5zksBuKR9qYTLWMMag1wgZk8dSgm6eoHkGUjciS3NL3abENUw59lTrti350wU4JSIONhCjr
	93cMSu2vqVaczaReu+CXFQhv3ph26yUe75DlHmAmGmJHoK2C/aGB/1CetQM5kGKhH2di2F5ryEJ6F
	JPgQWnv5HosrmW8KWnTVfvbkr5oRFJdu6VUeKorLti5vefGYz3D2YA/xDQXT7jkqNoQV2LyBgm4hh
	TdalMTpNzgCKdYHYyP22Knb20izSu4W5CXIHZ2T7KhRFXoseKIGLL4Bt2knS4XmN8IDENzomUNMOZ
	unKmpi2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfV-001uet-1h; Tue, 09 Aug 2022 06:24:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIfK-001ubZ-4B
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:24:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIfA-0006Si-TD; Tue, 09 Aug 2022 08:24:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf7-002eYq-Tw; Tue, 09 Aug 2022 08:24:24 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIf9-007L9d-Bk; Tue, 09 Aug 2022 08:24:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:24:20 +0200
Message-Id: <20220809062422.1749563-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809062422.1749563-1-a.fatoum@pengutronix.de>
References: <20220809062422.1749563-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232434_199455_5F3AE145 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] net: designware: eqos: stm32: remove duplicate error message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_bulk_enable will already print an error message, so printing one
more is unnecessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/designware_stm32.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 0a5ced98f522..43f2d0987c8f 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -163,14 +163,7 @@ static int eqos_init_stm32(struct device_d *dev, struct eqos *eqos)
 		dev_dbg(dev, "No phy clock provided. Continuing without.\n");
 	}
 
-	ret = clk_bulk_enable(priv->num_clks, priv->clks);
-	if (ret < 0) {
-		eqos_err(eqos, "clk_bulk_enable() failed: %s\n",
-			 strerror(-ret));
-		return ret;
-	}
-
-	return 0;
+	return clk_bulk_enable(priv->num_clks, priv->clks);
 }
 
 static struct eqos_ops stm32_ops = {
-- 
2.30.2



