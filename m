Delivery-date: Wed, 05 Feb 2025 10:49:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1y-008kZy-0N
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1x-0004tG-O8
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x85qORuqrU9idMFNC+s2mo1dkpfTfLRf7IJVN94JV/k=; b=ctvlwC/mSvEhcAfvUijUORoHUA
	6K7jRaCYvyGo4HkB0QVBZcMhvC2dY5dIx+OlkqQ3ngvq6y8vPbncqusPFALxyqpa6obs77SceInID
	rlsgvpfpofop3gjVaS46JOWI0+McUuZBNoV5izTIxJE355Jv73WzxzKfGNmhztgVZFH0n1KBV4zg9
	t6OL8airvoeUcPPqSYT8h3pDodGzSeO6H923gUnZaQwTALrK7es5SPmjwPqRFm+RULnYJ1zlYAaVr
	cI+bqmWmWliu6RJeomPh9KPcJVbdjh3yGhbexwYjqIWKdItjZd8r4469qLfIQ44BOWD3nM8dia9QE
	GF6n13ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1Y-00000002kgS-3QII;
	Wed, 05 Feb 2025 09:48:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc1W-00000002keK-3WMw
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc1V-0004V4-JN; Wed, 05 Feb 2025 10:48:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc1V-003c3I-0s;
	Wed, 05 Feb 2025 10:48:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc1V-00F0Qc-0W;
	Wed, 05 Feb 2025 10:48:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  5 Feb 2025 10:48:32 +0100
Message-Id: <20250205094832.3576556-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014846_874414_74C9C946 
X-CRM114-Status: GOOD (  10.98  )
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
Subject: [PATCH] environment: fix free() of unitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_find_path() doesn't initialize the outpath on error. In order to
free() it in the error path we have to initialize devpath.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/barebox.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 9b8da679e2..e6bcff7116 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -34,7 +34,7 @@ static char *environment_probe_1node_binding(struct device *dev)
 static char *environment_probe_2node_binding(struct device *dev)
 {
 	const char *filepath;
-	char *devpath;
+	char *devpath = NULL;
 	int ret;
 
 	ret = of_find_path(dev->of_node, "device-path", &devpath,
-- 
2.39.5



