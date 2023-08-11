Delivery-date: Fri, 11 Aug 2023 12:28:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNg-00GScm-K4
	for lore@lore.pengutronix.de; Fri, 11 Aug 2023 12:28:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUPNe-0007W9-S4
	for lore@pengutronix.de; Fri, 11 Aug 2023 12:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=efo+aS2JvBxaAGTRWwGo3JtxY9yNFyi1H7kHN30AmkA=; b=TMDd7n7cqLZGduEHyWUrQgwxRI
	mG7GnfcTGMMnMzYy86kkoAh41f5WbcYLXdFfrDNMMm4kW6dtqL352Ns1e4x/L5wBLjZY1n2mWT9wg
	tuVMf6UkZ3N0LGri1f0A757CCqhZL6gycGC1GuZLU8IoqOPHlwbODH4VxcavaZoc6ywm8+bT4cN/t
	Lp0I3/Qq7YVXydamE9nWUSaAsQXXEC7JMWjlBs0RUn/HZIFJFLrFECH/T6UaxsjPK0tSUClDf7wW3
	OvYGpCBpmplyO03+4zTEYd0xZ314VOXy8sbFH7qihGjIbZKpDZhohOUv+GcgDcndQ/qpoc0YXI8XD
	SeCr4ITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMW-00ADGw-0J;
	Fri, 11 Aug 2023 10:27:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUPMI-00AD0t-1V
	for barebox@lists.infradead.org;
	Fri, 11 Aug 2023 10:27:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qUPME-00073K-BF
	for barebox@lists.infradead.org; Fri, 11 Aug 2023 12:27:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 11 Aug 2023 12:26:54 +0200
Message-Id: <20230811102657.271931-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_032706_636402_B2CB4BF9 
X-CRM114-Status: UNSURE (   8.55  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/11] net: phy: add deprecation warning to phy_{read,write,modify}_mmd_indirect
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add deprecation warnings and point to the new APIs user should use
instead.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 drivers/net/phy/phy.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 4cabb436e461..ad02732ff93b 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -850,6 +850,9 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
 {
 	u32 ret;
 
+	phydev_warn(phydev, "%s is deprectated use phy_read_mmd instead\n",
+		    __func__);
+
 	mmd_phy_indirect(phydev, devad, prtad);
 
 	/* Read the content of the MMD's selected register */
@@ -876,6 +879,9 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
 void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 				   u16 data)
 {
+	phydev_warn(phydev, "%s is deprectated use phy_write_mmd instead\n",
+		    __func__);
+
 	mmd_phy_indirect(phydev, devad, prtad);
 
 	/* Write the data into MMD's selected register */
@@ -896,6 +902,9 @@ int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
 {
 	int ret;
 
+	phydev_warn(phydev, "%s is deprectated use phy_modify_mmd instead\n",
+		    __func__);
+
 	ret = phy_read_mmd_indirect(phydev, prtad, devad);
 	if (ret < 0)
 		return ret;
-- 
2.39.2



