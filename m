Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005fb-Lq
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:35 +0200
Message-Id: <20170331070346.26878-32-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 31/42] keystore: implement forgetting secrets
To: Barebox List <barebox@lists.infradead.org>

To be able to change secrets add a function to forget secrets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 crypto/keystore.c         | 53 +++++++++++++++++++++++++++++++++--------------
 include/crypto/keystore.h |  4 ++++
 2 files changed, 42 insertions(+), 15 deletions(-)

diff --git a/crypto/keystore.c b/crypto/keystore.c
index 90b470fe67..f2b25ca6c9 100644
--- a/crypto/keystore.c
+++ b/crypto/keystore.c
@@ -16,8 +16,8 @@ static LIST_HEAD(keystore_list);
 
 struct keystore_key {
 	struct list_head list;
-	const char *name;
-	const u8 *secret;
+	char *name;
+	u8 *secret;
 	int secret_len;
 };
 
@@ -29,6 +29,17 @@ static int keystore_compare(struct list_head *a, struct list_head *b)
 	return strcmp(na, nb);
 }
 
+static struct keystore_key *get_key(const char *name)
+{
+	struct keystore_key *key;
+
+	for_each_key(key)
+		if (!strcmp(name, key->name))
+			return key;
+
+	return NULL;
+};
+
 /**
  * @param[in] name Name of the secret to get
  * @param[out] secret Double pointer to memory representing the secret, do _not_ free() after use
@@ -38,19 +49,17 @@ int keystore_get_secret(const char *name, const u8 **secret, int *secret_len)
 {
 	struct keystore_key *key;
 
-	for_each_key(key) {
-		if (!strcmp(name, key->name)) {
-			if (!secret || !secret_len)
-				return 0;
+	if (!secret || !secret_len)
+		return 0;
 
-			*secret = key->secret;
-			*secret_len = key->secret_len;
+	key = get_key(name);
+	if (!key)
+		return -ENOENT;
 
-			return 0;
-		}
-	}
+	*secret = key->secret;
+	*secret_len = key->secret_len;
 
-	return -ENOENT;
+	return 0;
 }
 
 /**
@@ -61,11 +70,10 @@ int keystore_get_secret(const char *name, const u8 **secret, int *secret_len)
 int keystore_set_secret(const char *name, const u8 *secret, int secret_len)
 {
 	struct keystore_key *key;
-	int ret;
 
 	/* check if key is already in store */
-	ret = keystore_get_secret(name, NULL, NULL);
-	if (!ret)
+	key = get_key(name);
+	if (key)
 		return -EBUSY;
 
 	key = xzalloc(sizeof(*key));
@@ -78,3 +86,18 @@ int keystore_set_secret(const char *name, const u8 *secret, int secret_len)
 
 	return 0;
 }
+
+void keystore_forget_secret(const char *name)
+{
+	struct keystore_key *key;
+
+	key = get_key(name);
+	if (!key)
+		return;
+
+	list_del(&key->list);
+
+	free(key->name);
+	free(key->secret);
+	free(key);
+}
diff --git a/include/crypto/keystore.h b/include/crypto/keystore.h
index 29915854b8..89d962628b 100644
--- a/include/crypto/keystore.h
+++ b/include/crypto/keystore.h
@@ -12,6 +12,7 @@
 #ifdef CONFIG_CRYPTO_KEYSTORE
 int keystore_get_secret(const char *name, const u8 **secret, int *secret_len);
 int keystore_set_secret(const char *name, const u8 *secret, int secret_len);
+void keystore_forget_secret(const char *name);
 #else
 static inline int keystore_get_secret(const char *name, const u8 **secret, int *secret_len)
 {
@@ -21,6 +22,9 @@ static inline int keystore_set_secret(const char *name, const u8 *secret, int se
 {
 	return 0;
 }
+static inline void keystore_forget_secret(const char *name)
+{
+}
 #endif
 
 #endif
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
