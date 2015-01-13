Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAurN-0007sg-V2
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:21:51 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CE38CFFA071
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:21:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:21:10 +0100
Message-Id: <1421130070-31704-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] defaultenv-2: create a specific defaultenv for splash
To: barebox@lists.infradead.org

This will allow to factorize splash init

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9m10ihd/env/init/splash |  8 --------
 common/Kconfig                                 |  5 +++++
 defaultenv/Makefile                            |  1 +
 defaultenv/defaultenv-2-splash/init/splash     | 15 +++++++++++++++
 defaultenv/defaultenv-2-splash/rc.d/010-splash |  1 +
 defaultenv/defaultenv.c                        |  2 ++
 6 files changed, 24 insertions(+), 8 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash
 create mode 100644 defaultenv/defaultenv-2-splash/init/splash
 create mode 120000 defaultenv/defaultenv-2-splash/rc.d/010-splash

diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/splash b/arch/arm/boards/at91sam9m10ihd/env/init/splash
deleted file mode 100644
index 18e74df..0000000
--- a/arch/arm/boards/at91sam9m10ihd/env/init/splash
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-splash=/env/splash.png
-
-if [ -f ${splash} -a -e /dev/fb0 ]; then
-	splash -o ${splash}
-	fb0.enable=1
-fi
diff --git a/common/Kconfig b/common/Kconfig
index 00e4f36..6e19e9f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -650,6 +650,11 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
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
diff --git a/defaultenv/defaultenv-2-splash/init/splash b/defaultenv/defaultenv-2-splash/init/splash
new file mode 100644
index 0000000..f70804d
--- /dev/null
+++ b/defaultenv/defaultenv-2-splash/init/splash
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+img="/env/splash.png"
+
+if [ ! -e ${img} ]; then
+	return
+fi
+
+splash ${img}
+
+if [ $? = 0 ]; then
+	fb0.enable=1
+else
+	echo "Cannot show splash image"
+fi
diff --git a/defaultenv/defaultenv-2-splash/rc.d/010-splash b/defaultenv/defaultenv-2-splash/rc.d/010-splash
new file mode 120000
index 0000000..f00f86e
--- /dev/null
+++ b/defaultenv/defaultenv-2-splash/rc.d/010-splash
@@ -0,0 +1 @@
+../init/splash
\ No newline at end of file
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
