Delivery-date: Fri, 13 Mar 2026 14:35:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fY-000DYi-2g
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:12 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fG-0001BR-QS
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilF3cfcyJ+5b/tb/2QuZFEKUSJKLstrA1IBnbWTjAw4=; b=mwVXOTXfiHTlIugiyWu/khJuBb
	bO/ZMD3EPIqo1fcUeK4kD/SwM9/+FlB/XpoPbKkLdlMmEFZhUTqao6VM2g10oAafMd1hKnCGNmJgL
	mZuZeXQdyR9KkXKrK02ysvhdJJq9Fww1nWEs2O9pycUxp2Fciqqg9FhzRzNPw3jAR57qeKAqauL2d
	hq+1JB1FADp8utWmXBfDf7CQ5JryR26u3strvh3Smk0RslYPA0tVSRsUGj4a9HyBSL3r/hLMCe979
	Zn7biFdrA4WZHbh77nAoRknbUgnDOlJc21BcPQA0DvzZVc7iFQvoQL+4XzzVwk6YPgdORGolSi0Ei
	p6+DwzqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12do-00000000Ghz-1KUg;
	Fri, 13 Mar 2026 13:33:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fol-2TgI
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ilF3cfcyJ+5b/tb/2QuZFEKUSJKLstrA1IBnbWTjAw4=; b=hY7DCQNG55EDCgvfVxeeEVxkPw
	8MHdAUmDh9N8gI3Oba5jauX7bDVa5r/cgFg4FDYdn2C9hKIwpAxlrOgA46HiM06oC88VehnMul3st
	WyK5HS6FRpm4WYAYlmAHgwAO9xYqJAD6l39bFmaHt6Bt1uRJC4zLfff9Q2mAi9P7ptyqoFyCmWv41
	S1pEcJn/MlMzgG3yLR1hGOAi8FYYueATjlCuz6zea39RrqVnmNuG7/9Ub6ESb9R8Bucon0uDeDAcm
	vqORsTgTY6rc1xszyeKwohm3hRhpeVD5PAANA6LBYjQ1gJ/MmsCUf0CIwqbZmUwOnsHzD5DpeG0X/
	NfWzvzFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d4-00000003OSd-0xfo
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0006y9-MR; Fri, 13 Mar 2026 14:32:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005VP-1a;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-40JN;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:22 +0100
Message-ID: <20260313132631.2257573-39-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133238_527261_1A3778BF 
X-CRM114-Status: GOOD (  11.72  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 38/58] net: phy: add NULL check for phy driver in page accessors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

to_phy_driver() can return NULL if the device has no driver bound.
While phy_read_page() and phy_write_page() are only called on bound
devices in practice, the existing error messages already hint at
this possibility ("PHY driver not loaded?").

Add a NULL check for phydrv before dereferencing it, consistent with
the existing error handling.

(cherry picked from commit 9403ba1be4c82ced708a94efc8539e8202a90f57)

Reported-by: GCC 14.2 -fanalyzer
Co-authored-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260216084253.3547270-7-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index b12f54ed3878..b30cb1dc7349 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -27,7 +27,7 @@ static int phy_read_page(struct phy_device *phydev)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
-	if (!phydrv->read_page) {
+	if (!phydrv || !phydrv->read_page) {
 		dev_warn_once(&phydev->dev, "read_page callback not available, PHY driver not loaded?\n");
 		return -EOPNOTSUPP;
 	}
@@ -39,7 +39,7 @@ static int phy_write_page(struct phy_device *phydev, int page)
 {
 	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
 
-	if (!phydrv->write_page) {
+	if (!phydrv || !phydrv->write_page) {
 		dev_warn_once(&phydev->dev, "write_page callback not available, PHY driver not loaded?\n");
 		return -EOPNOTSUPP;
 	}
-- 
2.47.3



