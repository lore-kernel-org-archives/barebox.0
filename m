Delivery-date: Wed, 08 Mar 2023 14:12:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZtap-00DZg3-0M
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 14:12:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZtan-0002HM-SX
	for lore@pengutronix.de; Wed, 08 Mar 2023 14:12:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j2jRJlzZ7djHTgJLm00uObc33RiFBj+jLoMWF7tPY2o=; b=dtTbEVzpOVstdMkVwFBr3oCzEO
	SVksUSFi4HNQrtKJ27PiHPUK2Tt0f8ow3bPvO9/NJynoGLNvbvTW12YVQJKBQuLTP8vIsVKmtrem4
	nT8S2frYz71x+OR3c1fTiGXtTWGVQ/Kz7nFpPCy3mhzCks3VPMWzy0etWVr6smAZBM4F3SuD5VTx/
	3pCp2Q7keU+dZaNQzn9OVOlmogT0xAxNTA5emcUSENrymEHTE7rqXKZ4sENgvTY6+KnIn5uRa/V2D
	78gTrggb3iZA1XxOApHNCHveqxXWCcx/uFUPRffzkfE0pszYkjetQ/3AmKoTli39pfhlxirTMw34S
	edpvYHQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZtZ4-0055CT-I8; Wed, 08 Mar 2023 13:10:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZtT3-0051uM-N6
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 13:04:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZtSt-0000iM-Bs; Wed, 08 Mar 2023 14:04:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZtSs-002j2X-NK; Wed, 08 Mar 2023 14:04:18 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZtSr-00GLN0-L6; Wed, 08 Mar 2023 14:04:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Mar 2023 14:04:16 +0100
Message-Id: <20230308130416.3895317-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_050429_813938_7FC8723C 
X-CRM114-Status: GOOD (  10.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] blspec: support higher verbosity levels for boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bootm_data::verbose is an integer and may take values higher than one
for higher levels of verbosity. Yet, boots with blspec always had at
most a verbosity of one, because verbose was treated as boolean. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index f6e590b2efd8..97400b9a2248 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -88,7 +88,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 
 	bootm_data_init_defaults(&data);
 
-	data.verbose = verbose || data.verbose;
+	data.verbose = max(verbose, data.verbose);
 
 	devicetree = blspec_entry_var_get(entry, "devicetree");
 	initrd = blspec_entry_var_get(entry, "initrd");
-- 
2.30.2



