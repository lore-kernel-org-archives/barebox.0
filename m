Delivery-date: Wed, 03 Jun 2026 15:34:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkG-001wS8-2f
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 15:34:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkG-00049Z-64
	for lore@pengutronix.de; Wed, 03 Jun 2026 15:34:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QP9hLwHfBmFYcJw7vT2dzFRETBjb8iXZFhpwNAsofvc=; b=JzYC8lO1i3qXJSUnu5Q0jFP9Yj
	btR/3ygN7m3voIwPdQhPg2PvzpRj7xVJc0BmUgLmVPw+lx5Oiesi5V08u0kZdpTmYCr9hs9EkLV4S
	VeVzUuhFKrYXgiDNdIuqhdrFuPmSwLUnVBRB2yYUnvsAN6zV6vXSKNg2pF2xZIWItlgctGRdYQyMt
	m8c4AqnFraFhRHvS6/dJgpwYZjCmiC+QG9Zny4zl7EnMlhhqdxdQSzegj09Y7hh4pXGwRq8JhJABn
	OsljhX5wB+rNPyD3YtyfbGp9Srx9RPdgwPr4SsZHfd+4RXFUvdUtkSsEaU2GF0XkJ6/Qb3LOsNu8I
	9jlmPDYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljA-0000000FBFf-3Zlt;
	Wed, 03 Jun 2026 13:33:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj7-0000000FBDb-30FO
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-0003n7-CV; Wed, 03 Jun 2026 15:33:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-000v6z-11;
	Wed, 03 Jun 2026 15:33:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-00000009uCD-11Uu;
	Wed, 03 Jun 2026 15:33:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 03 Jun 2026 15:33:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-feature-snvs-imx6ul-v1-1-6305f63bd3fa@pengutronix.de>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063345_777557_0A4E863E 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] nvmem: snvs_lpgpr: remove unnecessary cfg->name
 assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The name is now fixed to `snvs` since commit:

8f52947260 ("nvmem: snvs_lpgpr: set nvmem config name to snvs").

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/nvmem/snvs_lpgpr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index 95ce023a14..6c1d5a836f 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -117,7 +117,6 @@ static int snvs_lpgpr_probe(struct device *dev)
 		return PTR_ERR(priv->regmap);
 
 	cfg = &priv->cfg;
-	cfg->name = dev_name(dev);
 	cfg->dev = dev;
 	cfg->priv = priv;
 	cfg->stride = 4;

-- 
2.47.3



