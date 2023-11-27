Delivery-date: Mon, 27 Nov 2023 07:38:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VG3-00AdyL-1u
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VG3-0007Wf-5b
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uzTYvdoFyZNJx0yjARPTeaCY/6L7HgKSx8V5/j/ZWAg=; b=kTqiemARccBnL9/V38kVsvT8eA
	NNsXSqQXsTAHLDHwPDK/+utOcjDMAx6+dHGLLDJv7NnjQ11FSIgkUCbilGVZIJTXnAN1MlhdNSP69
	PzJG5S3clxjvCSXsMcXUrZ+AfDvZYsKD7UOFPdlGtfduDlWbrynDbMmaVgQhdPSXxSdkEWYwyCoqp
	KEbQyUUagxdPvX4aIVPEVM3v+lnMRWdP3FZoKjnVMES1QATbO0K19325gJH3eg4PWKOO0jfCnyFzI
	kgIBNX0wCeyvQwosKiEdaqZLqVYHnSUW8S21x49a2AqhW92z7ZGHGd67nV7Zer1c2tVNPdV4kHe3W
	wuHHzFvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VET-001Z2t-28;
	Mon, 27 Nov 2023 06:36:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Yww-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00071P-R8; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00Bsgo-Eb; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-1C;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:59 +0100
Message-Id: <20231127063559.2205776-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223617_140988_E3336D5A 
X-CRM114-Status: GOOD (  24.80  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 8/8] hw_random: add implementation for OP-TEE RNG pseudo TA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This driver provides support for OP-TEE based Random Number
Generator on ARM SoCs where hardware entropy sources are not
accessible to barebox running in the normal world.

It also makes for an easy target to test matching drivers with
devices via UUID and using the device enumeration pseudo TA.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/hw_random/Kconfig     |   9 +
 drivers/hw_random/Makefile    |   1 +
 drivers/hw_random/optee-rng.c | 302 ++++++++++++++++++++++++++++++++++
 3 files changed, 312 insertions(+)
 create mode 100644 drivers/hw_random/optee-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index bf86240623c4..6daff6490693 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -51,4 +51,13 @@ config HW_RANDOM_EFI
 	  This driver provides barebox support for the Random Number
 	  Generator Protocol offered by EFI firmware
 
+config HW_RANDOM_OPTEE
+	tristate "OP-TEE based Random Number Generator support"
+	depends on OPTEE
+	default HW_RANDOM
+	help
+	  This  driver provides support for OP-TEE based Random Number
+	  Generator on ARM SoCs where hardware entropy sources are not
+	  accessible to normal world (Linux).
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 9ea064340916..2c7d196f2f72 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
 obj-$(CONFIG_HW_RANDOM_VIRTIO) += virtio-rng.o
 obj-$(CONFIG_HW_RANDOM_STARFIVE) += starfive-vic-rng.o
 obj-$(CONFIG_HW_RANDOM_EFI) += efi-rng.o
+obj-$(CONFIG_HW_RANDOM_OPTEE) += optee-rng.o
diff --git a/drivers/hw_random/optee-rng.c b/drivers/hw_random/optee-rng.c
new file mode 100644
index 000000000000..d1d2904821cf
--- /dev/null
+++ b/drivers/hw_random/optee-rng.c
@@ -0,0 +1,302 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2018-2019 Linaro Ltd.
+ */
+
+#include <of.h>
+#include <linux/hw_random.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/uuid.h>
+
+#define DRIVER_NAME "optee-rng"
+
+#define TEE_ERROR_HEALTH_TEST_FAIL	0x00000001
+
+/*
+ * TA_CMD_GET_ENTROPY - Get Entropy from RNG
+ *
+ * param[0] (inout memref) - Entropy buffer memory reference
+ * param[1] unused
+ * param[2] unused
+ * param[3] unused
+ *
+ * Result:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ * TEE_ERROR_NOT_SUPPORTED - Requested entropy size greater than size of pool
+ * TEE_ERROR_HEALTH_TEST_FAIL - Continuous health testing failed
+ */
+#define TA_CMD_GET_ENTROPY		0x0
+
+/*
+ * TA_CMD_GET_RNG_INFO - Get RNG information
+ *
+ * param[0] (out value) - value.a: RNG data-rate in bytes per second
+ *                        value.b: Quality/Entropy per 1024 bit of data
+ * param[1] unused
+ * param[2] unused
+ * param[3] unused
+ *
+ * Result:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ */
+#define TA_CMD_GET_RNG_INFO		0x1
+
+#define MAX_ENTROPY_REQ_SZ		(4 * 1024)
+
+/**
+ * struct optee_rng_private - OP-TEE Random Number Generator private data
+ * @dev:		OP-TEE based RNG device.
+ * @ctx:		OP-TEE context handler.
+ * @session_id:		RNG TA session identifier.
+ * @data_rate:		RNG data rate.
+ * @entropy_shm_pool:	Memory pool shared with RNG device.
+ * @optee_rng:		OP-TEE RNG driver structure.
+ */
+struct optee_rng_private {
+	struct device *dev;
+	struct tee_context *ctx;
+	u32 session_id;
+	u32 data_rate;
+	struct tee_shm *entropy_shm_pool;
+	struct hwrng optee_rng;
+	u16 quality;
+	void (*bus_devinfo)(struct device *);
+};
+
+#define to_optee_rng_private(r) \
+		container_of(r, struct optee_rng_private, optee_rng)
+
+static size_t get_optee_rng_data(struct optee_rng_private *pvt_data,
+				 void *buf, size_t req_size)
+{
+	int ret = 0;
+	u8 *rng_data = NULL;
+	size_t rng_size = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	/* Invoke TA_CMD_GET_ENTROPY function of Trusted App */
+	inv_arg.func = TA_CMD_GET_ENTROPY;
+	inv_arg.session = pvt_data->session_id;
+	inv_arg.num_params = 4;
+
+	/* Fill invoke cmd params */
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT;
+	param[0].u.memref.shm = pvt_data->entropy_shm_pool;
+	param[0].u.memref.size = req_size;
+	param[0].u.memref.shm_offs = 0;
+
+	ret = tee_client_invoke_func(pvt_data->ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		dev_err(pvt_data->dev, "TA_CMD_GET_ENTROPY invoke err: %x\n",
+			inv_arg.ret);
+		return 0;
+	}
+
+	rng_data = tee_shm_get_va(pvt_data->entropy_shm_pool, 0);
+	if (IS_ERR(rng_data)) {
+		dev_err(pvt_data->dev, "tee_shm_get_va failed\n");
+		return 0;
+	}
+
+	rng_size = param[0].u.memref.size;
+	memcpy(buf, rng_data, rng_size);
+
+	return rng_size;
+}
+
+static int optee_rng_read(struct hwrng *rng, void *buf, size_t max, bool wait)
+{
+	struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
+	size_t read = 0, rng_size;
+	int timeout = 1;
+	u8 *data = buf;
+
+	if (max > MAX_ENTROPY_REQ_SZ)
+		max = MAX_ENTROPY_REQ_SZ;
+
+	while (read < max) {
+		rng_size = get_optee_rng_data(pvt_data, data, (max - read));
+
+		data += rng_size;
+		read += rng_size;
+
+		if (wait && pvt_data->data_rate) {
+			if ((timeout-- == 0) || (read == max))
+				return read;
+		} else {
+			return read;
+		}
+	}
+
+	return read;
+}
+
+static int optee_rng_init(struct hwrng *rng)
+{
+	struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
+	struct tee_shm *entropy_shm_pool = NULL;
+
+	entropy_shm_pool = tee_shm_alloc_kernel_buf(pvt_data->ctx,
+						    MAX_ENTROPY_REQ_SZ);
+	if (IS_ERR(entropy_shm_pool)) {
+		dev_err(pvt_data->dev, "tee_shm_alloc_kernel_buf failed\n");
+		return PTR_ERR(entropy_shm_pool);
+	}
+
+	pvt_data->entropy_shm_pool = entropy_shm_pool;
+
+	return 0;
+}
+
+static struct optee_rng_private pvt_data = {
+	.optee_rng = {
+		.name		= DRIVER_NAME,
+		.init		= optee_rng_init,
+		.read		= optee_rng_read,
+	}
+};
+
+static int get_optee_rng_info(struct device *dev)
+{
+	int ret = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	/* Invoke TA_CMD_GET_RNG_INFO function of Trusted App */
+	inv_arg.func = TA_CMD_GET_RNG_INFO;
+	inv_arg.session = pvt_data.session_id;
+	inv_arg.num_params = 4;
+
+	/* Fill invoke cmd params */
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
+
+	ret = tee_client_invoke_func(pvt_data.ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		dev_err(dev, "TA_CMD_GET_RNG_INFO invoke err: %x\n",
+			inv_arg.ret);
+		return -EINVAL;
+	}
+
+	pvt_data.data_rate = param[0].u.value.a;
+	pvt_data.quality = param[0].u.value.b;
+
+	return 0;
+}
+
+static void optee_rng_devinfo(struct device *dev)
+{
+	printf("Data rate: %u\n", pvt_data.data_rate);
+	printf("Quality: %u\n", pvt_data.quality);
+
+	if (pvt_data.bus_devinfo)
+		pvt_data.bus_devinfo(dev);
+}
+
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	if (ver->impl_id == TEE_IMPL_ID_OPTEE)
+		return 1;
+	else
+		return 0;
+}
+
+static int optee_rng_probe(struct device *dev)
+{
+	struct tee_client_device *rng_device = to_tee_client_device(dev);
+	int ret = 0, err = -ENODEV;
+	struct tee_ioctl_open_session_arg sess_arg;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+
+	/* Open context with TEE driver */
+	pvt_data.ctx = tee_client_open_context(NULL, optee_ctx_match, NULL,
+					       NULL);
+	if (IS_ERR(pvt_data.ctx))
+		return -ENODEV;
+
+	/* Open session with hwrng Trusted App */
+	export_uuid(sess_arg.uuid, &rng_device->id.uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	sess_arg.num_params = 0;
+
+	ret = tee_client_open_session(pvt_data.ctx, &sess_arg, NULL);
+	if ((ret < 0) || (sess_arg.ret != 0)) {
+		dev_err(dev, "tee_client_open_session failed, err: %x\n",
+			sess_arg.ret);
+		err = -EINVAL;
+		goto out_ctx;
+	}
+	pvt_data.session_id = sess_arg.session;
+
+	err = get_optee_rng_info(dev);
+	if (err)
+		goto out_sess;
+
+	err = hwrng_register(dev, &pvt_data.optee_rng);
+	if (err) {
+		dev_err(dev, "hwrng registration failed (%d)\n", err);
+		goto out_sess;
+	}
+
+	pvt_data.dev = dev;
+	pvt_data.bus_devinfo = dev->info;
+	dev->info = optee_rng_devinfo;
+
+	return 0;
+
+out_sess:
+	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
+out_ctx:
+	tee_client_close_context(pvt_data.ctx);
+
+	return err;
+}
+
+static void optee_rng_remove(struct device *dev)
+{
+	hwrng_unregister(&pvt_data.optee_rng);
+
+	tee_shm_free(pvt_data.entropy_shm_pool);
+
+	tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
+	tee_client_close_context(pvt_data.ctx);
+}
+
+static const struct tee_client_device_id optee_rng_id_table[] = {
+	{UUID_INIT(0xab7a617c, 0xb8e7, 0x4d8f,
+		   0x83, 0x01, 0xd0, 0x9b, 0x61, 0x03, 0x6b, 0x64)},
+	{}
+};
+
+MODULE_DEVICE_TABLE(tee, optee_rng_id_table);
+
+static struct tee_client_driver optee_rng_driver = {
+	.id_table	= optee_rng_id_table,
+	.driver		= {
+		.name		= DRIVER_NAME,
+		.bus		= &tee_bus_type,
+		.probe		= optee_rng_probe,
+		.remove		= optee_rng_remove,
+	},
+};
+
+static int __init optee_rng_mod_init(void)
+{
+	return driver_register(&optee_rng_driver.driver);
+}
+device_initcall(optee_rng_mod_init);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Sumit Garg <sumit.garg@linaro.org>");
+MODULE_DESCRIPTION("OP-TEE based random number generator driver");
-- 
2.39.2



