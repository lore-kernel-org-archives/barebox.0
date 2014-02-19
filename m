Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WG4kA-0003Ve-MN
 for barebox@lists.infradead.org; Wed, 19 Feb 2014 10:51:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Feb 2014 11:50:47 +0100
Message-Id: <1392807047-32080-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
References: <1392807047-32080-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] Kconfig: Select default compression type
To: barebox@lists.infradead.org

Instead of asking explicitly for the default environment compression
type ask for the in-barebox default compression type. This also adds
a DEFAULT_COMPRESSION_SUFFIX make variable which can be used together
with the wildcard rules for compressed files to generate compressed
files without explicitly support each compression type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile         | 17 +++++++++++++++++
 common/Kconfig   | 39 +++++++++++++++++++++------------------
 common/Makefile  | 13 +------------
 common/startup.c |  2 +-
 4 files changed, 40 insertions(+), 31 deletions(-)

diff --git a/Makefile b/Makefile
index 640e589..b48240a 100644
--- a/Makefile
+++ b/Makefile
@@ -504,6 +504,23 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 pbl-common-y	:= $(patsubst %/, %/built-in-pbl.o, $(common-y))
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 
+ifeq ($(CONFIG_DEFAULT_COMPRESSION_GZIP),y)
+DEFAULT_COMPRESSION_SUFFIX := .gz
+endif
+ifeq ($(CONFIG_DEFAULT_COMPRESSED_BZIP2),y)
+DEFAULT_COMPRESSION_SUFFIX := .bz2
+endif
+ifeq ($(CONFIG_DEFAULT_COMPRESSION_LZO),y)
+DEFAULT_COMPRESSION_SUFFIX := .lzo
+endif
+ifeq ($(CONFIG_DEFAULT_COMPRESSION_LZ4),y)
+DEFAULT_COMPRESSION_SUFFIX := .lz4
+endif
+ifeq ($(CONFIG_DEFAULT_COMPRESSION_NONE),y)
+DEFAULT_COMPRESSION_SUFFIX :=
+endif
+export DEFAULT_COMPRESSION_SUFFIX
+
 # Build barebox
 # ---------------------------------------------------------------------------
 # barebox is built from the objects selected by $(barebox-init) and
diff --git a/common/Kconfig b/common/Kconfig
index 8af7ec1..d6cda8c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -535,35 +535,38 @@ config DEFAULT_ENVIRONMENT
 	  Enabling this option will give you a default environment when
 	  the environment found in the environment sector is invalid
 
-config DEFAULT_ENVIRONMENT_COMPRESSED
-	bool
-	depends on DEFAULT_ENVIRONMENT
-	depends on !IMAGE_COMPRESSION_LZO
-	depends on !IMAGE_COMPRESSION_GZIP
-	default y if ZLIB
-	default y if BZLIB
-	default y if LZO_DECOMPRESS
-
-if DEFAULT_ENVIRONMENT_COMPRESSED
-
 choice
-	prompt "compression"
-
-config DEFAULT_ENVIRONMENT_COMPRESSED_GZIP
+	prompt "default compression for in-barebox binaries"
+	default DEFAULT_COMPRESSION_NONE if PBL_IMAGE
+	default DEFAULT_COMPRESSION_LZO if LZO_DECOMPRESS
+	default DEFAULT_COMPRESSION_GZIP if ZLIB
+	default DEFAULT_COMPRESSION_LZ4 if LZ4_DECOMPRESS
+	default DEFAULT_COMPRESSION_BZIP2 if BZLIB
+	help
+	  Select the default compression for in-barebox binary files. Files
+	  compiled into barebox like for example the default environment will
+	  be compressed with this compression type.
+
+config DEFAULT_COMPRESSION_GZIP
 	bool "gzip"
 	depends on ZLIB
 
-config DEFAULT_ENVIRONMENT_COMPRESSED_BZIP2
+config DEFAULT_COMPRESSION_BZIP2
 	bool "bzip2"
 	depends on BZLIB
 
-config DEFAULT_ENVIRONMENT_COMPRESSED_LZO
+config DEFAULT_COMPRESSION_LZO
 	bool "lzo"
 	depends on LZO_DECOMPRESS
 
-endchoice
+config DEFAULT_COMPRESSION_LZ4
+	bool "lz4"
+	depends on LZ4_DECOMPRESS
 
-endif
+config DEFAULT_COMPRESSION_NONE
+	bool "no compression"
+
+endchoice
 
 config HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool
diff --git a/common/Makefile b/common/Makefile
index 60b0356..3cfaae2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -76,22 +76,11 @@ cmd_envs = ($(srctree)/scripts/genenv $(srctree) $(objtree) $@ $(DEFAULT_ENVIRON
 $(obj)/barebox_default_env: FORCE
 	$(call cmd,envs)
 
-barebox_default_env_comp =
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_GZIP),y)
-barebox_default_env_comp = .gz
-endif
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_BZIP2),y)
-barebox_default_env_comp = .bz2
-endif
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO),y)
-barebox_default_env_comp = .lzo
-endif
-
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
 	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
 
-$(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp) FORCE
+$(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
 	$(call if_changed,env_h)
 
 quiet_cmd_pwd_h = PWDH    $@
diff --git a/common/startup.c b/common/startup.c
index e8b9ea0..4bc5628 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -52,7 +52,7 @@ static int register_default_env(void)
 	int ret;
 	void *defaultenv;
 
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED)) {
+	if (!IS_ENABLED(CONFIG_DEFAULT_COMPRESSION_NONE)) {
 		void *tmp = malloc(default_environment_size);
 
 		if (!tmp)
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
