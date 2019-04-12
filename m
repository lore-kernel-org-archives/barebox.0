Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEtD7-0006Ju-SJ
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:15:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 12:15:02 +0200
Message-Id: <20190412101502.11904-8-s.hauer@pengutronix.de>
In-Reply-To: <20190412101502.11904-1-s.hauer@pengutronix.de>
References: <20190412101502.11904-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/7] crypto: caam: add blobgen driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The blobgen driver allows generating and reading of red blobs on the
i.MX6 CAAM crypto core.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/crypto/caam/Makefile       |   1 +
 drivers/crypto/caam/caam-blobgen.c | 229 +++++++++++++++++++++++++++++
 drivers/crypto/caam/ctrl.c         |   9 ++
 drivers/crypto/caam/intern.h       |   1 +
 4 files changed, 240 insertions(+)
 create mode 100644 drivers/crypto/caam/caam-blobgen.c

diff --git a/drivers/crypto/caam/Makefile b/drivers/crypto/caam/Makefile
index 7bd6f3e23c..933b9c0592 100644
--- a/drivers/crypto/caam/Makefile
+++ b/drivers/crypto/caam/Makefile
@@ -4,3 +4,4 @@
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += ctrl.o error.o jr.o
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG) += caamrng.o
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) += rng_self_test.o
+obj-$(CONFIG_BLOBGEN) += caam-blobgen.o
diff --git a/drivers/crypto/caam/caam-blobgen.c b/drivers/crypto/caam/caam-blobgen.c
new file mode 100644
index 0000000000..acbe5a110d
--- /dev/null
+++ b/drivers/crypto/caam/caam-blobgen.c
@@ -0,0 +1,229 @@
+/*
+ * Copyright (C) 2015 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License version 2 as published by the
+ * Free Software Foundation.
+ */
+#include <common.h>
+#include <asm/io.h>
+#include <base64.h>
+#include <blobgen.h>
+#include <crypto.h>
+#include <dma.h>
+#include <driver.h>
+#include <init.h>
+#include <fs.h>
+#include <fcntl.h>
+#include "intern.h"
+#include "desc.h"
+#include "desc_constr.h"
+#include "error.h"
+#include "jr.h"
+
+/*
+ * Upon completion, desc points to a buffer containing a CAAM job
+ * descriptor which encapsulates data into an externally-storable
+ * blob.
+ */
+#define INITIAL_DESCSZ		16
+/* 32 bytes key blob + 16 bytes HMAC identifier */
+#define BLOB_OVERHEAD		(32 + 16)
+#define KEYMOD_LENGTH		16
+#define RED_BLOB_LENGTH		64
+#define MAX_BLOB_LEN		4096
+#define DESC_LEN		64
+
+struct blob_job_result {
+        int err;
+};
+
+struct blob_priv {
+	struct blobgen bg;
+	u32 desc[DESC_LEN];
+	dma_addr_t dma_modifier;
+	dma_addr_t dma_plaintext;
+	dma_addr_t dma_ciphertext;
+};
+
+static struct blob_priv *to_blob_priv(struct blobgen *bg)
+{
+	return container_of(bg, struct blob_priv, bg);
+}
+
+static void jr_jobdesc_blob_decap(struct blob_priv *ctx, u8 modlen, u16 input_size)
+{
+	u32 *desc = ctx->desc;
+	u16 in_sz;
+	u16 out_sz;
+
+	in_sz = input_size;
+	out_sz = input_size - BLOB_OVERHEAD;
+
+	init_job_desc(desc, 0);
+	/*
+	 * The key modifier can be used to differentiate specific data.
+	 * Or to prevent replay attacks.
+	 */
+	append_key(desc, ctx->dma_modifier, modlen, CLASS_2);
+	append_seq_in_ptr(desc, ctx->dma_ciphertext, in_sz, 0);
+	append_seq_out_ptr(desc, ctx->dma_plaintext, out_sz, 0);
+	append_operation(desc, OP_TYPE_DECAP_PROTOCOL | OP_PCLID_BLOB);
+}
+
+static void jr_jobdesc_blob_encap(struct blob_priv *ctx, u8 modlen, u16 input_size)
+{
+	u32 *desc = ctx->desc;
+	u16 in_sz;
+	u16 out_sz;
+
+	in_sz = input_size;
+	out_sz = input_size + BLOB_OVERHEAD;
+
+	init_job_desc(desc, 0);
+	/*
+	 * The key modifier can be used to differentiate specific data.
+	 * Or to prevent replay attacks.
+	 */
+	append_key(desc, ctx->dma_modifier, modlen, CLASS_2);
+	append_seq_in_ptr(desc, ctx->dma_plaintext, in_sz, 0);
+	append_seq_out_ptr(desc, ctx->dma_ciphertext, out_sz, 0);
+	append_operation(desc, OP_TYPE_ENCAP_PROTOCOL | OP_PCLID_BLOB);
+}
+
+static void blob_job_done(struct device_d *dev, u32 *desc, u32 err, void *arg)
+{
+	struct blob_job_result *res = arg;
+
+	if (!res)
+		return;
+
+	if (err)
+		caam_jr_strstatus(dev, err);
+
+	res->err = err;
+}
+
+static int caam_blob_decrypt(struct blobgen *bg, const char *modifier,
+			     const void *blob, int blobsize, void **plain,
+			     int *plainsize)
+{
+	struct blob_priv *ctx = to_blob_priv(bg);
+	struct device_d *jrdev = bg->dev.parent;
+	struct blob_job_result testres;
+	int modifier_len = strlen(modifier);
+	u32 *desc = ctx->desc;
+	int ret;
+
+	if (blobsize <= BLOB_OVERHEAD)
+		return -EINVAL;
+
+	*plainsize = blobsize - BLOB_OVERHEAD;
+
+	*plain = dma_alloc(*plainsize);
+	if (!*plain)
+		return -ENOMEM;
+
+	memset(desc, 0, DESC_LEN);
+
+	ctx->dma_modifier =   (dma_addr_t)modifier;
+	ctx->dma_plaintext =  (dma_addr_t)*plain;
+	ctx->dma_ciphertext = (dma_addr_t)blob;
+
+	jr_jobdesc_blob_decap(ctx, modifier_len, blobsize);
+
+	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+				   DMA_TO_DEVICE);
+
+	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+				   DMA_TO_DEVICE);
+	dma_sync_single_for_device((unsigned long)*plain, *plainsize,
+				   DMA_FROM_DEVICE);
+	dma_sync_single_for_device((unsigned long)blob, blobsize,
+				   DMA_TO_DEVICE);
+
+	testres.err = 0;
+
+	ret = caam_jr_enqueue(jrdev, desc, blob_job_done, &testres);
+	if (ret)
+		dev_err(jrdev, "decryption error\n");
+
+	ret = testres.err;
+
+	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+				DMA_TO_DEVICE);
+	dma_sync_single_for_cpu((unsigned long)*plain, *plainsize,
+				DMA_FROM_DEVICE);
+	dma_sync_single_for_cpu((unsigned long)blob, blobsize,
+				DMA_TO_DEVICE);
+
+	return ret;
+}
+
+static int caam_blob_encrypt(struct blobgen *bg, const char *modifier,
+			     const void *plain, int plainsize, void *blob,
+			     int *blobsize)
+{
+	struct blob_priv *ctx = to_blob_priv(bg);
+	struct device_d *jrdev = bg->dev.parent;
+	struct blob_job_result testres;
+	int modifier_len = strlen(modifier);
+	u32 *desc = ctx->desc;
+	int ret;
+
+	*blobsize = plainsize + BLOB_OVERHEAD;
+
+	memset(desc, 0, DESC_LEN);
+
+	ctx->dma_modifier =   (dma_addr_t)modifier;
+	ctx->dma_plaintext =  (dma_addr_t)plain;
+	ctx->dma_ciphertext = (dma_addr_t)blob;
+
+	jr_jobdesc_blob_encap(ctx, modifier_len, plainsize);
+
+	dma_sync_single_for_device((unsigned long)desc, desc_bytes(desc),
+				   DMA_TO_DEVICE);
+
+	dma_sync_single_for_device((unsigned long)modifier, modifier_len,
+				   DMA_TO_DEVICE);
+	dma_sync_single_for_device((unsigned long)plain, plainsize,
+				   DMA_TO_DEVICE);
+	dma_sync_single_for_device((unsigned long)blob, *blobsize,
+				   DMA_FROM_DEVICE);
+
+	testres.err = 0;
+
+	ret = caam_jr_enqueue(jrdev, desc, blob_job_done, &testres);
+	if (ret)
+		dev_err(jrdev, "encryption error\n");
+
+	ret = testres.err;
+
+	dma_sync_single_for_cpu((unsigned long)modifier, modifier_len,
+				DMA_TO_DEVICE);
+	dma_sync_single_for_cpu((unsigned long)plain, plainsize,
+				DMA_TO_DEVICE);
+	dma_sync_single_for_cpu((unsigned long)blob, *blobsize,
+				DMA_FROM_DEVICE);
+
+	return ret;
+}
+
+int caam_blob_gen_probe(struct device_d *dev, struct device_d *jrdev)
+{
+	struct blob_priv *ctx;
+	struct blobgen *bg;
+	int ret;
+
+	ctx = xzalloc(sizeof(*ctx));
+	bg = &ctx->bg;
+	bg->max_payload_size = MAX_BLOB_LEN - BLOB_OVERHEAD;
+	bg->encrypt = caam_blob_encrypt;
+	bg->decrypt = caam_blob_decrypt;
+
+	ret = blob_gen_register(jrdev, bg);
+	if (ret)
+		free(ctx);
+
+	return ret;
+}
diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 4fe3eea3e6..06b075e74a 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -654,6 +654,15 @@ static int caam_probe(struct device_d *dev)
 		}
 	}
 
+	if (IS_ENABLED(CONFIG_BLOBGEN)) {
+		ret = caam_blob_gen_probe(dev, ctrlpriv->jrpdev[0]);
+		if (ret) {
+			dev_err(dev, "failed to instantiate blobgen device");
+			caam_remove(dev);
+			return ret;
+		}
+	}
+
 	/* NOTE: RTIC detection ought to go here, around Si time */
 	caam_id = (u64)rd_reg32(&ctrl->perfmon.caam_id_ms) << 32 |
 		  (u64)rd_reg32(&ctrl->perfmon.caam_id_ls);
diff --git a/drivers/crypto/caam/intern.h b/drivers/crypto/caam/intern.h
index fe19a2c8d2..6dfcea26ac 100644
--- a/drivers/crypto/caam/intern.h
+++ b/drivers/crypto/caam/intern.h
@@ -93,5 +93,6 @@ void caam_jr_algapi_init(struct device *dev);
 void caam_jr_algapi_remove(struct device *dev);
 
 int caam_rng_probe(struct device_d *dev, struct device_d *jrdev);
+int caam_blob_gen_probe(struct device_d *dev, struct device_d *jrdev);
 int caam_jr_probe(struct device_d *dev);
 #endif /* INTERN_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
