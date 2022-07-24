Delivery-date: Sun, 24 Jul 2022 08:45:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVMR-001jtS-BQ
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 08:45:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFVMP-0001Zo-GI
	for lore@pengutronix.de; Sun, 24 Jul 2022 08:45:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+CfhFDBBsZ8XBSRbmlt7VxQpM16D6EUboIBfp4thtSQ=; b=Urby8785TDOVG9IYVM7LXUyscH
	hnsFZA/MKakDOocyNQhi7s5tSwlwBpBu1ZkfFt5RZNjb5l9FQ8N5m8KpODZVwdaedz8FlTAz8EtHD
	ieQgG+TLUkfF03rpeqrUkaHOAhBIJLTIgSu2N5ANS2DF+5dtCNLKwopbTdzB9U+HgI5sjOTDewR+l
	Fuz8UdXaJxZzDaOIjzepU2q3NCBw531F8AO9u7hic6wVkNL5/WpijY2CUoNAH0bK1O3Yw4tn1NaMS
	s6sCflGO0a7uUV37hkv/eI87/uSl3Tq4MpLtozKVsl7BRi4JJc4O8DNBVmphFHOGiHv2Pdox8+Mah
	k13Np7jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVLD-00HD0M-Vk; Sun, 24 Jul 2022 06:43:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFVL4-00HCwG-Aw
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 06:43:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL3-0001KB-4v; Sun, 24 Jul 2022 08:43:41 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL2-002rZN-ET; Sun, 24 Jul 2022 08:43:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFVL1-007YOA-6k; Sun, 24 Jul 2022 08:43:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 08:43:36 +0200
Message-Id: <20220724064337.1799613-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724064337.1799613-1-a.fatoum@pengutronix.de>
References: <20220724064337.1799613-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_234342_394904_1C682A20 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/6] regulator: fixed: request vin-supply as needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we never considered fixed-regulator vin-supply. This worked as
long as the vin-supply on the board was already turned on.

Do as Linux does and request vin-supply as needed. For deep probe
enabled boards, this may result in breakage that can be resolved with
barebox,allow-dummy-supply. For other boards, a warning will be
printed and the vin-supply populated with the dummy regulator.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - new patch
---
 drivers/regulator/fixed.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index ec64f39b86c7..bdb01c0a9554 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -72,6 +72,9 @@ static int regulator_fixed_probe(struct device_d *dev)
 	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
 		fix->rdesc.off_on_delay = delay;
 
+	if (of_find_property(np, "vin-supply", NULL))
+		fix->rdesc.supply_name = "vin";
+
 	ret = of_regulator_register(&fix->rdev, np);
 	if (ret)
 		goto err;
-- 
2.30.2



