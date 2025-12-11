Delivery-date: Thu, 11 Dec 2025 21:49:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbI-00AQa5-39
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:49:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbI-00020x-F0
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:49:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H0UmKA0Dhe6M7+XA6tV1znDaxzLf781gOa3OtPbmYm8=; b=z5LiD1gP4UHwrc8720iAlI4ejj
	t18NF1JvpOxZZqBtKWzTDXBAFp1UGEr/JxVeaXbQnVj48Uh1OI3qAl2BtXRWfMG43PcxJ9wjcWqsf
	nAqIqNqPTITyB5ZKRjeLh863zB5cqYM+28mCUdhg7MdOgk1+GIsUx/b1yo1ozjrbk9Q7p3QOir6rt
	tsgIvegq/SJM9FeVxc8xeg5dlDVMTNStmCvKXV37oZPFBnG7yxr/6qCEjs0AwQK2LuUg9COsI2B96
	LYnt4scfj7CgtO7K8k+1BhvOWiVgdgeHs234oWrygfKjTtWYjY6rzzd3wRQn8YkUUp3rAKaE3lAua
	+Cfa02AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnab-0000000HHhL-1uLy;
	Thu, 11 Dec 2025 20:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnaZ-0000000HHgA-16xN
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0001nC-Me; Thu, 11 Dec 2025 21:48:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-005BYP-1d;
	Thu, 11 Dec 2025 21:48:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0000000BgnO-1iGB;
	Thu, 11 Dec 2025 21:48:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:48:11 +0100
Message-ID: <20251211204836.2773298-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
References: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_124839_488874_8309AD61 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] startup: bump down log message about lack of persistent environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Not having a persisted environment is expected behavior in some configurations,
so emit it at info log level.

While at it, reword in preparation for the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/startup.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 53003b88bc1b..b6f8a49bb94b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -99,12 +99,10 @@ static int load_environment(void)
 				ERR_PTR(ret));
 	}
 
-	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+	if (IS_ENABLED(CONFIG_ENV_HANDLING))
 		envfs_load(default_environment_path, "/env", 0);
-	} else {
-		if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-			pr_notice("No support for persistent environment. Using default environment\n");
-	}
+	else if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		pr_info("external environment support disabled. Using default environment\n");
 
 	nvvar_load();
 
-- 
2.47.3



