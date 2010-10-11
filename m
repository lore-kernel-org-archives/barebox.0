Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JUm-00085q-KN
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:37:01 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Oct 2010 16:34:39 +0200
Message-Id: <1286807684-17355-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101011135329.GA7412@game.jcrosoft.org>
References: <20101011135329.GA7412@game.jcrosoft.org>
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
Subject: [PATCH 1/6] defaultenv: introduce CONFIG_DEFAULT_ENVIRONMENT_GENERIC
	to enable it
To: barebox@lists.infradead.org

this will we usefull to enable functionnality if used

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/neso_defconfig   |    3 ++-
 arch/arm/configs/pca100_defconfig |    3 ++-
 arch/arm/configs/pcm037_defconfig |    3 ++-
 arch/arm/configs/pcm038_defconfig |    3 ++-
 arch/arm/configs/pcm043_defconfig |    3 ++-
 common/Kconfig                    |   13 +++++++++++++
 common/Makefile                   |   10 ++++++++--
 7 files changed, 31 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 9f6e3f4..24125f9 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -12,7 +12,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/guf-neso/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/guf-neso/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index d1708a6..8c72bdf 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -12,7 +12,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/phycard-i.MX27/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phycard-i.MX27/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index 8e60b0a..e12f690 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -10,7 +10,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm037/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm037/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index eacbbc6..2038f14 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -13,7 +13,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm038/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm038/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 51ca833..2dd711b 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -13,7 +13,8 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm043/env"
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pcm043/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
diff --git a/common/Kconfig b/common/Kconfig
index 123d070..fb47397 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -389,6 +389,19 @@ config DEFAULT_ENVIRONMENT
 	  Enabling this option will give you a default environment when
 	  the environment found in the environment sector is invalid
 
+config DEFAULT_ENVIRONMENT_GENERIC
+	bool
+	depends on DEFAULT_ENVIRONMENT
+	select SHELL_HUSH
+	prompt "Default environment generic"
+	help
+	  With this option barebox will use the generic default
+	  environment found under defaultenv/ in the src tree.
+	  The Directory given with DEFAULT_ENVIRONMENT_PATH
+	  will be added to the default environment. This should
+	  at least contain a /env/config file.
+	  This will be able to overwrite the files from defaultenv.
+
 config DEFAULT_ENVIRONMENT_PATH
 	string
 	depends on DEFAULT_ENVIRONMENT
diff --git a/common/Makefile b/common/Makefile
index e56dbc2..753455b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -26,12 +26,18 @@ ifdef CONFIG_DEFAULT_ENVIRONMENT
 $(obj)/startup.o: include/generated/barebox_default_env.h
 $(obj)/env.o: include/generated/barebox_default_env.h
 
-ENV_FILES := $(shell cd $(srctree); for i in $(CONFIG_DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f {} \;; done)
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC),y)
+DEFAULT_ENVIRONMENT_PATH = "defaultenv"
+endif
+
+DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
+
+ENV_FILES := $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f {} \;; done)
 
 endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 
 barebox_default_env: $(ENV_FILES)
-	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
+	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(DEFAULT_ENVIRONMENT_PATH)
 
 include/generated/barebox_default_env.h: barebox_default_env
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
