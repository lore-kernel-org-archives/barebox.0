Delivery-date: Mon, 05 Jan 2026 15:33:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldv-001YCY-0B
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 15:33:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcldu-0004ew-0g
	for lore@pengutronix.de; Mon, 05 Jan 2026 15:33:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mi8/TcNaIYFwT3Oy5bXotBCugum/Z4IM/mVQncFvyss=; b=agD62J8iVOjz+zI7MBcz2Lu2N0
	EFW1R2HNf0SPjfrJVO+lCzI12w3i5k6lpjmaWrUebjzOgCOoMHfIzjw7A7TUikAG0Z0EoTuBEKy20
	j+DHg8FK/D2MSFjP9XskI1CCfLWr35926SFOkBBUh90EXaoxLC+NAgGgbDKlwL1rTh2chYO/QrZub
	goo5jiZaWh0P3X/M9NB1AK9oAbAXIiBuBBwArU4HJSbMbizDLOAZA3Fqta+wnm0qF8gp5DeaM2BLq
	1w4KmSihrd3dPBsOQ0LYDSbLfbIgIDSPli+qXbRE4R3lRtiPNEfF5nKZkiam9Ms6ojJ2+cBW0dIPh
	kuy6y7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldS-0000000BXgi-1nIS;
	Mon, 05 Jan 2026 14:32:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcldL-0000000BXd8-2nQu
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 14:32:37 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vcldI-0004R0-7K; Mon, 05 Jan 2026 15:32:32 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 05 Jan 2026 15:32:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-rockchip-secure-boot-v1-2-eaf5053a7d7e@pengutronix.de>
References: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
In-Reply-To: <20260105-rockchip-secure-boot-v1-0-eaf5053a7d7e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_063235_863327_2EA907F6 
X-CRM114-Status: GOOD (  18.59  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 2/3] tee: drivers: add driver for Rockchip Secure Boot
 PTA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The OTP fuses for secure boot are only accessible from the secure world.
Therefore, burning the fuses has to be delegated to the Rockchip Secure
Boot PTA running in the secure world.

The alternative to burn the fuses while barebox is still in the secure
world prevents user interaction and costs a lot of flexibility.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/tee/optee/Kconfig              |   7 ++
 drivers/tee/optee/Makefile             |   1 +
 drivers/tee/optee/pta_rk_secure_boot.h |  48 ++++++++
 drivers/tee/optee/rksecure.c           | 196 +++++++++++++++++++++++++++++++++
 include/rk_secure_boot.h               |  21 ++++
 5 files changed, 273 insertions(+)

diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
index 805aba65edb7..fcaca29a5df7 100644
--- a/drivers/tee/optee/Kconfig
+++ b/drivers/tee/optee/Kconfig
@@ -40,6 +40,13 @@ config OPTEE_AVB_PERSISTENT_VALUES
 	  pairs. AVB itself is not implemented in barebox, but enabling this option
 	  allows barebox to use the AVB persistent value store.
 
+config OPTEE_RKSECURE
+	bool "Rockchip Secure Boot PTA support"
+	depends on OPTEE
+	help
+	  Enable this option to use the Rockchip Secure Boot PTA to read or
+	  write the secure boot OTP fuses of an rk3588 SoC.
+
 endif
 
 config OF_FIXUP_OPTEE
diff --git a/drivers/tee/optee/Makefile b/drivers/tee/optee/Makefile
index 1fbeb39fb8ba..e89edc876d6f 100644
--- a/drivers/tee/optee/Makefile
+++ b/drivers/tee/optee/Makefile
@@ -8,3 +8,4 @@ optee-objs += device.o
 optee-objs += smc_abi.o
 obj-$(CONFIG_MCI_MMC_RPMB) += rpmb.o
 obj-$(CONFIG_OPTEE_AVB_PERSISTENT_VALUES) += avb.o
+obj-$(CONFIG_OPTEE_RKSECURE) += rksecure.o
diff --git a/drivers/tee/optee/pta_rk_secure_boot.h b/drivers/tee/optee/pta_rk_secure_boot.h
new file mode 100644
index 000000000000..13fa59d9908a
--- /dev/null
+++ b/drivers/tee/optee/pta_rk_secure_boot.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: BSD-2-Clause */
+/*
+ * Copyright (C) 2025, Pengutronix, Michael Tretter <entwicklung@pengutronix.de>
+ */
+
+#ifndef __PTA_RK_SECURE_BOOT_H
+#define __PTA_RK_SECURE_BOOT_H
+
+#include <types.h>
+
+#define PTA_RK_SECURE_BOOT_UUID \
+	UUID_INIT(0x5cfa57f6, 0x1a4c, 0x407f, \
+		  0x94, 0xa7, 0xa5, 0x6c, 0x8c, 0x47, 0x01, 0x9d)
+
+struct pta_rk_secure_boot_hash {
+	/* sha256 has 256 bit */
+	uint8_t value[32];
+};
+
+struct pta_rk_secure_boot_info {
+	uint8_t enabled;
+	uint8_t simulation;
+	struct pta_rk_secure_boot_hash hash;
+};
+
+/*
+ * PTA_RK_SECURE_BOOT_GET_INFO - Get secure boot status info
+ *
+ * [out]    memref[0]   buffer memory reference containing a struct
+ *                      pta_rk_secure_boot_info
+ */
+#define PTA_RK_SECURE_BOOT_GET_INFO		0x0
+
+/*
+ * PTA_RK_SECURE_BOOT_BURN_HASH - Burn the RSA key hash to fuses
+ *
+ * [in]    memref[0]   buffer memory reference containing a struct
+ *                     pta_rk_secure_boot_hash
+ * [in]    value[1].a  bit length of signing key
+ */
+#define PTA_RK_SECURE_BOOT_BURN_HASH		0x1
+
+/*
+ * PTA_RK_SECURE_BOOT_LOCKDOWN_DEVICE - Lockdown the device with secure boot
+ */
+#define PTA_RK_SECURE_BOOT_LOCKDOWN_DEVICE	0x2
+
+#endif /* __PTA_ROCKCHIP_OTP_H */
diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
new file mode 100644
index 000000000000..6bc9a61571c2
--- /dev/null
+++ b/drivers/tee/optee/rksecure.c
@@ -0,0 +1,196 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#include <linux/tee_drv.h>
+#include <linux/uuid.h>
+#include <uapi/linux/tee.h>
+
+#include <rk_secure_boot.h>
+
+#include "optee_private.h"
+#include "pta_rk_secure_boot.h"
+
+const uuid_t ta_uuid = PTA_RK_SECURE_BOOT_UUID;
+
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	return ver->impl_id == TEE_IMPL_ID_OPTEE ? 1 : 0;
+}
+
+static int rk_secure_open_session(struct tee_context *ctx, __u32 *session)
+{
+	struct tee_ioctl_open_session_arg sess_arg = {};
+	int res = 0;
+
+	export_uuid(sess_arg.uuid, &ta_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	sess_arg.num_params = 0;
+
+	res = tee_client_open_session(ctx, &sess_arg, NULL);
+	if (res < 0)
+		return res;
+	switch (sess_arg.ret) {
+	case TEEC_SUCCESS:
+		res = 0;
+		break;
+	case TEEC_ERROR_ITEM_NOT_FOUND:
+		pr_err("cannot find TA %pU\n", &sess_arg.uuid);
+		return -ENOENT;
+	default:
+		pr_err("TA %pU: error 0x%x\n", &sess_arg.uuid, sess_arg.ret);
+		return -EINVAL;
+	}
+
+	*session = sess_arg.session;
+	return res;
+}
+
+int rk_secure_boot_get_info(struct rk_secure_boot_info *out)
+{
+	struct tee_context *ctx = NULL;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[1];
+	struct tee_shm *info_shm;
+	struct pta_rk_secure_boot_info *info;
+	__u32 session = 0;
+	int res = 0;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	res = rk_secure_open_session(ctx, &session);
+	if (res < 0)
+		goto out_ctx;
+
+	info_shm = tee_shm_alloc_kernel_buf(ctx, sizeof(*info));
+	if (IS_ERR(info_shm)) {
+		res = -ENOMEM;
+		goto close_session;
+	}
+	info = info_shm->kaddr;
+
+	memset(param, 0, sizeof(param));
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[0].u.memref.shm = info_shm;
+	param[0].u.memref.size = sizeof(*info);
+
+	inv_arg.func = PTA_RK_SECURE_BOOT_GET_INFO;
+	inv_arg.session = session;
+	inv_arg.num_params = ARRAY_SIZE(param);
+
+	res = tee_client_invoke_func(ctx, &inv_arg, param);
+	if (res)
+		goto out;
+	if (inv_arg.ret) {
+		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		res = -EIO;
+	}
+
+	memcpy(out->hash, info->hash.value, sizeof(out->hash));
+	out->lockdown = info->enabled;
+	out->simulation = info->simulation;
+
+out:
+	tee_shm_free(info_shm);
+close_session:
+	tee_client_close_session(ctx, session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return res;
+}
+
+int rk_secure_boot_burn_hash(const u8 *hash, u32 key_size_bits)
+{
+	struct tee_context *ctx = NULL;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[2];
+	struct tee_shm *shm_hash;
+	struct pta_rk_secure_boot_hash *pta_hash;
+	__u32 session = 0;
+	int res = 0;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	res = rk_secure_open_session(ctx, &session);
+	if (res < 0)
+		goto out_ctx;
+
+	shm_hash = tee_shm_alloc_kernel_buf(ctx, sizeof(*pta_hash));
+	if (IS_ERR(shm_hash)) {
+		res = -ENOMEM;
+		goto close_session;
+	}
+	pta_hash = shm_hash->kaddr;
+
+	memcpy(pta_hash->value, hash, sizeof(pta_hash->value));
+
+	memset(param, 0, sizeof(param));
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[0].u.memref.shm = shm_hash;
+	param[0].u.memref.size = sizeof(*pta_hash);
+
+	param[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[1].u.value.a = key_size_bits;
+
+	inv_arg.func = PTA_RK_SECURE_BOOT_BURN_HASH;
+	inv_arg.session = session;
+	inv_arg.num_params = ARRAY_SIZE(param);
+
+	res = tee_client_invoke_func(ctx, &inv_arg, param);
+	if (res)
+		goto out;
+	if (inv_arg.ret) {
+		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		res = -EIO;
+	}
+
+out:
+	tee_shm_free(shm_hash);
+close_session:
+	tee_client_close_session(ctx, session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return res;
+}
+
+int rk_secure_boot_lockdown_device(void)
+{
+	struct tee_context *ctx = NULL;
+	struct tee_ioctl_invoke_arg inv_arg;
+	__u32 session = 0;
+	int res = 0;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	res = rk_secure_open_session(ctx, &session);
+	if (res < 0)
+		goto out_ctx;
+
+	inv_arg.func = PTA_RK_SECURE_BOOT_LOCKDOWN_DEVICE;
+	inv_arg.session = session;
+	inv_arg.num_params = 0;
+
+	res = tee_client_invoke_func(ctx, &inv_arg, NULL);
+	if (res)
+		goto close_session;
+	if (inv_arg.ret) {
+		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		res = -EIO;
+	}
+
+close_session:
+	tee_client_close_session(ctx, session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return res;
+}
diff --git a/include/rk_secure_boot.h b/include/rk_secure_boot.h
new file mode 100644
index 000000000000..6e247aa7eef3
--- /dev/null
+++ b/include/rk_secure_boot.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2025 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+
+#ifndef __RK_SECURE_BOOT_H
+#define __RK_SECURE_BOOT_H
+
+#include <linux/types.h>
+
+struct rk_secure_boot_info {
+	bool lockdown;
+	bool simulation;
+	u8 hash[32];
+};
+
+int rk_secure_boot_get_info(struct rk_secure_boot_info *info);
+int rk_secure_boot_burn_hash(const u8 *hash, u32 key_size_bits);
+int rk_secure_boot_lockdown_device(void);
+
+#endif /* __RK_SECURE_BOOT_H */

-- 
2.47.3



