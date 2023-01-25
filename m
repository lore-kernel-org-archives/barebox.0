Delivery-date: Wed, 25 Jan 2023 08:55:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKacw-001Gop-Sd
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 08:55:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKact-0001zF-Ff
	for lore@pengutronix.de; Wed, 25 Jan 2023 08:55:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Njhb5OxOKKnovUjOx6XheyvcU2hpfWLHWn/vCxzmAE0=; b=dW1UhlJnr13VtDagpa9cju2W9d
	xiakaQHw1UdVfQPR03xtWf2J6RgBKw/IAXcbgOx6XK6964SOqmwn3xNo9du1ei7Gc7RPgbgmqyiKd
	sCSjdFFKbStjRrIbVysFTKox/flTEEMC3fHoe43nhkHpIJJ6pjrygv9DoOBNPuDZze5ChN6AU4X6Z
	8QUGVO2a+6QN/0rSnCr2npK9/IEALpFQ99MBoVj51IkKeAr9y+EOGtLHWA6cTsj3tATl6Ifsr0ovI
	hT6O6p3WQJEQLER4M/PIbMhrViHXMozwlnHXJ1tBdHxjQwqMbh7wZmVxJ+Vu8/sTy58pJeaBKgnJq
	CiNLplBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKabb-006IKm-Nz; Wed, 25 Jan 2023 07:54:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKabV-006IJC-QA
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 07:53:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabU-0001hK-J5; Wed, 25 Jan 2023 08:53:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabU-000HpS-T4; Wed, 25 Jan 2023 08:53:55 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKabT-007O2s-5h; Wed, 25 Jan 2023 08:53:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Jan 2023 08:53:53 +0100
Message-Id: <20230125075354.1760273-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_235357_861835_FA2070D2 
X-CRM114-Status: GOOD (  12.78  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] net: dsa: realtek: support enabling only one of the drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have drivers for both rtl8365mb and rtl8366rb and each uses a
different tagger. realtek-dsa didn't know that and caused a reference to
an unavailable symbol when one of them was disabled. Add IS_ENABLED()
guards to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/realtek-dsa/tagger.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/net/realtek-dsa/tagger.c b/drivers/net/realtek-dsa/tagger.c
index 1d4461aebcb8..3a41f3b3c1b4 100644
--- a/drivers/net/realtek-dsa/tagger.c
+++ b/drivers/net/realtek-dsa/tagger.c
@@ -4,7 +4,7 @@
 
 int realtek_dsa_init_tagger(struct realtek_priv *priv)
 {
-	const struct dsa_device_ops *tagger_ops;
+	const struct dsa_device_ops *tagger_ops = NULL;
 	struct dsa_switch_ops *ops;
 
 	/* TODO: Tagging can be configured per port in Linux. barebox DSA core
@@ -14,18 +14,24 @@ int realtek_dsa_init_tagger(struct realtek_priv *priv)
 	 */
 	switch (priv->ops->get_tag_protocol(priv)) {
 	case DSA_TAG_PROTO_RTL4_A:
-		tagger_ops = &rtl4a_netdev_ops;
+		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL4_A))
+			tagger_ops = &rtl4a_netdev_ops;
 		break;
 	case DSA_TAG_PROTO_RTL8_4:
-		tagger_ops = &rtl8_4_netdev_ops;
+		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL8_4))
+			tagger_ops = &rtl8_4_netdev_ops;
 		break;
 	case DSA_TAG_PROTO_RTL8_4T:
-		tagger_ops = &rtl8_4t_netdev_ops;
+		if (IS_ENABLED(CONFIG_NET_DSA_TAG_RTL8_4))
+			tagger_ops = &rtl8_4t_netdev_ops;
 		break;
 	default:
-		return -EINVAL;
+		break;
 	}
 
+	if (!tagger_ops)
+		return -EINVAL;
+
 	ops = memdup(priv->ds->ops, sizeof(*priv->ds->ops));
 	ops->xmit = tagger_ops->xmit;
 	ops->rcv = tagger_ops->rcv;
-- 
2.30.2



