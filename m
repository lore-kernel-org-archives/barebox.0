Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eTu5F-0002f6-2Z
 for barebox@lists.infradead.org; Tue, 26 Dec 2017 18:36:17 +0000
Received: from ravnborg.org (126.158-248-196.customer.lyse.net
 [158.248.196.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 8CB538024D
 for <barebox@lists.infradead.org>; Tue, 26 Dec 2017 19:36:01 +0100 (CET)
Date: Tue, 26 Dec 2017 19:36:00 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171226183600.GB28706@ravnborg.org>
References: <20171226183236.GA26708@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171226183236.GA26708@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] build: fix that passwd.h is always built
To: Barebox List <barebox@lists.infradead.org>

From 48fe20e2bf2249b2f89d96c9787e0b489c015054 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 26 Dec 2017 18:02:17 +0100
Subject: [PATCH 2/4] build: fix that passwd.h is always built

Use the kbuild provided support for generated
files to avoid that passwd.h is always generated
thus triggering further re-builds

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 common/Makefile | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 8cd0ab300..5351ef0f7 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -63,27 +63,29 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_CONSOLE_RATP)	+= ratp.o
 obj-$(CONFIG_BOOT)		+= boot.o
 
-quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
-ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
-PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
-cmd_pwd_h = echo -n "static const char default_passwd[] = \"" > $@; \
-	cat $< | tr -d '\n' >> $@; \
-	echo "\";" >> $@
 
-include/generated/passwd.h: $(PASSWD_FILE)
-	$(call if_changed,pwd_h)
+ifeq ($(CONFIG_PASSWORD_DEFAULT),"")
+define filechk_passwd
+	echo "static const char default_passwd[] = \"\";"
+endef
 else
-cmd_pwd_h = echo "static const char default_passwd[] = \"\";" > $@
-
-include/generated/passwd.h: FORCE
-	$(call if_changed,pwd_h)
+define filechk_passwd
+(							\
+echo -n "static const char default_passwd[] = \"";	\
+cat $(shell find $(srctree) -name $(CONFIG_PASSWORD_DEFAULT) -type f) | tr -d '\n';\
+echo "\";"						\
+)
+endef
 endif
 
+include/generated/passwd.h: $(srctree)/$(src)/Makefile FORCE
+	$(call filechk,passwd)
+
 targets += include/generated/passwd.h
 
 $(obj)/password.o: include/generated/passwd.h
-endif
+endif # CONFIG_PASSWORD
 
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
