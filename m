Delivery-date: Mon, 14 Apr 2025 12:43:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HHp-000beA-12
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:43:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HHo-0008P5-NG
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:43:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=thNR6xn0+nCOflvXEla64PTnzgR2e3nGF2nSrpNc1Fw=; b=zL80LErr2wwQmVr8/8x03fCmS/
	wX1d5n/MlUbdoXMFAA9Xzvw58/nCthtus4keLE5RXq/I1E/u8Ro8Vi/fYpYMnYXQGq8gTf5O6C1al
	HDDcOu/4Uad3pbqCk754YKmmfE4sP3WTpNdqZSxhQftO3qcOrrU/A1P9SkKa0zxn78xrCcP5n1S5O
	YYI9dPt3Jzk20TC39WctMh3b+Us3vDt1Zpohz28CvuZ5xM6+wz8JnR6iTQMdX9tnkuMBJDAnhxSno
	61zolP5XZSDFKRF+Iw39Yeu30g20VpxV2KoWgasMd9/4HJnXrs4LdNlL2kkH26o/rznSBoGUuQXHa
	50c8NvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HHP-00000001al6-1dmb;
	Mon, 14 Apr 2025 10:43:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4H1L-00000001WZ0-1GBy
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:26:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4H1J-0002UZ-SJ; Mon, 14 Apr 2025 12:26:29 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4H1J-000EYS-2A;
	Mon, 14 Apr 2025 12:26:29 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4H1J-00DFEU-1s;
	Mon, 14 Apr 2025 12:26:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 12:26:28 +0200
Message-Id: <20250414102628.3156629-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_032631_352035_C20E53D8 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH v2] commands: saveenv: mention where environment is saved to
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already mention it on loadenv, but it makes sense to do it on saveenv
too to assist with debugging.

As this removes the only user of envfs_save that passes a NULL as first
argument, disallow that going forward by returning an error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - remove NULL check for default_environment_path_get() (Sascha)
  - remove default_environment_path_get() fallback from envfs_save
    (Sascha)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/saveenv.c   | 7 +++++--
 common/environment.c | 5 ++---
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 203729efbb1a..ae9e8da9ce2b 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -13,9 +13,8 @@ static int do_saveenv(int argc, char *argv[])
 {
 	int ret, opt;
 	unsigned envfs_flags = 0;
-	char *filename = NULL, *dirname = NULL;
+	const char *filename = NULL, *dirname = NULL;
 
-	printf("saving environment\n");
 	while ((opt = getopt(argc, argv, "z")) > 0) {
 		switch (opt) {
 		case 'z':
@@ -33,6 +32,10 @@ static int do_saveenv(int argc, char *argv[])
 	/* destination only given? */
 	if (argc - optind > 0)
 		filename = argv[optind];
+	if (!filename)
+		filename = default_environment_path_get();
+
+	printf("saving environment to %s\n", filename);
 
 	ret = envfs_save(filename, dirname, envfs_flags);
 
diff --git a/common/environment.c b/common/environment.c
index 37adb5d67870..33ab4c43295d 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -307,10 +307,8 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	struct action_data data = {};
 	void *buf = NULL, *wbuf;
 	struct envfs_entry *env;
-	const char *defenv_path = default_environment_path_get();
+	__maybe_unused const char *defenv_path;
 
-	if (!filename)
-		filename = defenv_path;
 	if (!filename)
 		return -ENOENT;
 
@@ -419,6 +417,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	ret = 0;
 
 #ifdef CONFIG_NVVAR
+	defenv_path = default_environment_path_get();
 	if (defenv_path && !strcmp(filename, defenv_path))
 	    nv_var_set_clean();
 #endif
-- 
2.39.5



