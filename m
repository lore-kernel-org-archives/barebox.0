Delivery-date: Fri, 26 May 2023 14:48:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Ws7-00F5B1-5w
	for lore@lore.pengutronix.de; Fri, 26 May 2023 14:48:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Ws4-0007v2-MG
	for lore@pengutronix.de; Fri, 26 May 2023 14:48:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/JBbGJjiLgx+Lg6MozsnquYlrg16FRHqJshT/IaARzo=; b=RycuxlTiIydQbGAHQTC5ctRMFF
	c7XYw7mchqnfDIkFotmpeaRw28wNWCV65sP05C3ZD5FCqH/vt0GheOZC4L9rD36yDCzID0tvOaG6W
	0AIspxv2uUy5vg6hXMM3easeI0y9fLL/q7pyGsjVGVK/q1DRAlBCO4sEi7R4kULfi8St+RyoMhWlV
	HvNl4LwUjmXHlmDqV3PnYTrOt5gLQ7dK57p60RkYBgffKd9SX41apLnqMQ6S5wTDkgSalm9TEmdeY
	UHPlNAypVHGSi/MSSNpWtf9sAFgs9WYdSYSzU9jG0pdMhy9E2qEqb0yDH7aIfjEADhifJYyU3DwXS
	R8VrWlKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Wqn-002WYg-02;
	Fri, 26 May 2023 12:47:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Wqj-002WWn-2c
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 12:47:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2Wqh-0007lM-4p; Fri, 26 May 2023 14:47:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2Wqg-002xUk-Fb; Fri, 26 May 2023 14:47:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2Wqf-006XOe-Mp; Fri, 26 May 2023 14:47:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 14:47:12 +0200
Message-Id: <20230526124712.1558294-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_054717_848370_F94CF3A3 
X-CRM114-Status: GOOD (  10.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] i.MX: HABv4: fix left-over old arch_remap_range prototype use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The first arch_remap_range occurrence in the file was correctly changed
to remap_range, but the second that was added for v3 wasn't adjusted.
Fix that.

Fixes: 9845563450b8 ("treewide: use remap_range instead of arch_remap_range")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index b10c92ec7671..b6baa92c679d 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -628,7 +628,7 @@ static int init_imx6_hab_get_status(void)
 	imx6_hab_get_status();
 
 	zero_page_faulting();
-	arch_remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);
+	remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);
 
 	return 0;
 }
-- 
2.39.2



