Delivery-date: Mon, 03 Jul 2023 19:23:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNGy-00DpvR-CI
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 19:23:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNGw-0008Bf-1p
	for lore@pengutronix.de; Mon, 03 Jul 2023 19:23:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gFoTdbXM2YkQNaTk07WYr7DctE6loS3UGhKZ+K6AbAc=; b=waLtzFVfV4gEIdDlp0LFpYh35v
	8xVDz/4csjy8qjGIpVX0ItvCPGPDe/Rgczt1YE50g2U5JBCefFnzyDs9da+x9t1v/XW/+APe9FtwL
	KjpdfMyz54xHPkry7BT1HksxUFQcwdquE6m+Do7SL5iBNVza3TIb6BsEzrEsPEnnd8VoD6mtbgfuU
	MAEgwQM0aL4ASP9V11QL1mO3CRhMCYdjKmZOjvRGcNrvij6EE8Zk+Cn1hbeUbupmUv7npxnS0VK2f
	1gVqcYFJDy9oDnSU7ifqbygHmaFtvWk118kO+s0hEp14gK+z5EJg2oPDlQPkneInf0lH4lDxnKvNU
	7uhIYZ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNFP-00B5qw-0o;
	Mon, 03 Jul 2023 17:21:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNFM-00B5qO-2B
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 17:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNFL-00083A-DZ; Mon, 03 Jul 2023 19:21:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNFK-00Br2E-QC; Mon, 03 Jul 2023 19:21:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNFK-002Gi4-1x;
	Mon, 03 Jul 2023 19:21:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 19:21:34 +0200
Message-Id: <20230703172133.539183-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_102156_713137_5CD75181 
X-CRM114-Status: GOOD (  11.34  )
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
Subject: [PATCH master] firmware: use portable newline escape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We want to print `\n' literally into the *.gen.S file, so gas turns it
into a literal new line character. Depending on shell, the current
scheme might work, but let's play it safe and use single quotes. This
fixes a cosmetic issue of non-escaped `\n' making it into the missing
section on NixOS, which leads to slightly garbled output when firmware
is missing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 8d3bfb0752ff..5cdff8b85893 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -62,7 +62,7 @@ filechk_fwbin = { \
 	echo "\#ifdef __PBL__"					;\
 	echo "    .section .missing_fw,\"a\""			;\
 	echo "_fwname_$(FWSTR):"				;\
-	echo ".ascii \"firmware/$(FWNAME)\\\\n\""		;\
+	echo '.ascii "firmware/$(FWNAME)\n"'			;\
 	echo "\#endif" 						;\
 }
 
-- 
2.39.2



