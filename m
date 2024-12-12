Delivery-date: Thu, 12 Dec 2024 08:22:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdXH-00769z-0P
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 08:22:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLdXH-0002tg-3a
	for lore@pengutronix.de; Thu, 12 Dec 2024 08:22:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1LgeUYMMKhQK4IzlAglS82LCtOZ2a8J6UPYzmtIXby0=; b=ZqxR8u8F3a7Cr2gjhBGM2Rq/8M
	0cDxbSXE4NxnwmDzxoYdrXWkOnFZEeyGZo9aLORsfir88JboW5eS1UnnKBOqbvS4Yz5NZgGQod7eT
	VqNNxnsndxc3Dx0J4FVQgzm8//wAttQLArBGssiclHNL0XwtTQYyR/rvFkTv6d1RjzIObxMEhYwMV
	B7jmhgnP+sKURxJ8L7EjYzRIV0fGT8Wl4aLbtfxFI2pstk1c5T3JJ2UspYdekAIE1rrWuX7BVZaft
	lSlz68rTK/s9Zg3UUHsFJY6824mfyNxXzimd4ibjmC7a7HcLH5rzHMnj2VqJft2d9PtmpoQW1kbFc
	2TGKZUaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdWr-0000000H9NC-21nd;
	Thu, 12 Dec 2024 07:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLdWo-0000000H9M7-3jWq
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 07:22:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdWn-0002nh-LC; Thu, 12 Dec 2024 08:22:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdWm-002znd-2G;
	Thu, 12 Dec 2024 08:22:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLdWn-00AMFA-1F;
	Thu, 12 Dec 2024 08:22:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 08:22:28 +0100
Message-Id: <20241212072228.2468741-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_232230_926824_60759ACC 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] net: tap: return -ENODEV when TAP permission is denied
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tap_alloc will return -EPERM, when not running with CAP_NET_ADMIN.
For most users, this is the default case and thus barebox printing:

  could not get tap device: Operation not permitted
  ERROR: tap tap0: probe failed: Operation not permitted

is just confusing. Improve this by returning -ENODEV in that situation
instead, which driver core already understands to be an acceptable
return code that warrants no error message.

The user will then be shown only the first message with no scary red
ERROR prefix.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/tap.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 8bc52b1e154b..aa96f02bfc7c 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -61,16 +61,18 @@ static int tap_probe(struct device *dev)
 {
 	struct eth_device *edev;
 	struct tap_priv *priv;
-	int ret = 0;
+	int ret;
 
 	priv = xzalloc(sizeof(struct tap_priv));
 	priv->name = "barebox";
 
-	priv->fd = tap_alloc(priv->name);
-	if (priv->fd < 0) {
-		ret = priv->fd;
+	ret = tap_alloc(priv->name);
+	if (ret == -EPERM)
+		ret = -ENODEV;
+	if (ret < 0)
 		goto out;
-	}
+
+	priv->fd = ret;
 
 	priv->rx_buf = xmalloc(PKTSIZE);
 
-- 
2.39.5



