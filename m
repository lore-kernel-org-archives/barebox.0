Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O2ffz-0005kM-MT
	for barebox@lists.infradead.org; Fri, 16 Apr 2010 07:09:20 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 16 Apr 2010 09:08:50 +0200
Message-Id: <1271401730-30665-3-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1271401730-30665-1-git-send-email-l.fu@pengutronix.de>
References: <1271401730-30665-1-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH 2/2] move parsing and check for default env into common
	makefile
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

The CONFIG_DEFAULT_ENVRIONMENT_PATH is used only while building common stuffs.
Hence Having parsing and sanity check for CONFIG_DEFAULT_ENVRIONMENT_PATH in the
main Makefile does not make a lot sense. Move these stuffs into to
common/Makefile to fix this. This also fixes the issue, that the barebox could
not deal with absolute path in CONFIG_DEFAULT_ENVRIONMENT_PATH.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
 Makefile        |   24 ------------------------
 common/Makefile |   28 +++++++++++++++++++++++++---
 2 files changed, 25 insertions(+), 27 deletions(-)

diff --git a/Makefile b/Makefile
index ec7fb10..282e6c6 100644
--- a/Makefile
+++ b/Makefile
@@ -1288,27 +1288,3 @@ Makefile: ;
 # information in a variable se we can use it in if_changed and friends.
 .PHONY: $(PHONY)
 
-#
-# sanity checks for check default environemnt
-#
-ifdef CONFIG_DEFAULT_ENVIRONMENT
-
-quote :="#"
-
-define remove_quotes
-$(strip $(subst $(quote),,$(1)))
-endef
-
-CONFIG_DEFAULT_ENVIRONMENT_PATH := $(call remove_quotes, $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
-
-ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),)
-$(error default environment path empty))
-endif
-
-saved-env_path := $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
-CONFIG_DEFAULT_ENVIRONMENT_PATH := \
-	$(shell cd "$(if $(filter /%,$(CONFIG_DEFAULT_ENVIRONMENT_PATH)),,$(srctree)/)$(CONFIG_DEFAULT_ENVIRONMENT_PATH)" 2> /dev/null && /bin/pwd)
-$(if $(CONFIG_DEFAULT_ENVIRONMENT_PATH),, \
-	$(error default environment path $(saved-env_path) does not exist))
-
-endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
diff --git a/common/Makefile b/common/Makefile
index 0c075a9..a928f5c 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -19,12 +19,34 @@ obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
+#
+# sanity checks for check default environemnt
+#
+
+quote :="#"
+
+define remove_quotes
+$(strip $(subst $(quote),,$(1)))
+endef
+
+CONFIG_DEFAULT_ENVIRONMENT_PATH := $(call remove_quotes, $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
+
+ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),)
+$(error default environment path empty))
+endif
+
+saved-env_path := $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
+CONFIG_DEFAULT_ENVIRONMENT_PATH := \
+	$(shell cd "$(if $(filter /%,$(CONFIG_DEFAULT_ENVIRONMENT_PATH)),,$(srctree)/)$(CONFIG_DEFAULT_ENVIRONMENT_PATH)" 2> /dev/null && /bin/pwd)
+$(if $(CONFIG_DEFAULT_ENVIRONMENT_PATH),, \
+	$(error default environment path $(saved-env_path) does not exist))
+
 $(obj)/startup.o: include/barebox_default_env.h
 $(obj)/env.o: include/barebox_default_env.h
 
-ENV_FILES := $(shell find $(srctree)/$(CONFIG_DEFAULT_ENVIRONMENT_PATH))
-endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
+ENV_FILES := $(shell find $(CONFIG_DEFAULT_ENVIRONMENT_PATH))
 
 include/barebox_default_env.h: $(ENV_FILES)
-	$(Q)scripts/bareboxenv -s $(srctree)/$(CONFIG_DEFAULT_ENVIRONMENT_PATH) barebox_default_env
+	$(Q)scripts/bareboxenv -s $(CONFIG_DEFAULT_ENVIRONMENT_PATH) barebox_default_env
 	$(Q)cat barebox_default_env | scripts/bin2c default_environment > $@
+endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
