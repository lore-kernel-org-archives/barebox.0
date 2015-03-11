Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo6.mail-out.ovh.net ([188.165.39.161])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVk71-0001E3-E1
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 17:08:04 +0000
Received: from mail617.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 8F036FF9EFA
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 18:07:36 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Mar 2015 18:07:32 +0100
Message-Id: <1426093652-9836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] crypto: add pbkdf2 hmac key generator
To: barebox@lists.infradead.org

this will allow to generate a KEY + IV based on a password and salt for AES
encryption/decryption as example

or simply the key for hmac or rsa from text password

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---

This depends on hmac patch series
 crypto/Kconfig          |  5 ++++
 crypto/Makefile         |  2 ++
 crypto/pbkdf2.c         | 79 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/crypto/pbkdf2.h | 23 ++++++++++++++
 4 files changed, 109 insertions(+)
 create mode 100644 crypto/pbkdf2.c
 create mode 100644 include/crypto/pbkdf2.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index e72b91e..9a0befc 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -33,4 +33,9 @@ config SHA512
 config DIGEST_HMAC
 	bool "HMAC"
 
+config PBKDF2
+	select DIGEST
+	select SHA1
+	bool
+
 endif
diff --git a/crypto/Makefile b/crypto/Makefile
index ff5c289..0bb67d5 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -9,3 +9,5 @@ obj-$(CONFIG_SHA224)	+= sha2.o
 obj-$(CONFIG_SHA256)	+= sha2.o
 obj-$(CONFIG_SHA384)	+= sha4.o
 obj-$(CONFIG_SHA512)	+= sha4.o
+
+obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
diff --git a/crypto/pbkdf2.c b/crypto/pbkdf2.c
new file mode 100644
index 0000000..7b94de9
--- /dev/null
+++ b/crypto/pbkdf2.c
@@ -0,0 +1,79 @@
+/*
+ * (C) Copyright 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <crypto/pbkdf2.h>
+
+int pkcs5_pbkdf2_hmac(struct digest* d,
+		      const unsigned char *pwd, size_t pwd_len,
+		      const unsigned char *salt, size_t salt_len,
+		      uint32_t iteration,
+		      uint32_t key_len, unsigned char *key)
+{
+	int i, j, k;
+	unsigned char cnt[4];
+	uint32_t pass_len;
+	unsigned char *tmpdgt;
+	uint32_t d_len;
+
+	if (!d)
+		return -EINVAL;
+
+	tmpdgt = malloc(digest_length(d));
+	if (!tmpdgt)
+		return -ENOMEM;
+
+	d_len = digest_length(d);
+	i = 1;
+
+	while (key_len) {
+		pass_len = min(key_len, d_len);
+		cnt[0] = (i >> 24) & 0xff;
+		cnt[1] = (i >> 16) & 0xff;
+		cnt[2] = (i >> 8) & 0xff;
+		cnt[3] = i & 0xff;
+		digest_hmac_init(d, pwd, pwd_len);
+		digest_hmac_update(d, salt, salt_len);
+		digest_hmac_update(d, cnt, 4);
+		digest_hmac_final(d, tmpdgt);
+
+		memcpy(key, tmpdgt, pass_len);
+
+		for (j = 1; j < iteration; j++) {
+			digest_hmac_init(d, pwd, pwd_len);
+			digest_hmac_update(d, tmpdgt, d_len);
+			digest_hmac_final(d, tmpdgt);
+
+			for(k = 0; k < pass_len; k++)
+				key[k] ^= tmpdgt[k];
+		}
+
+		key_len -= pass_len;
+		key += pass_len;
+		i++;
+	}
+
+	free(tmpdgt);
+
+	return 0;
+}
+
+int pkcs5_pbkdf2_hmac_sha1(const unsigned char *pwd, size_t pwd_len,
+			   const unsigned char *salt, size_t salt_len,
+			   uint32_t iter,
+			   uint32_t key_len, unsigned char *key)
+{
+	int ret;
+	struct digest* d = digest_alloc("sha1");
+
+	ret = pkcs5_pbkdf2_hmac(d, pwd, pwd_len, salt, salt_len, iter,
+				 key_len, key);
+	
+	digest_free(d);
+	return ret;
+}
diff --git a/include/crypto/pbkdf2.h b/include/crypto/pbkdf2.h
new file mode 100644
index 0000000..fa66675
--- /dev/null
+++ b/include/crypto/pbkdf2.h
@@ -0,0 +1,23 @@
+/*
+ * (C) Copyright 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+
+#ifndef __PBKDF2_H__
+#define __PBKDF2_H__
+
+#include <digest.h>
+
+int pkcs5_pbkdf2_hmac_sha1(const unsigned char *pwd, size_t pwd_len,
+			   const unsigned char *salt, size_t salt_len,
+			   uint32_t iteration,
+			   uint32_t key_len, unsigned char *buf);
+
+int pkcs5_pbkdf2_hmac(struct digest* d,
+		      const unsigned char *pwd, size_t pwd_len,
+		      const unsigned char *salt, size_t salt_len,
+		      uint32_t iteration,
+		      uint32_t key_len, unsigned char *key);
+
+#endif /* __PBKDF2_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
