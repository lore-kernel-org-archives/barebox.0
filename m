Delivery-date: Mon, 07 Apr 2025 15:07:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mC3-009Yai-0Y
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:07:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mC2-0001Tq-KW
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:07:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZGdS8ZZ6Evbe58kyZgcJa5N8h3Nbw//Spz9nkra9Qxg=; b=JCRJmDj0fdqddLGjj0O6JNzUsp
	PolfY8u/LZHOSM79ZvgEpQLT//euVfmpzHnty8kaeQjOVhSAWcPvFnG43xxQ1u20w7m0jbJ0z976f
	KdQZ3MGQSqWOLEQh11vi65DuDyq9bOGDkGn5UaduJPqKiGBvZLAevZaPiQWv+kw6afuACIenIGNTy
	e7zVjhWRCssTdhSFv8J6y1Ph0nQhpXPx17eqL720XUWyXwX32VTVIlidDlW2FboVT/B/rfG3vf/Qv
	pW3YwVC+nQYGMwP5Us0biTcFpOmNbriOL3w1m6DpV2GJNUQ8RSk3+ZA7zB6pWF9Cbov0WbE7dc4QC
	SVAfV66w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mBb-00000000Pr8-31Q8;
	Mon, 07 Apr 2025 13:06:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mAh-00000000PiO-3jIu
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:05:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mAg-00015S-Nx; Mon, 07 Apr 2025 15:05:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mAg-003lUL-1l;
	Mon, 07 Apr 2025 15:05:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1mAg-00BzrP-1Q;
	Mon, 07 Apr 2025 15:05:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Apr 2025 15:05:49 +0200
Message-Id: <20250407130549.2859220-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_060551_923327_98FBFB18 
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
index 1cbadf8963..689f3ac4d8 100644
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
+	data.dryrun = max_t(int, dryrun, data.dryrun);
 	data.os_file = data.oftree_file = data.initrd_file = NULL;
 	data.verbose = max(verbose, data.verbose);
 
-- 
2.39.5



