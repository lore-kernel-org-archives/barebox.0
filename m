Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbc-0005fo-71
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:39 +0200
Message-Id: <20170331070346.26878-36-s.hauer@pengutronix.de>
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
Subject: [PATCH 35/42] state: backend_raw: alloc digest only when needed
To: Barebox List <barebox@lists.infradead.org>

Instead of deferring probe just allocate the digest when
it's needed. This way the credentials can be added later,
possibly on the commandline.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/backend_format_raw.c | 112 ++++++++++++++++++++------------------
 1 file changed, 59 insertions(+), 53 deletions(-)

diff --git a/common/state/backend_format_raw.c b/common/state/backend_format_raw.c
index a425b636d0..43a5523152 100644
--- a/common/state/backend_format_raw.c
+++ b/common/state/backend_format_raw.c
@@ -35,6 +35,10 @@ struct state_backend_format_raw {
 
 	/* For outputs */
 	struct device_d *dev;
+
+	char *secret_name;
+	int needs_secret;
+	char *algo;
 };
 
 struct __attribute__((__packed__)) backend_raw_header {
@@ -53,6 +57,43 @@ static inline struct state_backend_format_raw *get_format_raw(
 	return container_of(format, struct state_backend_format_raw, format);
 }
 
+static int backend_raw_digest_init(struct state_backend_format_raw *raw)
+{
+	const unsigned char *key;
+	int key_len;
+	int ret;
+
+	if (!raw->digest) {
+		raw->digest = digest_alloc(raw->algo);
+		if (!raw->digest) {
+			dev_err(raw->dev, "algo %s not found\n",
+				raw->algo);
+			return -ENODEV;
+		}
+		raw->digest_length = digest_length(raw->digest);
+	}
+
+	ret = keystore_get_secret(raw->secret_name, &key, &key_len);
+	if (ret) {
+		dev_err(raw->dev, "Could not get secret '%s'\n",
+			raw->secret_name);
+		return ret;
+	}
+
+	ret = digest_set_key(raw->digest, key, key_len);
+	if (ret)
+		return ret;
+
+	ret = digest_init(raw->digest);
+	if (ret) {
+		dev_err(raw->dev, "Failed to initialize digest: %s\n",
+			strerror(-ret));
+		return ret;
+	}
+
+	return 0;
+}
+
 static int backend_format_raw_verify(struct state_backend_format *format,
 				     uint32_t magic, const void * buf,
 				     ssize_t *lenp)
@@ -86,7 +127,11 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 		return -EINVAL;
 	}
 
-	if (backend_raw->digest) {
+	if (backend_raw->algo) {
+		ret = backend_raw_digest_init(backend_raw);
+		if (ret)
+			return ret;
+
 		d_len = digest_length(backend_raw->digest);
 	}
 
@@ -108,26 +153,18 @@ static int backend_format_raw_verify(struct state_backend_format *format,
 
 	*lenp = header->data_len + sizeof(*header);
 
-	if (backend_raw->digest) {
-		struct digest *d = backend_raw->digest;
+	if (backend_raw->algo) {
 		const void *hmac = data + header->data_len;
 
-		ret = digest_init(d);
-		if (ret) {
-			dev_err(backend_raw->dev, "Failed to initialize digest, %d\n",
-				ret);
-			return ret;
-		}
-
 		/* hmac over header and data */
-		ret = digest_update(d, buf, sizeof(*header) + header->data_len);
+		ret = digest_update(backend_raw->digest, buf, sizeof(*header) + header->data_len);
 		if (ret) {
 			dev_err(backend_raw->dev, "Failed to update digest, %d\n",
 				ret);
 			return ret;
 		}
 
-		ret = digest_verify(d, hmac);
+		ret = digest_verify(backend_raw->digest, hmac);
 		if (ret < 0) {
 			dev_err(backend_raw->dev, "Failed to verify data, hmac, %d\n",
 				ret);
@@ -195,25 +232,20 @@ static int backend_format_raw_pack(struct state_backend_format *format,
 	header->header_crc = crc32(0, header,
 				   sizeof(*header) - sizeof(uint32_t));
 
-	if (backend_raw->digest) {
-		struct digest *d = backend_raw->digest;
-
-		ret = digest_init(d);
-		if (ret) {
-			dev_err(backend_raw->dev, "Failed to initialize digest for packing, %d\n",
-				ret);
-			goto out_free;
-		}
+	if (backend_raw->algo) {
+		ret = backend_raw_digest_init(backend_raw);
+		if (ret)
+			return ret;
 
 		/* hmac over header and data */
-		ret = digest_update(d, buf, sizeof(*header) + size_data);
+		ret = digest_update(backend_raw->digest, buf, sizeof(*header) + size_data);
 		if (ret) {
 			dev_err(backend_raw->dev, "Failed to update digest for packing, %d\n",
 				ret);
 			goto out_free;
 		}
 
-		ret = digest_final(d, hmac);
+		ret = digest_final(backend_raw->digest, hmac);
 		if (ret < 0) {
 			dev_err(backend_raw->dev, "Failed to finish digest for packing, %d\n",
 				ret);
@@ -243,11 +275,9 @@ static int backend_format_raw_init_digest(struct state_backend_format_raw *raw,
 					  struct device_node *root,
 					  const char *secret_name)
 {
-	struct digest *digest;
 	struct property *p;
 	const char *algo;
-	const unsigned char *key;
-	int key_len, ret;
+	int ret;
 
 	p = of_find_property(root, "algo", NULL);
 	if (!p)			/* does not exist */
@@ -263,30 +293,7 @@ static int backend_format_raw_init_digest(struct state_backend_format_raw *raw,
 		return -EINVAL;
 	}
 
-	ret = keystore_get_secret(secret_name, &key, &key_len);
-	if (ret == -ENOENT) {	/* -ENOENT == does not exist */
-		dev_info(raw->dev, "Could not get secret '%s' - probe deferred\n",
-			 secret_name);
-		return -EPROBE_DEFER;
-	} else if (ret) {
-		return ret;
-	}
-
-	digest = digest_alloc(algo);
-	if (!digest) {
-		dev_info(raw->dev, "algo %s not found - probe deferred\n",
-			 algo);
-		return -EPROBE_DEFER;
-	}
-
-	ret = digest_set_key(digest, key, key_len);
-	if (ret) {
-		digest_free(digest);
-		return ret;
-	}
-
-	raw->digest = digest;
-	raw->digest_length = digest_length(digest);
+	raw->algo = xstrdup(algo);
 
 	return 0;
 }
@@ -304,15 +311,14 @@ int backend_format_raw_create(struct state_backend_format **format,
 
 	raw->dev = dev;
 	ret = backend_format_raw_init_digest(raw, node, secret_name);
-	if (ret == -EPROBE_DEFER) {
-		return ret;
-	} else if (ret) {
+	if (ret) {
 		dev_err(raw->dev, "Failed initializing digest for raw format, %d\n",
 			ret);
 		free(raw);
 		return ret;
 	}
 
+	raw->secret_name = xstrdup(secret_name);
 	raw->format.pack = backend_format_raw_pack;
 	raw->format.unpack = backend_format_raw_unpack;
 	raw->format.verify = backend_format_raw_verify;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
