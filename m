Delivery-date: Thu, 01 Aug 2024 08:03:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOuk-0052Ku-0s
	for lore@lore.pengutronix.de;
	Thu, 01 Aug 2024 08:03:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZOui-0001os-Pk
	for lore@pengutronix.de; Thu, 01 Aug 2024 08:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iXmC0GsBEtk/onalHJRcd2QCr5ZsNiaRbyQ7jURZzkA=; b=zxH7tjCG/FEAGLlc9LygO5+j6t
	6SmWqezTmD9pXDk/YJC4hqOXUBG2b8vpXEJdxyK5BJXpg8aVjtkwcRR3Y8kbz7chUPS+6cZ2M+pxa
	BAzmuNWXa2QLPh5wP/VoXuwy/FTzbKVo+Pr0qmE9box1ptbA7U3CvfUwV7Eqmkv58D6J0pxNr9tX2
	0Q5OA15PWbZ5R8hAApEXq+K3knHqio/2lLamCOPghHwL0fFcjC0V5XL93dtlf02PUgEM4zM6Kk9k5
	HiKA59DjND3dNBDsFW3WrF9+qq0zdd3XwqAn7XsyHu+JwVGEIHc7ctWT6wHfMD+hxtyIF3lQf5CEO
	DIffVE2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOuB-00000003qXK-0XFu;
	Thu, 01 Aug 2024 06:03:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZOu1-00000003qQK-0kOv
	for barebox@lists.infradead.org;
	Thu, 01 Aug 2024 06:03:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOu0-0001Is-1I; Thu, 01 Aug 2024 08:03:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOtz-003hXC-Kd; Thu, 01 Aug 2024 08:03:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sZOol-00DNum-1E;
	Thu, 01 Aug 2024 07:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Aug 2024 07:57:37 +0200
Message-Id: <20240801055737.3190132-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240801055737.3190132-1-s.hauer@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_230305_256958_AFF5CFEC 
X-CRM114-Status: GOOD (  19.70  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 19/19] fit: Add ecdsa support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds ECDSA signing support to the FIT image code.

Previously we unconditionally called into rsa_verify() as this was the
only option. Now with ECDSA support we first have to check the type of
the signature, so we start evaluating the signature type in given in the
FIT image and call rsa_verify() or ecdsa_verify() depending on it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 112 +++++++++++++++++++++++++++++++++++++--------
 1 file changed, 94 insertions(+), 18 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 6002440e7e..599d969a38 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -21,6 +21,7 @@
 #include <linux/err.h>
 #include <stringlist.h>
 #include <rsa.h>
+#include <ecdsa.h>
 #include <uncompress.h>
 #include <image-fit.h>
 
@@ -253,13 +254,11 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 	return digest;
 }
 
-static int fit_check_rsa_signature(struct device_node *sig_node,
-				   enum hash_algo algo, void *hash)
+static int fit_check_rsa_signature(const void *signature, size_t sig_len,
+				   enum hash_algo algo, void *hash,
+				   const char *key_name)
 {
 	const struct rsa_public_key *key;
-	const char *key_name = NULL;
-	int sig_len;
-	const char *sig_value;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_CRYPTO_RSA)) {
@@ -267,17 +266,10 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 		return -EOPNOTSUPP;
 	}
 
-	sig_value = of_get_property(sig_node, "value", &sig_len);
-	if (!sig_value) {
-		pr_err("signature value not found in %pOF\n", sig_node);
-		return -EINVAL;
-	}
-
-	of_property_read_string(sig_node, "key-name-hint", &key_name);
 	if (key_name) {
 		key = rsa_get_key(key_name);
 		if (key) {
-			ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+			ret = rsa_verify(key, signature, sig_len, hash, algo);
 			if (!ret)
 				goto ok;
 		}
@@ -287,20 +279,104 @@ static int fit_check_rsa_signature(struct device_node *sig_node,
 		if (key_name && !strcmp(key->key_name_hint, key_name))
 			continue;
 
-		ret = rsa_verify(key, sig_value, sig_len, hash, algo);
+		ret = rsa_verify(key, signature, sig_len, hash, algo);
 		if (!ret)
 			goto ok;
 	}
 
-	pr_err("image signature BAD\n");
+	pr_err("image RSA signature BAD\n");
 
 	return -EBADMSG;
 ok:
-	pr_info("image signature OK\n");
+	pr_info("image RSA signature OK\n");
 
 	return 0;
 }
 
+static int fit_check_ecdsa_signature(const void *signature, size_t sig_len,
+				     enum hash_algo algo, void *hash,
+				     const char *key_name)
+{
+	const struct ecdsa_public_key *key;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_CRYPTO_ECDSA)) {
+		pr_err("ECDSA support is disabled, Cannot verify image\n");
+		return -EOPNOTSUPP;
+	}
+
+	for_each_ecdsa_key(key) {
+		ret = ecdsa_verify(key, signature, sig_len, hash);
+		if (!ret) {
+			pr_info("image ECDSA signature OK\n");
+			return 0;
+		}
+	}
+
+	pr_err("image ECDSA signature BAD\n");
+
+	return -EBADMSG;
+}
+
+struct crypto_algo {
+	const char *name;
+	int (*verify)(const void *signature, size_t sig_len, enum hash_algo algo,
+		      void *hash, const char *key_name);
+};
+
+static struct crypto_algo crypto_algos[] = {
+	{
+		.name = "rsa2048",
+		.verify = fit_check_rsa_signature,
+	}, {
+		.name = "rsa3072",
+		.verify = fit_check_rsa_signature,
+	}, {
+		.name = "rsa4096",
+		.verify = fit_check_rsa_signature,
+	}, {
+		.name = "ecdsa256",
+		.verify = fit_check_ecdsa_signature,
+	},
+};
+
+static int fit_check_signature(struct device_node *sig_node,
+			       enum hash_algo algo, void *hash)
+{
+	int sig_len, i;
+	const char *sig_value;
+	const char *algo_name;
+	const char *key_name = NULL;
+	const char *str;
+
+	sig_value = of_get_property(sig_node, "value", &sig_len);
+	if (!sig_value) {
+		pr_err("signature value not found in %pOF\n", sig_node);
+		return -EINVAL;
+	}
+
+	of_property_read_string(sig_node, "key-name-hint", &key_name);
+
+	if (of_property_read_string(sig_node, "algo", &algo_name)) {
+		pr_err("algo property not found\n");
+		return -EINVAL;
+	}
+
+	str = strchr(algo_name, ',');
+	if (!str)
+		return -EINVAL;
+	str++;
+
+	for (i = 0; i < ARRAY_SIZE(crypto_algos); i++) {
+		struct crypto_algo *ca = &crypto_algos[i];
+
+		if (!strcmp(ca->name, str))
+			return ca->verify(sig_value, sig_len, algo, hash, key_name);
+	}
+
+	return -EINVAL;
+}
+
 /*
  * The consistency of the FTD structure was already checked by of_unflatten_dtb()
  */
@@ -346,7 +422,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_rsa_signature(sig_node, algo, hash);
+	ret = fit_check_signature(sig_node, algo, hash);
 	if (ret)
 		goto out_free_hash;
 
@@ -469,7 +545,7 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_rsa_signature(sig_node, algo, hash);
+	ret = fit_check_signature(sig_node, algo, hash);
 
 	free(hash);
 
-- 
2.39.2



