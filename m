Delivery-date: Tue, 10 Jan 2023 14:39:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFEr8-007nR9-F3
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 14:39:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFEr6-0003qR-LC
	for lore@pengutronix.de; Tue, 10 Jan 2023 14:39:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WF3N8500H5c9dFyTLlVqjll5GoMrJmCM8bEVj/GfS3I=; b=tMDfOtzF6jTtCAfwye1KXI3g1M
	8tUs4UsNxS1MAAOlrQoZeRP8Dq83UwgUK0x0/d/TurWFpa/OQZU7VStFIIbxKa2EmuDke+N9yRP7t
	pMO16glYFH3o87ClahxbIsKwAuOwH3Ujl+RFgQs9to6nvYwbwBBsAX3nzIu8dFa6ZOfk/4Ns+V86D
	W4U0FR02vJdToUv7QGg11hKdbCD+/u/4cmCDAquL6cTetbTe8YPZfcGNQFKjc9426TEBdUhJJabRf
	nQAH3jSMEqYeOhcHsRLOe7wwStAT/Pi81c+DXBapiZMKk7ZbrbUnaA0JDr+CPzZ1sh6ABKin7cLQw
	5QpM9oiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEpi-0075H0-2S; Tue, 10 Jan 2023 13:38:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFEpd-0075Eg-Bq
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 13:38:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpX-0003eG-M7; Tue, 10 Jan 2023 14:38:19 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpX-0055Zg-1q; Tue, 10 Jan 2023 14:38:19 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFEpW-00GWuX-GT; Tue, 10 Jan 2023 14:38:18 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 14:38:16 +0100
Message-Id: <20230110133817.3939707-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_053825_439605_9702581B 
X-CRM114-Status: GOOD (  11.85  )
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
Subject: [PATCH 1/2] net: dsa: ksz9477: fix confusing message detecting KSZ9893 compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I have a KSZ8563RNXI-TR, which while it works, barebox reports as
"Found KSZ9893", which is a bit confusing. For non-KSZ9893, barebox
reports "Found KSZ9477 or compatible", so do likewise for KSZ9893.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ksz9477.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index b3859e13bf13..0629efbd7d02 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -82,7 +82,7 @@ static int ksz9477_switch_detect(struct ksz_switch *priv)
 	id_lo = (u8)(id32 >> 8);
 	if ((id_lo & 0xf) == 3) {
 		/* Chip is from KSZ9893 design. */
-		dev_info(priv->dev, "Found KSZ9893\n");
+		dev_info(priv->dev, "Found KSZ9893 or compatible\n");
 		priv->features |= IS_9893;
 		priv->features &= ~KSZ9477_PHY_ERRATA;
 
-- 
2.30.2



