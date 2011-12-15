Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo5.mail-out.ovh.net ([46.105.40.108]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RbBst-00069h-H1
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 14:02:11 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1B229FF918F
 for <barebox@lists.infradead.org>; Thu, 15 Dec 2011 15:02:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Dec 2011 14:57:38 +0100
Message-Id: <1323957458-5929-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1323957458-5929-1-git-send-email-plagnioj@jcrosoft.com>
References: <1323957458-5929-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2 v3] defaultenv: use a compressed version when embedded in
 barebox
To: barebox@lists.infradead.org

enable it only if a compression is enabled
support gzip, bzip2 and lzo

you will be able to choose which compression to use

-rw-r--r--  1 root root    8436 Dec 15 01:35 barebox_default_env
-rw-r--r--  1 root root    2782 Dec 15 01:35 barebox_default_env.bz2
-rw-r--r--  1 root root    2691 Dec 15 01:38 barebox_default_env.gz
-rw-r--r--  1 root root    3262 Dec 15 01:38 barebox_default_env.lzo

with using gzip and the default env we can save 5.6KiB (5,745 bytes)
with using bzip2 and the default env we can save 5.5KiB (5,654 bytes)
with using lzo and the default env we can save 5.1KiB (5,174 bytes)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	only enable the compressed if any compression is enable
	and allow to choose it

Best Regards,
J.
 common/Kconfig   |   28 ++++++++++++++++++++++++++++
 common/Makefile  |   27 ++++++++++++++++++++++++++-
 common/startup.c |   29 +++++++++++++++++++++++++++--
 3 files changed, 81 insertions(+), 3 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 27464d1..b634e46 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -428,6 +428,34 @@ config DEFAULT_ENVIRONMENT
 	  Enabling this option will give you a default environment when
 	  the environment found in the environment sector is invalid
 
+config DEFAULT_ENVIRONMENT_COMPRESSED
+	bool
+	depends on DEFAULT_ENVIRONMENT
+	default y if ZLIB
+	default y if BZLIB
+	default y if LZO_DECOMPRESS
+
+if DEFAULT_ENVIRONMENT_COMPRESSED
+
+choice
+	prompt "compression"
+
+config DEFAULT_ENVIRONMENT_COMPRESSED_GZIP
+	bool "gzip"
+	depends on ZLIB
+
+config DEFAULT_ENVIRONMENT_COMPRESSED_BZIP2
+	bool "bzip2"
+	depends on BZLIB
+
+config DEFAULT_ENVIRONMENT_COMPRESSED_LZO
+	bool "lzo"
+	depends on LZO_DECOMPRESS
+
+endchoice
+
+endif
+
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on DEFAULT_ENVIRONMENT
diff --git a/common/Makefile b/common/Makefile
index 9bce479..ea8882a 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -52,5 +52,30 @@ endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 barebox_default_env: $(ENV_FILES)
 	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
 
-include/generated/barebox_default_env.h: barebox_default_env
+barebox_default_env_comp =
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP),y)
+barebox_default_env_comp = .gz
+endif
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_BZIP2),y)
+barebox_default_env_comp = .bz2
+endif
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO),y)
+barebox_default_env_comp = .lzo
+endif
+
+barebox_default_env.gz: barebox_default_env
+	$(call if_changed,gzip)
+
+barebox_default_env.bz2: barebox_default_env
+	$(call if_changed,bzip2)
+
+barebox_default_env.lzo: barebox_default_env
+	$(call if_changed,lzo)
+
+include/generated/barebox_default_env.h: barebox_default_env$(barebox_default_env_comp)
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
+	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s barebox_default_env`;" >> $@
+
+CLEAN_FILES += include/generated/barebox_default_env.h barebox_default_env
+CLEAN_FILES += barebox_default_env.gz barebox_default_env.bz2
+CLEAN_FILES += barebox_default_env.lzo
diff --git a/common/startup.c b/common/startup.c
index 13783fb..180fdc3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -64,10 +64,35 @@ static void display_meminfo(void)
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
+#ifdef CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED
+#include <uncompress.h>
+void *defaultenv;
+#else
+#define defaultenv default_environment
+#endif
+
 static int register_default_env(void)
 {
-	add_mem_device("defaultenv", (unsigned long)default_environment,
-		       sizeof(default_environment),
+#ifdef CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED
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
+#endif
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
