Delivery-date: Tue, 17 Jan 2023 10:51:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHicj-00EOXJ-FW
	for lore@lore.pengutronix.de; Tue, 17 Jan 2023 10:51:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHich-0000Rq-Jn
	for lore@pengutronix.de; Tue, 17 Jan 2023 10:51:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z9edsFrTKHUztVwiP1hN8g/dqgF7HeDeYt3wnjblc7Q=; b=PX8E/0wSLXaUVDyLYCupE+zkJD
	CUvDzpUNadtNFtzy0j+EcHMhZ7NfpTGj2FeRhfaIN40Fo23neE+wRF4iFkiu/RFLESXlHtc2PMh6U
	hhyvitl2gvNkHcaj7AhyYXWhp/oHnwtx2y0THwDNv4plXrVQ+PSJGugHmM2ZWuXqAfZgMlm3dD0Zs
	nSAHt+j19db8bBmHxy7ZA9ZBk1QKlmaUT/dzp/yuDAAdM3zgN7XbEbqOia0JzHPwciRV8ikpeFEr3
	FzAjglfRq9i8FAMElRXP7KjpNBUmFVe4fG8LrOTn4psquy5O5Xb5p+ngIAaANeq0aWo0GyY/17wWe
	mitasaAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHibB-00DeTl-6U; Tue, 17 Jan 2023 09:49:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHib6-00DeSQ-6h
	for barebox@lists.infradead.org; Tue, 17 Jan 2023 09:49:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHib2-00008k-Lw; Tue, 17 Jan 2023 10:49:36 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHib2-006e0f-1c; Tue, 17 Jan 2023 10:49:36 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHib1-00Fp25-Ec; Tue, 17 Jan 2023 10:49:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Jan 2023 10:49:34 +0100
Message-Id: <20230117094934.3770899-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_014940_257429_3423E2D4 
X-CRM114-Status: GOOD (  10.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: eth: skip opening disabled interfaces when going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Ethernet device global mode (ethX.mode) may be set to disabled when
ports should not be used. This setting is already respect in ifup, so do
likewise for eth_open_all(), which is called when going interactive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/eth.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 863d0a046657..6fb64afea024 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -535,8 +535,11 @@ void eth_open_all(void)
 {
 	struct eth_device *edev;
 
-	list_for_each_entry(edev, &netdev_list, list)
+	list_for_each_entry(edev, &netdev_list, list) {
+		if (edev->global_mode == ETH_MODE_DISABLED)
+			continue;
 		eth_open(edev);
+	}
 }
 
 static int of_populate_ethaddr(void)
-- 
2.30.2



