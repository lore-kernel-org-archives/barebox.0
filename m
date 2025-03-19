Delivery-date: Wed, 19 Mar 2025 16:45:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbI-001Vj5-2O
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:45:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbE-00047Z-Ul
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dUAqGHtpBzCxfdImtRQFc1Vs/iBliP6Nq16u6Z+W4tI=; b=WAjfpIV0TpGPOl89dw/uFFU0K1
	79pGq8KhGjHGhP1/JRzamyjOUGC+Xf96LSm3YvBayOnevd8RfOwRIELHOvJJTNEBX3yFaEgORohpv
	Bm2rljVbgggL7SKL2OkYgdP9V95Ar7E3L3u/SAwnF8RbxOL7yN3UIGhlbkACsX/MLAxoJV3gytVkm
	yf5MVhwHj1scOUjxdWJoEQof1F7QhjcpZ+a5SJMzW/AEhdjAduemkJbFhwGLKg4BZLVJjVgjRADlZ
	ZBsExqQaecmF/wUqDdERaqK+gDC+KVM4+0pylTjqO3TZRXmjPeTOSegQyIPx6gNEyyQXqz2U3hmYG
	Z6xDci4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvaj-00000009Qbm-0kEj;
	Wed, 19 Mar 2025 15:44:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNu-00000009ODy-2Fd9
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000z8-AU; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAk-1R;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2U;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-8-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=7471;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PYYPjYOQfvV0TciicZrYCo+ZlvwDeJbMtI19r2P8H3s=;
 b=8YKueONa4f3KYcg5XRSXof1ysdzKPioEMY1IC9K61h0k5cmL1QPv3bec1uLD/7hQxnjKB2ixh
 MR+69f48TvJC8ZDgX2vftgJJr6NIMs/v5UoNxOd+RuS4ShE1RBKkVsZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083110_751112_06BFB0B7 
X-CRM114-Status: GOOD (  20.87  )
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
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/10] tee: optee: implement AVB named persistent values
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Android Verified Boot (AVB) 2.0 spec. revision 1.1 introduces support
for named persistent values that must be tamper evident and allows AVB
to store arbitrary key-value pairs.

While AVB itself is not implemented in barebox. this patch allows
barebox to access the persistent value store. This is useful on its
own and can also be used to test the RPMB access in barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/Kconfig  |   9 +++
 drivers/tee/optee/Makefile |   1 +
 drivers/tee/optee/avb.c    | 189 +++++++++++++++++++++++++++++++++++++++++++++
 include/tee/avb.h          |   9 +++
 4 files changed, 208 insertions(+)

diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
index 045be3cca4..805aba65ed 100644
--- a/drivers/tee/optee/Kconfig
+++ b/drivers/tee/optee/Kconfig
@@ -31,6 +31,15 @@ config OPTEE_DEVFS
 	  but it's useful for compiling libteeclient + optee_tests for
 	  use inside barebox to verify proper operation of CONFIG_OPTEE.
 
+config OPTEE_AVB_PERSISTENT_VALUES
+	bool "Android Verified Boot (AVB) persistent values support"
+	depends on OPTEE
+	help
+	  AVB 2.0 spec. revision 1.1 introduces support for named persistent values
+	  that must be tamper evident and allows AVB to store arbitrary key-value
+	  pairs. AVB itself is not implemented in barebox, but enabling this option
+	  allows barebox to use the AVB persistent value store.
+
 endif
 
 config OF_FIXUP_OPTEE
diff --git a/drivers/tee/optee/Makefile b/drivers/tee/optee/Makefile
index f68352aa4e..1fbeb39fb8 100644
--- a/drivers/tee/optee/Makefile
+++ b/drivers/tee/optee/Makefile
@@ -7,3 +7,4 @@ optee-objs += rpc.o
 optee-objs += device.o
 optee-objs += smc_abi.o
 obj-$(CONFIG_MCI_MMC_RPMB) += rpmb.o
+obj-$(CONFIG_OPTEE_AVB_PERSISTENT_VALUES) += avb.o
diff --git a/drivers/tee/optee/avb.c b/drivers/tee/optee/avb.c
new file mode 100644
index 0000000000..0adbee6258
--- /dev/null
+++ b/drivers/tee/optee/avb.c
@@ -0,0 +1,189 @@
+#include <linux/types.h>
+#include <tee/avb.h>
+#include <linux/tee_drv.h>
+
+#include "optee_private.h"
+
+#define TA_AVB_UUID UUID_INIT(0x023f8f1a, 0x292a, 0x432b, \
+                      0x8f, 0xc4, 0xde, 0x84, 0x71, 0x35, 0x80, 0x67)
+#define TEE_PARAM_ATTR_TYPE_MEMREF_INOUT       7       /* input and output */
+#define TA_AVB_CMD_READ_PERSIST_VALUE     4
+#define TEE_PARAM_ATTR_TYPE_MEMREF_INPUT       5
+#define TA_AVB_CMD_WRITE_PERSIST_VALUE    5
+
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	if (ver->impl_id == TEE_IMPL_ID_OPTEE)
+		return 1;
+	else
+		return 0;
+}
+
+int avb_read_persistent_value(const char *name, size_t buffer_size,
+			      u8 *out_buffer, size_t *out_num_bytes_read)
+{
+	const uuid_t avb_uuid = TA_AVB_UUID;
+	int rc = 0;
+	struct tee_shm *shm_name;
+	struct tee_shm *shm_buf;
+	struct tee_param param[2];
+	size_t name_size = strlen(name) + 1;
+	struct tee_ioctl_open_session_arg sess_arg = {};
+	struct tee_context *ctx = NULL;
+	struct tee_ioctl_invoke_arg arg;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	export_uuid(sess_arg.uuid, &avb_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	sess_arg.num_params = 0;
+
+	rc = tee_client_open_session(ctx, &sess_arg, NULL);
+	if ((rc < 0) || (sess_arg.ret != TEEC_SUCCESS)) {
+		pr_debug("%s device enumeration pseudo TA not found\n", __func__);
+		rc = 0;
+		goto out_ctx;
+	}
+
+	shm_name = tee_shm_alloc_kernel_buf(ctx, name_size);
+	if (IS_ERR(shm_name)) {
+		rc = -ENOMEM;
+		goto close_session;
+	}
+
+	shm_buf = tee_shm_alloc_kernel_buf(ctx, buffer_size);
+	if (IS_ERR(shm_buf)) {
+		rc = -ENOMEM;
+		goto free_name;
+	}
+
+	memcpy(shm_name->kaddr, name, name_size);
+
+	memset(param, 0, sizeof(param));
+	param[0].attr = TEE_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[0].u.memref.shm = shm_name;
+	param[0].u.memref.size = name_size;
+	param[1].attr = TEE_PARAM_ATTR_TYPE_MEMREF_INOUT;
+	param[1].u.memref.shm = shm_buf;
+	param[1].u.memref.size = buffer_size;
+
+	arg.func = TA_AVB_CMD_READ_PERSIST_VALUE;
+	arg.session = sess_arg.session;
+	arg.num_params = 2;
+
+	rc = tee_client_invoke_func(ctx, &arg, param);
+	if (rc)
+		goto out;
+	switch (arg.ret) {
+	case TEEC_SUCCESS:
+		rc = 0;
+		break;
+	case TEEC_ERROR_ITEM_NOT_FOUND:
+		rc = -ENOENT;
+		break;
+	default:
+		rc = -EINVAL;
+		break;
+	}
+	if (rc)
+		goto out;
+
+	if (param[1].u.memref.size > buffer_size) {
+		rc = -EINVAL;
+		goto out;
+	}
+
+	*out_num_bytes_read = param[1].u.memref.size;
+
+	memcpy(out_buffer, shm_buf->kaddr, *out_num_bytes_read);
+
+out:
+	tee_shm_free(shm_buf);
+free_name:
+	tee_shm_free(shm_name);
+close_session:
+	tee_client_close_session(ctx, sess_arg.session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return rc;
+}
+
+int avb_write_persistent_value(const char *name, size_t value_size,
+			       const u8 *value)
+{
+	const uuid_t avb_uuid = TA_AVB_UUID;
+	int rc = 0;
+	struct tee_shm *shm_name;
+	struct tee_shm *shm_buf;
+	struct tee_param param[2];
+	struct tee_ioctl_open_session_arg sess_arg = {};
+	struct tee_context *ctx = NULL;
+	size_t name_size = strlen(name) + 1;
+	struct tee_ioctl_invoke_arg inv_arg;
+
+	if (!value_size)
+		return -EINVAL;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	export_uuid(sess_arg.uuid, &avb_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	sess_arg.num_params = 0;
+
+	rc = tee_client_open_session(ctx, &sess_arg, NULL);
+	if ((rc < 0) || (sess_arg.ret != TEEC_SUCCESS)) {
+		pr_err("%s AVB TA not found\n", __func__);
+		goto out_ctx;
+	}
+
+	shm_name = tee_shm_alloc_kernel_buf(ctx, name_size);
+	if (IS_ERR(shm_name)) {
+		rc = -ENOMEM;
+		goto close_session;
+	}
+
+	shm_buf = tee_shm_alloc_kernel_buf(ctx, value_size);
+	if (IS_ERR(shm_buf)) {
+		rc = -ENOMEM;
+		goto free_name;
+	}
+
+	memcpy(shm_name->kaddr, name, name_size);
+	memcpy(shm_buf->kaddr, value, value_size);
+
+	memset(param, 0, sizeof(param));
+	param[0].attr = TEE_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[0].u.memref.shm = shm_name;
+	param[0].u.memref.size = name_size;
+	param[1].attr = TEE_PARAM_ATTR_TYPE_MEMREF_INPUT;
+	param[1].u.memref.shm = shm_buf;
+	param[1].u.memref.size = value_size;
+
+	inv_arg.func = TA_AVB_CMD_WRITE_PERSIST_VALUE;
+	inv_arg.session = sess_arg.session;
+	inv_arg.num_params = 2;
+
+	rc = tee_client_invoke_func(ctx, &inv_arg, param);
+	if (rc)
+		goto out;
+	if (inv_arg.ret) {
+		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
+		rc = -EIO;
+	}
+
+out:
+	tee_shm_free(shm_buf);
+free_name:
+	tee_shm_free(shm_name);
+close_session:
+	tee_client_close_session(ctx, sess_arg.session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return rc;
+}
diff --git a/include/tee/avb.h b/include/tee/avb.h
new file mode 100644
index 0000000000..3873b5c59b
--- /dev/null
+++ b/include/tee/avb.h
@@ -0,0 +1,9 @@
+#ifndef TEE_AVB_H
+#define TEE_AVB_H
+
+int avb_write_persistent_value(const char *name, size_t value_size,
+			       const u8 *value);
+int avb_read_persistent_value(const char *name, size_t buffer_size,
+			      u8 *out_buffer, size_t *out_num_bytes_read);
+
+#endif /* TEE_AVB_H */

-- 
2.39.5



