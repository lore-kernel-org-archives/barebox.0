Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5J-00051V-EO
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:18 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id ED67DB9841
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:45:00 +0200
Message-Id: <1490496304-30850-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/13] boot_verify: add password request support
To: barebox@lists.infradead.org

This will allow to let the user enter a password before booting more safe
than just a 'y'

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/boot_verify.c | 10 ++++++++++
 common/password.c    | 18 ++++++++++++++++++
 include/password.h   |  6 ++++++
 3 files changed, 34 insertions(+)

diff --git a/common/boot_verify.c b/common/boot_verify.c
index 07ae07e16..2faa8d56c 100644
--- a/common/boot_verify.c
+++ b/common/boot_verify.c
@@ -10,6 +10,7 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <init.h>
+#include <password.h>
 
 static unsigned int boot_verify_confirm_timeout = 10;
 static enum boot_verify boot_verify_mode = BOOT_VERIFY_HASH;
@@ -63,6 +64,14 @@ int boot_can_start_unsigned(void)
 
 	printf("Are you sure you wish to run an unsigned binary\n");
 	printf("in a secure environment?\n");
+	if (IS_ENABLED(CONFIG_PASSWORD)) {
+		printf("enter password to confirm\n");
+		ret = request_password(timeout);
+		if (ret != -ENOTSUPP)
+			return -ESECVIOLATION;
+
+	}
+
 	printf("press y to confirm\n");
 
 	ret = console_countdown(timeout, CONSOLE_COUNTDOWN_ANYKEY, &c);
@@ -72,6 +81,7 @@ int boot_can_start_unsigned(void)
 	return c == 'y' ? 0 : -ESECVIOLATION;
 }
 
+
 static int init_boot_verify(void)
 {
 	int size;
diff --git a/common/password.c b/common/password.c
index d52b746f0..1147111cd 100644
--- a/common/password.c
+++ b/common/password.c
@@ -435,6 +435,24 @@ void login(void)
 	}
 }
 
+int request_password(int timeout)
+{
+	unsigned char passwd[PASSWD_MAX_LENGTH];
+	int ret;
+
+	if (!is_passwd_default_enable() && !is_passwd_env_enable())
+		return -ENOTSUPP;
+
+	ret = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, timeout);
+	if (ret < 0)
+		return ret;
+
+	if (check_passwd(passwd, ret) == 1)
+		return 0;
+
+	return -EINVAL;
+}
+
 static int login_global_init(void)
 {
 	login_fail_command = xstrdup("boot");
diff --git a/include/password.h b/include/password.h
index 8b9961815..5e8964929 100644
--- a/include/password.h
+++ b/include/password.h
@@ -31,10 +31,16 @@ int set_env_passwd(unsigned char *passwd, size_t length);
 
 #ifdef CONFIG_PASSWORD
 void login(void);
+int request_password(int timeout);
 #else
 static inline void login(void)
 {
 }
+
+static inline int request_password(int timeout)
+{
+	return 0;
+}
 #endif
 
 #endif /* __PASSWORD_H__ */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
