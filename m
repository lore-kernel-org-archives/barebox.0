Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUz4Y-0005yg-Et
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 15:26:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Aug 2015 17:26:11 +0200
Message-Id: <1440689174-731-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
References: <1440689174-731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] login: cleanup password code
To: Barebox List <barebox@lists.infradead.org>

- make some locally used functions static
- remove read_passwd which is unused
- some refactoring to make code pathes clearer

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/password.c  | 48 +++++++++---------------------------------------
 include/password.h | 20 +-------------------
 2 files changed, 10 insertions(+), 58 deletions(-)

diff --git a/common/password.c b/common/password.c
index 6532143..0cb79b8 100644
--- a/common/password.c
+++ b/common/password.c
@@ -158,17 +158,7 @@ static unsigned char to_hexa(unsigned char c)
 	return c;
 }
 
-int read_passwd(unsigned char *sum, size_t length)
-{
-	if (is_passwd_env_enable())
-		return read_env_passwd(sum, length);
-	else if (is_passwd_default_enable())
-		return read_default_passwd(sum, length);
-	else
-		return -EINVAL;
-}
-
-int read_default_passwd(unsigned char *sum, size_t length)
+static int read_default_passwd(unsigned char *sum, size_t length)
 {
 	int i = 0;
 	int len = strlen(default_passwd);
@@ -195,7 +185,7 @@ int read_default_passwd(unsigned char *sum, size_t length)
 }
 EXPORT_SYMBOL(read_default_passwd);
 
-int read_env_passwd(unsigned char *sum, size_t length)
+static int read_env_passwd(unsigned char *sum, size_t length)
 {
 	int fd;
 	int ret = 0;
@@ -286,7 +276,7 @@ exit:
 }
 EXPORT_SYMBOL(write_env_passwd);
 
-static int __check_passwd(unsigned char* passwd, size_t length, int std)
+static int check_passwd(unsigned char *passwd, size_t length)
 {
 	struct digest *d = NULL;
 	unsigned char *passwd1_sum;
@@ -308,10 +298,12 @@ static int __check_passwd(unsigned char* passwd, size_t length, int std)
 
 	passwd2_sum = passwd1_sum + hash_len;
 
-	if (std)
+	if (is_passwd_env_enable())
 		ret = read_env_passwd(passwd2_sum, hash_len);
-	else
+	else if (is_passwd_default_enable())
 		ret = read_default_passwd(passwd2_sum, hash_len);
+	else
+		ret = -EINVAL;
 
 	if (ret < 0)
 		goto err;
@@ -345,28 +337,6 @@ err:
 	return ret;
 }
 
-int check_default_passwd(unsigned char* passwd, size_t length)
-{
-	return __check_passwd(passwd, length, 0);
-}
-EXPORT_SYMBOL(check_default_passwd);
-
-int check_env_passwd(unsigned char* passwd, size_t length)
-{
-	return __check_passwd(passwd, length, 1);
-}
-EXPORT_SYMBOL(check_env_passwd);
-
-int check_passwd(unsigned char* passwd, size_t length)
-{
-	if (is_passwd_env_enable())
-		return check_env_passwd(passwd, length);
-	else if (is_passwd_default_enable())
-		return check_default_passwd(passwd, length);
-	else
-		return -EINVAL;
-}
-
 int set_env_passwd(unsigned char* passwd, size_t length)
 {
 	struct digest *d = NULL;
@@ -423,7 +393,7 @@ EXPORT_SYMBOL(set_env_passwd);
 #endif
 
 static int logged_in;
-static int login_timeout;
+static int login_timeout = 60;
 static char *login_fail_command;
 
 /**
@@ -438,7 +408,7 @@ void login(void)
 	unsigned char passwd[PASSWD_MAX_LENGTH];
 	int ret;
 
-	if (!is_passwd_enable())
+	if (!is_passwd_default_enable() && !is_passwd_env_enable())
 		return;
 
 	if (logged_in)
diff --git a/include/password.h b/include/password.h
index fec831f..8b99618 100644
--- a/include/password.h
+++ b/include/password.h
@@ -26,21 +26,8 @@
 #define CLEAR	(1 << 2)
 
 int password(unsigned char *passwd, size_t length, int flags, int timeout);
-
-int read_passwd(unsigned char *sum, size_t length);
-int check_passwd(unsigned char* passwd, size_t length);
-
-int read_env_passwd(unsigned char *sum, size_t length);
-int write_env_passwd(unsigned char *sum, size_t length);
-
-int read_default_passwd(unsigned char *sum, size_t length);
-int is_passwd_default_enable(void);
-int check_default_passwd(unsigned char* passwd, size_t length);
-
-int is_passwd_env_enable(void);
 int passwd_env_disable(void);
-int check_env_passwd(unsigned char* passwd, size_t length);
-int set_env_passwd(unsigned char* passwd, size_t length);
+int set_env_passwd(unsigned char *passwd, size_t length);
 
 #ifdef CONFIG_PASSWORD
 void login(void);
@@ -50,9 +37,4 @@ static inline void login(void)
 }
 #endif
 
-static inline int is_passwd_enable(void)
-{
-	return is_passwd_default_enable() || is_passwd_env_enable();
-}
-
 #endif /* __PASSWORD_H__ */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
