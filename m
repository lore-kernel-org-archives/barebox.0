Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp43.i.mail.ru ([94.100.177.103])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9Vcl-0006on-Sy
 for barebox@lists.infradead.org; Sat, 01 Feb 2014 08:08:26 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat,  1 Feb 2014 12:07:48 +0400
Message-Id: <1391242068-28637-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Make generated variables static
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/Makefile | 6 +++---
 scripts/bin2c.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 6f6e360..ee02e0e 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -110,7 +110,7 @@ targets += barebox_default_env.lzo barebox_default_env.bz2 barebox_default_env.g
 
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment) > $@; \
-	echo "const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
+	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
 
 $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp) FORCE
 	$(call if_changed,env_h)
@@ -119,14 +119,14 @@ quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
 ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
 PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
-cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
+cmd_pwd_h = echo -n "static const char default_passwd[] = \"" > $@; \
 	cat $< | tr -d '\n' >> $@; \
 	echo "\";" >> $@
 
 include/generated/passwd.h: $(PASSWD_FILE)
 	$(call if_changed,pwd_h)
 else
-cmd_pwd_h = echo "const char default_passwd[] = \"\";" > $@
+cmd_pwd_h = echo "static const char default_passwd[] = \"\";" > $@
 
 include/generated/passwd.h: FORCE
 	$(call if_changed,pwd_h)
diff --git a/scripts/bin2c.c b/scripts/bin2c.c
index 96dd2bc..36c3c5e 100644
--- a/scripts/bin2c.c
+++ b/scripts/bin2c.c
@@ -14,7 +14,7 @@ int main(int argc, char *argv[])
 	int ch, total=0;
 
 	if (argc > 1)
-		printf("const char %s[] %s=\n",
+		printf("static const char %s[] %s=\n",
 			argv[1], argc > 2 ? argv[2] : "");
 
 	do {
@@ -30,7 +30,7 @@ int main(int argc, char *argv[])
 	} while (ch != EOF);
 
 	if (argc > 1)
-		printf("\t;\n\nconst int %s_size = %d;\n", argv[1], total);
+		printf("\t;\n\nstatic const int %s_size = %d;\n", argv[1], total);
 
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
