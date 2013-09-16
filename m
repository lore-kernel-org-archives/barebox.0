Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLcvD-0004Ou-Sk
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 17:49:20 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ADF5AFF8C96
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 19:48:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Sep 2013 19:49:59 +0200
Message-Id: <1379353800-28237-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379353800-28237-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130916174824.GH21829@ns203013.ovh.net>
 <1379353800-28237-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] login/passwd: add default password support
To: barebox@lists.infradead.org

even if the env is broken you will have a password

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/passwd.c  |  8 ++---
 common/Kconfig     |  5 +++
 common/Makefile    | 20 ++++++++++++
 common/password.c  | 94 ++++++++++++++++++++++++++++++++++++++++++++++--------
 include/password.h | 22 ++++++++++---
 5 files changed, 127 insertions(+), 22 deletions(-)

diff --git a/commands/passwd.c b/commands/passwd.c
index baccfa6..368c401 100644
--- a/commands/passwd.c
+++ b/commands/passwd.c
@@ -63,7 +63,7 @@ static int do_passwd(int argc, char *argv[])
 			goto err;
 	}
 
-	ret = set_passwd(passwd1, passwd1_len);
+	ret = set_env_passwd(passwd1, passwd1_len);
 
 	if (ret < 0) {
 		puts("Sorry, passwords write failed\n");
@@ -78,15 +78,15 @@ err:
 	return 1;
 
 disable:
-	passwd_disable();
+	passwd_env_disable();
 	puts("passwd: password disabled\n");
 	return ret;
 }
 
 static const __maybe_unused char cmd_passwd_help[] =
 "Usage: passwd\n"
-"passwd allow you to specify a password\n"
-"to disable it put an empty password\n"
+"passwd allow you to specify a password in the env\n"
+"to disable it put an empty password will still use the default password if set\n"
 ;
 
 BAREBOX_CMD_START(passwd)
diff --git a/common/Kconfig b/common/Kconfig
index dd70578..5d92284 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -385,6 +385,11 @@ config PASSWORD
 	help
 	  allow you to have password protection framework
 
+config PASSWORD_DEFAULT
+	string
+	prompt "Password default"
+	depends on PASSWORD
+
 if PASSWORD
 
 choice
diff --git a/common/Makefile b/common/Makefile
index 64eacc3..9a9e3fe 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -114,6 +114,26 @@ cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c default_environment)
 $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(barebox_default_env_comp) FORCE
 	$(call if_changed,env_h)
 
+quiet_cmd_pwd_h = PWDH    $@
+ifneq ($(CONFIG_PASSWORD_DEFAULT),"")
+PASSWD_FILE := $(shell cd $(srctree); find $(CONFIG_PASSWORD_DEFAULT) -type f)
+cmd_pwd_h = echo -n "const char default_passwd[] = \"" > $@; \
+	cat $< | tr -d '\n' >> $@; \
+	echo "\";" >> $@
+
+include/generated/passwd.h: $(PASSWD_FILE)
+	$(call if_changed,pwd_h)
+else
+cmd_pwd_h = echo "const char default_passwd[] = \"\";" > $@
+
+include/generated/passwd.h: FORCE
+	$(call if_changed,pwd_h)
+endif
+
+targets += include/generated/passwd.h
+
+$(obj)/password.o: include/generated/passwd.h
+
 # dependencies on generated files need to be listed explicitly
 $(obj)/version.o: include/generated/compile.h
 
diff --git a/common/password.c b/common/password.c
index d157a11..9c1e54a 100644
--- a/common/password.c
+++ b/common/password.c
@@ -25,6 +25,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <clock.h>
+#include <generated/passwd.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
 #define PASSWD_SUM "md5"
@@ -97,7 +98,13 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 }
 EXPORT_SYMBOL(password);
 
-int is_passwd_enable(void)
+int is_passwd_default_enable(void)
+{
+	return strlen(default_passwd) > 0;
+}
+EXPORT_SYMBOL(is_passwd_default_enable);
+
+int is_passwd_env_enable(void)
 {
 	int fd;
 
@@ -110,13 +117,13 @@ int is_passwd_enable(void)
 
 	return 1;
 }
-EXPORT_SYMBOL(is_passwd_enable);
+EXPORT_SYMBOL(is_passwd_env_enable);
 
-int passwd_disable(void)
+int passwd_env_disable(void)
 {
 	return unlink(PASSWD_FILE);
 }
-EXPORT_SYMBOL(passwd_disable);
+EXPORT_SYMBOL(passwd_env_disable);
 
 static unsigned char to_digit(unsigned char c)
 {
@@ -140,6 +147,43 @@ static unsigned char to_hexa(unsigned char c)
 
 int read_passwd(unsigned char *sum, size_t length)
 {
+	if (is_passwd_env_enable())
+		return read_env_passwd(sum, length);
+	else if (is_passwd_default_enable())
+		return read_default_passwd(sum, length);
+	else
+		return -EINVAL;
+}
+
+int read_default_passwd(unsigned char *sum, size_t length)
+{
+	int i = 0;
+	int len = strlen(default_passwd);
+	unsigned char *buf = (unsigned char *)default_passwd;
+	unsigned char c;
+
+	if (!sum || length < 1)
+		return -EINVAL;
+
+	for (i = 0; i < len && length > 0; i++) {
+		c = buf[i];
+		i++;
+
+		*sum = to_digit(c) << 4;
+
+		c = buf[i];
+
+		*sum |= to_digit(c);
+		sum++;
+		length--;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(read_default_passwd);
+
+int read_env_passwd(unsigned char *sum, size_t length)
+{
 	int fd;
 	int ret = 0;
 	unsigned char c;
@@ -178,9 +222,9 @@ exit:
 
 	return ret;
 }
-EXPORT_SYMBOL(read_passwd);
+EXPORT_SYMBOL(read_env_passwd);
 
-int write_passwd(unsigned char *sum, size_t length)
+int write_env_passwd(unsigned char *sum, size_t length)
 {
 	int fd;
 	unsigned char c;
@@ -227,9 +271,9 @@ exit:
 
 	return ret;
 }
-EXPORT_SYMBOL(write_passwd);
+EXPORT_SYMBOL(write_env_passwd);
 
-int check_passwd(unsigned char* passwd, size_t length)
+static int __check_passwd(unsigned char* passwd, size_t length, int std)
 {
 	struct digest *d;
 	unsigned char *passwd1_sum;
@@ -256,7 +300,10 @@ int check_passwd(unsigned char* passwd, size_t length)
 
 	d->final(d, passwd1_sum);
 
-	ret = read_passwd(passwd2_sum, d->length);
+	if (std)
+		ret = read_env_passwd(passwd2_sum, d->length);
+	else
+		ret = read_default_passwd(passwd2_sum, d->length);
 
 	if (ret < 0)
 		goto err2;
@@ -271,9 +318,30 @@ err1:
 
 	return ret;
 }
-EXPORT_SYMBOL(check_passwd);
 
-int set_passwd(unsigned char* passwd, size_t length)
+int check_default_passwd(unsigned char* passwd, size_t length)
+{
+	return __check_passwd(passwd, length, 0);
+}
+EXPORT_SYMBOL(check_default_passwd);
+
+int check_env_passwd(unsigned char* passwd, size_t length)
+{
+	return __check_passwd(passwd, length, 1);
+}
+EXPORT_SYMBOL(check_env_passwd);
+
+int check_passwd(unsigned char* passwd, size_t length)
+{
+	if (is_passwd_env_enable())
+		return check_env_passwd(passwd, length);
+	else if (is_passwd_default_enable())
+		return check_default_passwd(passwd, length);
+	else
+		return -EINVAL;
+}
+
+int set_env_passwd(unsigned char* passwd, size_t length)
 {
 	struct digest *d;
 	unsigned char *passwd_sum;
@@ -292,10 +360,10 @@ int set_passwd(unsigned char* passwd, size_t length)
 
 	d->final(d, passwd_sum);
 
-	ret = write_passwd(passwd_sum, d->length);
+	ret = write_env_passwd(passwd_sum, d->length);
 
 	free(passwd_sum);
 
 	return ret;
 }
-EXPORT_SYMBOL(set_passwd);
+EXPORT_SYMBOL(set_env_passwd);
diff --git a/include/password.h b/include/password.h
index df03cd7..0dd1054 100644
--- a/include/password.h
+++ b/include/password.h
@@ -28,11 +28,23 @@
 int password(unsigned char *passwd, size_t length, int flags, int timeout);
 
 int read_passwd(unsigned char *sum, size_t length);
-int write_passwd(unsigned char *sum, size_t length);
-
-int is_passwd_enable(void);
-int passwd_disable(void);
 int check_passwd(unsigned char* passwd, size_t length);
-int set_passwd(unsigned char* passwd, size_t length);
+
+int read_env_passwd(unsigned char *sum, size_t length);
+int write_env_passwd(unsigned char *sum, size_t length);
+
+int read_default_passwd(unsigned char *sum, size_t length);
+int is_passwd_default_enable(void);
+int check_default_passwd(unsigned char* passwd, size_t length);
+
+int is_passwd_env_enable(void);
+int passwd_env_disable(void);
+int check_env_passwd(unsigned char* passwd, size_t length);
+int set_env_passwd(unsigned char* passwd, size_t length);
+
+static inline int is_passwd_enable(void)
+{
+	return is_passwd_default_enable() || is_passwd_env_enable();
+}
 
 #endif /* __PASSWORD_H__ */
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
