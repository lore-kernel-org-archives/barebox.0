Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rasze-0005pg-11
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 17:51:50 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 35FF4FF8116
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 18:52:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 14 Dec 2011 18:47:21 +0100
Message-Id: <1323884841-21920-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] defaultenv: use a compressed version when embedded in
 barebox
To: barebox@lists.infradead.org

with using gzip and the default env we can save 5.2KiB (5,352 bytes)

tested on sam9g20ek
before
-rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin
after
-rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:

	fix the comment

Best Regards,
J.
 common/Kconfig   |    1 +
 common/Makefile  |    6 +++++-
 common/startup.c |   23 +++++++++++++++++++++--
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 27464d1..ef5bba7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -423,6 +423,7 @@ config PARTITION_DISK_DOS
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
+	select ZLIB
 	prompt "Compile in default environment"
 	help
 	  Enabling this option will give you a default environment when
diff --git a/common/Makefile b/common/Makefile
index 9bce479..5cbaa1d 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -52,5 +52,9 @@ endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 barebox_default_env: $(ENV_FILES)
 	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
 
-include/generated/barebox_default_env.h: barebox_default_env
+barebox_default_env.gz: barebox_default_env FORCE
+	$(call if_changed,gzip)
+
+include/generated/barebox_default_env.h: barebox_default_env.gz
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
+	echo "const int default_environment_uncompress_size=`stat -c%s barebox_default_env`;" >> $@
diff --git a/common/startup.c b/common/startup.c
index 13783fb..c68ac8b 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -63,11 +63,30 @@ static void display_meminfo(void)
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
+#include <uncompress.h>
+
+void *defaultenv;
 
 static int register_default_env(void)
 {
-	add_mem_device("defaultenv", (unsigned long)default_environment,
-		       sizeof(default_environment),
+	int ret;
+	void *tmp;
+
+	tmp = xzalloc(default_environment_size);
+	memcpy(tmp, default_environment, default_environment_size);
+
+	defaultenv = xzalloc(default_environment_uncompress_size);
+
+	ret = uncompress(tmp, default_environment_size, NULL, NULL,
+			 defaultenv, NULL, uncompress_err_stdout);
+
+	free(tmp);
+
+	if (ret)
+		return ret;
+
+	add_mem_device("defaultenv", (unsigned long)defaultenv,
+		       default_environment_uncompress_size,
 		       IORESOURCE_MEM_WRITEABLE);
 	return 0;
 }
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
