Delivery-date: Wed, 26 Apr 2023 10:48:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prapJ-000VJ7-IF
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 10:48:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prapJ-0001SM-92
	for lore@pengutronix.de; Wed, 26 Apr 2023 10:48:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DtCS9g2F8cV5iRLBU2cAdofgC3HFoEW3Trm9MYjD4fQ=; b=aFM4Yx/9wJ4QukCfOYL/FYobDd
	sl+Kh5y/q3S5v7+qSnjiBaoWys4oGm33cPBlhZ6rvqlRzcyJTwlxrgr9G88Rjr/TeeynGzRhAvh3q
	0+NVFuYy6YQnIb23jYHfPBLco3D1Wv+jcDGSELdozenDbxBaO1Rlf7pgJ8bU1R3XuYN3we9CK36jX
	WdFx988YChju1mthszeUV7dH/OHsXvclF+u7z+EjjmNq4VJhH/u5NH/MCctDfFG8WMHcU+wccy5aD
	Ib+WbKL7utCSWx98Kgl4XzKtBVCu3qU4vgglQ8ECGB+3WDv4vE0Q/E71wfCO0aq4/uf7XAcZE+sfK
	tQRrcwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pranx-003C7M-2F;
	Wed, 26 Apr 2023 08:47:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pranu-003C61-20
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 08:47:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1pranp-0001El-Gl; Wed, 26 Apr 2023 10:47:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1prano-00DsvD-H1; Wed, 26 Apr 2023 10:47:04 +0200
Received: from mol by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1prann-00GnKq-UJ; Wed, 26 Apr 2023 10:47:03 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed, 26 Apr 2023 10:46:59 +0200
Message-Id: <20230426084659.4002852-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_014710_659503_9D0160D1 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] net: ifup: pass hostname and linuxdevname to linux with DHCP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Barebox always uses the hostname in the DHCP request. To configure
kernel networking, use the long ip= syntax for DHCP and set the hostname
as well. This way, Barebox and Linux use the same hostname in the DHCP
request.
Also set the device if linuxdevname is configured. This is already done
for static configurations. Do the same for DHCP.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 net/ifup.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 1870f7401714..18ab1363c748 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -159,8 +159,8 @@ out:
 
 static void set_linux_bootarg(struct eth_device *edev)
 {
+	char *bootarg;
 	if (edev->global_mode == ETH_MODE_STATIC) {
-		char *bootarg;
 		IPaddr_t serverip;
 		IPaddr_t gateway;
 
@@ -176,7 +176,11 @@ static void set_linux_bootarg(struct eth_device *edev)
 		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
 		free(bootarg);
 	} else if (edev->global_mode == ETH_MODE_DHCP) {
-		dev_set_param(&edev->dev, "linux.bootargs", "ip=dhcp");
+		bootarg = basprintf("ip=::::%s:%s:dhcp",
+				barebox_get_hostname(),
+				edev->linuxdevname ? edev->linuxdevname : "");
+		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
+		free(bootarg);
 	}
 }
 
-- 
2.39.2



