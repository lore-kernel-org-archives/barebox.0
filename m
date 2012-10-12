Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiHl-0000rX-Sx
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:40:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:40:18 +0200
Message-Id: <1350060018-6543-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350060018-6543-1-git-send-email-s.hauer@pengutronix.de>
References: <1350060018-6543-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] defaultenv: dependencies fixes
To: barebox@lists.infradead.org

When a build with a compressed default environment is done and then
environment compression is disabled, barebox_default_env.h is not
regenerated because its dependency (now barebox_default_env) is still
up to date. This results in a corrupt default environment.

This patch fixes this by adding a cmd_env_h and changing barebox_default_env.h
to FORCE. As a side effect barebox_default_env.h is no longer generated in
include/generated/ but in common/ as we have to add barebox_default_env.h to
$(targets) (extra-y).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile  |   21 ++++++++++++---------
 common/startup.c |    2 +-
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index b74c76b..132bd06 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -39,11 +39,11 @@ obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_FLEXIBLE_BOOTARGS) += bootargs.o
 extra-$(CONFIG_MODULES) += module.lds
-extra-y += barebox_default_env
+extra-y += barebox_default_env barebox_default_env.h
 
 ifdef CONFIG_DEFAULT_ENVIRONMENT
-$(obj)/startup.o: include/generated/barebox_default_env.h
-$(obj)/env.o: include/generated/barebox_default_env.h
+$(obj)/startup.o: $(obj)/barebox_default_env.h
+$(obj)/env.o: $(obj)/barebox_default_env.h
 
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW),y)
 DEFAULT_ENVIRONMENT_PATH = "defaultenv-2/base"
@@ -89,18 +89,21 @@ ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO),y)
 barebox_default_env_comp = .lzo
 endif
 
-$(obj)/barebox_default_env.gz: $(obj)/barebox_default_env
+$(obj)/barebox_default_env.gz: $(obj)/barebox_default_env FORCE
 	$(call if_changed,gzip)
 
-$(obj)/barebox_default_env.bz2: $(obj)/barebox_default_env
+$(obj)/barebox_default_env.bz2: $(obj)/barebox_default_env FORCE
 	$(call if_changed,bzip2)
 
-$(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env
+$(obj)/barebox_default_env.lzo: $(obj)/barebox_default_env FORCE
 	$(call if_changed,lzo)
 
-include/generated/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp)
-	$(Q)cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@
-	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
+quiet_cmd_env_h = ENVH    $@
+cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
+	echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
+
+$(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp) FORCE
+	$(call if_changed,env_h)
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
diff --git a/common/startup.c b/common/startup.c
index b53bbef..78926c9 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -39,7 +39,7 @@ extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
-#include <generated/barebox_default_env.h>
+#include "barebox_default_env.h"
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED
 #include <uncompress.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
