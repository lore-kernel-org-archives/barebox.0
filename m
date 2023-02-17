Delivery-date: Fri, 17 Feb 2023 18:35:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4dw-00AICA-AV
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:35:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4du-0005x7-IC
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:35:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TL2Joi0dGIxJUPFjgpN2ddgsVpUy3IuVM4o5pbhlb1g=; b=n0z55znaxBo16/1dtD4RAFgkHd
	fpSdR9Xcr10PZNNrVl1KouklDaoA/EbVQwgIJbKJEzXtuljvUHO2fL4fnuzHwRNyz3V4ecmAAN0r0
	1OFmWjI1RxWi0SFmtUqE+e//TN0q0tx1tx/AQcegz8Z2fQ1sm5nQc83S3YucuFaq9V74818QJvtSb
	mjr3exhRiNpEqJiPhy7uD2ahSIVOifZeu0wSEwCHpK/DxnfYmG+GHDvAEuMhGJoBtSuM6wwyLDyrb
	Xs4f7sZC+LbkF0WFAyvMF8COytprwO5pVUnjIJCil0uZ1Jt1mz1zxXBw8QbbUFjrIKzyMvPAOPTQn
	QliXcsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4ct-00FHHa-C5; Fri, 17 Feb 2023 17:34:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zn-00FFNc-8m
	for barebox@bombadil.infradead.org; Fri, 17 Feb 2023 17:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=TL2Joi0dGIxJUPFjgpN2ddgsVpUy3IuVM4o5pbhlb1g=; b=T8s6disVWOZU2DAGxwsQNl19vD
	zNlkAAL/XOUSltOW1zLRaeuxIm4hcAvOdbKMzC9AB9DdFe0ZzIYAd7oFm+Qq0bO3C2BIBm3kHGow6
	J782rIPbj0cJsDq1C7NocBpUxHx91NKtph6wMk8ec6911SaIwnIRCWWm1byt1iE+vaZhGAmvzc2yz
	nvxeVlIV3Q8pJGBuThh+FjZ4SwN630Yp7uJfqQ/ud8dssArTeCc+lmTf5GBOyjjGgEfud33D5dPgy
	UnInyKFPzyxNJVj0a8EBJxCtHUR7Ha1biFjMMWHv1LlVTRyRSYra4+tu/PjQvAMOloM2U0Pee4JKR
	8CXK75BQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pT4Yz-00Ai1R-22
	for barebox@lists.infradead.org;
	Fri, 17 Feb 2023 17:31:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004Fc-I5
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUQ-OV
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixk-1G
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Feb 2023 18:30:45 +0100
Message-Id: <20230217173057.1839835-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_173108_071453_56DF7A26 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 08/20] ARM: i.MX6: gw54xx: rename watchdog nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer device trees have renamed nodes to adhere to schema. Add the new
node names as well. Proper way would be to add aliases in barebox DT and
use reproducible names, but given that I can't test my changes, do this
small change nad hope the new names are stable enough.
---
 arch/arm/boards/gateworks-ventana/board.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boards/gateworks-ventana/board.c b/arch/arm/boards/gateworks-ventana/board.c
index c4c696019226..07a21b6d60ef 100644
--- a/arch/arm/boards/gateworks-ventana/board.c
+++ b/arch/arm/boards/gateworks-ventana/board.c
@@ -21,8 +21,13 @@ static int gw54xx_wdog_of_fixup(struct device_node *root, void *context)
 	/* switch to the watchdog with internal reset capabilities */
 	np = of_find_node_by_name_address(root, "wdog@020c0000");
 	of_device_disable(np);
+	np = of_find_node_by_name_address(root, "watchdog@20c0000");
+	of_device_disable(np);
+
 	np = of_find_node_by_name_address(root, "wdog@020bc000");
 	of_device_enable(np);
+	np = of_find_node_by_name_address(root, "watchdog@20bc000");
+	of_device_enable(np);
 
 	return 0;
 }
-- 
2.30.2



