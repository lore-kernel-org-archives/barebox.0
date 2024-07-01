Delivery-date: Mon, 01 Jul 2024 09:38:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBcm-000QWQ-1j
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:38:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBcm-0008KI-04
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:38:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yzqQIO0RwGHIVxtXAOOOlGI3digWVxOrzbe9/dVgF/4=; b=a7fe5YxzzNH9GAs3fdy4tjObiC
	uEetvSYa2osNclOaah7E0X/E63xmETyMM3YaD40vRVpGTtN5uWb+IB04LVSj53tTdMWKmqHUb+PtB
	hPdleWW/ACq9RZoWxSlI1MLuNJS7itT6VApO5OktVeHy7hph3P4w+wyw4ZOJpi/3H2lZJWjHaTKkw
	nlmb6Dkzot1CkUG4PFXyG7mklKez/fYmQsfHIevUNYgHHpM8E+Zx9Rn1rNKaM2U5lVdVmi+WN2SIV
	PgQvyNgzcyoBMlIVx02UZ4KrHuTKIMSoA/SifKG55t0Q6zrSbZQ8MP86G7lsgwAK4Kt40kXcxKPUi
	nVWvIZzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBcJ-000000024Zq-3Egb;
	Mon, 01 Jul 2024 07:38:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBcG-000000024Ye-2Zx5
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:38:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBcF-0008GW-4o; Mon, 01 Jul 2024 09:38:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBcE-006Jr1-Od; Mon, 01 Jul 2024 09:38:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBcE-000kEt-2A;
	Mon, 01 Jul 2024 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:38:22 +0200
Message-Id: <20240701073822.177731-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003824_672370_697981F4 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: platform: early exit on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but aligns us with the coding
style, where early exits are preferred and the final return is the
successful one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/platform.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 918607a51883..7e086e9488e6 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -231,15 +231,16 @@ struct device *of_platform_device_create(struct device_node *np,
 	np->dev = dev;
 
 	ret = platform_device_register(dev);
-	if (!ret)
-		return dev;
+	if (ret) {
+		np->dev = NULL;
+		free_device(dev);
+		if (num_reg)
+			free(res);
+		return NULL;
+	}
 
-	np->dev = NULL;
 
-	free_device(dev);
-	if (num_reg)
-		free(res);
-	return NULL;
+	return dev;
 }
 
 struct driver dummy_driver = {
-- 
2.39.2



