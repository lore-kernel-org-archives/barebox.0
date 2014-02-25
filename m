Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIIq4-0003C2-PM
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 14:18:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2014 15:18:02 +0100
Message-Id: <1393337884-17282-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
References: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] move defaultenv-1 to defaultenv/defaultenv-1
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile                                | 2 +-
 defaultenv/{ => defaultenv-1}/bin/_boot_help   | 0
 defaultenv/{ => defaultenv-1}/bin/_update      | 0
 defaultenv/{ => defaultenv-1}/bin/_update_help | 0
 defaultenv/{ => defaultenv-1}/bin/boot         | 0
 defaultenv/{ => defaultenv-1}/bin/init         | 0
 defaultenv/{ => defaultenv-1}/bin/update       | 0
 defaultenv/{ => defaultenv-1}/config           | 0
 8 files changed, 1 insertion(+), 1 deletion(-)
 rename defaultenv/{ => defaultenv-1}/bin/_boot_help (100%)
 rename defaultenv/{ => defaultenv-1}/bin/_update (100%)
 rename defaultenv/{ => defaultenv-1}/bin/_update_help (100%)
 rename defaultenv/{ => defaultenv-1}/bin/boot (100%)
 rename defaultenv/{ => defaultenv-1}/bin/init (100%)
 rename defaultenv/{ => defaultenv-1}/bin/update (100%)
 rename defaultenv/{ => defaultenv-1}/config (100%)

diff --git a/common/Makefile b/common/Makefile
index a52e96b..c88d1c6 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -58,7 +58,7 @@ endif
 endif
 
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
-DEFAULT_ENVIRONMENT_PATH = "defaultenv"
+DEFAULT_ENVIRONMENT_PATH = "defaultenv/defaultenv-1"
 endif
 
 ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
diff --git a/defaultenv/bin/_boot_help b/defaultenv/defaultenv-1/bin/_boot_help
similarity index 100%
rename from defaultenv/bin/_boot_help
rename to defaultenv/defaultenv-1/bin/_boot_help
diff --git a/defaultenv/bin/_update b/defaultenv/defaultenv-1/bin/_update
similarity index 100%
rename from defaultenv/bin/_update
rename to defaultenv/defaultenv-1/bin/_update
diff --git a/defaultenv/bin/_update_help b/defaultenv/defaultenv-1/bin/_update_help
similarity index 100%
rename from defaultenv/bin/_update_help
rename to defaultenv/defaultenv-1/bin/_update_help
diff --git a/defaultenv/bin/boot b/defaultenv/defaultenv-1/bin/boot
similarity index 100%
rename from defaultenv/bin/boot
rename to defaultenv/defaultenv-1/bin/boot
diff --git a/defaultenv/bin/init b/defaultenv/defaultenv-1/bin/init
similarity index 100%
rename from defaultenv/bin/init
rename to defaultenv/defaultenv-1/bin/init
diff --git a/defaultenv/bin/update b/defaultenv/defaultenv-1/bin/update
similarity index 100%
rename from defaultenv/bin/update
rename to defaultenv/defaultenv-1/bin/update
diff --git a/defaultenv/config b/defaultenv/defaultenv-1/config
similarity index 100%
rename from defaultenv/config
rename to defaultenv/defaultenv-1/config
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
