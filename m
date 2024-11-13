Delivery-date: Wed, 13 Nov 2024 09:30:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lS-001MWR-2Y
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 09:30:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tB8lS-0004QV-8f
	for lore@pengutronix.de; Wed, 13 Nov 2024 09:30:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BBFNCZL3cTvtCySucsZ2GiaTmKI7WXXMQiNTlEtjEtU=; b=xJOAYWJj9N0Dbuobz1gs2tZf9N
	9Lk03BVmjdB8Vvz6OLbGwcUI1BxtDQ503S2Xqlfy+/tRMV/y83yAlQwwFxH9jmk4JA9fFXkWvA6u6
	Xj+OKhYrx0IF5is4VsXGuO8NjfiP1FX/2MQ0MOIlp5Gl/A1R9E46kX0psmN1uoUsCj3FnmqJVTKOb
	kryG6zxWA7G7vq8HiNolQdsuxlWVWiF31QPnEaP1izlhvFQFU8CtML2QdUR26Rgwjd7TBvC5LHD3v
	fAn1QzCnuzR02SrlDYrw0/49wCq4+GziKGaQCMhG30cI2Fjr4u5Ma4kp6uihOSDZPSmZLkuq3ewZC
	M/Kg9M8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8kp-00000006656-2GNc;
	Wed, 13 Nov 2024 08:29:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8km-0000000664Q-0WUg
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 08:29:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00048S-Qd; Wed, 13 Nov 2024 09:29:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-000XxU-1y;
	Wed, 13 Nov 2024 09:29:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tB8kk-00FKcT-1l;
	Wed, 13 Nov 2024 09:29:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Nov 2024 09:29:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-davinci-mdio-clk-fix-v1-2-6a98c9864bf6@pengutronix.de>
References: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
In-Reply-To: <20241113-davinci-mdio-clk-fix-v1-0-6a98c9864bf6@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731486570; l=672;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=C1b0og4K2CZWIdmEKiB+iLnLHVanpRcRDadlF31QkE0=;
 b=iIrg36TJlyEp/yuglIRQhHkijosPzhjAp8BUE5zjYuZLbbSbscmttZ0r+ctqeJWHGBuRYxQ/7
 uMxP7y8Y+RfAd4Y6ihpIiO1jtcSaTHx22gu2Cxn5kOXE4JRwsCCO1Ca
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_002932_199785_51B8AA96 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] net: davinci_mdio: initialize priv->dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct cpsw_mdio_priv has a struct device *dev member which is used, but
never initialized. Add the missing initialization.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/davinci_mdio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
index fad14e92ea..ef08911f3f 100644
--- a/drivers/net/davinci_mdio.c
+++ b/drivers/net/davinci_mdio.c
@@ -113,6 +113,7 @@ static int cpsw_mdio_probe(struct device *dev)
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
 
 	/* If we can't request I/O memory region, we'll assume parent did
 	 * it for us

-- 
2.39.5



