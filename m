Delivery-date: Wed, 13 Apr 2022 10:24:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIS-000W2B-BG
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIN-0002JN-Uo
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRhi1g8N2MoOW9uGI0/ztPoM8S2jemb4sjmuyT8m0rE=; b=mSPLfO3ThfFCrb
	nYcftBdkRufkYK9S1eC8KLKAgzudA7McbqlwRR7ZmT1J/rnnA7fk1E80qOdGeEhfwcbKbpN/LpQYl
	Wsqn9WZ0YsM/6mt2OVM/Nm+84wH07CZVFES9KqKfAi8Q3xolj8+78nNDbtErGfA6OtvxZ/Bz4narW
	66jumPGbWUWcIWs6xqTkgAUCGTOH5CDK/gCfAl8YSGnfryiBjI2fxzsHVRW/PUMKN1U8XVwnBRY0G
	HTq7FrrRN5PQoof3+9bIsDUoge2M8EM20HOb7nyMeJiFvhGl8kehjEBFZHtv8HIpQC7SVCoZUySKJ
	pq7SzLVxFumu6EdEqoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYGi-0000bC-8b; Wed, 13 Apr 2022 08:22:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGS-0000TV-SW
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGO-0001Zm-OY; Wed, 13 Apr 2022 10:22:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-002kCs-CY; Wed, 13 Apr 2022 10:22:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nl7-GS; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:22:01 +0200
Message-Id: <20220413082205.429509-11-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012212_953421_D119A5F5 
X-CRM114-Status: GOOD (  10.33  )
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
Subject: [PATCH v5 10/14] of_net: add rev-rmii support
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
index 2711e7dad3..a4c3f43c06 100644
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

