Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGPSn-0006Pb-AS
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 10:03:10 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 28 Jan 2015 11:02:36 +0100
Message-Id: <1422439356-9774-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] defaultenv: generate force-built-in (zero) environment file
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 .gitignore          | 1 +
 defaultenv/Makefile | 8 +++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 0456bfd..1b48213 100644
--- a/.gitignore
+++ b/.gitignore
@@ -50,6 +50,7 @@ barebox-flash-image
 System.map
 Module.symvers
 barebox_default_env*
+barebox_zero_env
 
 #
 # git files that we don't want to ignore even it they are dot-files
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index fc679eb..8a001ec 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -3,7 +3,7 @@ bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
-extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX)
+extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) barebox_zero_env
 
 $(obj)/defaultenv.o: $(obj)/barebox_default_env.h
 
@@ -22,3 +22,9 @@ cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) defaul
 
 $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
 	$(call if_changed,env_h)
+
+quiet_cmd_env_zero = ENVZ    $@
+cmd_env_zero = ($(srctree)/scripts/bareboxenv -z $(CONFIG_DEFAULT_ENVIRONMENT_PATH) $@)
+
+$(obj)/barebox_zero_env: FORCE
+	$(call cmd,env_zero)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
