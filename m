Delivery-date: Tue, 25 Nov 2025 07:27:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmW2-004dwG-1F
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 07:27:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmW1-0006Go-RZ
	for lore@pengutronix.de; Tue, 25 Nov 2025 07:27:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p+MDMmbJ1FnmULTGlSWTcr8rApIT54LQbmsTQyJ2P3I=; b=rxq2Dy/H6vuFZPlxxXpwFipTLJ
	zhW5sFt0VyooZibDFno5WLQuP59iMN77OhDzXm6fvaa2GDkOYYg8vhTwlIpE5RL3Ujhv2hZhR6YbB
	v/yFO5crMGxHFbKO4JgICnaBCI9WCYC03zfNe+kTyYnYzqOXHK7C+NulpmQA5CuhqDN2mXhvhcT9S
	/ls7MsYdLYu+6AznFbB2H31D5wwqm/bEDV/tbgjimmO/eDschnLFm39YaJaW+ZlKFp7hx9Pxagy19
	ayctRdoRAH0HvpTMrJumWG1hentC1aa3+GVnT4o5UZalxkJUbpZv0y97+Ov12zQOvBYeQKB0+66Ey
	eJ3F8PiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVZ-0000000Covq-0sOK;
	Tue, 25 Nov 2025 06:26:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVX-0000000CovI-2WLm
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 06:26:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVW-00066r-1m; Tue, 25 Nov 2025 07:26:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVV-002L4N-2n;
	Tue, 25 Nov 2025 07:26:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVV-0000000AyRx-3EoJ;
	Tue, 25 Nov 2025 07:26:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 25 Nov 2025 07:23:49 +0100
Message-ID: <20251125062603.2614867-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251125062603.2614867-2-a.fatoum@pengutronix.de>
References: <20251125062603.2614867-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_222635_643924_AC849409 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] defaultenv: don't abort defaultenv_load silently on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Failure to load one defaultenv has no bearing on whether subsequent
defaultenv loads would succeed, so do not abort the loop early in that
case.

Reported-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/startup.c        | 8 ++++++--
 defaultenv/defaultenv.c | 8 ++++----
 2 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index dfea8394fdee..8f5e77d4619c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -92,8 +92,12 @@ static int load_environment(void)
 
 	default_environment_path = default_environment_path_get();
 
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-		defaultenv_load("/env", 0);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT)) {
+		ret = defaultenv_load("/env", 0);
+		if (ret)
+			pr_warn("Failed loading (some) defaultenv overlays: %pe\n",
+				ERR_PTR(ret));
+	}
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
 		envfs_load(default_environment_path, "/env", 0);
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index d6cca466a683..99f681f6520e 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -172,17 +172,17 @@ static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 int defaultenv_load(const char *dir, unsigned flags)
 {
 	struct defaultenv *df;
-	int ret;
+	int err = 0;
 
 	defaultenv_add_base();
 
 	defaultenv_add_external();
 
 	list_for_each_entry(df, &defaultenv_list, list) {
-		ret = defaultenv_load_one(df, dir, flags);
+		int ret = defaultenv_load_one(df, dir, flags);
 		if (ret)
-			return ret;
+			err = ret;
 	}
 
-	return 0;
+	return err;
 }
-- 
2.47.3



