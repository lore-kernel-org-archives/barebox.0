Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo7bp-0005bI-VV
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 10:24:08 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 19 Oct 2015 12:23:40 +0200
Message-Id: <1445250220-28239-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
References: <1445250220-28239-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/6] state: backend_raw: add hamc support
To: barebox@lists.infradead.org

This patch adds hmac support to the raw backend.

With this patch, modifications of the header or data of a state partition can
be detected, as the hmac woudln't match anymore. The hmac relies on a shared
secret, which is requested from the keystore, with keystore_get_secret() using
the name of the state partition as the "name" of the secret.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 117 +++++++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 109 insertions(+), 8 deletions(-)

diff --git a/common/state.c b/common/state.c
index d37f4ab4b539..234b4c01244c 100644
--- a/common/state.c
+++ b/common/state.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <digest.h>
 #include <environment.h>
 #include <errno.h>
 #include <fcntl.h>
@@ -28,6 +29,8 @@
 #include <state.h>
 #include <xfuncs.h>
 
+#include <crypto/keystore.h>
+
 #include <linux/mtd/mtd-abi.h>
 #include <linux/mtd/mtd.h>
 #include <linux/list.h>
@@ -41,7 +44,7 @@ struct state_backend;
 
 struct state {
 	struct device_d dev;
-	const struct device_node *root;
+	struct device_node *root;
 	struct list_head variables;
 	const char *name;
 	struct list_head list;
@@ -55,6 +58,7 @@ struct state_backend {
 	const char *name;
 	const char *of_path;
 	const char *path;
+	struct digest *digest;
 };
 
 enum state_variable_type {
@@ -948,6 +952,16 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		goto out;
 
+	if (state->backend->digest) {
+		p = of_new_property(new_node, "algo",
+				    digest_name(state->backend->digest),
+				    strlen(digest_name(state->backend->digest)) + 1);
+		if (!p) {
+			ret = -ENOMEM;
+			goto out;
+		}
+	}
+
 	/* address-cells + size-cells */
 	ret = of_property_write_u32(new_node, "#address-cells", 1);
 	if (ret)
@@ -1230,7 +1244,7 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
 struct state_backend_raw {
 	struct state_backend backend;
 	unsigned long size_data; /* The raw data size (without header) */
-	unsigned long size_full; /* The size header + raw data */
+	unsigned long size_full; /* The size header + raw data + hmac */
 	unsigned long stride; /* The stride size in bytes of the copies */
 	off_t offset; /* offset in the storage file */
 	size_t size; /* size of the storage area */
@@ -1253,8 +1267,9 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 	struct state_variable *sv;
 	struct backend_raw_header header = {};
 	unsigned long max_len;
+	int d_len = 0;
 	int ret;
-	void *buf, *data;
+	void *buf, *data, *hmac;
 
 	max_len = backend_raw->stride;
 
@@ -1285,6 +1300,11 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 		return -EINVAL;
 	}
 
+	if (backend_raw->backend.digest) {
+		d_len = digest_length(backend_raw->backend.digest);
+		max_len -= d_len;
+	}
+
 	if (header.data_len > max_len) {
 		dev_err(&state->dev,
 			"invalid data_len %u in header, max is %lu\n",
@@ -1292,14 +1312,15 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 		return -EINVAL;
 	}
 
-	buf = xzalloc(sizeof(header) + header.data_len);
+	buf = xzalloc(sizeof(header) + header.data_len + d_len);
 	data = buf + sizeof(header);
+	hmac = data + header.data_len;
 
 	ret = lseek(fd, offset, SEEK_SET);
 	if (ret < 0)
 		goto out_free;
 
-	ret = read_full(fd, buf, sizeof(header) + header.data_len);
+	ret = read_full(fd, buf, sizeof(header) + header.data_len + d_len);
 	if (ret < 0)
 		goto out_free;
 
@@ -1312,6 +1333,23 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
 		goto out_free;
 	}
 
+	if (backend_raw->backend.digest) {
+		struct digest *d = backend_raw->backend.digest;
+
+		ret = digest_init(d);
+		if (ret)
+			goto out_free;
+
+		/* hmac over header and data */
+		ret = digest_update(d, buf, sizeof(header) + header.data_len);
+		if (ret)
+			goto out_free;
+
+		ret = digest_verify(d, hmac);
+		if (ret < 0)
+			goto out_free;
+	}
+
 	list_for_each_entry(sv, &state->variables, list) {
 		if (sv->start + sv->size > header.data_len)
 			break;
@@ -1392,7 +1430,7 @@ static int state_backend_raw_save(struct state_backend *backend,
 	struct state_backend_raw *backend_raw = container_of(backend,
 			struct state_backend_raw, backend);
 	int ret = 0, fd, i;
-	void *buf, *data;
+	void *buf, *data, *hmac;
 	struct backend_raw_header *header;
 	struct state_variable *sv;
 
@@ -1400,6 +1438,7 @@ static int state_backend_raw_save(struct state_backend *backend,
 
 	header = buf;
 	data = buf + sizeof(*header);
+	hmac = data + backend_raw->size_data;
 
 	list_for_each_entry(sv, &state->variables, list)
 		memcpy(data + sv->start, sv->raw, sv->size);
@@ -1410,6 +1449,23 @@ static int state_backend_raw_save(struct state_backend *backend,
 	header->header_crc = crc32(0, header,
 				   sizeof(*header) - sizeof(uint32_t));
 
+	if (backend_raw->backend.digest) {
+		struct digest *d = backend_raw->backend.digest;
+
+		ret = digest_init(d);
+		if (ret)
+			goto out_free;
+
+		/* hmac over header and data */
+		ret = digest_update(d, buf, sizeof(*header) + backend_raw->size_data);
+		if (ret)
+			goto out_free;
+
+		ret = digest_final(d, hmac);
+		if (ret < 0)
+			goto out_free;
+	}
+
 	fd = open(backend->path, O_WRONLY);
 	if (fd < 0)
 		goto out_free;
@@ -1494,6 +1550,43 @@ static int state_backend_raw_file_get_size(const char *path, size_t *out_size)
 	return ret;
 }
 
+static int state_backend_raw_file_init_digest(struct state *state, struct state_backend_raw *backend_raw)
+{
+	struct digest *digest;
+	const char *algo;
+	const unsigned char *key;
+	int key_len, ret;
+
+	ret = of_property_read_string(state->root, "algo", &algo);
+	if (ret == -EINVAL)	/* -EINVAL == does not exist */
+		return 0;
+	else if (ret)
+		return ret;
+
+	ret = keystore_get_secret(state->name, &key, &key_len);
+	if (ret == -ENOENT)	/* -ENOENT == does not exist */
+		return -EPROBE_DEFER;
+	else if (ret)
+		return ret;
+
+	digest = digest_alloc(algo);
+	if (!digest) {
+		dev_info(&state->dev, "algo %s not found - probe deferred\n", algo);
+		return -EPROBE_DEFER;
+	}
+
+	ret = digest_set_key(digest, key, key_len);
+	if (ret) {
+		digest_free(digest);
+		return ret;
+	}
+
+	backend_raw->backend.digest = digest;
+	backend_raw->size_full = digest_length(digest);
+
+	return 0;
+}
+
 /*
  * state_backend_raw_file - create a raw file backend store for a state instance
  *
@@ -1534,8 +1627,14 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 		return -EINVAL;
 
 	backend_raw = xzalloc(sizeof(*backend_raw));
-	backend = &backend_raw->backend;
 
+	ret = state_backend_raw_file_init_digest(state, backend_raw);
+	if (ret) {
+		free(backend_raw);
+		return ret;
+	}
+
+	backend = &backend_raw->backend;
 	backend->save = state_backend_raw_save;
 	backend->of_path = xstrdup(of_path);
 	backend->path = xstrdup(path);
@@ -1545,7 +1644,7 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	backend_raw->size_data = sv->start + sv->size;
 	backend_raw->offset = offset;
 	backend_raw->size = size;
-	backend_raw->size_full = backend_raw->size_data +
+	backend_raw->size_full += backend_raw->size_data +
 		sizeof(struct backend_raw_header);
 
 	state->backend = backend;
@@ -1581,6 +1680,8 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	/* ignore return value of load() */
 	return 0;
 err:
+	digest_free(backend_raw->backend.digest);
+
 	free(backend_raw);
 	return ret;
 }
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
