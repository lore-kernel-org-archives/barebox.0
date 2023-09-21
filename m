Delivery-date: Thu, 21 Sep 2023 11:58:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRq-005jx0-5q
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 11:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGRo-0003zN-BK
	for lore@pengutronix.de; Thu, 21 Sep 2023 11:58:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E06NTABlEFUCsub6eSk1Sm36jJ5IY09OzyGl3oIZqmQ=; b=y+jdHSqhGD2EE/9Vi2SCBpGNvD
	nzupqy3g/4Yvyelncc1RFIxMVhiUavnrkVHe2eWmN6hUAuIxyYdzDcI2rioHaOLlFefm9r6MG5l6D
	1B6TaT0u5f70w0kvBqlD/dENEmuo8BBHl8XvTOPNbq4suoBmD/w4EPwWjDlvJfnC3d7v87DnN+C7f
	JBneb5x+gSEK/v7b+0O1EM4XgwG5WPgg6K7aBSGhA5yv4cx6SO3c2oUY+sagZ+qVvsv4ze2nlUxfB
	lAehhOYffwYW2FuErbT7QJsh8BJKBxJf/dKttMVbZAG8AFBcwgYtqygudwDpfI9BjySvTpkrEGbw7
	iHpRnMBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQf-005dyV-0P;
	Thu, 21 Sep 2023 09:57:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGQc-005dxm-0i
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 09:56:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-0003SU-S3; Thu, 21 Sep 2023 11:56:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-007tX5-Fc; Thu, 21 Sep 2023 11:56:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGQa-001Ipz-1K;
	Thu, 21 Sep 2023 11:56:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 11:56:49 +0200
Message-Id: <20230921095649.310666-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921095649.310666-1-a.fatoum@pengutronix.de>
References: <20230921095649.310666-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_025658_259995_CC9E05F9 
X-CRM114-Status: UNSURE (   8.52  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] hab: habv4: apply sizeof() to correct object
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, because sizeof(enum habv4_state)
== sizeof(enum hab_config), but it's the correct thing to do.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index bbceb0e985b6..e65dc8756e17 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -178,20 +178,20 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
 
 	if (state)
 		v8_flush_dcache_range((unsigned long)state,
-				      (unsigned long)state + sizeof(*config));
+				      (unsigned long)state + sizeof(*state));
 	if (config)
 		v8_flush_dcache_range((unsigned long)config,
-				      (unsigned long)config + sizeof(*state));
+				      (unsigned long)config + sizeof(*config));
 
 	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_STATUS,
 		      (unsigned long) config,
 		      (unsigned long) state, 0, 0, 0, 0, &res);
 	if (state)
 		v8_inv_dcache_range((unsigned long)state,
-				    (unsigned long)state + sizeof(*config));
+				    (unsigned long)state + sizeof(*state));
 	if (config)
 		v8_inv_dcache_range((unsigned long)config,
-				    (unsigned long)config + sizeof(*state));
+				    (unsigned long)config + sizeof(*config));
 	return (enum hab_status)res.a0;
 }
 
-- 
2.39.2



