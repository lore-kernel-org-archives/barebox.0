Delivery-date: Wed, 06 Jul 2022 16:22:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vN-007nQE-KT
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 16:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o95vP-0007x1-Ty
	for lore@pengutronix.de; Wed, 06 Jul 2022 16:22:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NpfO9lELU43FHky8n+sib/man1ljk2QkfSdi4/dEYNM=; b=rL1Bp3l4eGCXp2OeW0zxnRfGIs
	XAW4P1T0pTmtwkFHj1I4EWg4jf2AEwcDwT0ubyIc3Nq8brL85VK+R9QrHPNXBIPOURGmMKHJ3d6HX
	Cev4PUyfKIUYngxMnpYv63b11rr4vDsztPa/EZKzh7j6APk07tnaMCacqimXP47ipV3S9K67uJiS4
	d9w820JwTeTdFhQYqk3NM1z7oSjsRYTBCD8o+nDt+/KU4a5bysjS2wPlx98bnvt8pPmJMPfFX5PC8
	PwcD/jVKZmGkIRmcTrglicbbhkrNCxa/nuPMFwFQEz7qC9/MxW2as+wDhD5jemsnTznnDBxM7SmKr
	YppEkwOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tz-00AayN-U8; Wed, 06 Jul 2022 14:21:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o95tu-00Aaw4-NU
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 14:21:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tt-0007cN-GB
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tp-004mEQ-8k
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:08 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o95tr-009WdH-Jk
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 16:21:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 16:21:03 +0200
Message-Id: <20220706142105.2266956-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220706142105.2266956-1-m.felsch@pengutronix.de>
References: <20220706142105.2266956-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_072110_799458_56D5C613 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] phy: propagate error in of_phy_get_by_phandle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Don't return -ENODEV if of_phy_provider_lookup() fails instead propagate
the error. So errors like -EPROBE_DEFER are propagated correctly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/phy/phy-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index ef7bd76648..8a57bd1aa9 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -317,7 +317,7 @@ struct phy *of_phy_get_by_phandle(struct device_d *dev, const char *phandle,
 
 	phy_provider = of_phy_provider_lookup(np);
 	if (IS_ERR(phy_provider)) {
-		return ERR_PTR(-ENODEV);
+		return ERR_CAST(phy_provider);
 	}
 
 	return phy_provider->of_xlate(phy_provider->dev, NULL);
-- 
2.30.2



