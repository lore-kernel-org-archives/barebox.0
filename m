Delivery-date: Mon, 06 Feb 2023 22:02:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8de-00GKjR-Qh
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 22:02:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8dc-0006hv-4I
	for lore@pengutronix.de; Mon, 06 Feb 2023 22:02:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pa+QFG4hLyC2ladaWTIP/V3OJ/Ll2YAg0RMQLZeAqR8=; b=MMkAiQComRFCQIDDZd1XHR0Yjx
	5DbO7txJoDCLJZ+aKlkoOKMv3otJqb/AxVV6ObwKmrEa21VQpx8SKHIvCtTorjIwL0J0JvxazZbm6
	Bqysm8utdRl9qK19SfO1GF9mbVSROuBC0ZzvubYVIVE9GPChiLjOlGAWKl5oxF/fUp6qJsn4yj3vP
	s6AnjxHz8bcKigZtRc0RYQ974NieBXdraBXfzESj3gCtZQiTXgASPGbdUwHYL/j7i9RXM07UbJn8A
	6qgiLZl+8lLNax3EiHV0+jRAIkunhYxusQBdQLnTu6nZk4zcMVhfPsCM8m6/qSTd0Ggoi8mNoOmN3
	+o+vMAiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8bW-009vbq-LW; Mon, 06 Feb 2023 21:00:46 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8bP-009vZB-UJ
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 21:00:41 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 3EB32E74016; Mon,  6 Feb 2023 22:00:09 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-33.net-htp.de [89.183.230.33])
	by lynxeye.de (Postfix) with ESMTPA id 56D97E74011
	for <barebox@lists.infradead.org>; Mon,  6 Feb 2023 22:00:07 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 Feb 2023 22:00:03 +0100
Message-Id: <20230206210004.627338-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230206210004.627338-1-l.stach@pengutronix.de>
References: <20230206210004.627338-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_130040_138660_C3A405EA 
X-CRM114-Status: GOOD (  11.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: i.MX8M: esdctl: use common compatible to detect i.MX8M* DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
size detection works the same on all of them, there is no need to match
the more specific compatible.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 043de477a77d..2a2bc5205301 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -732,13 +732,7 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 		.compatible = "fsl,vf610-ddrmc",
 		.data = &vf610_data
 	}, {
-		.compatible = "fsl,imx8mm-ddrc",
-		.data = &imx8mq_data
-	}, {
-		.compatible = "fsl,imx8mn-ddrc",
-		.data = &imx8mn_data
-	}, {
-		.compatible = "fsl,imx8mq-ddrc",
+		.compatible = "fsl,imx8m-ddrc",
 		.data = &imx8mq_data
 	}, {
 		.compatible = "fsl,imx7d-ddrc",
-- 
2.39.1



