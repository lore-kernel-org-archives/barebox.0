Delivery-date: Wed, 24 Jun 2026 08:08:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcGmZ-009G5j-38
	for lore@lore.pengutronix.de;
	Wed, 24 Jun 2026 08:08:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcGmZ-0003sI-A6
	for lore@pengutronix.de; Wed, 24 Jun 2026 08:08:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vLi6gFtAIKnI2cOOVu9MtENkt75ZBdesdggcIeH5rCA=; b=N73VQYk32zyPXG8tYyDSw5m2iw
	W6xdnGZYr7GWB4mLgbMe/A3DMKF71DZFnYTILZS7BuBbozi4tPp3rDZgRxNhMsueXkae9taxtVhWK
	s7s2i+0e5GPDiG4C0zc37YSyStgFg3y20u4x4Jncuu4GMw7k4xPQjxdMTmugXVSuEwXLXAjqLJWHh
	/dVZ2dJSH4+28rSUPPPvnmQC/ADTGlL3l3zkyFj5MFW4eqJrFz4aNynhkm4BqBXEmbFVE67EBKf+X
	CaOCO027ouXvRfZj3Ap+jErrYY6u/mccXmE4zvMjRwc+Vu43YznZ6h85pDh31KTzoQxq7VtqY7RUu
	64vrKDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcGlJ-00000007CwP-0e2E;
	Wed, 24 Jun 2026 06:07:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcGlF-00000007CvY-2h69
	for barebox@lists.infradead.org;
	Wed, 24 Jun 2026 06:06:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6C8732006B1;
	Wed, 24 Jun 2026 08:06:53 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcGlB-004Ngp-15;
	Wed, 24 Jun 2026 08:06:53 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcGlB-00000007kE4-0xF6;
	Wed, 24 Jun 2026 08:06:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jun 2026 08:06:47 +0200
Message-ID: <20260624060648.1845974-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_230657_973700_A62A1267 
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: include origin of device tree in verbose output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it easier to see at a glance if the device tree to be passed to
Linux is barebox' own or an externally provided DT, include this
information into verbosity level 1.

Previously we only printed "using internal devicetree" at verbosity
level 2, but that's the same level we dump the whole DT, so we bump it
down a level and rename it to make it clear what the DT is internal to
(e.g. it's not a FIT-internal DT).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 26465875ad94..de1b87fe2072 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -328,13 +328,19 @@ void *bootm_get_devicetree(struct image_data *data)
 			return ERR_PTR(-EINVAL);
 		}
 
+		if (bootm_verbose(data))
+			printf("using %s as devicetree\n", data->oftree->name);
+
 	} else {
 		data->of_root_node = of_dup_root_node_for_boot();
-		if (!data->of_root_node)
+		if (!data->of_root_node) {
+			if (bootm_verbose(data))
+				printf("using no devicetree\n");
 			return NULL;
+		}
 
-		if (bootm_verbose(data) > 1)
-			printf("using internal devicetree\n");
+		if (bootm_verbose(data))
+			printf("using barebox's internal devicetree\n");
 	}
 
 	if (data->initrd_res) {
-- 
2.47.3



