Delivery-date: Mon, 05 Sep 2022 17:36:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE95-007ejg-VC
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE96-00028P-4M
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eB6D0JIP/Q2IZ4edlwJcq0h/HGenQu0ypv8iupYDFlI=; b=0VRFcR9qRF4K8CtbbsT5zC0rer
	PDF0xEfHZ5gBNl+WMGBCg+bLdrYgSUfwRklMJQyyhs2J1guChIkM0M9cpMHepkciF3wYUDdgTwEwK
	kQXc5+0CzqmDbGGzRM6D3CW5pm+qwqQMGPt9n1lclSpzfFe+pdjnz/xKlKxeg26WrTEMAcQHQEN2F
	xC5MjVBV593QFI6n93IAzaVhBM8L+dVMEIbqJst4TH4hMj7eGo/2e+wSr4A9gvqVr0SVIIGucB9Iu
	btPWeHInIuvwEAcsiQqWDQLr56zsgip7ImukJcyNh80/5Vz7BcQIdbfXnnlKUB3OjI7CatBS32qdD
	+P/yMXdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE7O-0062Dc-5w; Mon, 05 Sep 2022 15:34:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q2-00H460-Nq
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=eB6D0JIP/Q2IZ4edlwJcq0h/HGenQu0ypv8iupYDFlI=; b=oI+vl8ojXSGofMfvn7rVq6Gbqi
	JmfNnU9tJXuUKG6E7YcxxLDY4c+V8GttG1kdNe+OoQMuUSTSr5TrKTihGMbLjdUN0h2VFEi/caetb
	mdyARjyHxQuc223GcSZCOZ1ltqeo4E1/bTl7OO4bnhx3j35wHbGnznwFP4V3bx1WEu6GngU3hPs5G
	bHy9avnwRXqlMBcwoZofk+xfzLnpxIuHId0vKviRKb2/h+vnxdCiwXj2Mc+A/9kAUXo8r75dn/ZaI
	DhUf3cU0K5xk/u296YWFhHggmdqjz4niZskYrN5OpzbdyqP6rpnRetfVSV/On31EFLjs24D/joeyZ
	RCDCKI2w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-009MuS-0a
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008JP-Uw; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0042HX-7r; Mon, 05 Sep 2022 11:56:08 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wes-3i; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:51 +0200
Message-Id: <20220905095557.596891-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105615_172148_6C5F1E71 
X-CRM114-Status: UNSURE (   8.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 26/32] phy: core: drop useless else clause
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ret is not read below, so we don't need this override.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/phy/phy-core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 8a57bd1aa9d4..3a36f0a1b26d 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -169,8 +169,6 @@ int phy_power_on(struct phy *phy)
 			dev_err(&phy->dev, "phy poweron failed --> %d\n", ret);
 			goto out;
 		}
-	} else {
-		ret = 0; /* Override possible ret == -ENOTSUPP */
 	}
 	++phy->power_count;
 
-- 
2.30.2



