Delivery-date: Fri, 11 Aug 2023 12:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNY-00GSas-Fy
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNW-0007Ue-Uv
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LsUsJsizalt5KxNQ3KKC/n/QOXxjE9NQoDALAUkfjU8=; b=pPdtU1xHA95UvDbCHr2mS8HNE9
	dXBzcxYZOBhuaWINVwFmX13LJFBaiPu+w+cSyVLMEsAa7G0Q5N6zmRFn2AbPpLdPd99XE02wPVy0f
	5QoT0YrCUx/dLnlB9ICvChp2lwTwniG3h4o/VTO0jHhrUFg4HXx50GcHIKdaNzYPVDVIMyfTO8CRj
	7N9A8rQvfQPK+M7rDLtttCZo4NLRo7g/FblWuqtux3LNNoKbIbuZInWpQeBsEgpjQQy9/Oq8O/0DW
	pMJNHsPtZQKjMJcO8wwq0JbLcJI7x9NSPkZvHjsjgEud4UKl4Q5myC/ATpMxmts9VCpHt38IZeg1U
	QSPVKh9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMP-00ADAL-0v;
	Fri, 11 Aug 2023 10:27:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0z-1K
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:09 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPME-00073K-Ga
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:55 +0200
Message-Id: <20230811102657.271931-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_526732_80A032A8 
X-CRM114-Status: GOOD (  12.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] net: phy: at803x: disable SmartEEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SmartEEE functionality can cause strange connection issues. Disable
it unconditional and leave it to the OS to enable it again.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- always disable smarteee (afa)
- adapt commit message

 drivers/net/phy/at803x.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index f0a14799234b..2e3e57b27ee6 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -59,6 +59,9 @@
  */
 #define AT8035_CLK_OUT_MASK			GENMASK(4, 3)
 
+#define AT803X_MMD3_SMARTEEE_CTL3		0x805d
+#define AT803X_MMD3_SMARTEEE_CTL3_LPI_EN	BIT(8)
+
 #define AT803X_CLK_OUT_STRENGTH_MASK		GENMASK(8, 7)
 #define AT803X_CLK_OUT_STRENGTH_FULL		0
 #define AT803X_CLK_OUT_STRENGTH_HALF		1
@@ -221,6 +224,12 @@ static int at803x_probe(struct phy_device *phydev)
 	return at803x_parse_dt(phydev);
 }
 
+static int at803x_smarteee_config(struct phy_device *phydev)
+{
+	return phy_modify_mmd(phydev, MDIO_MMD_PCS, AT803X_MMD3_SMARTEEE_CTL3,
+			      AT803X_MMD3_SMARTEEE_CTL3_LPI_EN, 0);
+}
+
 static int at803x_clk_out_config(struct phy_device *phydev)
 {
 	struct at803x_priv *priv = phydev->priv;
@@ -270,7 +279,15 @@ static int at803x_config_init(struct phy_device *phydev)
 	if (ret < 0)
 		return ret;
 
-	return at803x_clk_out_config(phydev);
+	ret = at803x_smarteee_config(phydev);
+	if (ret < 0)
+		return ret;
+
+	ret = at803x_clk_out_config(phydev);
+	if (ret < 0)
+		return ret;
+
+	return 0;
 }
 
 static struct phy_driver at803x_driver[] = {
-- 
2.39.2



