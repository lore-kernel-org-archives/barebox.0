Delivery-date: Tue, 28 Apr 2026 11:24:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHegd-00HH0V-29
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 11:24:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHegd-0006KF-47
	for lore@pengutronix.de; Tue, 28 Apr 2026 11:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=coxQjvzeba7r6LJa8Qqgm69CZCoQTKJvGm52viH5AyU=; b=wQjBJRIU04wg3Ue2cAhdZB51sY
	ofI5BOCX3IFgXHbUm8Rf3/p7De0+a/uUjwypJ3WpHnUrp4gfHJbP3pJn+rgJhhi/QhkH847x4IKNz
	se/vbzKmAUqlu7eAORXmPWMh262o+731QI/vmsyrcdEM9g4Bc2MEabbneVaJMqLKsf+j6luyoLc3I
	QIEEL42lCFMeyidtvHvqr+EPWuDIsuVLZamx4f2aavqxz9k55RU8oVtSopzgEYOC6NYShI3uxqskw
	s8zxDr4ymfPu5Qy1crjSKWj7UPlFtw71PdRJP0EzpYAwVqYMQ6UKJhsSSUmADuWWS72dqhKADDbJh
	ovAsoLRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHegK-000000015BZ-0nZD;
	Tue, 28 Apr 2026 09:24:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHegH-000000015A4-0pQQ
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 09:24:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-0005wr-PS; Tue, 28 Apr 2026 11:24:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-007dfD-0e;
	Tue, 28 Apr 2026 11:24:11 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-000000093nw-0YNR;
	Tue, 28 Apr 2026 11:24:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2026 11:24:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-env-autoprobe-v1-2-9cdedfa0752e@pengutronix.de>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
In-Reply-To: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777368251; l=1528;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TzKhG5P7/KtRzFVNG/aZDSh3qe7qnSEPcyXXbEFHqv8=;
 b=Jx/XvVCjdhK53FC5L17cz23e2oVtmWEIrO7NZ0GtGhFKAieQOnKSzkIrZWEYZrbGWyAzsDQOk
 x8vkbYV4+LyCgGClUTFvKuk5LflxHi5cHDBaTyIG19QVNe5y556yP4R
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_022437_269763_E756C1FA 
X-CRM114-Status: GOOD (  12.24  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] environment: add global.env.path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox doesn't give an indication where the environment is stored without
actually doing a loadenv/saveenv. Add global.env.path which can be used to
show the path or even to set it.

A variable added with globalvar_add_simple_string() will be set to an empty
string whereas default_environment_path_get() used to return NULL when unset,
so we have to catch this explicitly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index 207b58e743..f883a520c6 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -126,7 +126,7 @@ const char *default_environment_path_get(void)
 {
 	struct cdev *cdev;
 
-	if (default_environment_path)
+	if (default_environment_path && *default_environment_path)
 		return default_environment_path;
 
 	cdev = default_environment_path_search();
@@ -547,9 +547,13 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 static int register_env_vars(void)
 {
 	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
+	globalvar_add_simple_string("env.path", &default_environment_path);
+
 	return 0;
 }
 postcore_initcall(register_env_vars);
 BAREBOX_MAGICVAR(global.env.autoprobe,
                  "Automatically probe known block devices for environment");
+BAREBOX_MAGICVAR(global.env.path,
+                 "The path the environment is stored");
 #endif

-- 
2.47.3



