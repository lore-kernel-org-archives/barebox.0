Delivery-date: Thu, 05 Jun 2025 09:49:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M8-003w9Y-2E
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 09:49:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN5M7-0007ox-M4
	for lore@pengutronix.de; Thu, 05 Jun 2025 09:49:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4yHlO+XrkB4oSQ6j5i1JP6SXmeUQ/Y5NHNzACM+FKFM=; b=lxqmq8RNuJhNQR4aZYhdIohogY
	9axMuLVzZZXTg5mR+tSw94xjkEZVe0vskCz+DqsBBaDekMIIou/B9NHxpDpts/h/T0m8YDOr7cCIL
	8KqSLtfR7fihBoqo3atTeFZaHd63XNrNdSoZtXC7eGKoNIstUN93mQNhNAKD6GXs9phNWuhyDmG85
	L6fvTVD8dWOXeJZ2VeCQKwrqXTqghXv64AGFXza32Vi5mbjZVsZyhYO5XEaWyB+pj5mXdeRNGTkIk
	+ge9kwIMcHx2Fv9afmv8L51i7ZMnuxoZpLBanW3ieKWkxzATwCiCg7qumt+Ffb5ivbfEGReF3RckB
	Mp6XDo7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5LX-0000000Ez5b-2HJB;
	Thu, 05 Jun 2025 07:49:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5Jq-0000000Eyv7-05aH
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 07:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4yHlO+XrkB4oSQ6j5i1JP6SXmeUQ/Y5NHNzACM+FKFM=; b=PWBeHxLEPhRAhnnLrDffFi1es6
	zZYsywWfZU3L+09CwiVL6d0SxfQJwBYuVkMAorGGqo1SZXBgr1teEWki0kupJeGWWp4S5IbAO6E+v
	TYuTbD70xJXZcha7RgivC6Y3jB8i3SQYzasjLexLWIfXHlpd/nMrlRQ/8QJgx6fFEQMtA344Ih3Vg
	VhjQ4o8Zrv42aaRHp151Y66oMTCDmQHwT5OC78wW4gmVaSxwrGmiHJnPs8b9PqoUB9ze93Jbf9xJc
	pf4VZaYNwgq0vrnkQRSCN37O5dxKv3ZL2yckZFVgArlrP7FQ64P+18thH1SnuvL8G2rv3UeDXqeoU
	7mwLmh1g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5Jm-000000016Ph-3t59
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 07:47:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00065X-JJ; Thu, 05 Jun 2025 09:47:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-001v85-0Y;
	Thu, 05 Jun 2025 09:47:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uN5Ji-00HUuX-08;
	Thu, 05 Jun 2025 09:47:14 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  5 Jun 2025 09:47:11 +0200
Message-Id: <20250605074713.4170334-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605074713.4170334-1-o.rempel@pengutronix.de>
References: <20250605074713.4170334-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_084719_078100_CED0B85D 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/9] nvmem: rmem: generate unic device name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

otherwise mnvmem framework will generate same char device for all
instances. This will prevent creation of additional devices

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/nvmem/rmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rmem.c b/drivers/nvmem/rmem.c
index fd7389cd39e3..adac414e84d8 100644
--- a/drivers/nvmem/rmem.c
+++ b/drivers/nvmem/rmem.c
@@ -227,7 +227,7 @@ static int rmem_probe(struct device *dev)
 
 	config.dev = priv->dev = dev;
 	config.priv = priv;
-	config.name = "rmem";
+	config.name = dev_name(dev);
 	config.size = resource_size(mem);
 	priv->total_size = config.size;
 
-- 
2.39.5



