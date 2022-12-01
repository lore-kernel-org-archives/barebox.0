Delivery-date: Thu, 01 Dec 2022 14:40:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0jo1-007TKB-Ca
	for lore@lore.pengutronix.de; Thu, 01 Dec 2022 14:40:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0jo0-0000Zi-RA
	for lore@pengutronix.de; Thu, 01 Dec 2022 14:40:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pgnqIuCYWkMRZ+rE87PylBNXW17uN+NHJMtkSXAhHn0=; b=BQYz2veKdEGkZ1vkbP9tVT6nI7
	rjAcypfKOrR5A0EagZwZT5zKwIuAs0P7+jcBP9A1lgJfO8XOHJrHGGnSiWSb1BEbNiRJO3LyDaOy5
	EjTCon+5TyjrMrUqIEe5vWl21Ohs0wcRLkj1TCdeaRofpE/iqWVCiN2kVtXpDckxW7NHNwjmaQYqu
	fzUS8iz80W54OkUkYFU/5s9//oirEnlfzb6KC4o5fbJ7oDw/yKMjD09vblThJNbhmC6fDn85P/OUX
	tnKX34diG3hJLJG2uB4C5Cj1sS17pX3KNCkoLNKj0iG2BDCSz0+xeXCGtnMbISWXcqfGgYEhldoEy
	a93Hhh8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0jmI-007jrj-Cp; Thu, 01 Dec 2022 13:39:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0jmD-007jqY-4c
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 13:38:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jmB-0000Ek-QC; Thu, 01 Dec 2022 14:38:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jmA-001apT-DY; Thu, 01 Dec 2022 14:38:55 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jm9-002gKN-Kc; Thu, 01 Dec 2022 14:38:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Dec 2022 14:38:53 +0100
Message-Id: <20221201133853.639287-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_053857_211092_3D9A968F 
X-CRM114-Status: GOOD (  10.23  )
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
Subject: [PATCH] regulator: core: don't call of_regulator_get with NULL argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

regulator_get calls either of_regulator_get or dev_regulator_get, both
of which accept a supply parameter. Only dev_regulator_get gracefully
handles a NULL supply by considering all registered regulators.

of_regulator_get on the other hand, will complain at debug level,
before returning NULL:

  uart-pl011 fe201000.serial@7e201000.of: No <NULL>-supply node found,
  using dummy regulator

Avoid this message by skipping of_regulator_get if no supply was found
and directly call dev_regulator_get.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 4876f0f44bdd..d25aba38c3e2 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -388,7 +388,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	struct regulator *r;
 	int ret;
 
-	if (dev->device_node) {
+	if (dev->device_node && supply) {
 		ri = of_regulator_get(dev, supply);
 		if (IS_ERR(ri))
 			return ERR_CAST(ri);
-- 
2.30.2



