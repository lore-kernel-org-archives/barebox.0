Delivery-date: Mon, 07 Apr 2025 11:00:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1iLM-009U1N-2D
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 11:00:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1iLM-00050V-4p
	for lore@pengutronix.de; Mon, 07 Apr 2025 11:00:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XlKyjjPAq6Lbsy6VBtHsJ+hXC3ntujNQdQ2UeNS0CJU=; b=26FXxHIYdWUvkqFbxdPWRPIxU0
	/c6eRLHzTlAh9cm8yvj2+JZNS7875bnYUk34o0yx963edpaQVCYiZjW4UpGvqarbo6htmzcxwsdQp
	2SU2YmotQ0vaC+6GrNV03QiTnNnsAV6NDDa+/h64PQM/+OmNpvLv8cJBef7jX/d2ParenKnlr0I9m
	Q2P2T6RgTNF2ru/EXxf1JXLZGGxUYhoZMud5CkJAnonPp4ahvT/3flZDw17Yq5o74x6YzN0G73D2q
	0kskQfRF7i9JRo2ZHBo3XuVah+8h5dBjSeoUwlGkecCsyjm+wqIS4nvCbtgwiVUrmy6ANaqkfIipk
	DaTkbL6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1iKl-0000000H6wd-41yJ;
	Mon, 07 Apr 2025 08:59:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1iGi-0000000H5uE-2Ipw
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 08:55:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1iGh-00047s-9N; Mon, 07 Apr 2025 10:55:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1iGh-003jM8-0J;
	Mon, 07 Apr 2025 10:55:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1iGg-0054ay-3B;
	Mon, 07 Apr 2025 10:55:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Apr 2025 10:55:46 +0200
Message-Id: <20250407085546.1209286-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_015548_584482_9EBC30F9 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] blspec: fix dryrun support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The dryrun field set in the static initializer is immediately
overwritten in bootm_data_init_defaults(), so the dryrun parameter ends
up without effect. Set it after calling bootm_data_init_defaults().

Fixes: 491a885e721e ("bootm: make dryrun controllable via global variable")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 1cbadf8963..c35f2b670e 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -77,11 +77,10 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 	const char *overlays;
 	const char *appendroot;
 	char *old_fws, *fws;
-	struct bootm_data data = {
-		.dryrun = dryrun,
-	};
+	struct bootm_data data = {};
 
 	bootm_data_init_defaults(&data);
+	data.dryrun = max(dryrun, data.dryrun);
 	data.os_file = data.oftree_file = data.initrd_file = NULL;
 	data.verbose = max(verbose, data.verbose);
 
-- 
2.39.5



