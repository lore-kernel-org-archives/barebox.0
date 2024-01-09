Delivery-date: Tue, 09 Jan 2024 17:17:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmi-00AUGa-3D
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmh-0000NP-8E
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GvVZE1zeLZEG9ave+Xs8U/tvIY/edIxUUlo1Yxu2+i4=; b=EZ8UXgd/WF+duXmV2y0bGvh1SW
	MaHJ4yXgHQQjrBITJwR7bInPY5O624fpMMwLQVj1Rhcsf8AxNucdX8m5o/nmXnCnMoTXX/w9A5fZ9
	KGapzktsIqzZfkvncu5/SO/Sykcr/mHeAwRaOJOKNnEby+EYkRwMSsph60hzWqB0ynDaA4QdvjFkU
	eH7RtA5HP8MqTC9oQORJ7eGM+J5XNUgG3AE5aX2qEwu+30V4/BAjXwWAyu+mK4N2sEY5wg0iNnNiQ
	kbd2DPGd+GS5cPF0Wk3k8c+tbV9gtnfKX9Ioy33x7PPMnSI2qEpgdq9isbqXfoT55R2Rv4GZkyJ0e
	oibaxtyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElV-008ns9-38;
	Tue, 09 Jan 2024 16:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nin-2C
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007l9-47; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCW-Ig; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Q4-1g;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:13 +0100
Message-Id: <20240109161527.3237581-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_779124_17A0F33B 
X-CRM114-Status: GOOD (  11.89  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/21] ARM: Layerscape: icid: use of_property_write_u32_array() in of_set_iommu_prop()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use of_property_write_u32_array() rather than of_set_property()
to make the code a bit clearer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index dd0e160bde..2e0b4a64df 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -71,12 +71,12 @@ struct icid_id_table {
 static void of_set_iommu_prop(struct device_node *np, phandle iommu_handle,
 			       int stream_id)
 {
-	u32 prop[2];
-
-	prop[0] = cpu_to_fdt32(iommu_handle);
-	prop[1] = cpu_to_fdt32(stream_id);
+	u32 prop[] = {
+		iommu_handle,
+		stream_id
+	};
 
-	of_set_property(np, "iommus", prop, sizeof(prop), 1);
+	of_property_write_u32_array(np, "iommus", prop, ARRAY_SIZE(prop));
 }
 
 static phandle of_get_iommu_handle(struct device_node *root)
-- 
2.39.2



