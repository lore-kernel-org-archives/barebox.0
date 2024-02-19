Delivery-date: Mon, 19 Feb 2024 11:55:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc1JL-00EGTz-2x
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 11:55:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc1JL-0007ai-8g
	for lore@pengutronix.de; Mon, 19 Feb 2024 11:55:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v+G3b+v6IIfgsGfUKXGmtcKIlXWIQ0XZjmdp34Ntd4g=; b=kaoEN9I2oiuEq7qntg5N5SK31+
	+g1ob2s/jZRtgM5sFM7QGjfr8qXgD9EyEy98avqJlV9UbTHc1vzMHrbWFNFfE+iJ9ZBIl/CH8FBsh
	2YnOTPX8HYFo3SvRtHdYYE4oeBwXAZjzQw4noioUGWPa5VSoi5Ok0GOqsdgztezIvM4XMm8lXR56O
	eW3Jw82BWTYIbIZqtW/thRJaOJLfsCsxRfgsU0GG8bqy6QjW7X3ihKsxOgGzFKNaOEBGKUrob8B5b
	pbLM7sBA8y/SKgbcRen8fIw6JiLr13sfCmukiULIb7A+XBps15SWxxUMoaba3q7bGdjHULtto+olP
	xcEE8Fzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc1Im-0000000A7Gf-2PV2;
	Mon, 19 Feb 2024 10:55:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc1Ij-0000000A7G8-1Pzy
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 10:55:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc1Ii-0007Wy-4E; Mon, 19 Feb 2024 11:55:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc1Ih-001dAU-O7; Mon, 19 Feb 2024 11:55:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rc1Ih-006n39-23;
	Mon, 19 Feb 2024 11:55:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 11:55:07 +0100
Message-Id: <20240219105507.1618465-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_025509_404852_45E4FF6B 
X-CRM114-Status: GOOD (  14.37  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] default environment: make string arguments const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Change default_environment_path_set() to take a const char * and let
default_environment_path_get() return a const char *.
Also, do not keep a copy of the string passed to
default_environment_path_set() rather than the original string to make
it more clear where the path is allocated. This allows us to free the
string passed to default_environment_path_set() after usage by some
callers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c |  1 +
 commands/loadenv.c                |  3 ++-
 common/efi/payload/init.c         |  1 +
 common/environment.c              | 13 +++++++++----
 include/envfs.h                   |  8 ++++----
 5 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 36f2e80af2..99e14fb540 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -180,6 +180,7 @@ static int omap_env_init(void)
 								partname);
 	default_environment_path_set(envpath);
 
+	free(envpath);
 out:
 	free(partname);
 
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 279ee52da5..ddbf66b764 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -18,7 +18,8 @@
 
 static int do_loadenv(int argc, char *argv[])
 {
-	char *filename = NULL, *dirname;
+	const char *filename = NULL;
+	char *dirname;
 	unsigned flags = 0;
 	int opt, ret;
 	int scrub = 0;
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index cfacdffa67..e2f763853f 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -258,6 +258,7 @@ static int efi_init(void)
 
 	env = xasprintf("/efivars/barebox-env-%pUl", &efi_barebox_vendor_guid);
 	default_environment_path_set(env);
+	free(env);
 
 	return 0;
 }
diff --git a/common/environment.c b/common/environment.c
index e8c487c1a2..a7432a84f3 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -48,15 +48,20 @@ struct action_data {
 
 #define TMPDIR "/.defaultenv"
 
-static char *default_environment_path = "/dev/env0";
+static char *default_environment_path;
 
-void default_environment_path_set(char *path)
+void default_environment_path_set(const char *path)
 {
-	default_environment_path = path;
+	free(default_environment_path);
+
+	default_environment_path = xstrdup(path);
 }
 
-char *default_environment_path_get(void)
+const char *default_environment_path_get(void)
 {
+	if (!default_environment_path)
+		default_environment_path = xstrdup("/dev/env0");
+
 	return default_environment_path;
 }
 
diff --git a/include/envfs.h b/include/envfs.h
index abe0ffb963..767b34c943 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -105,14 +105,14 @@ int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags);
 
 /* defaults to /dev/env0 */
 #ifdef CONFIG_ENV_HANDLING
-void default_environment_path_set(char *path);
-char *default_environment_path_get(void);
+void default_environment_path_set(const char *path);
+const char *default_environment_path_get(void);
 #else
-static inline void default_environment_path_set(char *path)
+static inline void default_environment_path_set(const char *path)
 {
 }
 
-static inline char *default_environment_path_get(void)
+static inline const char *default_environment_path_get(void)
 {
 	return NULL;
 }
-- 
2.39.2



