Delivery-date: Wed, 24 Mar 2021 13:25:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2a5-0006Z6-JU
	for lore@lore.pengutronix.de; Wed, 24 Mar 2021 13:25:49 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lP2a4-0007JS-OQ
	for lore@pengutronix.de; Wed, 24 Mar 2021 13:25:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MrHgO/bSqAC+B6L6dphl1w2WJyT+OLDUIBtJb/ZCSw0=; b=cbEzb+odieEorlvLF5qnircFTK
	saZUVzoqMYe+pZb0fRXWMw9e2REEFG1tpcWOz3pkmAEYeTeHMWFZu1LSLfQCE6o7vKb31zf2cwIx3
	rr+t4sjpGHReKF5pjU0swXv08LTFLT2I9t7aZHTK6TYUllFvLP/8iMQaLarjurwSvuNnqSmeZTDHf
	G7HYq5M9h1WwEs0gEu8lfJkwx2hLXUMtQLghT5CHglt1ayVsSuw/H/FwnK+2KSR3mlXjVUxpJsGXn
	JPvyPTMBnu/PTlZkQXDiG/kNwvn1Tc79LrWWpoLcoMDgWVze8gb9frTqTZ62xFozrPRytRtMPos1+
	BRXERHQA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2Z5-00H400-Cz; Wed, 24 Mar 2021 12:24:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2XB-00H3Ei-K9
 for barebox@lists.infradead.org; Wed, 24 Mar 2021 12:22:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XB-0006mp-7E; Wed, 24 Mar 2021 13:22:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lP2XA-0002nI-Uc; Wed, 24 Mar 2021 13:22:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Mar 2021 13:22:44 +0100
Message-Id: <20210324122247.10683-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_122249_726845_8324908C 
X-CRM114-Status: GOOD (  10.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] net: phy: at803x: fix incorrect use of FIELD_PREP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FIELD_PREP expects mask datatype to be a constant unsigned long.
The mask constant already has the correct datatype, so pass it directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/phy/at803x.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index e0e147b1913e..93a8bb9df10e 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -141,13 +141,12 @@ static int at803x_parse_dt(struct phy_device *phydev)
 	const struct device_d *dev = &phydev->dev;
 	const struct device_node *node = dev->device_node;
 	struct at803x_priv *priv = phydev->priv;
-	unsigned int sel, mask;
+	unsigned int sel;
 	u32 freq, strength;
 	int ret;
 
 	ret = of_property_read_u32(node, "qca,clk-out-frequency", &freq);
 	if (!ret) {
-		mask = AT803X_CLK_OUT_MASK;
 		switch (freq) {
 		case 25000000:
 			sel = AT803X_CLK_OUT_25MHZ_XTAL;
@@ -166,8 +165,8 @@ static int at803x_parse_dt(struct phy_device *phydev)
 			return -EINVAL;
 		}
 
-		priv->clk_25m_reg |= FIELD_PREP(mask, sel);
-		priv->clk_25m_mask |= mask;
+		priv->clk_25m_reg |= FIELD_PREP(AT803X_CLK_OUT_MASK, sel);
+		priv->clk_25m_mask |= AT803X_CLK_OUT_MASK;
 
 		/* Fixup for the AR8030/AR8035. This chip has another mask and
 		 * doesn't support the DSP reference. Eg. the lowest bit of the
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

