Delivery-date: Tue, 26 Nov 2024 16:34:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaJ-000fmi-12
	for lore@lore.pengutronix.de;
	Tue, 26 Nov 2024 16:34:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFxaG-0001cR-IB
	for lore@pengutronix.de; Tue, 26 Nov 2024 16:34:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wVUzIovq3BclYM0/NX8cshzAKv9asyLt9/Y3wis9rzY=; b=ViM8KwqT8BwywQF4MdJ8Vf4BT3
	pKT6E0IaTepH3UhfV6wCoKFMAXyaRtpvJd12pNnIaVdbd8XjSux+qDIv1DFCJ9/ecjDbnmH+5T3BR
	sx8fVTRMTc7xUSHdoAyy5wCw+O2YegcLl9k9vCx6WGUf24iqrkuyYhgOzNt3MqdU60eGzA/d42Nr/
	IUl0THCXSUwV8gaoZeskRzFFmQiVPTKRXHVPGHtSmqDlu4t5Ky4vPgj2u7vyytDpiE7NbmyZ42o9b
	delGvsBYh+hVCo/xY2f1agSELHuUOwCG0Ei4cvEDW87K7zF5JhKZRN7qOnLdBpUkUXNrf141ABEy7
	rLT6eljg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxZn-0000000B10E-148E;
	Tue, 26 Nov 2024 15:34:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFxYx-0000000B0pA-0rtK
	for barebox@lists.infradead.org;
	Tue, 26 Nov 2024 15:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-0000vt-Un; Tue, 26 Nov 2024 16:33:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYu-000Gu9-33;
	Tue, 26 Nov 2024 16:33:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFxYv-00Fme2-02;
	Tue, 26 Nov 2024 16:33:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2024 16:33:10 +0100
Message-Id: <20241126153312.3758355-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
References: <20241126153312.3758355-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_073315_242637_BFB96F19 
X-CRM114-Status: GOOD (  12.06  )
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
Subject: [PATCH 3/5] environment: register barebox env OF driver regardless of /chosen
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Even if we don't have a /chosen node, a barebox,environment node may be
added later or it may not be under /chosen at all with the incoming new
binding.

Therefore register the driver unconditionally if we are on an OF system.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/barebox.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index ed5d171e43a8..65392697913b 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -108,13 +108,9 @@ static int barebox_of_driver_init(void)
 		return 0;
 
 	node = of_find_node_by_path("/chosen");
-	if (!node)
-		return 0;
+	if (node)
+		of_platform_populate(node, of_default_bus_match_table, NULL);
 
-	of_platform_populate(node, of_default_bus_match_table, NULL);
-
-	platform_driver_register(&environment_driver);
-
-	return 0;
+	return platform_driver_register(&environment_driver);
 }
 late_initcall(barebox_of_driver_init);
-- 
2.39.5



