Delivery-date: Thu, 11 Dec 2025 21:49:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbJ-00AQaU-1j
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:49:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnbI-00021F-Tg
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:49:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0vdOdAPDzW9vj+wXWljlAWDhkpvlWTLDIn+KVA4nRY=; b=3Y7R7hQI2kLf4G/ZJ7BTl85Cmo
	z5hP3AguDp1Out3RfW1HKkp4cOvc8dzcc4e8mwg+5GR/Fdf5+PS3n1j7TA7tEOiu9qGx+VZchU/Mw
	1OuIAdTz+0ug76mM1mbOTomkFvTl52XE5NzvcSsZtOO5OsBD1aFIQVqpDRx7xQDZzkoFofw7LX4N7
	H4soBo5kPfkL+qRYICY7kp3ZzrUxzaLurTJ6W4UKTJyzOBKHJaEgJ9RAuoUSy7TIgH9qN+TWx1fBF
	gu6tzQ+kEzY7QQeXbceB6z8HWGqULs98S/QvPoUvxsbfd20yW45CXtLHX9PDZ+3OxXY2DO+ETH9PM
	DCMszTIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnae-0000000HHig-1Rvw;
	Thu, 11 Dec 2025 20:48:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnaZ-0000000HHg8-16sR
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:48:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0001nB-Ks; Thu, 11 Dec 2025 21:48:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-005BYM-1T;
	Thu, 11 Dec 2025 21:48:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnaX-0000000BgnO-1VyL;
	Thu, 11 Dec 2025 21:48:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:48:10 +0100
Message-ID: <20251211204836.2773298-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
References: <20251211204836.2773298-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_124839_488797_0556F5E7 
X-CRM114-Status: GOOD (  13.21  )
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
Subject: [PATCH v2 1/3] globalvar: suppress nvvar_save when no external environment was loaded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

nvvar_save will load the extenral environment before writing it back
with nv changed, which we means we still end up parsing the environment
in this case, even if we don't execute init scripts or import nv out of
it.

Fix this to only parse the environment when we actually loaded it
before.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/environment.c | 7 +++++++
 common/globalvar.c   | 8 +++++++-
 include/globalvar.h  | 1 +
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index 0e551c90352e..ec14d0629a14 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -453,6 +453,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int envfd;
 	int ret = 0;
 	size_t size, rsize;
+	__maybe_unused const char *defenv_path;
 
 #ifdef __BAREBOX__
 	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
@@ -531,6 +532,12 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	ret = 0;
 
+#ifdef CONFIG_NVVAR
+	defenv_path = default_environment_path_get();
+	if (defenv_path && !strcmp(filename, defenv_path))
+	    nv_var_set_persistable();
+#endif
+
 out:
 	close(envfd);
 	free(buf);
diff --git a/common/globalvar.c b/common/globalvar.c
index 77af6733a6a0..1e06fb43775f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -15,6 +15,7 @@
 #include <fnmatch.h>
 
 static int nv_dirty;
+static bool nv_persistable;
 
 struct device global_device = {
 	.name = "global",
@@ -31,6 +32,11 @@ void nv_var_set_clean(void)
 	nv_dirty = 0;
 }
 
+void nv_var_set_persistable(void)
+{
+	nv_persistable = true;
+}
+
 void globalvar_remove(const char *name)
 {
 	struct param_d *p, *tmp;
@@ -713,7 +719,7 @@ int nvvar_save(void)
 	const char *env = default_environment_path_get();
 	int ret = 0;
 #define TMPDIR "/.env.tmp"
-	if (!nv_dirty || !env)
+	if (!nv_dirty || !env || !nv_persistable)
 		return 0;
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
diff --git a/include/globalvar.h b/include/globalvar.h
index df32f22403bc..d0a8272588b4 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -148,6 +148,7 @@ static inline void globalvar_alias_deprecated(const char *newname, const char *o
 #endif
 
 void nv_var_set_clean(void);
+void nv_var_set_persistable(void);
 int nvvar_save(void);
 int nv_complete(struct string_list *sl, char *instr);
 int global_complete(struct string_list *sl, char *instr);
-- 
2.47.3



