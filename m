Delivery-date: Thu, 07 Apr 2022 11:39:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOcD-00AIwU-LU
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:39:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOcB-00061y-4H
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:39:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSzmJ7A3/uZwVwXA3oqfP6eOJAmX4Pv3A3NmHvEDWoI=; b=lNmOW0jq3D9LoY
	iL8Pm3OXYrJgE3eNyk6hgp734Z1PgIY4gYGIFsgvHvBoEXfPMuKAbL0VwPE7ouR0w667d08nC61Hr
	CtQpMkHk/x3tWlsFqSrcogYOjIbATHBNjJr1Q8MW11xk9mWflJAAx2Tn+OlGo7pFqPg//zE0SiO8y
	HBYEIQFfKgCHxk5znn+Kvu43My4Hf0EyqK8thRm3oUAA9j7Z4+usWbn1TVTjyrIxw+MHhgEqPWouJ
	adtQZLgKPXdxTJzbByKwlmGQeJLApgrwxHvcvbUqIwYRh1M+C8YNMeEiMfcot4/zeaM3+xe/AQcVD
	cJce+srsBnbL8SIR2KKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOag-00Av3X-0s; Thu, 07 Apr 2022 09:38:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOFM-00AlNQ-Qy
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 09:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFL-0001RC-G5; Thu, 07 Apr 2022 11:16:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFM-001aKV-5u; Thu, 07 Apr 2022 11:16:06 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFI-0040s4-SB; Thu, 07 Apr 2022 11:16:04 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 11:16:01 +0200
Message-Id: <20220407091604.956577-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407091604.956577-1-o.rempel@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021608_923614_71019024 
X-CRM114-Status: GOOD (  10.44  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 09/12] of_net: add rev-rmii support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add support for the revert RMII device tree property. It is needed for
SJA1105 switch driver.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/of_net.c | 1 +
 include/linux/phy.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index e05f111de8..75a24073da 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -24,6 +24,7 @@ static const char *phy_modes[] = {
 	[PHY_INTERFACE_MODE_TBI]	= "tbi",
 	[PHY_INTERFACE_MODE_REVMII]	= "rev-mii",
 	[PHY_INTERFACE_MODE_RMII]	= "rmii",
+	[PHY_INTERFACE_MODE_REVRMII]	= "rev-rmii",
 	[PHY_INTERFACE_MODE_RGMII]	= "rgmii",
 	[PHY_INTERFACE_MODE_RGMII_ID]	= "rgmii-id",
 	[PHY_INTERFACE_MODE_RGMII_RXID]	= "rgmii-rxid",
diff --git a/include/linux/phy.h b/include/linux/phy.h
index d9fb514277..031e77c6e6 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -46,6 +46,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_TBI,
 	PHY_INTERFACE_MODE_REVMII,
 	PHY_INTERFACE_MODE_RMII,
+	PHY_INTERFACE_MODE_REVRMII,
 	PHY_INTERFACE_MODE_RGMII,
 	PHY_INTERFACE_MODE_RGMII_ID,
 	PHY_INTERFACE_MODE_RGMII_RXID,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

