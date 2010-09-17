Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwSlf-00035H-Q4
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 04:41:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 06:40:36 +0200
Message-Id: <1284698436-1097-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284698436-1097-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] move barebox_default_env.h to include/generated/
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile           |    2 +-
 common/Makefile    |    6 +++---
 common/startup.c   |    2 +-
 include/.gitignore |    1 -
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index c990005..3a97a26 100644
--- a/Makefile
+++ b/Makefile
@@ -971,7 +971,7 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
-CLEAN_FILES +=	barebox System.map include/barebox_default_env.h \
+CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.S \
 		.tmp_kallsyms* barebox_default_env barebox.ldr
 
diff --git a/common/Makefile b/common/Makefile
index 4b8cce0..fb06a2d 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -20,8 +20,8 @@ obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
-$(obj)/startup.o: include/barebox_default_env.h
-$(obj)/env.o: include/barebox_default_env.h
+$(obj)/startup.o: include/generated/barebox_default_env.h
+$(obj)/env.o: include/generated/barebox_default_env.h
 
 ENV_FILES := $(shell cd $(srctree); for i in $(CONFIG_DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f {} \;; done)
 
@@ -30,5 +30,5 @@ endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
 barebox_default_env: $(ENV_FILES)
 	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
 
-include/barebox_default_env.h: barebox_default_env
+include/generated/barebox_default_env.h: barebox_default_env
 	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
diff --git a/common/startup.c b/common/startup.c
index 2ed16fe..7fa9099 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -79,7 +79,7 @@ void early_init (void)
 #endif /* CONFIG_HAS_EARLY_INIT */
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
-#include <barebox_default_env.h>
+#include <generated/barebox_default_env.h>
 
 static struct memory_platform_data default_env_platform_data = {
 	.name = "defaultenv",
diff --git a/include/.gitignore b/include/.gitignore
index bb388cc..0e56cf2 100644
--- a/include/.gitignore
+++ b/include/.gitignore
@@ -1,2 +1 @@
 config.h
-barebox_default_env.h
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
