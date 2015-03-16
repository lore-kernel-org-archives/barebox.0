Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo68.mail-out.ovh.net ([46.105.63.230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXS5A-000227-0G
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:17:14 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 6817AFFAA3B
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:16:50 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 11:15:42 +0100
Message-Id: <1426500945-31815-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150316101321.GA26127@ns203013.ovh.net>
 <1426500945-31815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/10] password: add pbkdf2 support
To: barebox@lists.infradead.org

We will use "barebox_password" as salt and 10000 round to generate a
64 bytes key.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig    |  4 +++
 common/password.c | 79 +++++++++++++++++++++++++++++++++++--------------------
 2 files changed, 55 insertions(+), 28 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 96ace6b..ad8a596 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -453,6 +453,10 @@ config PASSWD_SUM_SHA512
 	bool "SHA512"
 	select SHA512
 
+config PASSWD_CRYPTO_PBKDF2
+	bool "PBKDF2"
+	select CRYPTO_PBKDF2
+
 endchoice
 
 endif
diff --git a/common/password.c b/common/password.c
index 6ecf717..0e1db61 100644
--- a/common/password.c
+++ b/common/password.c
@@ -26,6 +26,7 @@
 #include <xfuncs.h>
 #include <clock.h>
 #include <generated/passwd.h>
+#include <crypto/pbkdf2.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
 #define PASSWD_SUM "md5"
@@ -35,8 +36,14 @@
 #define PASSWD_SUM "sha256"
 #elif defined(CONFIG_PASSWD_SUM_SHA512)
 #define PASSWD_SUM "sha512"
+#else
+#define PASSWD_SUM	NULL
 #endif
 
+#define PBKDF2_SALT	"barebox_password"
+#define PBKDF2_LENGTH	64
+#define PBKDF2_COUNT	10000
+
 int password(unsigned char *passwd, size_t length, int flags, int timeout)
 {
 	unsigned char *buf = passwd;
@@ -277,45 +284,50 @@ EXPORT_SYMBOL(write_env_passwd);
 
 static int __check_passwd(unsigned char* passwd, size_t length, int std)
 {
-	struct digest *d;
+	struct digest *d = NULL;
 	unsigned char *passwd1_sum;
 	unsigned char *passwd2_sum;
 	int ret = 0;
+	int hash_len;
 
-	d = digest_alloc(PASSWD_SUM);
+	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
+		hash_len = PBKDF2_LENGTH;
+	} else {
+		d = digest_alloc(PASSWD_SUM);
 
-	passwd1_sum = calloc(digest_length(d), sizeof(unsigned char));
+		hash_len = digest_length(d);
+	}
 
+	passwd1_sum = calloc(hash_len * 2, sizeof(unsigned char));
 	if (!passwd1_sum)
 		return -ENOMEM;
 
-	passwd2_sum = calloc(digest_length(d), sizeof(unsigned char));
-
-	if (!passwd2_sum) {
-		ret = -ENOMEM;
-		goto err1;
-	}
+	passwd2_sum = passwd1_sum + hash_len;
 
-	digest_init(d);
+	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
+		char *salt = PBKDF2_SALT;
 
-	digest_update(d, passwd, length);
+		ret = pkcs5_pbkdf2_hmac_sha1(passwd, length, salt, strlen(salt),
+					PBKDF2_COUNT, hash_len, passwd1_sum);
+	} else {
+		ret = digest_digest(d, passwd, length, passwd1_sum);
+	}
 
-	digest_final(d, passwd1_sum);
+	if (ret)
+		goto err;
 
 	if (std)
-		ret = read_env_passwd(passwd2_sum, digest_length(d));
+		ret = read_env_passwd(passwd2_sum, hash_len);
 	else
-		ret = read_default_passwd(passwd2_sum, digest_length(d));
+		ret = read_default_passwd(passwd2_sum, hash_len);
 
 	if (ret < 0)
-		goto err2;
+		goto err;
 
-	if (strncmp(passwd1_sum, passwd2_sum, digest_length(d)) == 0)
+	if (strncmp(passwd1_sum, passwd2_sum, hash_len) == 0)
 		ret = 1;
 
-err2:
-	free(passwd2_sum);
-err1:
+err:
 	free(passwd1_sum);
 	digest_free(d);
 
@@ -346,25 +358,36 @@ int check_passwd(unsigned char* passwd, size_t length)
 
 int set_env_passwd(unsigned char* passwd, size_t length)
 {
-	struct digest *d;
+	struct digest *d = NULL;
 	unsigned char *passwd_sum;
-	int ret;
+	int ret, hash_len;
 
-	d = digest_alloc(PASSWD_SUM);
+	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
+		hash_len = PBKDF2_LENGTH;
+	} else {
+		d = digest_alloc(PASSWD_SUM);
 
-	passwd_sum = calloc(digest_length(d), sizeof(unsigned char));
+		hash_len = digest_length(d);
+	}
 
+	passwd_sum = calloc(hash_len, sizeof(unsigned char));
 	if (!passwd_sum)
 		return -ENOMEM;
 
-	digest_init(d);
+	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
+		char *salt = PBKDF2_SALT;
 
-	digest_update(d, passwd, length);
-
-	digest_final(d, passwd_sum);
+		ret = pkcs5_pbkdf2_hmac_sha1(passwd, length, salt, strlen(salt),
+				       PBKDF2_COUNT, hash_len, passwd_sum);
+	} else {
+		ret = digest_digest(d, passwd, length, passwd_sum);
+	}
+	if (ret)
+		goto err;
 
-	ret = write_env_passwd(passwd_sum, digest_length(d));
+	ret = write_env_passwd(passwd_sum, hash_len);
 
+err:
 	free(passwd_sum);
 
 	return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
