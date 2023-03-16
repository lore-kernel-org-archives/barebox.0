Delivery-date: Thu, 16 Mar 2023 14:43:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnsi-002jG4-Le
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 14:43:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcnsi-0004rq-Lt
	for lore@pengutronix.de; Thu, 16 Mar 2023 14:43:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CjlvoI1AxpzbgngNob9t7pmvsB+HoDNIce/ro2fjUh0=; b=gfFGJSPs6jV5WmpCJ+zY74eUvf
	IYJJ+qvKesqimbIEVAX0hKc7+L3k0uK09Oxa+dsE2+SGDFjQDo6j+I718sZnij5RFvySsi8tqMuun
	u5wvTS+QqOw1iV/2JW4AMm4ypSM2NB8Mb2N+4bzF+Ed0QU+aYEOhtfBdAM6BDxbc7+eiB0D6Z4fn/
	j4O3Oq5vNqxvHQUq+ybIoZ1ZzFv78dfGWep2ysNPg1nuFSiYqX7nelwYWD/oOj4q0Nv31kLLK4Ng8
	ce5IwHvNRE5nZOX8XCxSAmFtaPXk1bJZ8CMBquQ3z+v2Pw3ng3VDubtm4Jc7Ruy8fNDH6A87+ctIC
	bPhEUZZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnrP-00GZAL-1G;
	Thu, 16 Mar 2023 13:41:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcnrN-00GZ9e-0J
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 13:41:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrJ-0004bN-IO; Thu, 16 Mar 2023 14:41:33 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrI-004YsE-UG; Thu, 16 Mar 2023 14:41:32 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pcnrI-00H4Rp-2e; Thu, 16 Mar 2023 14:41:32 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Mar 2023 14:41:31 +0100
Message-Id: <20230316134131.4068293-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_064137_129261_577FC228 
X-CRM114-Status: GOOD (  11.49  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: boards: protonic-imx6: fix board probe for LANMCU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Present barebox version does not execute board probe code on LANMCU.
Modify vendor prefix for proper functionality.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index d35d97209b..97d8bb87b2 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -1262,7 +1262,7 @@ static const struct of_device_id prt_imx6_of_match[] = {
 	{ .compatible = "kvg,vicut1", .data = &prt_imx6_cfg_vicut1 },
 	{ .compatible = "kvg,vicut1q", .data = &prt_imx6_cfg_vicut1q },
 	{ .compatible = "kvg,vicutp", .data = &prt_imx6_cfg_vicutp },
-	{ .compatible = "lan,lanmcu", .data = &prt_imx6_cfg_lanmcu },
+	{ .compatible = "vdl,lanmcu", .data = &prt_imx6_cfg_lanmcu },
 	{ .compatible = "ply,plybas", .data = &prt_imx6_cfg_plybas },
 	{ .compatible = "ply,plym2m", .data = &prt_imx6_cfg_plym2m },
 	{ .compatible = "prt,prti6g", .data = &prt_imx6_cfg_prti6g },
-- 
2.30.2



