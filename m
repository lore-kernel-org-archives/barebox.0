Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo6.mail-out.ovh.net ([46.105.56.113])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6N-0004Po-8v
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:37 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 811A2FF8554
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:58 +0100
Message-Id: <1419358918-25569-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 9/9] defaultenv-2: create a specific defaultenv for splash
To: barebox@lists.infradead.org

This will allow to factorize splash init

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig                             |  5 +++++
 defaultenv/Makefile                        |  1 +
 defaultenv/defaultenv-2-splash/bin/splash  | 15 +++++++++++++++
 defaultenv/defaultenv-2-splash/init/splash |  3 +++
 defaultenv/defaultenv.c                    |  2 ++
 5 files changed, 26 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-splash/bin/splash
 create mode 100644 defaultenv/defaultenv-2-splash/init/splash

diff --git a/common/Kconfig b/common/Kconfig
index 05f76ae..3f1ef6f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -653,6 +653,11 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
 	depends on USB_GADGET_DFU
 	default y
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_SPLASH
+	bool
+	depends on CMD_SPLASH
+	default y
+
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on !HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index fc679eb..03d241c 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -1,6 +1,7 @@
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SPLASH) += defaultenv-2-splash
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
 extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX)
diff --git a/defaultenv/defaultenv-2-splash/bin/splash b/defaultenv/defaultenv-2-splash/bin/splash
new file mode 100644
index 0000000..352439d
--- /dev/null
+++ b/defaultenv/defaultenv-2-splash/bin/splash
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+splash="/env/splash.png"
+
+if [ ! -f ${splash} ]; then
+	return
+fi
+
+splash ${splash}
+
+if [ $? = 0 ]; then
+	fb0.enable=1
+else
+	echo "Cannot show splash image"
+fi
diff --git a/defaultenv/defaultenv-2-splash/init/splash b/defaultenv/defaultenv-2-splash/init/splash
new file mode 100644
index 0000000..04fdc8e
--- /dev/null
+++ b/defaultenv/defaultenv-2-splash/init/splash
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+/env/bin/splash
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 3b4efcf..712502d 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -48,6 +48,8 @@ static void defaultenv_add_base(void)
 		defaultenv_append_directory(defaultenv_2_menu);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU))
 		defaultenv_append_directory(defaultenv_2_dfu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SPLASH))
+		defaultenv_append_directory(defaultenv_2_splash);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_1);
 }
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
