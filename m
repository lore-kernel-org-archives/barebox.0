Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YYAQn-0002Dd-PX
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 09:38:30 +0000
Received: from mail613.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0E30FFF97D5
 for <barebox@lists.infradead.org>; Wed, 18 Mar 2015 10:38:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Mar 2015 10:37:54 +0100
Message-Id: <1426671474-13613-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426671474-13613-1-git-send-email-plagnioj@jcrosoft.com>
References: <1426671474-13613-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] password: add pbkdf2 support
To: barebox@lists.infradead.org

We will use random 32 bytes salt and 10000 round to generate a
32 bytes key.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig    |  4 +++
 common/password.c | 96 ++++++++++++++++++++++++++++++++++++++-----------------
 2 files changed, 70 insertions(+), 30 deletions(-)

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
index 6ecf717..c845422 100644
--- a/common/password.c
+++ b/common/password.c
@@ -25,7 +25,9 @@
 #include <malloc.h>
 #include <xfuncs.h>
 #include <clock.h>
+#include <stdlib.h>
 #include <generated/passwd.h>
+#include <crypto/pbkdf2.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
 #define PASSWD_SUM "md5"
@@ -35,8 +37,14 @@
 #define PASSWD_SUM "sha256"
 #elif defined(CONFIG_PASSWD_SUM_SHA512)
 #define PASSWD_SUM "sha512"
+#else
+#define PASSWD_SUM	NULL
 #endif
 
+#define PBKDF2_SALT_LEN	32
+#define PBKDF2_LENGTH	64
+#define PBKDF2_COUNT	10000
+
 int password(unsigned char *passwd, size_t length, int flags, int timeout)
 {
 	unsigned char *buf = passwd;
@@ -277,45 +285,57 @@ EXPORT_SYMBOL(write_env_passwd);
 
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
+	passwd2_sum = passwd1_sum + hash_len;
 
-	if (!passwd2_sum) {
-		ret = -ENOMEM;
-		goto err1;
-	}
+	if (std)
+		ret = read_env_passwd(passwd2_sum, hash_len);
+	else
+		ret = read_default_passwd(passwd2_sum, hash_len);
 
-	digest_init(d);
+	if (ret < 0)
+		goto err;
 
-	digest_update(d, passwd, length);
+	if (IS_ENABLED(CONFIG_PASSWD_CRYPTO_PBKDF2)) {
+		char *key = passwd2_sum + PBKDF2_SALT_LEN;
+		char *salt = passwd2_sum;
+		int keylen = PBKDF2_LENGTH - PBKDF2_SALT_LEN;
 
-	digest_final(d, passwd1_sum);
+		ret = pkcs5_pbkdf2_hmac_sha1(passwd, length, salt,
+			PBKDF2_SALT_LEN, PBKDF2_COUNT, keylen, passwd1_sum);
+		if (ret)
+			goto err;
 
-	if (std)
-		ret = read_env_passwd(passwd2_sum, digest_length(d));
-	else
-		ret = read_default_passwd(passwd2_sum, digest_length(d));
+		if (strncmp(passwd1_sum, key, keylen) == 0)
+			ret = 1;
+	} else {
+		ret = digest_digest(d, passwd, length, passwd1_sum);
 
-	if (ret < 0)
-		goto err2;
+		if (ret)
+			goto err;
 
-	if (strncmp(passwd1_sum, passwd2_sum, digest_length(d)) == 0)
-		ret = 1;
+		if (strncmp(passwd1_sum, passwd2_sum, hash_len) == 0)
+			ret = 1;
+	}
 
-err2:
-	free(passwd2_sum);
-err1:
+err:
 	free(passwd1_sum);
 	digest_free(d);
 
@@ -346,25 +366,41 @@ int check_passwd(unsigned char* passwd, size_t length)
 
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
+		char *key = passwd_sum + PBKDF2_SALT_LEN;
+		char *salt = passwd_sum;
+		int keylen = PBKDF2_LENGTH - PBKDF2_SALT_LEN;
 
-	digest_update(d, passwd, length);
+		get_random_bytes(passwd_sum, PBKDF2_SALT_LEN);
 
-	digest_final(d, passwd_sum);
+		ret = pkcs5_pbkdf2_hmac_sha1(passwd, length, salt,
+				PBKDF2_SALT_LEN, PBKDF2_COUNT, keylen, key);
+	} else {
+		ret = digest_digest(d, passwd, length, passwd_sum);
+	}
+	if (ret)
+		goto err;
 
-	ret = write_env_passwd(passwd_sum, digest_length(d));
+	ret = write_env_passwd(passwd_sum, hash_len);
 
+err:
+	digest_free(d);
 	free(passwd_sum);
 
 	return ret;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
