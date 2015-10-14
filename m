Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmMHs-0004c8-9o
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 13:40:17 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 14 Oct 2015 15:39:39 +0200
Message-Id: <1444829979-1100-6-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 6/6] crypto: caam: add blob_gen driver
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The blob_gen driver allows generating and reading of red blobs on the
i.MX6 CAAM crypto core.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/crypto/caam/Kconfig    |   9 +
 drivers/crypto/caam/Makefile   |   1 +
 drivers/crypto/caam/blob_gen.c | 485 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 495 insertions(+)
 create mode 100644 drivers/crypto/caam/blob_gen.c

diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index d54754c7a89b..4466785358e7 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -35,3 +35,12 @@ config CRYPTO_DEV_FSL_CAAM_RINGSIZE
 		7 => 128
 		8 => 256
 		9 => 512
+
+config CRYPTO_DEV_FSL_CAAM_BLOB_GEN
+	bool "CAAM - Blob Generator (EXPERIMENTAL)"
+	depends on CRYPTO_DEV_FSL_CAAM
+	select BASE64
+	default n
+	help
+	  Selecting this will register the device /dev/blob which can en/decapsulate
+	  red blobs with the help of the CAAM.
diff --git a/drivers/crypto/caam/Makefile b/drivers/crypto/caam/Makefile
index cd46936fb6b4..6c126cf11dac 100644
--- a/drivers/crypto/caam/Makefile
+++ b/drivers/crypto/caam/Makefile
@@ -3,3 +3,4 @@
 #
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM) += ctrl.o error.o
 obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_JR) += jr.o
+obj-$(CONFIG_CRYPTO_DEV_FSL_CAAM_BLOB_GEN) += blob_gen.o
diff --git a/drivers/crypto/caam/blob_gen.c b/drivers/crypto/caam/blob_gen.c
new file mode 100644
index 000000000000..7e5f990bc8e5
--- /dev/null
+++ b/drivers/crypto/caam/blob_gen.c
@@ -0,0 +1,485 @@
+/*
+ * Copyright (C) 2015 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it under
+ * the terms of the GNU General Public License version 2 as published by the
+ * Free Software Foundation.
+ */
+
+#include <asm/io.h>
+#include <base64.h>
+#include <common.h>
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
+#define DRIVERNAME	"blob"
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
+
+enum access_rights {
+	KERNEL,
+	KERNEL_EVM,
+	USERSPACE,
+};
+
+struct blob_priv;
+
+struct blob_job_result {
+        int err;
+};
+
+struct blob_param {
+	struct param_d *param;
+	char *value;
+};
+
+struct blob_dma_blob {
+	u8 data[MAX_BLOB_LEN];
+};
+
+struct blob_dma_modifier {
+	u8 data[KEYMOD_LENGTH];
+};
+
+struct blob_priv {
+	struct device_d *jrdev;
+	struct device_d dev;
+	struct blob_param modifier_param;
+	struct blob_param payload_param;
+	struct blob_param blob_param;
+	u32 __iomem *desc;
+	bool busy;
+	enum access_rights access;
+	unsigned int payload_size;
+	struct blob_dma_blob *red_blob;
+	struct blob_dma_blob *payload;
+	struct blob_dma_modifier *modifier;
+};
+
+static void jr_jobdesc_blob_decap(u32 __iomem *desc, u8 *keymod, u8 *blob,
+				  u8 *plain_txt, u16 input_size)
+{
+	dma_addr_t dma_keymod;
+	dma_addr_t dma_plain;
+	dma_addr_t dma_blob;
+	u16 in_sz;
+	u16 out_sz;
+
+	dma_keymod = (dma_addr_t)keymod;
+	dma_plain = (dma_addr_t)plain_txt;
+	dma_blob = (dma_addr_t)blob;
+
+	in_sz = input_size;
+	out_sz = input_size - BLOB_OVERHEAD;
+
+	init_job_desc(desc, 0);
+	/*
+	 * The key modifier can be used to differentiate specific data.
+	 * Or to prevent replay attacks.
+	 */
+	append_key(desc, dma_keymod, KEYMOD_LENGTH, CLASS_2);
+	append_seq_in_ptr(desc, dma_blob, in_sz, 0);
+	append_seq_out_ptr(desc, dma_plain, out_sz, 0);
+	append_operation(desc, OP_TYPE_DECAP_PROTOCOL | OP_PCLID_BLOB);
+}
+
+static void jr_jobdesc_blob_encap(u32 __iomem *desc, u8 *keymod, u8 *plain_txt,
+				  u8 *blob, u16 input_size)
+{
+	dma_addr_t dma_keymod;
+	dma_addr_t dma_plain;
+	dma_addr_t dma_blob;
+	u16 in_sz;
+	u16 out_sz;
+
+	dma_keymod = (dma_addr_t)keymod;
+	dma_plain = (dma_addr_t)plain_txt;
+	dma_blob = (dma_addr_t)blob;
+
+	in_sz = input_size;
+	out_sz = input_size + BLOB_OVERHEAD;
+
+	init_job_desc(desc, 0);
+	/*
+	 * The key modifier can be used to differentiate specific data.
+	 * Or to prevent replay attacks.
+	 */
+	append_key(desc, dma_keymod, KEYMOD_LENGTH, CLASS_2);
+	append_seq_in_ptr(desc, dma_plain, in_sz, 0);
+	append_seq_out_ptr(desc, dma_blob, out_sz, 0);
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
+		caam_jr_strstatus(dev, readl(0x2101044));
+
+	res->err = err;
+}
+
+/*
+ * Generate a blob with the following format:
+ * Format: Normal format (Test format only for testing)
+ * Contents: General data (aka red blob)
+ * Security State: Secure State (Non-Secure for testing)
+ * Memory Types: General memory
+ */
+static int blob_encap_blob(struct blob_priv *priv, u8 *keymod, u8 *input,
+				u8 *output, u16 input_size)
+{
+	struct device_d *jrdev = priv->jrdev;
+	struct blob_job_result testres;
+	int ret;
+
+	memset(priv->desc, 0, 64);
+
+	jr_jobdesc_blob_encap(priv->desc, keymod, input, output, input_size);
+
+	pr_debug("data:\n");
+	pr_hex_dump_debug("data: ",
+			DUMP_PREFIX_OFFSET, 16, 1, input,
+			input_size, false);
+	pr_debug("jobdesc:\n");
+	pr_hex_dump_debug("jobdesc: ",
+			DUMP_PREFIX_OFFSET, 16, 1, priv->desc,
+			desc_bytes(priv->desc), false);
+	ret = caam_jr_enqueue(jrdev, priv->desc, blob_job_done, &testres);
+
+	pr_debug("output:\n");
+	pr_hex_dump_debug("",
+		       DUMP_PREFIX_OFFSET, 16, 1, priv->red_blob,
+		       input_size + BLOB_OVERHEAD, false);
+
+	return ret;
+}
+
+static int blob_decap_blob(struct blob_priv *priv, u8 *keymod, u8 *input,
+				u8 *output, u16 input_length)
+{
+	struct device_d *jrdev = priv->jrdev;
+	struct blob_job_result testres;
+	int ret;
+
+	memset(priv->desc, 0, 64);
+
+	jr_jobdesc_blob_decap(priv->desc, keymod, input, output, input_length);
+
+	pr_debug("data:\n");
+	pr_hex_dump_debug("data: ",
+			DUMP_PREFIX_OFFSET, 16, 1, input,
+			input_length, false);
+	pr_debug("jobdesc:\n");
+	pr_hex_dump_debug("jobdesc: ",
+			DUMP_PREFIX_OFFSET, 16, 1, priv->desc,
+			desc_bytes(priv->desc), false);
+
+	testres.err = 0;
+	ret = caam_jr_enqueue(jrdev, priv->desc, blob_job_done, &testres);
+	if (ret) {
+		dev_err(jrdev, "decryption error\n");
+	}
+	ret = testres.err;
+
+	pr_debug("%s: input_length %d\n", __func__, input_length);
+	pr_debug("output:\n");
+	pr_hex_dump_debug("",
+		       DUMP_PREFIX_OFFSET, 16, 1, output,
+		       input_length - BLOB_OVERHEAD, false);
+
+	return ret;
+}
+
+static int blob_gen_payload_get(struct param_d *p, void *arg)
+{
+	struct blob_priv *priv = arg;
+	struct blob_param *payload = &priv->payload_param;
+
+	if (priv->payload_size == 0)
+		return -EINVAL;
+
+	if (priv->access != USERSPACE)
+		return -EPERM;
+
+	free(payload->value);
+	payload->value = xstrndup(priv->payload->data, priv->payload_size);
+
+	return 0;
+}
+
+static int blob_gen_payload_set(struct param_d *p, void *arg)
+{
+	struct blob_priv *priv = arg;
+	struct blob_param *payload = &priv->payload_param;
+	size_t len;
+
+	if (priv->busy)
+		return -EBUSY;
+
+	len = strlen(payload->value);
+	if (len > sizeof(priv->payload->data))
+		return -EINVAL;
+
+	memcpy(priv->payload->data, payload->value, len);
+	priv->payload_size = len;
+
+	return 0;
+}
+
+static int blob_gen_blob_set(struct param_d *p, void *arg)
+{
+	struct blob_priv *priv = arg;
+	struct blob_param *blob = &priv->blob_param;
+	int length;
+	int ret;
+
+	if (priv->busy)
+		return -EBUSY;
+
+	length = strlen(blob->value);
+	if (length <= 0) {
+		dev_err(&priv->dev, "blob can't be 0\n");
+		return -EINVAL;
+	}
+
+	priv->busy = true;
+
+	pr_debug("red_blob:\n");
+	pr_hex_dump_debug("",
+		       DUMP_PREFIX_OFFSET, 16, 1, blob->value,
+		       length, false);
+
+	memset(priv->red_blob->data, 0x0, sizeof(priv->red_blob->data));
+	length = decode_base64(priv->red_blob->data, sizeof(priv->red_blob->data), blob->value);
+	if (length <= BLOB_OVERHEAD) {
+		dev_err(&priv->dev, "blob to short\n");
+		priv->busy = false;
+		return -EINVAL;
+	}
+
+	pr_debug("red_blob decoded:\n");
+	pr_hex_dump_debug("",
+		       DUMP_PREFIX_OFFSET, 16, 1, priv->red_blob,
+		       length, false);
+
+	memset(priv->payload->data, 0x0, sizeof(priv->payload->data));
+
+	ret = blob_decap_blob(priv, priv->modifier->data, priv->red_blob->data,
+			      priv->payload->data, length);
+	if (ret) {
+		priv->busy = false;
+		return -EINVAL;
+	}
+
+	priv->payload_size = length - BLOB_OVERHEAD;
+
+	priv->busy = false;
+	return 0;
+}
+
+static int blob_gen_blob_get(struct param_d *p, void *arg)
+{
+	struct blob_priv *priv = arg;
+	struct blob_param *blob = &priv->blob_param;
+	int length;
+	int ret;
+
+	if (priv->busy)
+		return -EBUSY;
+
+	if (priv->payload_size <= 0) {
+		dev_err(&priv->dev, "No payload given\n");
+		return -EINVAL;
+	}
+
+	priv->busy = true;
+
+	memset(priv->red_blob->data, 0x0, sizeof(priv->red_blob->data));
+	ret = blob_encap_blob(priv,
+			      priv->modifier->data,
+			      priv->payload->data,
+			      priv->red_blob->data,
+			      priv->payload_size);
+	if (ret) {
+		priv->busy = false;
+		return -EINVAL;
+	}
+
+	free(blob->value);
+	length = priv->payload_size + BLOB_OVERHEAD;
+	blob->value = xzalloc(BASE64_LENGTH(length) + 1);
+	uuencode(blob->value, priv->red_blob->data, length);
+
+	pr_hex_dump_debug("",
+		       DUMP_PREFIX_OFFSET, 16, 1, blob->value,
+		       strlen(blob->value), false);
+
+	priv->busy = false;
+
+	return 0;
+}
+
+static int blob_gen_modifier_set(struct param_d *p, void *arg)
+{
+	struct blob_priv *priv = arg;
+	struct blob_param *modifier = &priv->modifier_param;
+	ssize_t len;
+
+	if (priv->busy)
+		return -EBUSY;
+
+	if (!strncmp(modifier->value, "kernel:evm", 10))
+		priv->access = KERNEL_EVM;
+	else if (!strncmp(modifier->value, "kernel:", 7))
+		priv->access = KERNEL;
+	else if (!strncmp(modifier->value, "user:", 5))
+		priv->access = USERSPACE;
+
+	len = strlen(modifier->value);
+	if (len > sizeof(priv->modifier->data))
+		return -EINVAL;
+
+	memset(priv->modifier->data, 0, sizeof(priv->modifier->data));
+	memcpy(priv->modifier->data, modifier->value, len);
+
+	return 0;
+}
+
+static int blob_gen_probe(struct device_d *dev)
+{
+	struct device_node *dev_node;
+	struct device_d *jrdev;
+	struct blob_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->busy = false;
+
+	dev->priv = priv;
+
+	dev_node = of_find_compatible_node(NULL, NULL, "fsl,sec-v4.0-job-ring");
+	if (!dev_node) {
+		dev_node = of_find_compatible_node(NULL, NULL, "fsl,sec4.0-job-ring");
+		if (!dev_node)
+			return -ENODEV;
+	}
+
+	jrdev = of_find_device_by_node(dev_node);
+	if (!jrdev)
+		return -ENODEV;
+
+	priv->jrdev = jrdev;
+
+	priv->payload = dma_alloc_coherent(sizeof(*priv->payload),
+					   DMA_ADDRESS_BROKEN);
+	if (!priv->payload) {
+		dev_err(dev, "unable to allocate payload\n");
+		return -ENOMEM;
+	}
+	priv->modifier = dma_alloc_coherent(sizeof(*priv->modifier),
+					    DMA_ADDRESS_BROKEN);
+	if (!priv->modifier) {
+		dev_err(dev, "unable to allocate modifier\n");
+		ret = -ENOMEM;
+		goto out_payload;
+	}
+
+	priv->red_blob = dma_alloc_coherent(sizeof(*priv->red_blob),
+					    DMA_ADDRESS_BROKEN);
+	if (!priv->red_blob) {
+		dev_err(dev, "unable to allocate red_blob\n");
+		ret = -ENOMEM;
+		goto out_modifier;
+	}
+
+	priv->desc = dma_alloc_coherent(sizeof(*priv->desc) * 64, DMA_ADDRESS_BROKEN);
+	if (!priv->desc) {
+		dev_err(dev, "unable to allocate desc\n");
+		ret = -ENOMEM;
+		goto out_blob;
+	}
+
+	strcpy(priv->dev.name, "blob");
+	priv->dev.parent = dev;
+	register_device(&priv->dev);
+
+	priv->modifier_param.param = dev_add_param_string(&(priv->dev), "modifier",
+							  blob_gen_modifier_set,
+							  NULL,
+							  &priv->modifier_param.value,
+							  priv);
+	if (IS_ERR(priv->modifier_param.param)) {
+		ret = PTR_ERR(&priv->modifier_param.param);
+		goto out_desc;
+	}
+
+	priv->payload_param.param = dev_add_param_string(&(priv->dev), "payload",
+							 blob_gen_payload_set,
+							 blob_gen_payload_get,
+							 &priv->payload_param.value,
+							 priv);
+	if (IS_ERR(priv->payload_param.param)) {
+		ret = PTR_ERR(&priv->payload_param.param);
+		goto out_desc;
+	}
+
+	priv->blob_param.param = dev_add_param_string(&(priv->dev), "blob",
+						      blob_gen_blob_set,
+						      blob_gen_blob_get,
+						      &priv->blob_param.value,
+						      priv);
+	if (IS_ERR(priv->blob_param.param)) {
+		ret = PTR_ERR(&priv->blob_param.param);
+		goto out_desc;
+	}
+
+	return 0;
+
+out_desc:
+	dma_free_coherent(priv->desc, 0, sizeof(*priv->desc) * 64);
+out_blob:
+	dma_free_coherent(priv->red_blob, 0, sizeof(*priv->red_blob));
+out_modifier:
+	dma_free_coherent(priv->modifier, 0, sizeof(*priv->modifier));
+out_payload:
+	dma_free_coherent(priv->payload, 0, sizeof(*priv->payload));
+	return ret;
+}
+
+static struct of_device_id blob_gen_ids[] = {
+	{
+		.compatible = "caam_blob",
+	},
+	{},
+};
+
+static struct driver_d blob_gen_driver = {
+	.name = DRIVERNAME,
+	.of_compatible = DRV_OF_COMPAT(blob_gen_ids),
+	.probe = blob_gen_probe,
+};
+device_platform_driver(blob_gen_driver);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
