Delivery-date: Tue, 09 Jan 2024 17:17:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmk-00AUHk-0X
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmh-0000O7-Vm
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7a6ZYn3X0hynXp9uCDCybdrabtgnL1dPRS1GBZGOgvk=; b=M1hnMcpzRn4GwWCpNsb7pA96QA
	/4GdlZQP5PZaTImJHa/An0B7TYNC3WMT/9TW6FPrYtfKXcsuB2DL7lewbfgRMwfLZsrYwKzjPY891
	tPH4FRv7CQpySoClvz6dPN49ghxCH7IGv4ifq+FyW7dGwGuvl5/CTiqK7HhnopE/mdNeCB0n/XIXI
	G+0uyF0Zsn+/6qITn7yOnrMrjGtSfQLnnZs2dHTRaF1k0kc8YOmCQHoKSbe4jeqaib2+SnJp0C3cM
	8BlHC8saauVotd1a7QwMLlqbVVp4f33CWdJ7BvwoSO8o2z5ZxbSuWVBYyqzvTiYiscx9njF8/haTZ
	N+E6RrgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElV-008nrr-0x;
	Tue, 09 Jan 2024 16:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElJ-008nis-2B
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lB-FB; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCZ-KA; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7QA-1j;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:14 +0100
Message-Id: <20240109161527.3237581-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081533_790272_7B88FE4C 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH v2 08/21] ARM: Layerscape: icid: use of_property_write_u32_array() in of_set_qportal_iommu_prop()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use of_property_write_u32_array() rather than of_set_property()
to make the code a bit clearer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 2e0b4a64df..1055cf59da 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -496,16 +496,16 @@ static void setup_qbman_portals(void)
 static void of_set_qportal_iommu_prop(struct device_node *np, phandle iommu_handle,
 			       const struct qportal_info *qp_info)
 {
-	u32 prop[6];
-
-	prop[0] = cpu_to_fdt32(iommu_handle);
-	prop[1] = cpu_to_fdt32(qp_info->icid);
-	prop[2] = cpu_to_fdt32(iommu_handle);
-	prop[3] = cpu_to_fdt32(qp_info->dicid);
-	prop[4] = cpu_to_fdt32(iommu_handle);
-	prop[5] = cpu_to_fdt32(qp_info->ficid);
+	u32 prop[] = {
+		iommu_handle,
+		qp_info->icid,
+		iommu_handle,
+		qp_info->dicid,
+		iommu_handle,
+		qp_info->ficid
+	};
 
-	of_set_property(np, "iommus", prop, sizeof(prop), 1);
+	of_property_write_u32_array(np, "iommus", prop, ARRAY_SIZE(prop));
 }
 
 static void of_fixup_qportals(struct device_node *root, phandle iommu_handle)
-- 
2.39.2



