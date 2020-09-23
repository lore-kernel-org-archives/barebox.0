Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL26S-0007I1-EI
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 10:34:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26P-0005vi-7c
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:21 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kL26O-0000Lc-Sn
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 12:34:20 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 23 Sep 2020 12:34:16 +0200
Message-Id: <20200923103418.11186-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
References: <20200923103418.11186-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] common: print buildsystem version in barebox banner
To: Barebox List <barebox@lists.infradead.org>

When the barebox banner is enabled and printed during startup, also show
information about the buildsystem version: the exact state of the
barebox binary and its config.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/version.c | 6 ++++++
 include/common.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/common/version.c b/common/version.c
index 8b1fd4dbe756..54cec5335d9c 100644
--- a/common/version.c
+++ b/common/version.c
@@ -10,11 +10,17 @@ const char release_string[] =
 	"barebox-" UTS_RELEASE;
 EXPORT_SYMBOL(release_string);
 
+const char buildsystem_version_string[] =
+	BUILDSYSTEM_VERSION;
+EXPORT_SYMBOL(buildsystem_version_string);
+
 #ifdef CONFIG_BANNER
 void barebox_banner (void)
 {
 	printf("\n\n");
 	pr_info("%s", version_string);
+	if (strlen(buildsystem_version_string) > 0)
+		pr_info("Buildsystem version: %s", buildsystem_version_string);
 	printf("\n\n");
 	pr_info("Board: %s\n", barebox_get_model());
 }
diff --git a/include/common.h b/include/common.h
index ceb0b358bd44..693f5bf97029 100644
--- a/include/common.h
+++ b/include/common.h
@@ -124,6 +124,7 @@ int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
 
 extern const char version_string[];
 extern const char release_string[];
+extern const char buildsystem_version_string[];
 #ifdef CONFIG_BANNER
 void barebox_banner(void);
 #else
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
