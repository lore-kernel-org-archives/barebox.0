Delivery-date: Mon, 27 Nov 2023 07:42:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJq-00AeEt-25
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:42:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJp-0008MX-SM
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:42:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lv0O5tiXXUnebMSYXG5+u0n0i/5qn5xbSi5HbDK8ITQ=; b=qV46FyCNR4YHBARj3E993sVCLN
	9DRMkjDCNEpHax+RRU2CeElYsf6GE0S7RjGdaP6Az76dbpCmmUy1lRkWDPaBvxxG8axlbxiU9MQ95
	GG0iHtdZ0X3uDBTupEvC3ckSJkZUwvEkMyO/tT1eUNMCLstJWPIZ2or1HG8elnyycju2KQ1gXScai
	W/MDy29r8CnKiTWDpRn/RHH2BebkHu54nRdfUiyo/9dg6PKHblItERjmd3SHsKFcazY9ttQg+5t3W
	7CoXTRQWUZZIMcbT05ymqAxGOT8QPV9qmLhxdiRDkAllz/S9tw/5mB0jfWCiq1b1bBOgtnoxFz5cf
	5vRtezIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIS-001aBE-19;
	Mon, 27 Nov 2023 06:40:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIL-001a7f-0f
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIK-0007xm-35; Mon, 27 Nov 2023 07:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00Bshe-Ld; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-1t;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:40:31 +0100
Message-Id: <20231127064034.2206788-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224037_731127_1C61546B 
X-CRM114-Status: GOOD (  33.39  )
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
Subject: [PATCH 3/6] nvmem: bsec: add support for STM32 bsec pseudo TA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While OP-TEE on STM32MP15 still implements the old SMC based API
to access the OTP, on STM32MP13, communication with the pseudo TA
is mandatory. Therefore add a driver that probes for OP-TEE and
talks to it to read and write the OTP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig               |   6 +
 drivers/nvmem/Makefile              |   1 +
 drivers/nvmem/bsec.c                | 133 +++++++++++--
 drivers/nvmem/stm32-bsec-optee-ta.c | 298 ++++++++++++++++++++++++++++
 drivers/nvmem/stm32-bsec-optee-ta.h |  85 ++++++++
 5 files changed, 502 insertions(+), 21 deletions(-)
 create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.c
 create mode 100644 drivers/nvmem/stm32-bsec-optee-ta.h

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 807344305d78..255198b2ad81 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -90,6 +90,12 @@ config STM32_BSEC_WRITE
 	    mw -l -d /dev/stm32-bsec 0x000000e4+4 0x78563412
 	    mw -l -d /dev/stm32-bsec 0x000000e8+4 0x0000bc9a
 
+config STM32_BSEC_OPTEE_TA
+	def_bool STM32_BSEC && OPTEE
+	help
+	  Say y here to enable the accesses to STM32MP SoC OTPs by the OP-TEE
+	  trusted application STM32MP BSEC.
+
 config KVX_OTP_NV
 	tristate "kalray KVX OTP Non volatile regs Support"
 	depends on KVX
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 22f8e8634239..31db05e5a71c 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -23,6 +23,7 @@ nvmem_eeprom_93xx46-y		:= eeprom_93xx46.o
 
 obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
 nvmem_bsec-y			:= bsec.o
+nvmem_bsec-$(CONFIG_STM32_BSEC_OPTEE_TA) += stm32-bsec-optee-ta.o
 
 obj-$(CONFIG_KVX_OTP_NV)	+= nvmem-kvx-otp-nv.o
 nvmem-kvx-otp-nv-y		:= kvx-otp-nv.o
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 7f24063b9ed6..889f14428d59 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -18,24 +18,28 @@
 #include <machine_id.h>
 #include <linux/nvmem-provider.h>
 
+#include "stm32-bsec-optee-ta.h"
+
 #define BSEC_OTP_SERIAL	13
 
 struct bsec_priv {
 	struct device dev;
-	u32 svc_id;
 	struct regmap_config map_config;
 	int permanent_write_enable;
+	u8 lower;
+	struct tee_context *ctx;
 };
 
 struct stm32_bsec_data {
-	unsigned long svc_id;
-	int num_regs;
+	size_t size;
+	u8 lower;
+	bool ta;
 };
 
-static int bsec_smc(struct bsec_priv *priv, enum bsec_op op, u32 field,
+static int bsec_smc(enum bsec_op op, u32 field,
 		    unsigned data2, unsigned *val)
 {
-	enum bsec_smc ret = stm32mp_smc(priv->svc_id, op, field / 4, data2, val);
+	enum bsec_smc ret = stm32mp_smc(STM32_SMC_BSEC, op, field / 4, data2, val);
 	switch(ret)
 	{
 	case BSEC_SMC_OK:
@@ -58,7 +62,7 @@ static int bsec_smc(struct bsec_priv *priv, enum bsec_op op, u32 field,
 
 static int stm32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
 {
-	return bsec_smc(ctx, BSEC_SMC_READ_SHADOW, reg, 0, val);
+	return bsec_smc(BSEC_SMC_READ_SHADOW, reg, 0, val);
 }
 
 static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
@@ -66,9 +70,9 @@ static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
 	struct bsec_priv *priv = ctx;
 
 	if (priv->permanent_write_enable)
-		return bsec_smc(ctx, BSEC_SMC_PROG_OTP, reg, val, NULL);
+		return bsec_smc(BSEC_SMC_PROG_OTP, reg, val, NULL);
 	else
-		return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
+		return bsec_smc(BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
 }
 
 static struct regmap_bus stm32_bsec_regmap_bus = {
@@ -94,13 +98,17 @@ static int stm32_bsec_read_mac(struct bsec_priv *priv, int offset, u8 *mac)
 	u32 val[2];
 	int ret;
 
-	/* Some TF-A does not copy all of OTP into shadow registers, so make
-	 * sure we read the _real_ OTP bits here.
-	 */
-	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4, 0, &val[0]);
-	if (ret)
-		return ret;
-	ret = bsec_smc(priv, BSEC_SMC_READ_OTP, offset * 4 + 4, 0, &val[1]);
+	if (priv->ctx) {
+		ret = stm32_bsec_optee_ta_read(priv->ctx, offset * 4, val, sizeof(val));
+	} else {
+		/* Some TF-A does not copy all of OTP into shadow registers, so make
+		 * sure we read the _real_ OTP bits here.
+		 */
+		ret = bsec_smc(BSEC_SMC_READ_OTP, offset * 4, 0, &val[0]);
+		if (!ret)
+			ret = bsec_smc(BSEC_SMC_READ_OTP, offset * 4 + 4, 0, &val[1]);
+	}
+
 	if (ret)
 		return ret;
 
@@ -141,8 +149,56 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv, struct device *dev,
 	of_eth_register_ethaddr(rnode, mac);
 }
 
+static int stm32_bsec_pta_read(void *context, unsigned int offset, unsigned int *val)
+{
+	struct bsec_priv *priv = context;
+
+	return stm32_bsec_optee_ta_read(priv->ctx, offset, val, sizeof(val));
+}
+
+static int stm32_bsec_pta_write(void *context, unsigned int offset, unsigned int val)
+{
+	struct bsec_priv *priv = context;
+
+	if (!priv->permanent_write_enable)
+		return -EACCES;
+
+	return stm32_bsec_optee_ta_write(priv->ctx, priv->lower, offset, &val, sizeof(val));
+}
+
+static struct regmap_bus stm32_bsec_optee_regmap_bus = {
+	.reg_write = stm32_bsec_pta_write,
+	.reg_read = stm32_bsec_pta_read,
+};
+
+static bool stm32_bsec_smc_check(void)
+{
+	u32 val;
+	int ret;
+
+	/* check that the OP-TEE support the BSEC SMC (legacy mode) */
+	ret = bsec_smc(BSEC_SMC_READ_SHADOW, 0, 0, &val);
+
+	return !ret;
+}
+
+static bool optee_presence_check(void)
+{
+	struct device_node *np;
+	bool tee_detected = false;
+
+	/* check that the OP-TEE node is present and available. */
+	np = of_find_compatible_node(NULL, NULL, "linaro,optee-tz");
+	if (np && of_device_is_available(np))
+		tee_detected = true;
+	of_node_put(np);
+
+	return tee_detected;
+}
+
 static int stm32_bsec_probe(struct device *dev)
 {
+	const struct regmap_bus *regmap_bus;
 	struct regmap *map;
 	struct bsec_priv *priv;
 	int ret = 0;
@@ -155,8 +211,6 @@ static int stm32_bsec_probe(struct device *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
-	priv->svc_id = data->svc_id;
-
 	dev_set_name(&priv->dev, "bsec");
 	priv->dev.parent = dev;
 	register_device(&priv->dev);
@@ -164,9 +218,28 @@ static int stm32_bsec_probe(struct device *dev)
 	priv->map_config.reg_bits = 32;
 	priv->map_config.val_bits = 32;
 	priv->map_config.reg_stride = 4;
-	priv->map_config.max_register = data->num_regs;
+	priv->map_config.max_register = (data->size / 4) - 1;
 
-	map = regmap_init(dev, &stm32_bsec_regmap_bus, priv, &priv->map_config);
+	priv->lower = data->lower;
+
+	if (data->ta || optee_presence_check()) {
+		ret = stm32_bsec_optee_ta_open(&priv->ctx);
+		if (ret) {
+			/* wait for OP-TEE client driver to be up and ready */
+			if (ret == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
+			/* BSEC PTA is required or SMC not supported */
+			if (data->ta || !stm32_bsec_smc_check())
+				return ret;
+		}
+	}
+
+	if (priv->ctx)
+		regmap_bus = &stm32_bsec_optee_regmap_bus;
+	else
+		regmap_bus = &stm32_bsec_regmap_bus;
+
+	map = regmap_init(dev, regmap_bus, priv, &priv->map_config);
 	if (IS_ERR(map))
 		return PTR_ERR(map);
 
@@ -184,16 +257,34 @@ static int stm32_bsec_probe(struct device *dev)
 
 	stm32_bsec_init_dt(priv, dev, map);
 
+	dev_dbg(dev, "using %s API\n", priv->ctx ? "OP-TEE" : "SiP");
+
 	return 0;
 }
 
+/*
+ * STM32MP15/13 BSEC OTP regions: 4096 OTP bits (with 3072 effective bits)
+ * => 96 x 32-bits data words
+ * - Lower: 1K bits, 2:1 redundancy, incremental bit programming
+ *   => 32 (x 32-bits) lower shadow registers = words 0 to 31
+ * - Upper: 2K bits, ECC protection, word programming only
+ *   => 64 (x 32-bits) = words 32 to 95
+ */
 static struct stm32_bsec_data stm32mp15_bsec_data = {
-	.num_regs = 95 * 4,
-	.svc_id = STM32_SMC_BSEC,
+	.size = 384,
+	.lower = 32,
+	.ta = false,
+};
+
+static const struct stm32_bsec_data stm32mp13_bsec_data = {
+	.size = 384,
+	.lower = 32,
+	.ta = true,
 };
 
 static __maybe_unused struct of_device_id stm32_bsec_dt_ids[] = {
 	{ .compatible = "st,stm32mp15-bsec", .data = &stm32mp15_bsec_data },
+	{ .compatible = "st,stm32mp13-bsec", .data = &stm32mp13_bsec_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, stm32_bsec_dt_ids);
diff --git a/drivers/nvmem/stm32-bsec-optee-ta.c b/drivers/nvmem/stm32-bsec-optee-ta.c
new file mode 100644
index 000000000000..f89ce791dd12
--- /dev/null
+++ b/drivers/nvmem/stm32-bsec-optee-ta.c
@@ -0,0 +1,298 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * OP-TEE STM32MP BSEC PTA interface, used by STM32 ROMEM driver
+ *
+ * Copyright (C) 2022, STMicroelectronics - All Rights Reserved
+ */
+
+#include <linux/tee_drv.h>
+
+#include "stm32-bsec-optee-ta.h"
+
+/*
+ * Read OTP memory
+ *
+ * [in]		value[0].a		OTP start offset in byte
+ * [in]		value[0].b		Access type (0:shadow, 1:fuse, 2:lock)
+ * [out]	memref[1].buffer	Output buffer to store read values
+ * [out]	memref[1].size		Size of OTP to be read
+ *
+ * Return codes:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ * TEE_ERROR_ACCESS_DENIED - OTP not accessible by caller
+ */
+#define PTA_BSEC_READ_MEM		0x0
+
+/*
+ * Write OTP memory
+ *
+ * [in]		value[0].a		OTP start offset in byte
+ * [in]		value[0].b		Access type (0:shadow, 1:fuse, 2:lock)
+ * [in]		memref[1].buffer	Input buffer to read values
+ * [in]		memref[1].size		Size of OTP to be written
+ *
+ * Return codes:
+ * TEE_SUCCESS - Invoke command success
+ * TEE_ERROR_BAD_PARAMETERS - Incorrect input param
+ * TEE_ERROR_ACCESS_DENIED - OTP not accessible by caller
+ */
+#define PTA_BSEC_WRITE_MEM		0x1
+
+/* value of PTA_BSEC access type = value[in] b */
+#define SHADOW_ACCESS	0
+#define FUSE_ACCESS	1
+#define LOCK_ACCESS	2
+
+/* Bitfield definition for LOCK status */
+#define LOCK_PERM			BIT(30)
+
+/* OP-TEE STM32MP BSEC TA UUID */
+static const uuid_t stm32mp_bsec_ta_uuid =
+	UUID_INIT(0x94cf71ad, 0x80e6, 0x40b5,
+		  0xa7, 0xc6, 0x3d, 0xc5, 0x01, 0xeb, 0x28, 0x03);
+
+/*
+ * Check whether this driver supports the BSEC TA in the TEE instance
+ * represented by the params (ver/data) to this function.
+ */
+static int stm32_bsec_optee_ta_match(struct tee_ioctl_version_data *ver,
+				     const void *data)
+{
+	/* Currently this driver only supports GP compliant, OP-TEE based TA */
+	if ((ver->impl_id == TEE_IMPL_ID_OPTEE) &&
+		(ver->gen_caps & TEE_GEN_CAP_GP))
+		return 1;
+	else
+		return 0;
+}
+
+/* Open a session to OP-TEE for STM32MP BSEC TA */
+static int stm32_bsec_ta_open_session(struct tee_context *ctx, u32 *id)
+{
+	struct tee_ioctl_open_session_arg sess_arg;
+	int rc;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+	export_uuid(sess_arg.uuid, &stm32mp_bsec_ta_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
+	sess_arg.num_params = 0;
+
+	rc = tee_client_open_session(ctx, &sess_arg, NULL);
+	if ((rc < 0) || (sess_arg.ret != 0)) {
+		pr_err("%s: tee_client_open_session failed err:%#x, ret:%#x\n",
+		       __func__, sess_arg.ret, rc);
+		if (!rc)
+			rc = -EINVAL;
+	} else {
+		*id = sess_arg.session;
+	}
+
+	return rc;
+}
+
+/* close a session to OP-TEE for STM32MP BSEC TA */
+static void stm32_bsec_ta_close_session(void *ctx, u32 id)
+{
+	tee_client_close_session(ctx, id);
+}
+
+/* stm32_bsec_optee_ta_open() - initialize the STM32MP BSEC TA */
+int stm32_bsec_optee_ta_open(struct tee_context **ctx)
+{
+	struct tee_context *tee_ctx;
+	u32 session_id;
+	int rc;
+
+	/* Open context with TEE driver */
+	tee_ctx = tee_client_open_context(NULL, stm32_bsec_optee_ta_match, NULL, NULL);
+	if (IS_ERR(tee_ctx)) {
+		rc = PTR_ERR(tee_ctx);
+		if (rc == -ENOENT)
+			return -EPROBE_DEFER;
+		pr_err("%s: tee_client_open_context failed (%d)\n", __func__, rc);
+
+		return rc;
+	}
+
+	/* Check STM32MP BSEC TA presence */
+	rc = stm32_bsec_ta_open_session(tee_ctx, &session_id);
+	if (rc) {
+		tee_client_close_context(tee_ctx);
+		return rc;
+	}
+
+	stm32_bsec_ta_close_session(tee_ctx, session_id);
+
+	*ctx = tee_ctx;
+
+	return 0;
+}
+
+/* stm32_bsec_optee_ta_open() - release the PTA STM32MP BSEC TA */
+void stm32_bsec_optee_ta_close(void *ctx)
+{
+	tee_client_close_context(ctx);
+}
+
+/* stm32_bsec_optee_ta_read() - nvmem read access using PTA client driver */
+int stm32_bsec_optee_ta_read(struct tee_context *ctx, unsigned int offset,
+			     void *buf, size_t bytes)
+{
+	struct tee_shm *shm;
+	struct tee_ioctl_invoke_arg arg;
+	struct tee_param param[2];
+	u8 *shm_buf;
+	u32 start, num_bytes;
+	int ret;
+	u32 session_id;
+
+	ret = stm32_bsec_ta_open_session(ctx, &session_id);
+	if (ret)
+		return ret;
+
+	memset(&arg, 0, sizeof(arg));
+	memset(&param, 0, sizeof(param));
+
+	arg.func = PTA_BSEC_READ_MEM;
+	arg.session = session_id;
+	arg.num_params = 2;
+
+	/* align access on 32bits */
+	start = ALIGN_DOWN(offset, 4);
+	num_bytes = round_up(offset + bytes - start, 4);
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[0].u.value.a = start;
+	param[0].u.value.b = SHADOW_ACCESS;
+
+	shm = tee_shm_alloc_kernel_buf(ctx, num_bytes);
+	if (IS_ERR(shm)) {
+		ret = PTR_ERR(shm);
+		goto out_tee_session;
+	}
+
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[1].u.memref.shm = shm;
+	param[1].u.memref.size = num_bytes;
+
+	ret = tee_client_invoke_func(ctx, &arg, param);
+	if (ret < 0 || arg.ret != 0) {
+		pr_err("TA_BSEC invoke failed TEE err:%#x, ret:%#x\n",
+			arg.ret, ret);
+		if (!ret)
+			ret = -EIO;
+	}
+	if (!ret) {
+		shm_buf = tee_shm_get_va(shm, 0);
+		if (IS_ERR(shm_buf)) {
+			ret = PTR_ERR(shm_buf);
+			pr_err("tee_shm_get_va failed for transmit (%d)\n", ret);
+		} else {
+			/* read data from 32 bits aligned buffer */
+			memcpy(buf, &shm_buf[offset % 4], bytes);
+		}
+	}
+
+	tee_shm_free(shm);
+
+out_tee_session:
+	stm32_bsec_ta_close_session(ctx, session_id);
+
+	return ret;
+}
+
+/* stm32_bsec_optee_ta_write() - nvmem write access using PTA client driver */
+int stm32_bsec_optee_ta_write(struct tee_context *ctx, unsigned int lower,
+			      unsigned int offset, void *buf, size_t bytes)
+{	struct tee_shm *shm;
+	struct tee_ioctl_invoke_arg arg;
+	struct tee_param param[2];
+	u8 *shm_buf;
+	int ret;
+	u32 session_id;
+
+	ret = stm32_bsec_ta_open_session(ctx, &session_id);
+	if (ret)
+		return ret;
+
+	/* Allow only writing complete 32-bits aligned words */
+	if ((bytes % 4) || (offset % 4))
+		return -EINVAL;
+
+	memset(&arg, 0, sizeof(arg));
+	memset(&param, 0, sizeof(param));
+
+	arg.func = PTA_BSEC_WRITE_MEM;
+	arg.session = session_id;
+	arg.num_params = 2;
+
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[0].u.value.a = offset;
+	param[0].u.value.b = FUSE_ACCESS;
+
+	shm = tee_shm_alloc_kernel_buf(ctx, bytes);
+	if (IS_ERR(shm)) {
+		ret = PTR_ERR(shm);
+		goto out_tee_session;
+	}
+
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[1].u.memref.shm = shm;
+	param[1].u.memref.size = bytes;
+
+	shm_buf = tee_shm_get_va(shm, 0);
+	if (IS_ERR(shm_buf)) {
+		ret = PTR_ERR(shm_buf);
+		pr_err("tee_shm_get_va failed for transmit (%d)\n", ret);
+		tee_shm_free(shm);
+
+		goto out_tee_session;
+	}
+
+	memcpy(shm_buf, buf, bytes);
+
+	ret = tee_client_invoke_func(ctx, &arg, param);
+	if (ret < 0 || arg.ret != 0) {
+		pr_err("TA_BSEC invoke failed TEE err:%#x, ret:%#x\n", arg.ret, ret);
+		if (!ret)
+			ret = -EIO;
+	}
+	pr_debug("Write OTPs %d to %zu, ret=%d\n", offset / 4, (offset + bytes) / 4, ret);
+
+	/* Lock the upper OTPs with ECC protection, word programming only */
+	if (!ret && ((offset + bytes) >= (lower * 4))) {
+		u32 start, nb_lock;
+		u32 *lock = (u32 *)shm_buf;
+		int i;
+
+		/*
+		 * don't lock the lower OTPs, no ECC protection and incremental
+		 * bit programming, a second write is allowed
+		 */
+		start = max_t(u32, offset, lower * 4);
+		nb_lock = (offset + bytes - start) / 4;
+
+		param[0].u.value.a = start;
+		param[0].u.value.b = LOCK_ACCESS;
+		param[1].u.memref.size = nb_lock * 4;
+
+		for (i = 0; i < nb_lock; i++)
+			lock[i] = LOCK_PERM;
+
+		ret = tee_client_invoke_func(ctx, &arg, param);
+		if (ret < 0 || arg.ret != 0) {
+			pr_err("TA_BSEC invoke failed TEE err:%#x, ret:%#x\n", arg.ret, ret);
+			if (!ret)
+				ret = -EIO;
+		}
+		pr_debug("Lock upper OTPs %d to %d, ret=%d\n",
+			 start / 4, start / 4 + nb_lock, ret);
+	}
+
+	tee_shm_free(shm);
+
+out_tee_session:
+	stm32_bsec_ta_close_session(ctx, session_id);
+
+	return ret;
+}
diff --git a/drivers/nvmem/stm32-bsec-optee-ta.h b/drivers/nvmem/stm32-bsec-optee-ta.h
new file mode 100644
index 000000000000..7180476c40a1
--- /dev/null
+++ b/drivers/nvmem/stm32-bsec-optee-ta.h
@@ -0,0 +1,85 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * OP-TEE STM32MP BSEC PTA interface, used by STM32 ROMEM driver
+ *
+ * Copyright (C) 2022, STMicroelectronics - All Rights Reserved
+ */
+
+#include <asm-generic/errno.h>
+#include <linux/types.h>
+
+struct tee_context;
+
+#if IS_ENABLED(CONFIG_STM32_BSEC_OPTEE_TA)
+/**
+ * stm32_bsec_optee_ta_open() - initialize the STM32 BSEC TA
+ * @ctx: the OP-TEE context on success
+ *
+ * Return:
+ *	On success, 0. On failure, -errno.
+ */
+int stm32_bsec_optee_ta_open(struct tee_context **ctx);
+
+/**
+ * stm32_bsec_optee_ta_close() - release the STM32 BSEC TA
+ * @ctx: the OP-TEE context
+ *
+ * This function used to clean the OP-TEE resources initialized in
+ * stm32_bsec_optee_ta_open(); it can be used as callback to
+ * devm_add_action_or_reset()
+ */
+void stm32_bsec_optee_ta_close(void *ctx);
+
+/**
+ * stm32_bsec_optee_ta_read() - nvmem read access using TA client driver
+ * @ctx: the OP-TEE context provided by stm32_bsec_optee_ta_open
+ * @offset: nvmem offset
+ * @buf: buffer to fill with nvem values
+ * @bytes: number of bytes to read
+ *
+ * Return:
+ *	On success, 0. On failure, -errno.
+ */
+int stm32_bsec_optee_ta_read(struct tee_context *ctx, unsigned int offset,
+			     void *buf, size_t bytes);
+
+/**
+ * stm32_bsec_optee_ta_write() - nvmem write access using TA client driver
+ * @ctx: the OP-TEE context provided by stm32_bsec_optee_ta_open
+ * @lower: number of lower OTP, not protected by ECC
+ * @offset: nvmem offset
+ * @buf: buffer with nvem values
+ * @bytes: number of bytes to write
+ *
+ * Return:
+ *	On success, 0. On failure, -errno.
+ */
+int stm32_bsec_optee_ta_write(struct tee_context *ctx, unsigned int lower,
+			      unsigned int offset, void *buf, size_t bytes);
+
+#else
+
+static inline int stm32_bsec_optee_ta_open(struct tee_context **ctx)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline void stm32_bsec_optee_ta_close(void *ctx)
+{
+}
+
+static inline int stm32_bsec_optee_ta_read(struct tee_context *ctx,
+					   unsigned int offset, void *buf,
+					   size_t bytes)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline int stm32_bsec_optee_ta_write(struct tee_context *ctx,
+					    unsigned int lower,
+					    unsigned int offset, void *buf,
+					    size_t bytes)
+{
+	return -EOPNOTSUPP;
+}
+#endif /* CONFIG_NVMEM_STM32_BSEC_OPTEE_TA */
-- 
2.39.2



