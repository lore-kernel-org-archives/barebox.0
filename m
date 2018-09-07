Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyC55-0000tS-Qc
 for barebox@lists.infradead.org; Fri, 07 Sep 2018 08:25:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Sep 2018 10:25:15 +0200
Message-Id: <20180907082515.8876-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: make HAB certificate pathes explicitly overwritable
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Marcin=20Niestr=C3=B3j?= <m.niestroj@grinn-global.com>

When building HAB images for i.MX we have to specify some pathes to
the certificates. This can be done with Kconfig variables. For better
build system integration we also want to be able to specify the pathes
in environment variables. This currently doesn't work as we specify
the variables from the environment with the -D option to cpp, but also
include generated/autoconf.h which overwrites the variables with the
values from Kconfig.

To overcome this introduce a Kconfig switch that explcitly selects
whether we want to have the variables from Kconfig or the environment.
Also, only pass the variables from the environment when explicitly
wanted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 26 ++++++++++++++++++++++++--
 scripts/Makefile.lib      | 17 +++++++++++------
 2 files changed, 35 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 737cded930..52a825bab6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -753,7 +753,29 @@ config HABV4
 	help
 	  High Assurance Boot, as found on i.MX28/i.MX6.
 
-if HABV4
+config HAB_CERTS_ENV
+	depends on HAB
+	bool "Specify certificates in environment"
+	help
+	  If this option is enabled the pathes to the HAB certificates are
+	  taken from environment variables which allows for better integration
+	  with build systems. With this option disabled the pathes can be
+	  specified below.
+
+	  The environment variables have the same name as the corresponding
+	  Kconfig variables. For HABv3 these are:
+
+	  CONFIG_HABV3_SRK_PEM
+	  CONFIG_HABV3_CSF_CRT_DER
+	  CONFIG_HABV3_IMG_CRT_DER
+
+	  For HABv4:
+
+	  CONFIG_HABV4_TABLE_BIN
+	  CONFIG_HABV4_CSF_CRT_PEM
+	  CONFIG_HABV4_IMG_CRT_PEM
+
+if HABV4 && !HAB_CERTS_ENV
 
 config HABV4_TABLE_BIN
 	string "Path to SRK table"
@@ -796,7 +818,7 @@ config HABV3
 	help
 	  High Assurance Boot, as found on i.MX25.
 
-if HABV3
+if HABV3 && !HAB_CERTS_ENV
 
 config HABV3_SRK_PEM
 	string "Path to SRK Certificate (PEM)"
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3b13086050..3b4277e5ab 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -431,15 +431,20 @@ cmd_imximage_S_dcd=						\
 	echo '.balign STRUCT_ALIGNMENT';			\
 ) > $@
 
+overwrite-hab-env = $(shell set -e; \
+      test -n "$(CONFIG_HAB_CERTS_ENV)"; \
+      test -n "$$$(1)"; \
+      echo -D$(1)=\"$(shell echo $$$(1))\")
+
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
       -include include/generated/autoconf.h \
-      -DCONFIG_HABV3_SRK_PEM=\"$(CONFIG_HABV3_SRK_PEM)\" \
-      -DCONFIG_HABV3_CSF_CRT_DER=\"$(CONFIG_HABV3_CSF_CRT_DER)\" \
-      -DCONFIG_HABV3_IMG_CRT_DER=\"$(CONFIG_HABV3_IMG_CRT_DER)\" \
-      -DCONFIG_HABV4_TABLE_BIN=\"$(CONFIG_HABV4_TABLE_BIN)\" \
-      -DCONFIG_HABV4_CSF_CRT_PEM=\"$(CONFIG_HABV4_CSF_CRT_PEM)\" \
-      -DCONFIG_HABV4_IMG_CRT_PEM=\"$(CONFIG_HABV4_IMG_CRT_PEM)\"
+      $(call overwrite-hab-env,CONFIG_HABV3_SRK_PEM) \
+      $(call overwrite-hab-env,CONFIG_HABV3_CSF_CRT_DER) \
+      $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
+      $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
+      $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
+      $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM)
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
