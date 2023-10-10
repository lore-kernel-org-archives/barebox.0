Delivery-date: Tue, 10 Oct 2023 14:01:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqBQ8-0034eX-IU
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 14:01:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqBQ6-0008EN-0v
	for lore@pengutronix.de; Tue, 10 Oct 2023 14:01:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=T038SWBAWyPi2j8871BMxgerPTHsW1G0F69Gzczf/AA=; b=qvpIqOYC8BWxbA34Xygj+ez4or
	VCZg9jf/pMVOXYmPN/irGPVKGq/EsWs86WkVA0QqbbFrIzWIUaM3y82mxLIjXfq+Bgf2eJGfT+AYP
	03CdsECfuUKtrF41hrraqpSKMoYzdYBAoyTmZ+ZsOB0uEut8SEdDJMqkjyK4BTza9TmSHNQI2rn90
	F0St/L3aVf5vwuau0+Wnm1PPQLCOH4vV1At051C59XqzOOuuazVGQFT3nssn6JNdTya4NTFnwR6gm
	6kunPIYZcTwuQDkypsS6qmSJU0qdBN+cOnP9yOr6SP6/FbbNzi51MR8Lw/GkIP0xTnYxxZGzEl/FG
	5LvVpfaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqBOS-00DHPr-1X;
	Tue, 10 Oct 2023 11:59:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqBOO-00DHPO-1V
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 11:59:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qqBOH-0007iX-Bh; Tue, 10 Oct 2023 13:59:09 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qqBOG-000eQB-VX; Tue, 10 Oct 2023 13:59:08 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qqBOG-00DpwC-31;
	Tue, 10 Oct 2023 13:59:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Oct 2023 13:59:06 +0200
Message-Id: <20231010115906.3297847-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_045916_521884_B126FB57 
X-CRM114-Status: GOOD (  11.69  )
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
Subject: [PATCH] common: version: remove trailing new line from version_string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For determining the barebox version, the variables version_string,
release_string and buildsystem_version_string are exported for general
use. Only version_string is given a trailing new line though.

The trailing new line can be unexpected and is something that should
be added by code that requires it, so drop it from the variable
definition itself.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/version.c | 2 +-
 common/version.c   | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/version.c b/commands/version.c
index 764c20876703..0ad8e587de87 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -7,7 +7,7 @@
 
 static int do_version(int argc, char *argv[])
 {
-	printf ("\n%s\n", version_string);
+	printf ("\n%s\n\n", version_string);
 	return 0;
 }
 
diff --git a/common/version.c b/common/version.c
index 15f03c2a00ff..465e22c7f52e 100644
--- a/common/version.c
+++ b/common/version.c
@@ -5,7 +5,7 @@
 #include <generated/utsrelease.h>
 
 const char version_string[] =
-	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
+	"barebox " UTS_RELEASE " " UTS_VERSION;
 EXPORT_SYMBOL(version_string);
 
 const char release_string[] =
@@ -20,7 +20,7 @@ EXPORT_SYMBOL(buildsystem_version_string);
 void barebox_banner (void)
 {
 	printf("\n\n");
-	pr_info("%s", version_string);
+	pr_info("%s\n", version_string);
 	if (strlen(buildsystem_version_string) > 0)
 		pr_info("Buildsystem version: %s", buildsystem_version_string);
 	printf("\n\n");
-- 
2.39.2



