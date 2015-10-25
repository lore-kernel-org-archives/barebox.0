Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqSSN-0008F3-Ds
 for barebox@lists.infradead.org; Sun, 25 Oct 2015 21:04:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun, 25 Oct 2015 22:03:34 +0100
Message-Id: <1445807016-6637-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
References: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 7/9] crypto: add simple keystore
To: barebox@lists.infradead.org

This patch adds a simple keystore to barebox. The keystore implements a simple
key-value store to hold arbitrary values.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 crypto/Kconfig            |  6 ++++
 crypto/Makefile           |  1 +
 crypto/keystore.c         | 80 +++++++++++++++++++++++++++++++++++++++++++++++
 include/crypto/keystore.h | 26 +++++++++++++++
 4 files changed, 113 insertions(+)
 create mode 100644 crypto/keystore.c
 create mode 100644 include/crypto/keystore.h

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 27047889a658..41145a312d8e 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -87,4 +87,10 @@ config CRYPTO_PBKDF2
 	select DIGEST_SHA1_GENERIC
 	bool
 
+config CRYPTO_KEYSTORE
+	bool "Keystore"
+	help
+	  This is a simple keystore, which can be used to pass keys
+	  between several components via simple interface.
+
 endmenu
diff --git a/crypto/Makefile b/crypto/Makefile
index f39de718e5e7..c6d17787ca4e 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
 obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 
 obj-$(CONFIG_CRYPTO_PBKDF2)	+= pbkdf2.o
+obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
diff --git a/crypto/keystore.c b/crypto/keystore.c
new file mode 100644
index 000000000000..90b470fe6717
--- /dev/null
+++ b/crypto/keystore.c
@@ -0,0 +1,80 @@
+/*
+ * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License version 2 as published by the
+ * Free Software Foundation.
+ */
+
+#include <common.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+
+static LIST_HEAD(keystore_list);
+
+#define for_each_key(key) list_for_each_entry(key, &keystore_list, list)
+
+struct keystore_key {
+	struct list_head list;
+	const char *name;
+	const u8 *secret;
+	int secret_len;
+};
+
+static int keystore_compare(struct list_head *a, struct list_head *b)
+{
+	const char *na = list_entry(a, struct keystore_key, list)->name;
+	const char *nb = list_entry(b, struct keystore_key, list)->name;
+
+	return strcmp(na, nb);
+}
+
+/**
+ * @param[in] name Name of the secret to get
+ * @param[out] secret Double pointer to memory representing the secret, do _not_ free() after use
+ * @param[out] secret_len Pointer to length of the secret
+ */
+int keystore_get_secret(const char *name, const u8 **secret, int *secret_len)
+{
+	struct keystore_key *key;
+
+	for_each_key(key) {
+		if (!strcmp(name, key->name)) {
+			if (!secret || !secret_len)
+				return 0;
+
+			*secret = key->secret;
+			*secret_len = key->secret_len;
+
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
+/**
+ * @param[in] name Name of the secret to set
+ * @param[in] secret Pointer to memory holding the secret
+ * @param[in] secret_len Length of the secret
+ */
+int keystore_set_secret(const char *name, const u8 *secret, int secret_len)
+{
+	struct keystore_key *key;
+	int ret;
+
+	/* check if key is already in store */
+	ret = keystore_get_secret(name, NULL, NULL);
+	if (!ret)
+		return -EBUSY;
+
+	key = xzalloc(sizeof(*key));
+	INIT_LIST_HEAD(&key->list);
+	key->name = xstrdup(name);
+	key->secret = xmemdup(secret, secret_len);
+	key->secret_len = secret_len;
+
+	list_add_sort(&key->list, &keystore_list, keystore_compare);
+
+	return 0;
+}
diff --git a/include/crypto/keystore.h b/include/crypto/keystore.h
new file mode 100644
index 000000000000..29915854b851
--- /dev/null
+++ b/include/crypto/keystore.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License version 2 as published by the
+ * Free Software Foundation.
+ */
+
+#ifndef __CRYPTO_KEYSTORE_H
+#define __CRYPTO_KEYSTORE_H
+
+#ifdef CONFIG_CRYPTO_KEYSTORE
+int keystore_get_secret(const char *name, const u8 **secret, int *secret_len);
+int keystore_set_secret(const char *name, const u8 *secret, int secret_len);
+#else
+static inline int keystore_get_secret(const char *name, const u8 **secret, int *secret_len)
+{
+	return -EINVAL;
+}
+static inline int keystore_set_secret(const char *name, const u8 *secret, int secret_len)
+{
+	return 0;
+}
+#endif
+
+#endif
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
