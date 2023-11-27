Delivery-date: Mon, 27 Nov 2023 07:38:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VGW-00Ae0K-3C
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VGS-0007i2-B2
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qi5Q+hkd/tMQsLfGwWwfoWNLHjRLv6tU9L+d/ckHJew=; b=rhxq++80qU/W2GtVWe8TqEf/v1
	k/Oba1s1UroXZhw2WHJJMp83/fDitpyWB8PJy3zSw/jXpzzxBUn3+4a0Rn16InJiJF41FC5Zj3p2R
	pZP6O4EDtofGgnrBzx4JHJRipAgVIwk/lyVOc7fr+VoKa+dGrp4sUXjIwTNBgCSHvovpup/BJqnjE
	Nl+qs8HghOP9+Z6Lz7CwodH1MZo7mQutglQmdUsWEvQ4YveFe6WRNaCbtC8r3WErGnSRBZoJRzEpy
	HDo+d9No/ByanXYTY/5xBahsRkxta9aFNnkcLaCGp4UrGA3Rmkz4fiA5A4HgJNtgLQ0bIZRxrw1RT
	qb2tGP/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEW-001Z5b-1O;
	Mon, 27 Nov 2023 06:36:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Ywu-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-000715-Of; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00Bsgk-Bg; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-0l;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:57 +0100
Message-Id: <20231127063559.2205776-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 6/8] optee: add bidirectional communication support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

So far, barebox support for OP-TEE was restricted to loading it either
early in PBL or via bootm and to not step over it when allocating
memory. This was guarded behind CONFIG_HAVE_OPTEE.

This commit imports from Linux the driver behind CONFIG_OPTEE, which
brings actual bidirectional communication with OP-TEE in barebox.
This is useful as trusted applications running in OP-TEE can provide
various services to the normal world, like filtered OTP access, RNG
seeded from normally inaccessible entropy sources, firmware TPM and
management of resources like clocks, resets, power domains and voltage
regulators in the form of SCMI.

We already have SCMI support, but only via the SMC calling convention
for communication with TF-A. For integration with publicly available
STM32MP13 firmware, we need to do SCMI over OP-TEE and this is likewise
interesting for STM32MP1 trusted boot setups.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig                         |   5 +
 drivers/Kconfig                        |   1 +
 drivers/Makefile                       |   2 +-
 drivers/tee/Kconfig                    |  17 +
 drivers/tee/Makefile                   |   5 +
 drivers/tee/optee/Kconfig              |  20 +
 drivers/tee/optee/Makefile             |   8 +
 drivers/tee/optee/call.c               | 239 ++++++++
 drivers/tee/optee/core.c               |  68 +++
 drivers/tee/optee/device.c             | 174 ++++++
 drivers/tee/optee/{of.c => of_fixup.c} |   0
 drivers/tee/optee/optee_msg.h          | 295 ++++++++++
 drivers/tee/optee/optee_private.h      | 179 ++++++
 drivers/tee/optee/optee_smc.h          | 473 ++++++++++++++++
 drivers/tee/optee/rpc.c                |  16 +
 drivers/tee/optee/smc_abi.c            | 748 +++++++++++++++++++++++++
 drivers/tee/tee_core.c                 | 395 +++++++++++++
 drivers/tee/tee_private.h              |  46 ++
 drivers/tee/tee_shm.c                  | 206 +++++++
 include/linux/mod_devicetable.h        |  10 +
 include/linux/tee_drv.h                | 385 +++++++++++++
 include/uapi/linux/tee.h               | 407 ++++++++++++++
 22 files changed, 3698 insertions(+), 1 deletion(-)
 create mode 100644 drivers/tee/Kconfig
 create mode 100644 drivers/tee/Makefile
 create mode 100644 drivers/tee/optee/Kconfig
 create mode 100644 drivers/tee/optee/Makefile
 create mode 100644 drivers/tee/optee/call.c
 create mode 100644 drivers/tee/optee/core.c
 create mode 100644 drivers/tee/optee/device.c
 rename drivers/tee/optee/{of.c => of_fixup.c} (100%)
 create mode 100644 drivers/tee/optee/optee_msg.h
 create mode 100644 drivers/tee/optee/optee_private.h
 create mode 100644 drivers/tee/optee/optee_smc.h
 create mode 100644 drivers/tee/optee/rpc.c
 create mode 100644 drivers/tee/optee/smc_abi.c
 create mode 100644 drivers/tee/tee_core.c
 create mode 100644 drivers/tee/tee_private.h
 create mode 100644 drivers/tee/tee_shm.c
 create mode 100644 include/linux/tee_drv.h
 create mode 100644 include/uapi/linux/tee.h

diff --git a/common/Kconfig b/common/Kconfig
index 76b28ceaafe0..8bd8fa8df655 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1125,6 +1125,11 @@ menu "OP-TEE loading"
 
 config HAVE_OPTEE
 	bool
+	help
+	  This symbol is selected by configuration where barebox either
+	  starts OP-TEE or runs while OP-TEE is running. Actual
+	  bidirectional communication with OP-TEE is enabled via
+	  CONFIG_OPTEE.
 
 config OPTEE_SIZE
 	hex
diff --git a/drivers/Kconfig b/drivers/Kconfig
index d9c03205568e..b81ee38989e8 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -47,5 +47,6 @@ source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
 source "drivers/virtio/Kconfig"
 source "drivers/mailbox/Kconfig"
+source "drivers/tee/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 3f60e1b9c7fa..42a71f73c259 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -47,5 +47,5 @@ obj-y	+= ddr/
 obj-y	+= power/
 obj-$(CONFIG_SOUND) += sound/
 obj-y	+= virtio/
-obj-$(CONFIG_HAVE_OPTEE)	+= tee/optee/of.o
 obj-y	+= mailbox/
+obj-y	+= tee/
diff --git a/drivers/tee/Kconfig b/drivers/tee/Kconfig
new file mode 100644
index 000000000000..6644ebce49d5
--- /dev/null
+++ b/drivers/tee/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Generic Trusted Execution Environment Configuration
+menuconfig TEE
+	tristate "Trusted Execution Environment support"
+	select ARM_SMCCC
+	help
+	  This implements a generic interface towards a Trusted Execution
+	  Environment (TEE). A TEE is a trusted OS running in some secure
+	  environment, for example, TrustZone on ARM cpus, or a separate
+	  secure co-processor etc. See also:
+	  https://en.wikipedia.org/wiki/Trusted_execution_environment
+
+if TEE
+
+source "drivers/tee/optee/Kconfig"
+
+endif
diff --git a/drivers/tee/Makefile b/drivers/tee/Makefile
new file mode 100644
index 000000000000..052f3f7c867a
--- /dev/null
+++ b/drivers/tee/Makefile
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_TEE) += tee.o
+tee-objs += tee_core.o
+tee-objs += tee_shm.o
+obj-$(CONFIG_HAVE_OPTEE) += optee/
diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
new file mode 100644
index 000000000000..4eb0dd6ac61c
--- /dev/null
+++ b/drivers/tee/optee/Kconfig
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# OP-TEE Trusted Execution Environment Configuration
+config OPTEE
+	tristate "OP-TEE communication"
+	select HAVE_OPTEE
+	select ARM_SMCCC
+	depends on MMU
+	help
+	  This driver implements bidirectional communication with the OP-TEE
+	  Trusted Execution Environment (TEE). OP-TEE is a Trusted OS designed
+	  primarily to rely on the ARM TrustZone(R) technology as the
+	  underlying hardware isolation mechanism.
+	  This driver can request services from OP-TEE, but doesn't
+	  yet provide a supplicant to handle Remote Procedure Calls (RPC).
+	  For more information see: https://www.op-tee.org
+
+	  This driver doesn't actually load OP-TEE. For that see
+	  CONFIG_BOOTM_OPTEE and PBL_OPTEE.
+
+	  If unsure, say n here.
diff --git a/drivers/tee/optee/Makefile b/drivers/tee/optee/Makefile
new file mode 100644
index 000000000000..83f8e23b1183
--- /dev/null
+++ b/drivers/tee/optee/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_HAVE_OPTEE) += of_fixup.o
+obj-$(CONFIG_OPTEE) += optee.o
+optee-objs += core.o
+optee-objs += call.o
+optee-objs += rpc.o
+optee-objs += device.o
+optee-objs += smc_abi.o
diff --git a/drivers/tee/optee/call.c b/drivers/tee/optee/call.c
new file mode 100644
index 000000000000..7d949fdd1d92
--- /dev/null
+++ b/drivers/tee/optee/call.c
@@ -0,0 +1,239 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ */
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/types.h>
+#include "optee_private.h"
+
+#define MAX_ARG_PARAM_COUNT	6
+
+static struct optee_session *find_session(struct optee_context_data *ctxdata,
+					  u32 session_id)
+{
+	struct optee_session *sess;
+
+	list_for_each_entry(sess, &ctxdata->sess_list, list_node)
+		if (sess->session_id == session_id)
+			return sess;
+
+	return NULL;
+}
+
+size_t optee_msg_arg_size(void)
+{
+	return OPTEE_MSG_GET_ARG_SIZE(MAX_ARG_PARAM_COUNT);
+}
+
+/**
+ * optee_get_msg_arg() - Provide shared memory for argument struct
+ * @ctx:	Caller TEE context
+ * @num_params:	Number of parameter to store
+ * @shm_ret:	Shared memory buffer
+ *
+ * @returns a pointer to the argument struct in memory, else an ERR_PTR
+ */
+struct optee_msg_arg *optee_get_msg_arg(struct tee_context *ctx,
+					size_t num_params,
+					struct tee_shm **shm_ret)
+{
+
+	size_t sz = OPTEE_MSG_GET_ARG_SIZE(num_params);
+	struct optee_msg_arg *ma;
+	struct tee_shm *shm;
+
+	if (num_params > MAX_ARG_PARAM_COUNT)
+		return ERR_PTR(-EINVAL);
+
+	shm = tee_shm_alloc_priv_buf(ctx, sz);
+	if (IS_ERR(shm))
+		return ERR_CAST(shm);
+
+	ma = tee_shm_get_va(shm, 0);
+	if (IS_ERR(ma)) {
+		tee_shm_free(shm);
+		return ERR_CAST(ma);
+	}
+
+	memset(ma, 0, OPTEE_MSG_GET_ARG_SIZE(num_params));
+	ma->num_params = num_params;
+
+	*shm_ret = shm;
+	return ma;
+}
+
+/**
+ * optee_free_msg_arg() - Free previsouly obtained shared memory
+ * @ctx:	Caller TEE context
+ * @shm:	Pointer returned when the shared memory was obtained
+ *
+ * This function frees the shared memory obtained with optee_get_msg_arg().
+ */
+void optee_free_msg_arg(struct tee_context *ctx,
+			struct tee_shm *shm)
+{
+	tee_shm_free(shm);
+}
+
+int optee_open_session(struct tee_context *ctx,
+		       struct tee_ioctl_open_session_arg *arg,
+		       struct tee_param *param)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_context_data *ctxdata = ctx->data;
+	struct tee_shm *shm;
+	struct optee_msg_arg *msg_arg;
+	struct optee_session *sess = NULL;
+	uuid_t client_uuid;
+	int rc;
+
+	/* +2 for the meta parameters added below */
+	msg_arg = optee_get_msg_arg(ctx, arg->num_params + 2, &shm);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+
+	msg_arg->cmd = OPTEE_MSG_CMD_OPEN_SESSION;
+
+	/*
+	 * Initialize and add the meta parameters needed when opening a
+	 * session.
+	 */
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT |
+				  OPTEE_MSG_ATTR_META;
+	msg_arg->params[1].attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT |
+				  OPTEE_MSG_ATTR_META;
+	memcpy(&msg_arg->params[0].u.value, arg->uuid, sizeof(arg->uuid));
+	msg_arg->params[1].u.value.c = arg->clnt_login;
+
+	rc = tee_session_calc_client_uuid(&client_uuid, arg->clnt_login,
+					  arg->clnt_uuid);
+	if (rc)
+		goto out;
+	export_uuid(msg_arg->params[1].u.octets, &client_uuid);
+
+	rc = optee->ops->to_msg_param(optee, msg_arg->params + 2,
+				      arg->num_params, param);
+	if (rc)
+		goto out;
+
+	sess = kzalloc(sizeof(*sess), GFP_KERNEL);
+	if (!sess) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
+	if (optee->ops->do_call_with_arg(ctx, msg_arg)) {
+		msg_arg->ret = TEEC_ERROR_COMMUNICATION;
+		msg_arg->ret_origin = TEEC_ORIGIN_COMMS;
+	}
+
+	if (msg_arg->ret == TEEC_SUCCESS) {
+		/* A new session has been created, add it to the list. */
+		sess->session_id = msg_arg->session;
+		list_add(&sess->list_node, &ctxdata->sess_list);
+	} else {
+		kfree(sess);
+	}
+
+	if (optee->ops->from_msg_param(optee, param, arg->num_params,
+				       msg_arg->params + 2)) {
+		arg->ret = TEEC_ERROR_COMMUNICATION;
+		arg->ret_origin = TEEC_ORIGIN_COMMS;
+		/* Close session again to avoid leakage */
+		optee_close_session(ctx, msg_arg->session);
+	} else {
+		arg->session = msg_arg->session;
+		arg->ret = msg_arg->ret;
+		arg->ret_origin = msg_arg->ret_origin;
+	}
+
+out:
+	optee_free_msg_arg(ctx, shm);
+
+	return rc;
+}
+
+int optee_close_session_helper(struct tee_context *ctx, u32 session)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_msg_arg *msg_arg;
+	struct tee_shm *shm;
+
+	msg_arg = optee_get_msg_arg(ctx, 0, &shm);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+
+	msg_arg->cmd = OPTEE_MSG_CMD_CLOSE_SESSION;
+	msg_arg->session = session;
+	optee->ops->do_call_with_arg(ctx, msg_arg);
+
+	optee_free_msg_arg(ctx, shm);
+
+	return 0;
+}
+
+int optee_close_session(struct tee_context *ctx, u32 session)
+{
+	struct optee_context_data *ctxdata = ctx->data;
+	struct optee_session *sess;
+
+	/* Check that the session is valid and remove it from the list */
+	sess = find_session(ctxdata, session);
+	if (sess)
+		list_del(&sess->list_node);
+	if (!sess)
+		return -EINVAL;
+	kfree(sess);
+
+	return optee_close_session_helper(ctx, session);
+}
+
+int optee_invoke_func(struct tee_context *ctx, struct tee_ioctl_invoke_arg *arg,
+		      struct tee_param *param)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_context_data *ctxdata = ctx->data;
+	struct optee_msg_arg *msg_arg;
+	struct optee_session *sess;
+	struct tee_shm *shm;
+	int rc;
+
+	/* Check that the session is valid */
+	sess = find_session(ctxdata, arg->session);
+	if (!sess)
+		return -EINVAL;
+
+	msg_arg = optee_get_msg_arg(ctx, arg->num_params,
+				    &shm);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+	msg_arg->cmd = OPTEE_MSG_CMD_INVOKE_COMMAND;
+	msg_arg->func = arg->func;
+	msg_arg->session = arg->session;
+
+	rc = optee->ops->to_msg_param(optee, msg_arg->params, arg->num_params,
+				      param);
+	if (rc)
+		goto out;
+
+	if (optee->ops->do_call_with_arg(ctx, msg_arg)) {
+		msg_arg->ret = TEEC_ERROR_COMMUNICATION;
+		msg_arg->ret_origin = TEEC_ORIGIN_COMMS;
+	}
+
+	if (optee->ops->from_msg_param(optee, param, arg->num_params,
+				       msg_arg->params)) {
+		msg_arg->ret = TEEC_ERROR_COMMUNICATION;
+		msg_arg->ret_origin = TEEC_ORIGIN_COMMS;
+	}
+
+	arg->ret = msg_arg->ret;
+	arg->ret_origin = msg_arg->ret_origin;
+out:
+	optee_free_msg_arg(ctx, shm);
+	return rc;
+}
diff --git a/drivers/tee/optee/core.c b/drivers/tee/optee/core.c
new file mode 100644
index 000000000000..753dc5552a80
--- /dev/null
+++ b/drivers/tee/optee/core.c
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ * Copyright (c) 2016, EPAM Systems
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/errno.h>
+#include <linux/io.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/tee_drv.h>
+#include <linux/types.h>
+#include "optee_private.h"
+
+static void optee_release_helper(struct tee_context *ctx,
+				 int (*close_session)(struct tee_context *ctx,
+						      u32 session))
+{
+	struct optee_context_data *ctxdata = ctx->data;
+	struct optee_session *sess;
+	struct optee_session *sess_tmp;
+
+	if (!ctxdata)
+		return;
+
+	list_for_each_entry_safe(sess, sess_tmp, &ctxdata->sess_list,
+				 list_node) {
+		list_del(&sess->list_node);
+		close_session(ctx, sess->session_id);
+		kfree(sess);
+	}
+	kfree(ctxdata);
+	ctx->data = NULL;
+}
+
+void optee_release(struct tee_context *ctx)
+{
+	optee_release_helper(ctx, optee_close_session_helper);
+}
+
+int optee_open(struct tee_context *ctx, bool cap_memref_null)
+{
+	struct optee_context_data *ctxdata;
+
+	ctxdata = kzalloc(sizeof(*ctxdata), GFP_KERNEL);
+	if (!ctxdata)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&ctxdata->sess_list);
+
+	ctx->cap_memref_null = cap_memref_null;
+	ctx->data = ctxdata;
+	return 0;
+}
+
+static int __init optee_core_init(void)
+{
+	return optee_smc_abi_register();
+}
+core_initcall(optee_core_init);
+
+MODULE_AUTHOR("Linaro");
+MODULE_DESCRIPTION("OP-TEE driver");
+MODULE_VERSION("1.0");
+MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:optee");
diff --git a/drivers/tee/optee/device.c b/drivers/tee/optee/device.c
new file mode 100644
index 000000000000..100a877395de
--- /dev/null
+++ b/drivers/tee/optee/device.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Linaro Ltd.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/device.h>
+#include <linux/tee_drv.h>
+#include <linux/uuid.h>
+#include "optee_private.h"
+
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	if (ver->impl_id == TEE_IMPL_ID_OPTEE)
+		return 1;
+	else
+		return 0;
+}
+
+static int get_devices(struct tee_context *ctx, u32 session,
+		       struct tee_shm *device_shm, u32 *shm_size,
+		       u32 func)
+{
+	int ret = 0;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[4];
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	memset(&param, 0, sizeof(param));
+
+	inv_arg.func = func;
+	inv_arg.session = session;
+	inv_arg.num_params = 4;
+
+	/* Fill invoke cmd params */
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT;
+	param[0].u.memref.shm = device_shm;
+	param[0].u.memref.size = *shm_size;
+	param[0].u.memref.shm_offs = 0;
+
+	ret = tee_client_invoke_func(ctx, &inv_arg, param);
+	if ((ret < 0) || ((inv_arg.ret != TEEC_SUCCESS) &&
+			  (inv_arg.ret != TEEC_ERROR_SHORT_BUFFER))) {
+		pr_err("PTA_CMD_GET_DEVICES invoke function err: %x\n",
+		       inv_arg.ret);
+		return -EINVAL;
+	}
+
+	*shm_size = param[0].u.memref.size;
+
+	return 0;
+}
+
+static int optee_register_device(const uuid_t *device_uuid)
+{
+	struct tee_client_device *optee_device = NULL;
+	int rc;
+
+	optee_device = kzalloc(sizeof(*optee_device), GFP_KERNEL);
+	if (!optee_device)
+		return -ENOMEM;
+
+	optee_device->dev.bus = &tee_bus_type;
+	if (dev_set_name(&optee_device->dev, "optee-ta-%pUb", device_uuid)) {
+		kfree(optee_device);
+		return -ENOMEM;
+	}
+	uuid_copy(&optee_device->id.uuid, device_uuid);
+
+	rc = device_register(&optee_device->dev);
+	if (rc) {
+		pr_err("device registration failed, err: %d\n", rc);
+		put_device(&optee_device->dev);
+	}
+
+	return rc;
+}
+
+static int __optee_enumerate_devices(u32 func)
+{
+	const uuid_t pta_uuid =
+		UUID_INIT(0x7011a688, 0xddde, 0x4053,
+			  0xa5, 0xa9, 0x7b, 0x3c, 0x4d, 0xdf, 0x13, 0xb8);
+	struct tee_ioctl_open_session_arg sess_arg;
+	struct tee_shm *device_shm = NULL;
+	const uuid_t *device_uuid = NULL;
+	struct tee_context *ctx = NULL;
+	u32 shm_size = 0, idx, num_devices = 0;
+	int rc;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+
+	/* Open context with OP-TEE driver */
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return -ENODEV;
+
+	/* Open session with device enumeration pseudo TA */
+	export_uuid(sess_arg.uuid, &pta_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
+	sess_arg.num_params = 0;
+
+	rc = tee_client_open_session(ctx, &sess_arg, NULL);
+	if ((rc < 0) || (sess_arg.ret != TEEC_SUCCESS)) {
+		pr_debug("device enumeration pseudo TA not found\n");
+		rc = 0;
+		goto out_ctx;
+	}
+
+	rc = get_devices(ctx, sess_arg.session, NULL, &shm_size, func);
+	if (rc < 0)
+		goto out_sess;
+	if (!shm_size) {
+		pr_debug("device enumeration PTA found, but no devices!\n");
+		goto out_sess;
+	}
+
+	device_shm = tee_shm_alloc_kernel_buf(ctx, shm_size);
+	if (IS_ERR(device_shm)) {
+		pr_err("tee_shm_alloc_kernel_buf failed\n");
+		rc = PTR_ERR(device_shm);
+		goto out_sess;
+	}
+
+	rc = get_devices(ctx, sess_arg.session, device_shm, &shm_size, func);
+	if (rc < 0)
+		goto out_shm;
+
+	device_uuid = tee_shm_get_va(device_shm, 0);
+	if (IS_ERR(device_uuid)) {
+		pr_err("tee_shm_get_va failed\n");
+		rc = PTR_ERR(device_uuid);
+		goto out_shm;
+	}
+
+	num_devices = shm_size / sizeof(uuid_t);
+
+	for (idx = 0; idx < num_devices; idx++) {
+		rc = optee_register_device(&device_uuid[idx]);
+		if (rc)
+			goto out_shm;
+	}
+
+out_shm:
+	tee_shm_free(device_shm);
+out_sess:
+	tee_client_close_session(ctx, sess_arg.session);
+out_ctx:
+	tee_client_close_context(ctx);
+
+	return rc;
+}
+
+int optee_enumerate_devices(u32 func)
+{
+	return  __optee_enumerate_devices(func);
+}
+
+static int __optee_unregister_device(struct device *dev, void *data)
+{
+	if (!strncmp(dev_name(dev), "optee-ta", strlen("optee-ta")))
+		device_unregister(dev);
+
+	return 0;
+}
+
+void optee_unregister_devices(void)
+{
+	bus_for_each_dev(&tee_bus_type, NULL, NULL,
+			 __optee_unregister_device);
+}
diff --git a/drivers/tee/optee/of.c b/drivers/tee/optee/of_fixup.c
similarity index 100%
rename from drivers/tee/optee/of.c
rename to drivers/tee/optee/of_fixup.c
diff --git a/drivers/tee/optee/optee_msg.h b/drivers/tee/optee/optee_msg.h
new file mode 100644
index 000000000000..92878ce08193
--- /dev/null
+++ b/drivers/tee/optee/optee_msg.h
@@ -0,0 +1,295 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ */
+#ifndef _OPTEE_MSG_H
+#define _OPTEE_MSG_H
+
+#include <linux/bitops.h>
+#include <linux/types.h>
+
+/*
+ * This file defines the OP-TEE message protocol (ABI) used to communicate
+ * with an instance of OP-TEE running in secure world.
+ *
+ * This file is divided into two sections.
+ * 1. Formatting of messages.
+ * 2. Requests from normal world
+ */
+
+/*****************************************************************************
+ * Part 1 - formatting of messages
+ *****************************************************************************/
+
+#define OPTEE_MSG_ATTR_TYPE_NONE		0x0
+#define OPTEE_MSG_ATTR_TYPE_VALUE_INPUT		0x1
+#define OPTEE_MSG_ATTR_TYPE_VALUE_OUTPUT	0x2
+#define OPTEE_MSG_ATTR_TYPE_VALUE_INOUT		0x3
+#define OPTEE_MSG_ATTR_TYPE_RMEM_INPUT		0x5
+#define OPTEE_MSG_ATTR_TYPE_RMEM_OUTPUT		0x6
+#define OPTEE_MSG_ATTR_TYPE_RMEM_INOUT		0x7
+#define OPTEE_MSG_ATTR_TYPE_TMEM_INPUT		0x9
+#define OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT		0xa
+#define OPTEE_MSG_ATTR_TYPE_TMEM_INOUT		0xb
+
+#define OPTEE_MSG_ATTR_TYPE_MASK		GENMASK(7, 0)
+
+/*
+ * Meta parameter to be absorbed by the Secure OS and not passed
+ * to the Trusted Application.
+ *
+ * Currently only used with OPTEE_MSG_CMD_OPEN_SESSION.
+ */
+#define OPTEE_MSG_ATTR_META			BIT(8)
+
+/*
+ * Pointer to a list of pages used to register user-defined SHM buffer.
+ * Used with OPTEE_MSG_ATTR_TYPE_TMEM_*.
+ * buf_ptr should point to the beginning of the buffer. Buffer will contain
+ * list of page addresses. OP-TEE core can reconstruct contiguous buffer from
+ * that page addresses list. Page addresses are stored as 64 bit values.
+ * Last entry on a page should point to the next page of buffer.
+ * Every entry in buffer should point to a 4k page beginning (12 least
+ * significant bits must be equal to zero).
+ *
+ * 12 least significant bits of optee_msg_param.u.tmem.buf_ptr should hold
+ * page offset of user buffer.
+ *
+ * So, entries should be placed like members of this structure:
+ *
+ * struct page_data {
+ *   uint64_t pages_array[OPTEE_MSG_NONCONTIG_PAGE_SIZE/sizeof(uint64_t) - 1];
+ *   uint64_t next_page_data;
+ * };
+ *
+ * Structure is designed to exactly fit into the page size
+ * OPTEE_MSG_NONCONTIG_PAGE_SIZE which is a standard 4KB page.
+ *
+ * The size of 4KB is chosen because this is the smallest page size for ARM
+ * architectures. If REE uses larger pages, it should divide them to 4KB ones.
+ */
+#define OPTEE_MSG_ATTR_NONCONTIG		BIT(9)
+
+/*
+ * Memory attributes for caching passed with temp memrefs. The actual value
+ * used is defined outside the message protocol with the exception of
+ * OPTEE_MSG_ATTR_CACHE_PREDEFINED which means the attributes already
+ * defined for the memory range should be used. If optee_smc.h is used as
+ * bearer of this protocol OPTEE_SMC_SHM_* is used for values.
+ */
+#define OPTEE_MSG_ATTR_CACHE_SHIFT		16
+#define OPTEE_MSG_ATTR_CACHE_MASK		GENMASK(2, 0)
+#define OPTEE_MSG_ATTR_CACHE_PREDEFINED		0
+
+/*
+ * Page size used in non-contiguous buffer entries
+ */
+#define OPTEE_MSG_NONCONTIG_PAGE_SIZE		4096
+
+/**
+ * struct optee_msg_param_tmem - temporary memory reference parameter
+ * @buf_ptr:	Address of the buffer
+ * @size:	Size of the buffer
+ * @shm_ref:	Temporary shared memory reference, pointer to a struct tee_shm
+ *
+ * Secure and normal world communicates pointers as physical address
+ * instead of the virtual address. This is because secure and normal world
+ * have completely independent memory mapping. Normal world can even have a
+ * hypervisor which need to translate the guest physical address (AKA IPA
+ * in ARM documentation) to a real physical address before passing the
+ * structure to secure world.
+ */
+struct optee_msg_param_tmem {
+	u64 buf_ptr;
+	u64 size;
+	u64 shm_ref;
+};
+
+/**
+ * struct optee_msg_param_rmem - registered memory reference parameter
+ * @offs:	Offset into shared memory reference
+ * @size:	Size of the buffer
+ * @shm_ref:	Shared memory reference, pointer to a struct tee_shm
+ */
+struct optee_msg_param_rmem {
+	u64 offs;
+	u64 size;
+	u64 shm_ref;
+};
+
+/**
+ * struct optee_msg_param_value - opaque value parameter
+ *
+ * Value parameters are passed unchecked between normal and secure world.
+ */
+struct optee_msg_param_value {
+	u64 a;
+	u64 b;
+	u64 c;
+};
+
+/**
+ * struct optee_msg_param - parameter used together with struct optee_msg_arg
+ * @attr:	attributes
+ * @tmem:	parameter by temporary memory reference
+ * @rmem:	parameter by registered memory reference
+ * @value:	parameter by opaque value
+ * @octets:	parameter by octet string
+ *
+ * @attr & OPTEE_MSG_ATTR_TYPE_MASK indicates if tmem, rmem or value is used in
+ * the union. OPTEE_MSG_ATTR_TYPE_VALUE_* indicates value or octets,
+ * OPTEE_MSG_ATTR_TYPE_TMEM_* indicates @tmem and
+ * OPTEE_MSG_ATTR_TYPE_RMEM_* indicates @rmem.
+ * OPTEE_MSG_ATTR_TYPE_NONE indicates that none of the members are used.
+ */
+struct optee_msg_param {
+	u64 attr;
+	union {
+		struct optee_msg_param_tmem tmem;
+		struct optee_msg_param_rmem rmem;
+		struct optee_msg_param_value value;
+		u8 octets[24];
+	} u;
+};
+
+/**
+ * struct optee_msg_arg - call argument
+ * @cmd: Command, one of OPTEE_MSG_CMD_* or OPTEE_MSG_RPC_CMD_*
+ * @func: Trusted Application function, specific to the Trusted Application,
+ *	     used if cmd == OPTEE_MSG_CMD_INVOKE_COMMAND
+ * @session: In parameter for all OPTEE_MSG_CMD_* except
+ *	     OPTEE_MSG_CMD_OPEN_SESSION where it's an output parameter instead
+ * @cancel_id: Cancellation id, a unique value to identify this request
+ * @ret: return value
+ * @ret_origin: origin of the return value
+ * @num_params: number of parameters supplied to the OS Command
+ * @params: the parameters supplied to the OS Command
+ *
+ * All normal calls to Trusted OS uses this struct. If cmd requires further
+ * information than what these fields hold it can be passed as a parameter
+ * tagged as meta (setting the OPTEE_MSG_ATTR_META bit in corresponding
+ * attrs field). All parameters tagged as meta have to come first.
+ */
+struct optee_msg_arg {
+	u32 cmd;
+	u32 func;
+	u32 session;
+	u32 cancel_id;
+	u32 pad;
+	u32 ret;
+	u32 ret_origin;
+	u32 num_params;
+
+	/* num_params tells the actual number of element in params */
+	struct optee_msg_param params[];
+};
+
+/**
+ * OPTEE_MSG_GET_ARG_SIZE - return size of struct optee_msg_arg
+ *
+ * @num_params: Number of parameters embedded in the struct optee_msg_arg
+ *
+ * Returns the size of the struct optee_msg_arg together with the number
+ * of embedded parameters.
+ */
+#define OPTEE_MSG_GET_ARG_SIZE(num_params) \
+	(sizeof(struct optee_msg_arg) + \
+	 sizeof(struct optee_msg_param) * (num_params))
+
+/*****************************************************************************
+ * Part 2 - requests from normal world
+ *****************************************************************************/
+
+/*
+ * Return the following UID if using API specified in this file without
+ * further extensions:
+ * 384fb3e0-e7f8-11e3-af63-0002a5d5c51b.
+ * Represented in 4 32-bit words in OPTEE_MSG_UID_0, OPTEE_MSG_UID_1,
+ * OPTEE_MSG_UID_2, OPTEE_MSG_UID_3.
+ */
+#define OPTEE_MSG_UID_0			0x384fb3e0
+#define OPTEE_MSG_UID_1			0xe7f811e3
+#define OPTEE_MSG_UID_2			0xaf630002
+#define OPTEE_MSG_UID_3			0xa5d5c51b
+#define OPTEE_MSG_FUNCID_CALLS_UID	0xFF01
+
+/*
+ * Returns 2.0 if using API specified in this file without further
+ * extensions. Represented in 2 32-bit words in OPTEE_MSG_REVISION_MAJOR
+ * and OPTEE_MSG_REVISION_MINOR
+ */
+#define OPTEE_MSG_REVISION_MAJOR	2
+#define OPTEE_MSG_REVISION_MINOR	0
+#define OPTEE_MSG_FUNCID_CALLS_REVISION	0xFF03
+
+/*
+ * Get UUID of Trusted OS.
+ *
+ * Used by non-secure world to figure out which Trusted OS is installed.
+ * Note that returned UUID is the UUID of the Trusted OS, not of the API.
+ *
+ * Returns UUID in 4 32-bit words in the same way as
+ * OPTEE_MSG_FUNCID_CALLS_UID described above.
+ */
+#define OPTEE_MSG_OS_OPTEE_UUID_0	0x486178e0
+#define OPTEE_MSG_OS_OPTEE_UUID_1	0xe7f811e3
+#define OPTEE_MSG_OS_OPTEE_UUID_2	0xbc5e0002
+#define OPTEE_MSG_OS_OPTEE_UUID_3	0xa5d5c51b
+#define OPTEE_MSG_FUNCID_GET_OS_UUID	0x0000
+
+/*
+ * Get revision of Trusted OS.
+ *
+ * Used by non-secure world to figure out which version of the Trusted OS
+ * is installed. Note that the returned revision is the revision of the
+ * Trusted OS, not of the API.
+ *
+ * Returns revision in 2 32-bit words in the same way as
+ * OPTEE_MSG_CALLS_REVISION described above.
+ */
+#define OPTEE_MSG_FUNCID_GET_OS_REVISION	0x0001
+
+/*
+ * Do a secure call with struct optee_msg_arg as argument
+ * The OPTEE_MSG_CMD_* below defines what goes in struct optee_msg_arg::cmd
+ *
+ * OPTEE_MSG_CMD_OPEN_SESSION opens a session to a Trusted Application.
+ * The first two parameters are tagged as meta, holding two value
+ * parameters to pass the following information:
+ * param[0].u.value.a-b uuid of Trusted Application
+ * param[1].u.value.a-b uuid of Client
+ * param[1].u.value.c Login class of client TEE_LOGIN_*
+ *
+ * OPTEE_MSG_CMD_INVOKE_COMMAND invokes a command a previously opened
+ * session to a Trusted Application.  struct optee_msg_arg::func is Trusted
+ * Application function, specific to the Trusted Application.
+ *
+ * OPTEE_MSG_CMD_CLOSE_SESSION closes a previously opened session to
+ * Trusted Application.
+ *
+ * OPTEE_MSG_CMD_CANCEL cancels a currently invoked command.
+ *
+ * OPTEE_MSG_CMD_REGISTER_SHM registers a shared memory reference. The
+ * information is passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_TMEM_INPUT
+ *					[| OPTEE_MSG_ATTR_NONCONTIG]
+ * [in] param[0].u.tmem.buf_ptr		physical address (of first fragment)
+ * [in] param[0].u.tmem.size		size (of first fragment)
+ * [in] param[0].u.tmem.shm_ref		holds shared memory reference
+ *
+ * OPTEE_MSG_CMD_UNREGISTER_SHM unregisters a previously registered shared
+ * memory reference. The information is passed as:
+ * [in] param[0].attr			OPTEE_MSG_ATTR_TYPE_RMEM_INPUT
+ * [in] param[0].u.rmem.shm_ref		holds shared memory reference
+ * [in] param[0].u.rmem.offs		0
+ * [in] param[0].u.rmem.size		0
+ */
+#define OPTEE_MSG_CMD_OPEN_SESSION	0
+#define OPTEE_MSG_CMD_INVOKE_COMMAND	1
+#define OPTEE_MSG_CMD_CLOSE_SESSION	2
+#define OPTEE_MSG_CMD_CANCEL		3
+#define OPTEE_MSG_CMD_REGISTER_SHM	4
+#define OPTEE_MSG_CMD_UNREGISTER_SHM	5
+#define OPTEE_MSG_FUNCID_CALL_WITH_ARG	0x0004
+
+#endif /* _OPTEE_MSG_H */
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
new file mode 100644
index 000000000000..637d3195be17
--- /dev/null
+++ b/drivers/tee/optee/optee_private.h
@@ -0,0 +1,179 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ */
+
+#ifndef OPTEE_PRIVATE_H
+#define OPTEE_PRIVATE_H
+
+#include <linux/arm-smccc.h>
+#include <linux/tee_drv.h>
+#include <linux/types.h>
+#include "optee_msg.h"
+
+#define DRIVER_NAME "optee"
+
+#define OPTEE_MAX_ARG_SIZE	1024
+
+/* Some Global Platform error codes used in this driver */
+#define TEEC_SUCCESS			0x00000000
+#define TEEC_ERROR_BAD_PARAMETERS	0xFFFF0006
+#define TEEC_ERROR_NOT_SUPPORTED	0xFFFF000A
+#define TEEC_ERROR_COMMUNICATION	0xFFFF000E
+#define TEEC_ERROR_OUT_OF_MEMORY	0xFFFF000C
+#define TEEC_ERROR_BUSY			0xFFFF000D
+#define TEEC_ERROR_SHORT_BUFFER		0xFFFF0010
+
+#define TEEC_ORIGIN_COMMS		0x00000002
+
+/*
+ * This value should be larger than the number threads in secure world to
+ * meet the need from secure world. The number of threads in secure world
+ * are usually not even close to 255 so we should be safe for now.
+ */
+#define OPTEE_DEFAULT_MAX_NOTIF_VALUE	255
+
+typedef void (optee_invoke_fn)(unsigned long, unsigned long, unsigned long,
+				unsigned long, unsigned long, unsigned long,
+				unsigned long, unsigned long,
+				struct arm_smccc_res *);
+
+
+/*
+ * struct optee_smc - optee smc communication struct
+ * @invoke_fn		handler function to invoke secure monitor
+ * @sec_caps:		secure world capabilities defined by
+ *			OPTEE_SMC_SEC_CAP_* in optee_smc.h
+ */
+struct optee_smc {
+	optee_invoke_fn *invoke_fn;
+	u32 sec_caps;
+};
+
+struct optee;
+
+/**
+ * struct optee_ops - OP-TEE driver internal operations
+ * @do_call_with_arg:	enters OP-TEE in secure world
+ * @to_msg_param:	converts from struct tee_param to OPTEE_MSG parameters
+ * @from_msg_param:	converts from OPTEE_MSG parameters to struct tee_param
+ *
+ * These OPs are only supposed to be used internally in the OP-TEE driver
+ * as a way of abstracting the different methogs of entering OP-TEE in
+ * secure world.
+ */
+struct optee_ops {
+	int (*do_call_with_arg)(struct tee_context *ctx,
+				struct optee_msg_arg *arg);
+	int (*to_msg_param)(struct optee *optee,
+			    struct optee_msg_param *msg_params,
+			    size_t num_params, const struct tee_param *params);
+	int (*from_msg_param)(struct optee *optee, struct tee_param *params,
+			      size_t num_params,
+			      const struct optee_msg_param *msg_params);
+};
+
+/**
+ * struct optee - main service struct
+ * @teedev:		client device
+ * @ops:		internal callbacks for different ways to reach secure
+ *			world
+ * @ctx:		driver internal TEE context
+ * @smc:		specific to SMC ABI
+ */
+struct optee {
+	struct tee_device *teedev;
+	const struct optee_ops *ops;
+	struct tee_context *ctx;
+	union {
+		struct optee_smc smc;
+	};
+};
+
+struct optee_session {
+	struct list_head list_node;
+	u32 session_id;
+};
+
+struct optee_context_data {
+	/* Serializes access to this struct */
+	struct list_head sess_list;
+};
+
+struct optee_rpc_param {
+	u32	a0;
+	u32	a1;
+	u32	a2;
+	u32	a3;
+	u32	a4;
+	u32	a5;
+	u32	a6;
+	u32	a7;
+};
+
+int optee_open_session(struct tee_context *ctx,
+		       struct tee_ioctl_open_session_arg *arg,
+		       struct tee_param *param);
+int optee_close_session_helper(struct tee_context *ctx, u32 session);
+int optee_close_session(struct tee_context *ctx, u32 session);
+int optee_invoke_func(struct tee_context *ctx, struct tee_ioctl_invoke_arg *arg,
+		      struct tee_param *param);
+
+#define PTA_CMD_GET_DEVICES		0x0
+#define PTA_CMD_GET_DEVICES_SUPP	0x1
+int optee_enumerate_devices(u32 func);
+void optee_unregister_devices(void);
+
+int optee_open(struct tee_context *ctx, bool cap_memref_null);
+void optee_release(struct tee_context *ctx);
+
+static inline void optee_from_msg_param_value(struct tee_param *p, u32 attr,
+					      const struct optee_msg_param *mp)
+{
+	p->attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT +
+		  attr - OPTEE_MSG_ATTR_TYPE_VALUE_INPUT;
+	p->u.value.a = mp->u.value.a;
+	p->u.value.b = mp->u.value.b;
+	p->u.value.c = mp->u.value.c;
+}
+
+static inline void optee_to_msg_param_value(struct optee_msg_param *mp,
+					    const struct tee_param *p)
+{
+	mp->attr = OPTEE_MSG_ATTR_TYPE_VALUE_INPUT + p->attr -
+		   TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	mp->u.value.a = p->u.value.a;
+	mp->u.value.b = p->u.value.b;
+	mp->u.value.c = p->u.value.c;
+}
+
+struct optee_msg_arg *optee_get_msg_arg(struct tee_context *ctx,
+					size_t num_params,
+					struct tee_shm **shm_ret);
+void optee_free_msg_arg(struct tee_context *ctx,
+			struct tee_shm *shm);
+size_t optee_msg_arg_size(void);
+
+
+void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
+		   struct optee_msg_arg *arg);
+
+/*
+ * Small helpers
+ */
+
+static inline void *reg_pair_to_ptr(u32 reg0, u32 reg1)
+{
+	return (void *)(unsigned long)(((u64)reg0 << 32) | reg1);
+}
+
+static inline void reg_pair_from_64(u32 *reg0, u32 *reg1, u64 val)
+{
+	*reg0 = val >> 32;
+	*reg1 = val;
+}
+
+/* Registration of the ABIs */
+int optee_smc_abi_register(void);
+
+#endif /*OPTEE_PRIVATE_H*/
diff --git a/drivers/tee/optee/optee_smc.h b/drivers/tee/optee/optee_smc.h
new file mode 100644
index 000000000000..b8e886b7e312
--- /dev/null
+++ b/drivers/tee/optee/optee_smc.h
@@ -0,0 +1,473 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ */
+#ifndef OPTEE_SMC_H
+#define OPTEE_SMC_H
+
+#include <linux/arm-smccc.h>
+#include <linux/bitops.h>
+
+#define OPTEE_SMC_STD_CALL_VAL(func_num) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_STD_CALL, ARM_SMCCC_SMC_32, \
+			   ARM_SMCCC_OWNER_TRUSTED_OS, (func_num))
+#define OPTEE_SMC_FAST_CALL_VAL(func_num) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32, \
+			   ARM_SMCCC_OWNER_TRUSTED_OS, (func_num))
+
+/*
+ * Function specified by SMC Calling convention.
+ */
+#define OPTEE_SMC_FUNCID_CALLS_COUNT	0xFF00
+#define OPTEE_SMC_CALLS_COUNT \
+	ARM_SMCCC_CALL_VAL(OPTEE_SMC_FAST_CALL, SMCCC_SMC_32, \
+			   SMCCC_OWNER_TRUSTED_OS_END, \
+			   OPTEE_SMC_FUNCID_CALLS_COUNT)
+
+/*
+ * a0..a7 is used as register names in the descriptions below, on arm32
+ * that translates to r0..r7 and on arm64 to w0..w7. In both cases it's
+ * 32-bit registers.
+ */
+
+/*
+ * Function specified by SMC Calling convention
+ *
+ * Return the following UID if using API specified in this file
+ * without further extensions:
+ * 384fb3e0-e7f8-11e3-af63-0002a5d5c51b.
+ * see also OPTEE_MSG_UID_* in optee_msg.h
+ */
+#define OPTEE_SMC_FUNCID_CALLS_UID OPTEE_MSG_FUNCID_CALLS_UID
+#define OPTEE_SMC_CALLS_UID \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32, \
+			   ARM_SMCCC_OWNER_TRUSTED_OS_END, \
+			   OPTEE_SMC_FUNCID_CALLS_UID)
+
+/*
+ * Function specified by SMC Calling convention
+ *
+ * Returns 2.0 if using API specified in this file without further extensions.
+ * see also OPTEE_MSG_REVISION_* in optee_msg.h
+ */
+#define OPTEE_SMC_FUNCID_CALLS_REVISION OPTEE_MSG_FUNCID_CALLS_REVISION
+#define OPTEE_SMC_CALLS_REVISION \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, ARM_SMCCC_SMC_32, \
+			   ARM_SMCCC_OWNER_TRUSTED_OS_END, \
+			   OPTEE_SMC_FUNCID_CALLS_REVISION)
+
+struct optee_smc_calls_revision_result {
+	unsigned long major;
+	unsigned long minor;
+	unsigned long reserved0;
+	unsigned long reserved1;
+};
+
+/*
+ * Get UUID of Trusted OS.
+ *
+ * Used by non-secure world to figure out which Trusted OS is installed.
+ * Note that returned UUID is the UUID of the Trusted OS, not of the API.
+ *
+ * Returns UUID in a0-4 in the same way as OPTEE_SMC_CALLS_UID
+ * described above.
+ */
+#define OPTEE_SMC_FUNCID_GET_OS_UUID OPTEE_MSG_FUNCID_GET_OS_UUID
+#define OPTEE_SMC_CALL_GET_OS_UUID \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_OS_UUID)
+
+/*
+ * Get revision of Trusted OS.
+ *
+ * Used by non-secure world to figure out which version of the Trusted OS
+ * is installed. Note that the returned revision is the revision of the
+ * Trusted OS, not of the API.
+ *
+ * Returns revision in a0-1 in the same way as OPTEE_SMC_CALLS_REVISION
+ * described above. May optionally return a 32-bit build identifier in a2,
+ * with zero meaning unspecified.
+ */
+#define OPTEE_SMC_FUNCID_GET_OS_REVISION OPTEE_MSG_FUNCID_GET_OS_REVISION
+#define OPTEE_SMC_CALL_GET_OS_REVISION \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_OS_REVISION)
+
+struct optee_smc_call_get_os_revision_result {
+	unsigned long major;
+	unsigned long minor;
+	unsigned long build_id;
+	unsigned long reserved1;
+};
+
+/*
+ * Call with struct optee_msg_arg as argument
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC*CALL_WITH_ARG
+ * a1	Upper 32bit of a 64bit physical pointer to a struct optee_msg_arg
+ * a2	Lower 32bit of a 64bit physical pointer to a struct optee_msg_arg
+ * a3	Cache settings, not used if physical pointer is in a predefined shared
+ *	memory area else per OPTEE_SMC_SHM_*
+ * a4-6	Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Normal return register usage:
+ * a0	Return value, OPTEE_SMC_RETURN_*
+ * a1-3	Not used
+ * a4-7	Preserved
+ *
+ * OPTEE_SMC_RETURN_ETHREAD_LIMIT return register usage:
+ * a0	Return value, OPTEE_SMC_RETURN_ETHREAD_LIMIT
+ * a1-3	Preserved
+ * a4-7	Preserved
+ *
+ * RPC return register usage:
+ * a0	Return value, OPTEE_SMC_RETURN_IS_RPC(val)
+ * a1-2	RPC parameters
+ * a3-7	Resume information, must be preserved
+ *
+ * Possible return values:
+ * OPTEE_SMC_RETURN_UNKNOWN_FUNCTION	Trusted OS does not recognize this
+ *					function.
+ * OPTEE_SMC_RETURN_OK			Call completed, result updated in
+ *					the previously supplied struct
+ *					optee_msg_arg.
+ * OPTEE_SMC_RETURN_ETHREAD_LIMIT	Number of Trusted OS threads exceeded,
+ *					try again later.
+ * OPTEE_SMC_RETURN_EBADADDR		Bad physical pointer to struct
+ *					optee_msg_arg.
+ * OPTEE_SMC_RETURN_EBADCMD		Bad/unknown cmd in struct optee_msg_arg
+ * OPTEE_SMC_RETURN_IS_RPC()		Call suspended by RPC call to normal
+ *					world.
+ */
+#define OPTEE_SMC_FUNCID_CALL_WITH_ARG OPTEE_MSG_FUNCID_CALL_WITH_ARG
+#define OPTEE_SMC_CALL_WITH_ARG \
+	OPTEE_SMC_STD_CALL_VAL(OPTEE_SMC_FUNCID_CALL_WITH_ARG)
+
+/*
+ * Get Shared Memory Config
+ *
+ * Returns the Secure/Non-secure shared memory config.
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC_GET_SHM_CONFIG
+ * a1-6	Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Have config return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Physical address of start of SHM
+ * a2	Size of SHM
+ * a3	Cache settings of memory, as defined by the
+ *	OPTEE_SMC_SHM_* values above
+ * a4-7	Preserved
+ *
+ * Not available register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-3 Not used
+ * a4-7	Preserved
+ */
+#define OPTEE_SMC_FUNCID_GET_SHM_CONFIG	7
+#define OPTEE_SMC_GET_SHM_CONFIG \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_SHM_CONFIG)
+
+struct optee_smc_get_shm_config_result {
+	unsigned long status;
+	unsigned long start;
+	unsigned long size;
+	unsigned long settings;
+};
+
+/*
+ * Exchanges capabilities between normal world and secure world
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC_EXCHANGE_CAPABILITIES
+ * a1	bitfield of normal world capabilities OPTEE_SMC_NSEC_CAP_*
+ * a2-6	Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Normal return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	bitfield of secure world capabilities OPTEE_SMC_SEC_CAP_*
+ * a2	The maximum secure world notification number
+ * a3	Bit[7:0]: Number of parameters needed for RPC to be supplied
+ *		  as the second MSG arg struct for
+ *		  OPTEE_SMC_CALL_WITH_ARG
+ *	Bit[31:8]: Reserved (MBZ)
+ * a4-7	Preserved
+ *
+ * Error return register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL, can't use the capabilities from normal world
+ * a1	bitfield of secure world capabilities OPTEE_SMC_SEC_CAP_*
+ * a2-7 Preserved
+ */
+/* Normal world works as a uniprocessor system */
+#define OPTEE_SMC_NSEC_CAP_UNIPROCESSOR		BIT(0)
+/* Secure world has reserved shared memory for normal world to use */
+#define OPTEE_SMC_SEC_CAP_HAVE_RESERVED_SHM	BIT(0)
+/* Secure world can communicate via previously unregistered shared memory */
+#define OPTEE_SMC_SEC_CAP_UNREGISTERED_SHM	BIT(1)
+
+/*
+ * Secure world supports commands "register/unregister shared memory",
+ * secure world accepts command buffers located in any parts of non-secure RAM
+ */
+#define OPTEE_SMC_SEC_CAP_DYNAMIC_SHM		BIT(2)
+/* Secure world supports Shared Memory with a NULL reference */
+#define OPTEE_SMC_SEC_CAP_MEMREF_NULL		BIT(4)
+
+#define OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES	9
+#define OPTEE_SMC_EXCHANGE_CAPABILITIES \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_EXCHANGE_CAPABILITIES)
+
+struct optee_smc_exchange_capabilities_result {
+	unsigned long status;
+	unsigned long capabilities;
+	unsigned long max_notif_value;
+	unsigned long data;
+};
+
+/*
+ * Query OP-TEE about number of supported threads
+ *
+ * Normal World OS or Hypervisor issues this call to find out how many
+ * threads OP-TEE supports. That is how many standard calls can be issued
+ * in parallel before OP-TEE will return OPTEE_SMC_RETURN_ETHREAD_LIMIT.
+ *
+ * Call requests usage:
+ * a0	SMC Function ID, OPTEE_SMC_GET_THREAD_COUNT
+ * a1-6 Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Normal return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	Number of threads
+ * a2-7 Preserved
+ *
+ * Error return:
+ * a0	OPTEE_SMC_RETURN_UNKNOWN_FUNCTION   Requested call is not implemented
+ * a1-7	Preserved
+ */
+#define OPTEE_SMC_FUNCID_GET_THREAD_COUNT	15
+#define OPTEE_SMC_GET_THREAD_COUNT \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_THREAD_COUNT)
+
+/*
+ * Inform OP-TEE that normal world is able to receive asynchronous
+ * notifications.
+ *
+ * Call requests usage:
+ * a0	SMC Function ID, OPTEE_SMC_ENABLE_ASYNC_NOTIF
+ * a1-6	Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Normal return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1-7	Preserved
+ *
+ * Not supported return register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-7	Preserved
+ */
+#define OPTEE_SMC_FUNCID_ENABLE_ASYNC_NOTIF	16
+#define OPTEE_SMC_ENABLE_ASYNC_NOTIF \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_ENABLE_ASYNC_NOTIF)
+
+/*
+ * Retrieve a value of notifications pending since the last call of this
+ * function.
+ *
+ * OP-TEE keeps a record of all posted values. When an interrupt is
+ * received which indicates that there are posted values this function
+ * should be called until all pended values have been retrieved. When a
+ * value is retrieved, it's cleared from the record in secure world.
+ *
+ * It is expected that this function is called from an interrupt handler
+ * in normal world.
+ *
+ * Call requests usage:
+ * a0	SMC Function ID, OPTEE_SMC_GET_ASYNC_NOTIF_VALUE
+ * a1-6	Not used
+ * a7	Hypervisor Client ID register
+ *
+ * Normal return register usage:
+ * a0	OPTEE_SMC_RETURN_OK
+ * a1	value
+ * a2	Bit[0]: OPTEE_SMC_ASYNC_NOTIF_VALUE_VALID if the value in a1 is
+ *		valid, else 0 if no values where pending
+ * a2	Bit[1]: OPTEE_SMC_ASYNC_NOTIF_VALUE_PENDING if another value is
+ *		pending, else 0.
+ *	Bit[31:2]: MBZ
+ * a3-7	Preserved
+ *
+ * Not supported return register usage:
+ * a0	OPTEE_SMC_RETURN_ENOTAVAIL
+ * a1-7	Preserved
+ */
+#define OPTEE_SMC_ASYNC_NOTIF_VALUE_VALID	BIT(0)
+#define OPTEE_SMC_ASYNC_NOTIF_VALUE_PENDING	BIT(1)
+
+/*
+ * Notification that OP-TEE expects a yielding call to do some bottom half
+ * work in a driver.
+ */
+#define OPTEE_SMC_ASYNC_NOTIF_VALUE_DO_BOTTOM_HALF	0
+
+#define OPTEE_SMC_FUNCID_GET_ASYNC_NOTIF_VALUE	17
+#define OPTEE_SMC_GET_ASYNC_NOTIF_VALUE \
+	OPTEE_SMC_FAST_CALL_VAL(OPTEE_SMC_FUNCID_GET_ASYNC_NOTIF_VALUE)
+
+/* See OPTEE_SMC_CALL_WITH_REGD_ARG above */
+#define OPTEE_SMC_FUNCID_CALL_WITH_REGD_ARG	19
+
+/*
+ * Resume from RPC (for example after processing a foreign interrupt)
+ *
+ * Call register usage:
+ * a0	SMC Function ID, OPTEE_SMC_CALL_RETURN_FROM_RPC
+ * a1-3	Value of a1-3 when OPTEE_SMC_CALL_WITH_ARG returned
+ *	OPTEE_SMC_RETURN_RPC in a0
+ *
+ * Return register usage is the same as for OPTEE_SMC_*CALL_WITH_ARG above.
+ *
+ * Possible return values
+ * OPTEE_SMC_RETURN_UNKNOWN_FUNCTION	Trusted OS does not recognize this
+ *					function.
+ * OPTEE_SMC_RETURN_OK			Original call completed, result
+ *					updated in the previously supplied.
+ *					struct optee_msg_arg
+ * OPTEE_SMC_RETURN_RPC			Call suspended by RPC call to normal
+ *					world.
+ * OPTEE_SMC_RETURN_ERESUME		Resume failed, the opaque resume
+ *					information was corrupt.
+ */
+#define OPTEE_SMC_FUNCID_RETURN_FROM_RPC	3
+#define OPTEE_SMC_CALL_RETURN_FROM_RPC \
+	OPTEE_SMC_STD_CALL_VAL(OPTEE_SMC_FUNCID_RETURN_FROM_RPC)
+
+#define OPTEE_SMC_RETURN_RPC_PREFIX_MASK	0xFFFF0000
+#define OPTEE_SMC_RETURN_RPC_PREFIX		0xFFFF0000
+#define OPTEE_SMC_RETURN_RPC_FUNC_MASK		0x0000FFFF
+
+#define OPTEE_SMC_RETURN_GET_RPC_FUNC(ret) \
+	((ret) & OPTEE_SMC_RETURN_RPC_FUNC_MASK)
+
+#define OPTEE_SMC_RPC_VAL(func)		((func) | OPTEE_SMC_RETURN_RPC_PREFIX)
+
+/*
+ * Allocate memory for RPC parameter passing. The memory is used to hold a
+ * struct optee_msg_arg.
+ *
+ * "Call" register usage:
+ * a0	This value, OPTEE_SMC_RETURN_RPC_ALLOC
+ * a1	Size in bytes of required argument memory
+ * a2	Not used
+ * a3	Resume information, must be preserved
+ * a4-5	Not used
+ * a6-7	Resume information, must be preserved
+ *
+ * "Return" register usage:
+ * a0	SMC Function ID, OPTEE_SMC_CALL_RETURN_FROM_RPC.
+ * a1	Upper 32 bits of 64-bit physical pointer to allocated
+ *	memory, (a1 == 0 && a2 == 0) if size was 0 or if memory can't
+ *	be allocated.
+ * a2	Lower 32 bits of 64-bit physical pointer to allocated
+ *	memory, (a1 == 0 && a2 == 0) if size was 0 or if memory can't
+ *	be allocated
+ * a3	Preserved
+ * a4	Upper 32 bits of 64-bit Shared memory cookie used when freeing
+ *	the memory or doing an RPC
+ * a5	Lower 32 bits of 64-bit Shared memory cookie used when freeing
+ *	the memory or doing an RPC
+ * a6-7	Preserved
+ */
+#define OPTEE_SMC_RPC_FUNC_ALLOC	0
+#define OPTEE_SMC_RETURN_RPC_ALLOC \
+	OPTEE_SMC_RPC_VAL(OPTEE_SMC_RPC_FUNC_ALLOC)
+
+/*
+ * Free memory previously allocated by OPTEE_SMC_RETURN_RPC_ALLOC
+ *
+ * "Call" register usage:
+ * a0	This value, OPTEE_SMC_RETURN_RPC_FREE
+ * a1	Upper 32 bits of 64-bit shared memory cookie belonging to this
+ *	argument memory
+ * a2	Lower 32 bits of 64-bit shared memory cookie belonging to this
+ *	argument memory
+ * a3-7	Resume information, must be preserved
+ *
+ * "Return" register usage:
+ * a0	SMC Function ID, OPTEE_SMC_CALL_RETURN_FROM_RPC.
+ * a1-2	Not used
+ * a3-7	Preserved
+ */
+#define OPTEE_SMC_RPC_FUNC_FREE		2
+#define OPTEE_SMC_RETURN_RPC_FREE \
+	OPTEE_SMC_RPC_VAL(OPTEE_SMC_RPC_FUNC_FREE)
+
+/*
+ * Deliver a foreign interrupt in normal world.
+ *
+ * "Call" register usage:
+ * a0	OPTEE_SMC_RETURN_RPC_FOREIGN_INTR
+ * a1-7	Resume information, must be preserved
+ *
+ * "Return" register usage:
+ * a0	SMC Function ID, OPTEE_SMC_CALL_RETURN_FROM_RPC.
+ * a1-7	Preserved
+ */
+#define OPTEE_SMC_RPC_FUNC_FOREIGN_INTR	4
+#define OPTEE_SMC_RETURN_RPC_FOREIGN_INTR \
+	OPTEE_SMC_RPC_VAL(OPTEE_SMC_RPC_FUNC_FOREIGN_INTR)
+
+/*
+ * Do an RPC request. The supplied struct optee_msg_arg tells which
+ * request to do and the parameters for the request. The following fields
+ * are used (the rest are unused):
+ * - cmd		the Request ID
+ * - ret		return value of the request, filled in by normal world
+ * - num_params		number of parameters for the request
+ * - params		the parameters
+ * - param_attrs	attributes of the parameters
+ *
+ * "Call" register usage:
+ * a0	OPTEE_SMC_RETURN_RPC_CMD
+ * a1	Upper 32 bits of a 64-bit Shared memory cookie holding a
+ *	struct optee_msg_arg, must be preserved, only the data should
+ *	be updated
+ * a2	Lower 32 bits of a 64-bit Shared memory cookie holding a
+ *	struct optee_msg_arg, must be preserved, only the data should
+ *	be updated
+ * a3-7	Resume information, must be preserved
+ *
+ * "Return" register usage:
+ * a0	SMC Function ID, OPTEE_SMC_CALL_RETURN_FROM_RPC.
+ * a1-2	Not used
+ * a3-7	Preserved
+ */
+#define OPTEE_SMC_RPC_FUNC_CMD		5
+#define OPTEE_SMC_RETURN_RPC_CMD \
+	OPTEE_SMC_RPC_VAL(OPTEE_SMC_RPC_FUNC_CMD)
+
+/* Returned in a0 */
+#define OPTEE_SMC_RETURN_UNKNOWN_FUNCTION 0xFFFFFFFF
+
+/* Returned in a0 only from Trusted OS functions */
+#define OPTEE_SMC_RETURN_OK		0x0
+#define OPTEE_SMC_RETURN_ETHREAD_LIMIT	0x1
+#define OPTEE_SMC_RETURN_EBUSY		0x2
+#define OPTEE_SMC_RETURN_ERESUME	0x3
+#define OPTEE_SMC_RETURN_EBADADDR	0x4
+#define OPTEE_SMC_RETURN_EBADCMD	0x5
+#define OPTEE_SMC_RETURN_ENOMEM		0x6
+#define OPTEE_SMC_RETURN_ENOTAVAIL	0x7
+#define OPTEE_SMC_RETURN_IS_RPC(ret)	__optee_smc_return_is_rpc((ret))
+
+static inline bool __optee_smc_return_is_rpc(u32 ret)
+{
+	return ret != OPTEE_SMC_RETURN_UNKNOWN_FUNCTION &&
+	       (ret & OPTEE_SMC_RETURN_RPC_PREFIX_MASK) ==
+			OPTEE_SMC_RETURN_RPC_PREFIX;
+}
+
+#endif /* OPTEE_SMC_H */
diff --git a/drivers/tee/optee/rpc.c b/drivers/tee/optee/rpc.c
new file mode 100644
index 000000000000..3d0a7f29807e
--- /dev/null
+++ b/drivers/tee/optee/rpc.c
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ */
+
+#define pr_fmt(fmt) "optee: " fmt
+
+#include <linux/tee_drv.h>
+#include "optee_private.h"
+
+void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
+		   struct optee_msg_arg *arg)
+{
+	pr_notice_once("optee: No supplicant or RPC handler for command 0x%x\n", arg->cmd);
+	arg->ret = TEEC_ERROR_NOT_SUPPORTED;
+}
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
new file mode 100644
index 000000000000..354a94a2f219
--- /dev/null
+++ b/drivers/tee/optee/smc_abi.c
@@ -0,0 +1,748 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2021, Linaro Limited
+ * Copyright (c) 2016, EPAM Systems
+ */
+
+#define pr_fmt(fmt) "optee: smc_abi: " fmt
+
+#include <linux/arm-smccc.h>
+#include <linux/errno.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <of.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/tee_drv.h>
+#include <linux/types.h>
+#include "optee_private.h"
+#include "optee_smc.h"
+
+/*
+ * This file implement the SMC ABI used when communicating with secure world
+ * OP-TEE OS via raw SMCs.
+ * This file is divided into the following sections:
+ * 1. Convert between struct tee_param and struct optee_msg_param
+ * 2. Low level support functions to register shared memory in secure world
+ * 3. Do a normal scheduled call into secure world
+ * 4. Driver initialization.
+ */
+
+/*
+ * 1. Convert between struct tee_param and struct optee_msg_param
+ *
+ * optee_from_msg_param() and optee_to_msg_param() are the main
+ * functions.
+ */
+
+static int from_msg_param_tmp_mem(struct tee_param *p, u32 attr,
+				  const struct optee_msg_param *mp)
+{
+	struct tee_shm *shm;
+	phys_addr_t pa;
+	int rc;
+
+	p->attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT +
+		  attr - OPTEE_MSG_ATTR_TYPE_TMEM_INPUT;
+	p->u.memref.size = mp->u.tmem.size;
+	shm = (struct tee_shm *)(unsigned long)mp->u.tmem.shm_ref;
+	if (!shm) {
+		p->u.memref.shm_offs = 0;
+		p->u.memref.shm = NULL;
+		return 0;
+	}
+
+	rc = tee_shm_get_pa(shm, 0, &pa);
+	if (rc)
+		return rc;
+
+	p->u.memref.shm_offs = mp->u.tmem.buf_ptr - pa;
+	p->u.memref.shm = shm;
+
+	return 0;
+}
+
+static void from_msg_param_reg_mem(struct tee_param *p, u32 attr,
+				   const struct optee_msg_param *mp)
+{
+	struct tee_shm *shm;
+
+	p->attr = TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT +
+		  attr - OPTEE_MSG_ATTR_TYPE_RMEM_INPUT;
+	p->u.memref.size = mp->u.rmem.size;
+	shm = (struct tee_shm *)(unsigned long)mp->u.rmem.shm_ref;
+
+	if (shm) {
+		p->u.memref.shm_offs = mp->u.rmem.offs;
+		p->u.memref.shm = shm;
+	} else {
+		p->u.memref.shm_offs = 0;
+		p->u.memref.shm = NULL;
+	}
+}
+
+/**
+ * optee_from_msg_param() - convert from OPTEE_MSG parameters to
+ *			    struct tee_param
+ * @optee:	main service struct
+ * @params:	subsystem internal parameter representation
+ * @num_params:	number of elements in the parameter arrays
+ * @msg_params:	OPTEE_MSG parameters
+ * Returns 0 on success or <0 on failure
+ */
+static int optee_from_msg_param(struct optee *optee, struct tee_param *params,
+				size_t num_params,
+				const struct optee_msg_param *msg_params)
+{
+	int rc;
+	size_t n;
+
+	for (n = 0; n < num_params; n++) {
+		struct tee_param *p = params + n;
+		const struct optee_msg_param *mp = msg_params + n;
+		u32 attr = mp->attr & OPTEE_MSG_ATTR_TYPE_MASK;
+
+		switch (attr) {
+		case OPTEE_MSG_ATTR_TYPE_NONE:
+			p->attr = TEE_IOCTL_PARAM_ATTR_TYPE_NONE;
+			memset(&p->u, 0, sizeof(p->u));
+			break;
+		case OPTEE_MSG_ATTR_TYPE_VALUE_INPUT:
+		case OPTEE_MSG_ATTR_TYPE_VALUE_OUTPUT:
+		case OPTEE_MSG_ATTR_TYPE_VALUE_INOUT:
+			optee_from_msg_param_value(p, attr, mp);
+			break;
+		case OPTEE_MSG_ATTR_TYPE_TMEM_INPUT:
+		case OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT:
+		case OPTEE_MSG_ATTR_TYPE_TMEM_INOUT:
+			rc = from_msg_param_tmp_mem(p, attr, mp);
+			if (rc)
+				return rc;
+			break;
+		case OPTEE_MSG_ATTR_TYPE_RMEM_INPUT:
+		case OPTEE_MSG_ATTR_TYPE_RMEM_OUTPUT:
+		case OPTEE_MSG_ATTR_TYPE_RMEM_INOUT:
+			from_msg_param_reg_mem(p, attr, mp);
+			break;
+
+		default:
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
+static int to_msg_param_reg_mem(struct optee_msg_param *mp,
+				const struct tee_param *p)
+{
+	mp->attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT + p->attr -
+		   TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+
+	mp->u.rmem.shm_ref = (unsigned long)p->u.memref.shm;
+	mp->u.rmem.size = p->u.memref.size;
+	mp->u.rmem.offs = p->u.memref.shm_offs;
+	return 0;
+}
+
+static int to_msg_param_tmp_mem(struct optee_msg_param *mp,
+				const struct tee_param *p)
+{
+	int rc;
+	phys_addr_t pa;
+
+	mp->attr = OPTEE_MSG_ATTR_TYPE_TMEM_INPUT + p->attr -
+		   TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT;
+
+	mp->u.tmem.shm_ref = (unsigned long)p->u.memref.shm;
+	mp->u.tmem.size = p->u.memref.size;
+
+	if (!p->u.memref.shm) {
+		mp->u.tmem.buf_ptr = 0;
+		return 0;
+	}
+
+	rc = tee_shm_get_pa(p->u.memref.shm, p->u.memref.shm_offs, &pa);
+	if (rc)
+		return rc;
+
+	mp->u.tmem.buf_ptr = pa;
+	mp->attr |= OPTEE_MSG_ATTR_CACHE_PREDEFINED <<
+		    OPTEE_MSG_ATTR_CACHE_SHIFT;
+
+	return 0;
+}
+
+/**
+ * optee_to_msg_param() - convert from struct tee_params to OPTEE_MSG parameters
+ * @optee:	main service struct
+ * @msg_params:	OPTEE_MSG parameters
+ * @num_params:	number of elements in the parameter arrays
+ * @params:	subsystem internal parameter representation
+ * Returns 0 on success or <0 on failure
+ */
+static int optee_to_msg_param(struct optee *optee,
+			      struct optee_msg_param *msg_params,
+			      size_t num_params, const struct tee_param *params)
+{
+	int rc;
+	size_t n;
+
+	for (n = 0; n < num_params; n++) {
+		const struct tee_param *p = params + n;
+		struct optee_msg_param *mp = msg_params + n;
+
+		switch (p->attr) {
+		case TEE_IOCTL_PARAM_ATTR_TYPE_NONE:
+			mp->attr = TEE_IOCTL_PARAM_ATTR_TYPE_NONE;
+			memset(&mp->u, 0, sizeof(mp->u));
+			break;
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT:
+			optee_to_msg_param_value(mp, p);
+			break;
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
+		case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
+			if (tee_shm_is_dynamic(p->u.memref.shm))
+				rc = to_msg_param_reg_mem(mp, p);
+			else
+				rc = to_msg_param_tmp_mem(mp, p);
+			if (rc)
+				return rc;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+	return 0;
+}
+
+/*
+ * 2. Low level support functions to register shared memory in secure world
+ *
+ * Functions to enable/disable shared memory caching in secure world, that
+ * is, lazy freeing of previously allocated shared memory. Freeing is
+ * performed when a request has been compled.
+ */
+
+#define PAGELIST_ENTRIES_PER_PAGE				\
+	((OPTEE_MSG_NONCONTIG_PAGE_SIZE / sizeof(u64)) - 1)
+
+/**
+ * optee_alloc_and_init_page_list() - Provide page list of memory buffer
+ * @buf:               Start of buffer
+ * @len:               Length of buffer
+ * @phys_buf_ptr       Physical pointer with coded offset to page list
+ *
+ * Secure world doesn't share mapping with Normal world (barebox in this case)
+ * so physical pointers are needed when sharing pointers.
+ *
+ * Returns a pointer page list on success or NULL on failure
+ */
+static void *optee_alloc_and_init_page_list(void *buf, unsigned long len, u64 *phys_buf_ptr)
+{
+       const unsigned int page_size = OPTEE_MSG_NONCONTIG_PAGE_SIZE;
+       const phys_addr_t page_mask = page_size - 1;
+       u8 *buf_base;
+       unsigned int page_offset;
+       unsigned int num_pages;
+       unsigned int list_size;
+       unsigned int n;
+       void *page_list;
+       struct {
+               u64 pages_list[PAGELIST_ENTRIES_PER_PAGE];
+               u64 next_page_data;
+       } *pages_data;
+
+       /*
+        * A Memory buffer is described in chunks of 4k. The list of
+        * physical addresses has to be represented by a physical pointer
+        * too and a single list has to start at a 4k page and fit into
+        * that page. In order to be able to describe large memory buffers
+        * these 4k pages carrying physical addresses are linked together
+        * in a list. See OPTEE_MSG_ATTR_NONCONTIG in
+        * drivers/tee/optee/optee_msg.h for more information.
+        */
+
+       page_offset = (unsigned long)buf & page_mask;
+       num_pages = roundup(page_offset + len, page_size) / page_size;
+       list_size = DIV_ROUND_UP(num_pages, PAGELIST_ENTRIES_PER_PAGE) *
+                   page_size;
+       page_list = memalign(page_size, list_size);
+       if (!page_list)
+               return NULL;
+
+       pages_data = page_list;
+       buf_base = (u8 *)rounddown((unsigned long)buf, page_size);
+       n = 0;
+       while (num_pages) {
+               pages_data->pages_list[n] = virt_to_phys(buf_base);
+               n++;
+               buf_base += page_size;
+               num_pages--;
+
+               if (n == PAGELIST_ENTRIES_PER_PAGE) {
+                       pages_data->next_page_data =
+                               virt_to_phys(pages_data + 1);
+                       pages_data++;
+                       n = 0;
+               }
+       }
+
+       *phys_buf_ptr = virt_to_phys(page_list) | page_offset;
+       return page_list;
+}
+
+static int optee_shm_register(struct tee_context *ctx, struct tee_shm *shm)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_msg_arg *msg_arg;
+	struct tee_shm *shm_arg;
+	u64 *pages_list;
+	u64 ph_ptr;
+	int rc = 0;
+
+	pages_list = optee_alloc_and_init_page_list(shm->kaddr, shm->size, &ph_ptr);
+	if (!pages_list)
+		return -ENOMEM;
+
+	/*
+	 * We don't use a cache for shared memory allocation like Linux,
+	 * so it's safe to directly call optee_get_msg_arg here.
+	 */
+	msg_arg = optee_get_msg_arg(ctx, 1, &shm_arg);
+	if (IS_ERR(msg_arg)) {
+		rc = PTR_ERR(msg_arg);
+		goto free_pages_list;
+	}
+
+	msg_arg->num_params = 1;
+	msg_arg->cmd = OPTEE_MSG_CMD_REGISTER_SHM;
+	msg_arg->params->attr = OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT |
+				OPTEE_MSG_ATTR_NONCONTIG;
+	msg_arg->params->u.tmem.buf_ptr = ph_ptr;
+	msg_arg->params->u.tmem.shm_ref = (unsigned long)shm;
+	msg_arg->params->u.tmem.size = tee_shm_get_size(shm);
+
+	if (optee->ops->do_call_with_arg(ctx, msg_arg) ||
+	    msg_arg->ret != TEEC_SUCCESS)
+		rc = -EINVAL;
+
+	optee_free_msg_arg(ctx, shm_arg);
+free_pages_list:
+	free(pages_list);
+
+	return rc;
+}
+
+static int optee_shm_unregister(struct tee_context *ctx, struct tee_shm *shm)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_msg_arg *msg_arg;
+	struct tee_shm *shm_arg;
+	int rc = 0;
+
+	/*
+	 * We don't use a cache for shared memory allocation like Linux,
+	 * so it's safe to directly call optee_get_msg_arg here.
+	 */
+	msg_arg = optee_get_msg_arg(ctx, 1, &shm_arg);
+	if (IS_ERR(msg_arg))
+		return PTR_ERR(msg_arg);
+
+	msg_arg->num_params = 1;
+	msg_arg->cmd = OPTEE_MSG_CMD_UNREGISTER_SHM;
+	msg_arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_RMEM_INPUT;
+	msg_arg->params[0].u.rmem.shm_ref = (unsigned long)shm;
+
+	if (optee->ops->do_call_with_arg(ctx, msg_arg) ||
+	    msg_arg->ret != TEEC_SUCCESS)
+		rc = -EINVAL;
+
+	optee_free_msg_arg(ctx, shm_arg);
+	return rc;
+}
+
+/*
+ * 3. Do a normal scheduled call into secure world
+ *
+ * The function optee_smc_do_call_with_arg() performs a normal scheduled
+ * call into secure world. During this call may normal world request help
+ * from normal world using RPCs, Remote Procedure Calls. This includes
+ * delivery of non-secure interrupts to for instance allow rescheduling of
+ * the current task.
+ */
+
+
+/**
+ * optee_handle_rpc() - handle RPC from secure world
+ * @ctx:	context doing the RPC
+ * @param:	value of registers for the RPC
+ * @call_ctx:	call context. Preserved during one OP-TEE invocation
+ *
+ * Result of RPC is written back into @param.
+ */
+static void optee_handle_rpc(struct tee_context *ctx, struct optee_rpc_param *param,
+			     void *page_list)
+{
+	struct tee_device *teedev = ctx->teedev;
+	struct optee *optee = tee_get_drvdata(teedev);
+	struct optee_msg_arg *arg;
+	struct tee_shm *shm;
+	phys_addr_t pa;
+
+	switch (OPTEE_SMC_RETURN_GET_RPC_FUNC(param->a0)) {
+	case OPTEE_SMC_RPC_FUNC_ALLOC:
+		shm = tee_shm_alloc_priv_buf(optee->ctx, param->a1);
+		if (!IS_ERR(shm) && !tee_shm_get_pa(shm, 0, &pa)) {
+			reg_pair_from_64(&param->a1, &param->a2, pa);
+			/* "cookie" */
+			reg_pair_from_64(&param->a4, &param->a5,
+					 (unsigned long)shm);
+		} else {
+			param->a1 = 0;
+			param->a2 = 0;
+			param->a4 = 0;
+			param->a5 = 0;
+		}
+		break;
+	case OPTEE_SMC_RPC_FUNC_FREE:
+		shm = reg_pair_to_ptr(param->a1, param->a2);
+		tee_shm_free(shm);
+		break;
+	case OPTEE_SMC_RPC_FUNC_FOREIGN_INTR:
+		break;
+	case OPTEE_SMC_RPC_FUNC_CMD:
+		shm = reg_pair_to_ptr(param->a1, param->a2);
+		arg = tee_shm_get_va(shm, 0);
+		if (IS_ERR(arg)) {
+			pr_err("%s: tee_shm_get_va %p failed\n",
+			       __func__, shm);
+			break;
+		}
+
+		optee_rpc_cmd(ctx, optee, arg);
+		break;
+	default:
+		pr_warn("Unknown RPC func 0x%x\n",
+			(u32)OPTEE_SMC_RETURN_GET_RPC_FUNC(param->a0));
+		break;
+	}
+
+	param->a0 = OPTEE_SMC_CALL_RETURN_FROM_RPC;
+}
+
+/**
+ * optee_smc_do_call_with_arg() - Do an SMC to OP-TEE in secure world
+ * @ctx:	calling context
+ * @arg:	argument to pass to secure world
+ *
+ * Does and SMC to OP-TEE in secure world and handles eventual resulting
+ * Remote Procedure Calls (RPC) from OP-TEE.
+ *
+ * Returns return code from secure world, 0 is OK
+ */
+static int optee_smc_do_call_with_arg(struct tee_context *ctx,
+				      struct optee_msg_arg *arg)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	struct optee_rpc_param param = { .a0 = OPTEE_SMC_CALL_WITH_ARG };
+	void *page_list = NULL;
+
+	reg_pair_from_64(&param.a1, &param.a2, virt_to_phys(arg));
+	while (true) {
+		struct arm_smccc_res res;
+
+		/* MMU will always be enabled at this moment and with matching caching
+		 * attributes, we need not worry about flushing
+		 */
+
+		optee->smc.invoke_fn(param.a0, param.a1, param.a2, param.a3,
+				     param.a4, param.a5, param.a6, param.a7, &res);
+
+		free(page_list);
+		page_list = NULL;
+
+		if (OPTEE_SMC_RETURN_IS_RPC(res.a0)) {
+			param.a0 = res.a0;
+			param.a1 = res.a1;
+			param.a2 = res.a2;
+			param.a3 = res.a3;
+			optee_handle_rpc(ctx, &param, &page_list);
+		} else {
+			return res.a0;
+		}
+	}
+}
+
+/*
+ * 4. Driver initialization
+ *
+ * During driver initialization is secure world probed to find out which
+ * features it supports so the driver can be initialized with a matching
+ * configuration. This involves for instance support for dynamic shared
+ * memory instead of a static memory carvout.
+ */
+
+static void optee_get_version(struct tee_device *teedev,
+			      struct tee_ioctl_version_data *vers)
+{
+	struct tee_ioctl_version_data v = {
+		.impl_id = TEE_IMPL_ID_OPTEE,
+		.impl_caps = TEE_OPTEE_CAP_TZ,
+		.gen_caps = TEE_GEN_CAP_GP,
+	};
+	struct optee *optee = tee_get_drvdata(teedev);
+
+	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_SHM)
+		v.gen_caps |= TEE_GEN_CAP_REG_MEM;
+	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_MEMREF_NULL)
+		v.gen_caps |= TEE_GEN_CAP_MEMREF_NULL;
+	*vers = v;
+}
+
+static int optee_smc_open(struct tee_context *ctx)
+{
+	struct optee *optee = tee_get_drvdata(ctx->teedev);
+	u32 sec_caps = optee->smc.sec_caps;
+
+	return optee_open(ctx, sec_caps & OPTEE_SMC_SEC_CAP_MEMREF_NULL);
+}
+
+static const struct tee_driver_ops optee_clnt_ops = {
+	.get_version = optee_get_version,
+	.open = optee_smc_open,
+	.release = optee_release,
+	.open_session = optee_open_session,
+	.close_session = optee_close_session,
+	.invoke_func = optee_invoke_func,
+	.shm_register = optee_shm_register,
+	.shm_unregister = optee_shm_unregister,
+};
+
+static const struct tee_desc optee_clnt_desc = {
+	.name = DRIVER_NAME "-clnt",
+	.ops = &optee_clnt_ops,
+	.owner = THIS_MODULE,
+};
+
+static const struct optee_ops optee_ops = {
+	.do_call_with_arg = optee_smc_do_call_with_arg,
+	.to_msg_param = optee_to_msg_param,
+	.from_msg_param = optee_from_msg_param,
+};
+
+static bool optee_msg_api_uid_is_optee_api(optee_invoke_fn *invoke_fn)
+{
+	struct arm_smccc_res res;
+
+	invoke_fn(OPTEE_SMC_CALLS_UID, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	if (res.a0 == OPTEE_MSG_UID_0 && res.a1 == OPTEE_MSG_UID_1 &&
+	    res.a2 == OPTEE_MSG_UID_2 && res.a3 == OPTEE_MSG_UID_3)
+		return true;
+	return false;
+}
+
+static void optee_msg_get_os_revision(optee_invoke_fn *invoke_fn)
+{
+	union {
+		struct arm_smccc_res smccc;
+		struct optee_smc_call_get_os_revision_result result;
+	} res = {
+		.result = {
+			.build_id = 0
+		}
+	};
+
+	invoke_fn(OPTEE_SMC_CALL_GET_OS_REVISION, 0, 0, 0, 0, 0, 0, 0,
+		  &res.smccc);
+
+	if (res.result.build_id)
+		pr_info("revision %lu.%lu (%08lx)\n", res.result.major,
+			res.result.minor, res.result.build_id);
+	else
+		pr_info("revision %lu.%lu\n", res.result.major, res.result.minor);
+}
+
+static bool optee_msg_api_revision_is_compatible(optee_invoke_fn *invoke_fn)
+{
+	union {
+		struct arm_smccc_res smccc;
+		struct optee_smc_calls_revision_result result;
+	} res;
+
+	invoke_fn(OPTEE_SMC_CALLS_REVISION, 0, 0, 0, 0, 0, 0, 0, &res.smccc);
+
+	if (res.result.major == OPTEE_MSG_REVISION_MAJOR &&
+	    (int)res.result.minor >= OPTEE_MSG_REVISION_MINOR)
+		return true;
+	return false;
+}
+
+static bool optee_msg_exchange_capabilities(optee_invoke_fn *invoke_fn,
+					    u32 *sec_caps)
+{
+	union {
+		struct arm_smccc_res smccc;
+		struct optee_smc_exchange_capabilities_result result;
+	} res;
+
+	invoke_fn(OPTEE_SMC_EXCHANGE_CAPABILITIES,
+		  OPTEE_SMC_NSEC_CAP_UNIPROCESSOR, 0, 0, 0, 0, 0, 0,
+		  &res.smccc);
+
+	if (res.result.status != OPTEE_SMC_RETURN_OK)
+		return false;
+
+	*sec_caps = res.result.capabilities;
+
+	return true;
+}
+
+/* Simple wrapper functions to be able to use a function pointer */
+static void optee_smccc_smc(unsigned long a0, unsigned long a1,
+			    unsigned long a2, unsigned long a3,
+			    unsigned long a4, unsigned long a5,
+			    unsigned long a6, unsigned long a7,
+			    struct arm_smccc_res *res)
+{
+	arm_smccc_smc(a0, a1, a2, a3, a4, a5, a6, a7, res);
+}
+
+static void optee_smccc_hvc(unsigned long a0, unsigned long a1,
+			    unsigned long a2, unsigned long a3,
+			    unsigned long a4, unsigned long a5,
+			    unsigned long a6, unsigned long a7,
+			    struct arm_smccc_res *res)
+{
+	arm_smccc_hvc(a0, a1, a2, a3, a4, a5, a6, a7, res);
+}
+
+static optee_invoke_fn *get_invoke_func(struct device *dev)
+{
+	const char *method;
+
+	pr_info("probing for conduit method.\n");
+
+	if (of_property_read_string(dev->of_node, "method", &method)) {
+		pr_warn("missing \"method\" property\n");
+		return ERR_PTR(-ENXIO);
+	}
+
+	if (!strcmp("hvc", method))
+		return optee_smccc_hvc;
+	else if (!strcmp("smc", method))
+		return optee_smccc_smc;
+
+	pr_warn("invalid \"method\" property: %s\n", method);
+	return ERR_PTR(-EINVAL);
+}
+
+static int optee_probe(struct device *dev)
+{
+	optee_invoke_fn *invoke_fn;
+	struct optee *optee = NULL;
+	struct tee_device *teedev;
+	struct tee_context *ctx;
+	u32 sec_caps;
+	int rc;
+
+	invoke_fn = get_invoke_func(dev);
+	if (IS_ERR(invoke_fn))
+		return PTR_ERR(invoke_fn);
+
+	if (!optee_msg_api_uid_is_optee_api(invoke_fn)) {
+		pr_warn("api uid mismatch\n");
+		return -EINVAL;
+	}
+
+	optee_msg_get_os_revision(invoke_fn);
+
+	if (!optee_msg_api_revision_is_compatible(invoke_fn)) {
+		pr_warn("api revision mismatch\n");
+		return -EINVAL;
+	}
+
+	if (!optee_msg_exchange_capabilities(invoke_fn, &sec_caps)) {
+		pr_warn("capabilities mismatch\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * OP-TEE can use both shared memory via predefined pool or as
+	 * dynamic shared memory provided by normal world. To keep things
+	 * simple we're only using dynamic shared memory in this driver.
+	 */
+	if (!(sec_caps & OPTEE_SMC_SEC_CAP_DYNAMIC_SHM)) {
+		pr_err("driver requires OP-TEE dynamic shared memory support\n");
+		return -ENOSYS;
+	}
+
+	optee = kzalloc(sizeof(*optee), GFP_KERNEL);
+	if (!optee)
+		return -ENOMEM;
+
+	optee->ops = &optee_ops;
+	optee->smc.invoke_fn = invoke_fn;
+	optee->smc.sec_caps = sec_caps;
+
+	teedev = tee_device_alloc(&optee_clnt_desc, dev, optee);
+	if (IS_ERR(teedev)) {
+		rc = PTR_ERR(teedev);
+		goto err_free_optee;
+	}
+	optee->teedev = teedev;
+
+	rc = tee_device_register(optee->teedev);
+	if (rc)
+		goto err_release_teedev;
+
+	ctx = teedev_open(optee->teedev);
+	if (IS_ERR(ctx)) {
+		rc = PTR_ERR(ctx);
+		goto err_unreg_teedev;
+	}
+	optee->ctx = ctx;
+	if (rc)
+		goto err_close_ctx;
+
+	rc = optee_enumerate_devices(PTA_CMD_GET_DEVICES);
+	if (!rc)
+		rc = optee_enumerate_devices(PTA_CMD_GET_DEVICES_SUPP);
+	if (rc)
+		goto err_optee_unregister_devices;
+
+	pr_debug("initialized driver with dynamic shared memory\n");
+	return 0;
+
+err_optee_unregister_devices:
+	optee_unregister_devices();
+err_close_ctx:
+	teedev_close_context(ctx);
+err_unreg_teedev:
+	tee_device_unregister(optee->teedev);
+err_release_teedev:
+	tee_device_release(optee->teedev);
+err_free_optee:
+	kfree(optee);
+	return rc;
+}
+
+static const struct of_device_id optee_dt_match[] = {
+	{ .compatible = "linaro,optee-tz" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, optee_dt_match);
+
+static struct driver optee_driver = {
+	.probe  = optee_probe,
+	.name = "optee",
+	.of_match_table = optee_dt_match,
+};
+
+int optee_smc_abi_register(void)
+{
+	return platform_driver_register(&optee_driver);
+}
diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
new file mode 100644
index 000000000000..be92e3dfc920
--- /dev/null
+++ b/drivers/tee/tee_core.c
@@ -0,0 +1,395 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2016, Linaro Limited
+ */
+
+#define pr_fmt(fmt) "tee_core: " fmt
+
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/uaccess.h>
+#include <linux/printk.h>
+#include "tee_private.h"
+
+#define TEE_NUM_DEVICES	32
+
+#define TEE_IOCTL_PARAM_SIZE(x) (sizeof(struct tee_param) * (x))
+
+static LIST_HEAD(tee_clients);
+
+struct tee_context *teedev_open(struct tee_device *teedev)
+{
+	struct tee_context *ctx;
+	int rc;
+
+	if (!tee_device_get(teedev))
+		return ERR_PTR(-EINVAL);
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return ERR_PTR(-ENOMEM);
+
+	kref_init(&ctx->refcount);
+	ctx->teedev = teedev;
+	rc = teedev->desc->ops->open(ctx);
+	if (rc)
+		goto err;
+
+	INIT_LIST_HEAD(&ctx->list_shm);
+
+	pr_debug("%s ctx=%p teedev=%p\n", __func__, ctx, teedev);
+
+	return ctx;
+err:
+	kfree(ctx);
+	tee_device_put(teedev);
+	return ERR_PTR(rc);
+}
+EXPORT_SYMBOL_GPL(teedev_open);
+
+void teedev_ctx_get(struct tee_context *ctx)
+{
+	if (ctx->releasing)
+		return;
+
+	kref_get(&ctx->refcount);
+}
+
+static void teedev_ctx_release(struct kref *ref)
+{
+	struct tee_context *ctx = container_of(ref, struct tee_context,
+					       refcount);
+	ctx->releasing = true;
+	ctx->teedev->desc->ops->release(ctx);
+	kfree(ctx);
+}
+
+void teedev_ctx_put(struct tee_context *ctx)
+{
+	if (ctx->releasing)
+		return;
+
+	kref_put(&ctx->refcount, teedev_ctx_release);
+}
+
+void teedev_close_context(struct tee_context *ctx)
+{
+	struct tee_device *teedev = ctx->teedev;
+
+	teedev_ctx_put(ctx);
+	tee_device_put(teedev);
+}
+EXPORT_SYMBOL_GPL(teedev_close_context);
+
+int tee_session_calc_client_uuid(uuid_t *uuid, u32 connection_method,
+				 const u8 connection_data[TEE_IOCTL_UUID_LEN])
+{
+	/* Linux could generate a UUIDv5 here out of UID or GID, but in barebox,
+	 * we just mimic what it would do for LOGIN_PUBLIC and LOGIN_REE_KERNEL,
+	 * namely pass the nil UUID into the TEE environment
+	 */
+
+	uuid_copy(uuid, &uuid_null);
+	return 0;
+
+}
+EXPORT_SYMBOL_GPL(tee_session_calc_client_uuid);
+
+static void tee_devinfo(struct device *dev)
+{
+	struct tee_device *teedev = dev->priv;
+	struct tee_ioctl_version_data vers;
+
+	teedev->desc->ops->get_version(teedev, &vers);
+	printf("Implementation ID: %d\n", vers.impl_id);
+}
+
+/**
+ * tee_device_alloc() - Allocate a new struct tee_device instance
+ * @teedesc:	Descriptor for this driver
+ * @dev:	Parent device for this device
+ * @driver_data: Private driver data for this device
+ *
+ * Allocates a new struct tee_device instance. The device is
+ * removed by tee_device_unregister().
+ *
+ * @returns a pointer to a 'struct tee_device' or an ERR_PTR on failure
+ */
+struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
+				    struct device *dev,
+				    void *driver_data)
+{
+	struct tee_device *teedev;
+	void *ret;
+	int rc;
+
+	if (!teedesc || !teedesc->name || !teedesc->ops ||
+	    !teedesc->ops->get_version || !teedesc->ops->open ||
+	    !teedesc->ops->release)
+		return ERR_PTR(-EINVAL);
+
+	teedev = kzalloc(sizeof(*teedev), GFP_KERNEL);
+	if (!teedev) {
+		ret = ERR_PTR(-ENOMEM);
+		goto err;
+	}
+
+	teedev->dev.id = DEVICE_ID_DYNAMIC;
+	teedev->dev.parent = dev;
+	teedev->dev.type_data = driver_data;
+	teedev->dev.priv = teedev;
+	teedev->dev.info = tee_devinfo;
+
+	rc = dev_set_name(&teedev->dev, "tee%s",
+			  teedesc->flags & TEE_DESC_PRIVILEGED ? "priv" : "");
+	if (rc) {
+		ret = ERR_PTR(rc);
+		goto err;
+	}
+
+	/* 1 as tee_device_unregister() does one final tee_device_put() */
+	teedev->num_users = 1;
+	mutex_init(&teedev->mutex);
+
+	teedev->desc = teedesc;
+
+	return teedev;
+err:
+	pr_err("could not register %s driver\n",
+	       teedesc->flags & TEE_DESC_PRIVILEGED ? "privileged" : "client");
+	kfree(teedev);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(tee_device_alloc);
+
+void tee_device_release(struct tee_device *teedev)
+{
+	kfree(teedev);
+}
+
+/**
+ * tee_device_register() - Registers a TEE device
+ * @teedev:	Device to register
+ *
+ * tee_device_unregister() need to be called to remove the @teedev if
+ * this function fails.
+ *
+ * @returns < 0 on failure
+ */
+int tee_device_register(struct tee_device *teedev)
+{
+	int rc;
+
+	if (teedev->flags & TEE_DEVICE_FLAG_REGISTERED) {
+		dev_err(&teedev->dev, "attempt to register twice\n");
+		return -EINVAL;
+	}
+
+	rc = register_device(&teedev->dev);
+	if (rc)
+		return rc;
+
+	list_add_tail(&teedev->list, &tee_clients);
+
+	teedev->flags |= TEE_DEVICE_FLAG_REGISTERED;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(tee_device_register);
+
+void tee_device_put(struct tee_device *teedev)
+{
+	mutex_lock(&teedev->mutex);
+	/* Shouldn't put in this state */
+	if (!WARN_ON(!teedev->desc)) {
+		teedev->num_users--;
+		if (!teedev->num_users) {
+			teedev->desc = NULL;
+		}
+	}
+	mutex_unlock(&teedev->mutex);
+}
+
+bool tee_device_get(struct tee_device *teedev)
+{
+	mutex_lock(&teedev->mutex);
+	if (!teedev->desc) {
+		mutex_unlock(&teedev->mutex);
+		return false;
+	}
+	teedev->num_users++;
+	mutex_unlock(&teedev->mutex);
+	return true;
+}
+
+/**
+ * tee_device_unregister() - Removes a TEE device
+ * @teedev:	Device to unregister
+ *
+ * This function should be called to remove the @teedev even if
+ * tee_device_register() hasn't been called yet. Does nothing if
+ * @teedev is NULL.
+ */
+void tee_device_unregister(struct tee_device *teedev)
+{
+	if (!teedev)
+		return;
+
+	list_del(&teedev->list);
+	unregister_device(&teedev->dev);
+}
+EXPORT_SYMBOL_GPL(tee_device_unregister);
+
+/**
+ * tee_get_drvdata() - Return driver_data pointer
+ * @teedev:	Device containing the driver_data pointer
+ * @returns the driver_data pointer supplied to tee_device_alloc().
+ */
+void *tee_get_drvdata(struct tee_device *teedev)
+{
+	return teedev->dev.type_data;
+}
+EXPORT_SYMBOL_GPL(tee_get_drvdata);
+
+struct match_dev_data {
+	struct tee_ioctl_version_data *vers;
+	const void *data;
+	int (*match)(struct tee_ioctl_version_data *, const void *);
+};
+
+static int match_dev(struct device *dev, const void *data)
+{
+	const struct match_dev_data *match_data = data;
+	struct tee_device *teedev = container_of(dev, struct tee_device, dev);
+
+	teedev->desc->ops->get_version(teedev, match_data->vers);
+	return match_data->match(match_data->vers, match_data->data);
+}
+
+struct tee_context *
+tee_client_open_context(struct tee_context *start,
+			int (*match)(struct tee_ioctl_version_data *,
+				     const void *),
+			const void *data, struct tee_ioctl_version_data *vers)
+{
+	struct device *startdev = NULL;
+	struct tee_device *teedev;
+	struct tee_ioctl_version_data v;
+	struct match_dev_data match_data = { vers ? vers : &v, data, match };
+
+	if (start)
+		startdev = &start->teedev->dev;
+
+	list_for_each_entry(teedev, &tee_clients, list) {
+		struct device *dev = &teedev->dev;
+		struct tee_context *ctx ;
+
+		if (startdev) {
+			if (dev == startdev)
+				startdev = NULL;
+			continue;
+		}
+
+		if (!match_dev(dev, &match_data))
+			continue;
+
+		ctx = teedev_open(teedev);
+		if (IS_ERR(ctx) && PTR_ERR(ctx) != -ENOMEM)
+			continue;
+
+		/* On success or -ENOMEM, early exit the iteration */
+		return ctx;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL_GPL(tee_client_open_context);
+
+void tee_client_close_context(struct tee_context *ctx)
+{
+	teedev_close_context(ctx);
+}
+EXPORT_SYMBOL_GPL(tee_client_close_context);
+
+void tee_client_get_version(struct tee_context *ctx,
+			    struct tee_ioctl_version_data *vers)
+{
+	ctx->teedev->desc->ops->get_version(ctx->teedev, vers);
+}
+EXPORT_SYMBOL_GPL(tee_client_get_version);
+
+int tee_client_open_session(struct tee_context *ctx,
+			    struct tee_ioctl_open_session_arg *arg,
+			    struct tee_param *param)
+{
+	if (!ctx->teedev->desc->ops->open_session)
+		return -EINVAL;
+	return ctx->teedev->desc->ops->open_session(ctx, arg, param);
+}
+EXPORT_SYMBOL_GPL(tee_client_open_session);
+
+int tee_client_close_session(struct tee_context *ctx, u32 session)
+{
+	if (!ctx->teedev->desc->ops->close_session)
+		return -EINVAL;
+	return ctx->teedev->desc->ops->close_session(ctx, session);
+}
+EXPORT_SYMBOL_GPL(tee_client_close_session);
+
+int tee_client_invoke_func(struct tee_context *ctx,
+			   struct tee_ioctl_invoke_arg *arg,
+			   struct tee_param *param)
+{
+	if (!ctx->teedev->desc->ops->invoke_func)
+		return -EINVAL;
+	return ctx->teedev->desc->ops->invoke_func(ctx, arg, param);
+}
+EXPORT_SYMBOL_GPL(tee_client_invoke_func);
+
+static int tee_client_device_match(struct device *dev,
+				   struct device_driver *drv)
+{
+	const struct tee_client_device_id *id_table;
+	struct tee_client_device *tee_device;
+
+	id_table = to_tee_client_driver(drv)->id_table;
+	tee_device = to_tee_client_device(dev);
+
+	while (!uuid_is_null(&id_table->uuid)) {
+		if (uuid_equal(&tee_device->id.uuid, &id_table->uuid))
+			return 0;
+		id_table++;
+	}
+
+	return -1;
+}
+
+static int tee_bus_probe(struct device *dev)
+{
+	return dev->driver->probe(dev);
+}
+
+static void tee_bus_remove(struct device *dev)
+{
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
+}
+
+struct bus_type tee_bus_type = {
+	.name		= "tee",
+	.match		= tee_client_device_match,
+	.probe		= tee_bus_probe,
+	.remove		= tee_bus_remove,
+};
+EXPORT_SYMBOL_GPL(tee_bus_type);
+
+static int __init tee_init(void)
+{
+	return bus_register(&tee_bus_type);
+}
+pure_initcall(tee_init);
+
+MODULE_AUTHOR("Linaro");
+MODULE_DESCRIPTION("TEE Driver");
+MODULE_VERSION("1.0");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/tee/tee_private.h b/drivers/tee/tee_private.h
new file mode 100644
index 000000000000..ccd082c2c6bb
--- /dev/null
+++ b/drivers/tee/tee_private.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2015-2016, Linaro Limited
+ */
+#ifndef TEE_PRIVATE_H
+#define TEE_PRIVATE_H
+
+#include <linux/device.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
+
+#define TEE_DEVICE_FLAG_REGISTERED	0x1
+#define TEE_MAX_DEV_NAME_LEN		32
+
+struct tee_shm;
+struct tee_context;
+
+/**
+ * struct tee_device - TEE Device representation
+ * @name:	name of device
+ * @desc:	description of device
+ * @id:		unique id of device
+ * @flags:	represented by TEE_DEVICE_FLAG_REGISTERED above
+ * @dev:	embedded basic device structure
+ * @num_users:	number of active users of this device
+ * @mutex:	mutex protecting @num_users and @idr
+ */
+struct tee_device {
+	char name[TEE_MAX_DEV_NAME_LEN];
+	const struct tee_desc *desc;
+	struct list_head list;
+	unsigned int flags;
+
+	struct device dev;
+
+	size_t num_users;
+	struct mutex mutex;	/* protects num_users and idr */
+};
+
+bool tee_device_get(struct tee_device *teedev);
+void tee_device_put(struct tee_device *teedev);
+
+void teedev_ctx_get(struct tee_context *ctx);
+void teedev_ctx_put(struct tee_context *ctx);
+
+#endif /*TEE_PRIVATE_H*/
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
new file mode 100644
index 000000000000..acb74002bace
--- /dev/null
+++ b/drivers/tee/tee_shm.c
@@ -0,0 +1,206 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2015-2017, 2019-2021 Linaro Limited
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/tee_drv.h>
+#include <linux/uaccess.h>
+#include <linux/sizes.h>
+#include <fcntl.h>
+#include "tee_private.h"
+
+static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
+{
+	if (shm->flags & TEE_SHM_DYNAMIC)
+		teedev->desc->ops->shm_unregister(shm->ctx, shm);
+
+	if (!(shm->flags & TEE_SHM_PRIV))
+		list_del(&shm->link);
+
+	if (shm->flags & TEE_SHM_POOL)
+		free(shm->kaddr);
+
+	teedev_ctx_put(shm->ctx);
+
+	kfree(shm);
+
+	tee_device_put(teedev);
+}
+
+static struct tee_shm *
+register_shm_helper(struct tee_context *ctx, void *addr,
+		    size_t size, u32 flags)
+{
+	struct tee_device *teedev = ctx->teedev;
+	struct tee_shm *shm;
+	int rc;
+
+	if (!addr)
+		return ERR_PTR(-ENOMEM);
+
+	if (!tee_device_get(teedev))
+		return ERR_PTR(-EINVAL);
+
+	teedev_ctx_get(ctx);
+
+	shm = calloc(1, sizeof(*shm));
+	if (!shm) {
+		rc = -ENOMEM;
+		goto err;
+	}
+
+	shm->ctx = ctx;
+	shm->kaddr = addr;
+	shm->paddr = virt_to_phys(shm->kaddr);
+	shm->size = size;
+	shm->flags = flags;
+
+	if (!(flags & TEE_SHM_PRIV))
+		list_add(&shm->link, &ctx->list_shm);
+
+	if (flags & TEE_SHM_DYNAMIC) {
+		rc = ctx->teedev->desc->ops->shm_register(ctx, shm);
+		if (rc)
+			goto err;
+	}
+
+	refcount_set(&shm->refcount, 1);
+
+	pr_debug("%s: shm=%p addr=%p size=%zu\n", __func__, shm,
+		 addr, size);
+
+	return shm;
+err:
+	if (!(flags & TEE_SHM_PRIV))
+		list_del(&shm->link);
+
+	free(shm);
+	teedev_ctx_put(ctx);
+	tee_device_put(teedev);
+
+	return ERR_PTR(rc);
+}
+
+static struct tee_shm *shm_alloc_helper(struct tee_context *ctx, size_t size,
+					size_t align, u32 flags)
+{
+	struct tee_shm *shm;
+	void *addr;
+
+	addr = align ? memalign(align, size) : malloc(size);
+	if (!addr)
+		return ERR_PTR(-ENOMEM);
+
+	flags |= TEE_SHM_POOL;
+
+	shm = register_shm_helper(ctx, addr, size, flags);
+	if (IS_ERR(shm))
+		free(addr);
+
+	return shm;
+}
+
+/**
+ * tee_shm_alloc_kernel_buf() - Allocate shared memory for kernel buffer
+ * @ctx:	Context that allocates the shared memory
+ * @size:	Requested size of shared memory
+ *
+ * The returned memory registered in secure world and is suitable to be
+ * passed as a memory buffer in parameter argument to
+ * tee_client_invoke_func(). The memory allocated is later freed with a
+ * call to tee_shm_free().
+ *
+ * @returns a pointer to 'struct tee_shm'
+ */
+struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size)
+{
+	u32 flags = TEE_SHM_DYNAMIC | TEE_SHM_POOL;
+
+	return shm_alloc_helper(ctx, size, SZ_4K, flags);
+}
+
+/**
+ * tee_shm_alloc_priv_buf() - Allocate shared memory for a privately shared
+ *			      kernel buffer
+ * @ctx:	Context that allocates the shared memory
+ * @size:	Requested size of shared memory
+ *
+ * This function returns similar shared memory as
+ * tee_shm_alloc_kernel_buf(), but with the difference that the memory
+ * might not be registered in secure world in case the driver supports
+ * passing memory not registered in advance.
+ *
+ * This function should normally only be used internally in the TEE
+ * drivers.
+ *
+ * @returns a pointer to 'struct tee_shm'
+ */
+struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size)
+{
+	u32 flags = TEE_SHM_PRIV | TEE_SHM_POOL;
+
+	return shm_alloc_helper(ctx, size, SZ_4K, flags);
+}
+EXPORT_SYMBOL_GPL(tee_shm_alloc_priv_buf);
+
+/**
+ * tee_shm_free() - Free shared memory
+ * @shm:	Handle to shared memory to free
+ */
+void tee_shm_free(struct tee_shm *shm)
+{
+	tee_shm_put(shm);
+}
+EXPORT_SYMBOL_GPL(tee_shm_free);
+
+/**
+ * tee_shm_get_va() - Get virtual address of a shared memory plus an offset
+ * @shm:	Shared memory handle
+ * @offs:	Offset from start of this shared memory
+ * @returns virtual address of the shared memory + offs if offs is within
+ *	the bounds of this shared memory, else an ERR_PTR
+ */
+void *tee_shm_get_va(struct tee_shm *shm, size_t offs)
+{
+	if (!shm->kaddr)
+		return ERR_PTR(-EINVAL);
+	if (offs >= shm->size)
+		return ERR_PTR(-EINVAL);
+	return (char *)shm->kaddr + offs;
+}
+EXPORT_SYMBOL_GPL(tee_shm_get_va);
+
+/**
+ * tee_shm_get_pa() - Get physical address of a shared memory plus an offset
+ * @shm:	Shared memory handle
+ * @offs:	Offset from start of this shared memory
+ * @pa:		Physical address to return
+ * @returns 0 if offs is within the bounds of this shared memory, else an
+ *	error code.
+ */
+int tee_shm_get_pa(struct tee_shm *shm, size_t offs, phys_addr_t *pa)
+{
+	if (offs >= shm->size)
+		return -EINVAL;
+	if (pa)
+		*pa = shm->paddr + offs;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(tee_shm_get_pa);
+
+/**
+ * tee_shm_put() - Decrease reference count on a shared memory handle
+ * @shm:	Shared memory handle
+ */
+void tee_shm_put(struct tee_shm *shm)
+{
+	struct tee_device *teedev = shm->ctx->teedev;
+
+	if (refcount_dec_and_test(&shm->refcount))
+		tee_shm_release(teedev, shm);
+}
+EXPORT_SYMBOL_GPL(tee_shm_put);
diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index dac3c6e8a57c..4d3feb17e57d 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -10,6 +10,7 @@
 #define LINUX_MOD_DEVICETABLE_H
 
 #include <linux/types.h>
+#include <linux/uuid.h>
 
 #define PCI_ANY_ID (~0)
 
@@ -27,4 +28,13 @@ struct spi_device_id {
 	unsigned long driver_data;
 };
 
+/**
+ * struct tee_client_device_id - tee based device identifier
+ * @uuid: For TEE based client devices we use the device uuid as
+ *        the identifier.
+ */
+struct tee_client_device_id {
+	uuid_t uuid;
+};
+
 #endif /* LINUX_MOD_DEVICETABLE_H */
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
new file mode 100644
index 000000000000..e5f0344d4d06
--- /dev/null
+++ b/include/linux/tee_drv.h
@@ -0,0 +1,385 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2015-2022 Linaro Limited
+ */
+
+#ifndef __TEE_DRV_H
+#define __TEE_DRV_H
+
+#include <linux/device.h>
+#include <linux/idr.h>
+#include <linux/kref.h>
+#include <linux/list.h>
+#include <linux/mod_devicetable.h>
+#include <linux/tee.h>
+#include <linux/types.h>
+#include <linux/uuid.h>
+
+/*
+ * The file describes the API provided by the generic TEE driver to the
+ * specific TEE driver.
+ */
+
+#define TEE_SHM_DYNAMIC		BIT(0)  /* Dynamic shared memory registered */
+					/* in secure world */
+#define TEE_SHM_USER_MAPPED	BIT(1)  /* Memory mapped in user space */
+#define TEE_SHM_POOL		BIT(2)  /* Memory allocated from pool */
+#define TEE_SHM_PRIV		BIT(3)  /* Memory private to TEE driver */
+
+struct device;
+struct tee_device;
+struct tee_shm;
+
+/**
+ * struct tee_context - driver specific context on file pointer data
+ * @teedev:	pointer to this drivers struct tee_device
+ * @list_shm:	List of shared memory object owned by this context
+ * @data:	driver specific context data, managed by the driver
+ * @refcount:	reference counter for this structure
+ * @releasing:  flag that indicates if context is being released right now.
+ *		It is needed to break circular dependency on context during
+ *              shared memory release.
+ * @cap_memref_null: flag indicating if the TEE Client support shared
+ *                   memory buffer with a NULL pointer.
+ */
+struct tee_context {
+	struct tee_device *teedev;
+	struct list_head list_shm;
+	void *data;
+	struct kref refcount;
+	bool releasing;
+	bool cap_memref_null;
+};
+
+struct tee_param_memref {
+	size_t shm_offs;
+	size_t size;
+	struct tee_shm *shm;
+};
+
+struct tee_param_value {
+	u64 a;
+	u64 b;
+	u64 c;
+};
+
+struct tee_param {
+	u64 attr;
+	union {
+		struct tee_param_memref memref;
+		struct tee_param_value value;
+	} u;
+};
+
+/**
+ * struct tee_driver_ops - driver operations vtable
+ * @get_version:	returns version of driver
+ * @open:		called when the device file is opened
+ * @release:		release this open file
+ * @open_session:	open a new session
+ * @close_session:	close a session
+ * @invoke_func:	invoke a trusted function
+ * @shm_register:	register shared memory buffer in TEE
+ * @shm_unregister:	unregister shared memory buffer in TEE
+ */
+struct tee_driver_ops {
+	void (*get_version)(struct tee_device *teedev,
+			    struct tee_ioctl_version_data *vers);
+	int (*open)(struct tee_context *ctx);
+	void (*release)(struct tee_context *ctx);
+	int (*open_session)(struct tee_context *ctx,
+			    struct tee_ioctl_open_session_arg *arg,
+			    struct tee_param *param);
+	int (*close_session)(struct tee_context *ctx, u32 session);
+	int (*invoke_func)(struct tee_context *ctx,
+			   struct tee_ioctl_invoke_arg *arg,
+			   struct tee_param *param);
+	int (*shm_register)(struct tee_context *ctx, struct tee_shm *shm);
+	int (*shm_unregister)(struct tee_context *ctx, struct tee_shm *shm);
+};
+
+/**
+ * struct tee_desc - Describes the TEE driver to the subsystem
+ * @name:	name of driver
+ * @ops:	driver operations vtable
+ * @owner:	module providing the driver
+ * @flags:	Extra properties of driver, defined by TEE_DESC_* below
+ */
+#define TEE_DESC_PRIVILEGED	0x1
+struct tee_desc {
+	const char *name;
+	const struct tee_driver_ops *ops;
+	struct module *owner;
+	u32 flags;
+};
+
+/**
+ * tee_device_alloc() - Allocate a new struct tee_device instance
+ * @teedesc:	Descriptor for this driver
+ * @dev:	Parent device for this device
+ * @driver_data: Private driver data for this device
+ *
+ * Allocates a new struct tee_device instance. The device is
+ * removed by tee_device_unregister().
+ *
+ * @returns a pointer to a 'struct tee_device' or an ERR_PTR on failure
+ */
+struct tee_device *tee_device_alloc(const struct tee_desc *teedesc,
+				    struct device *dev,
+				    void *driver_data);
+
+/**
+ * tee_device_release() - Releases new struct tee_device instance
+ * @teedev: Device allocated with tee_device_alloc()
+ *
+ * Frees a struct tee_device.
+ */
+void tee_device_release(struct tee_device *teedev);
+
+/**
+ * tee_device_register() - Registers a TEE device
+ * @teedev:	Device to register
+ *
+ * tee_device_unregister() need to be called to remove the @teedev if
+ * this function fails.
+ *
+ * @returns < 0 on failure
+ */
+int tee_device_register(struct tee_device *teedev);
+
+/**
+ * tee_device_unregister() - Removes a TEE device
+ * @teedev:	Device to unregister
+ *
+ * This function should be called to remove the @teedev even if
+ * tee_device_register() hasn't been called yet. Does nothing if
+ * @teedev is NULL.
+ */
+void tee_device_unregister(struct tee_device *teedev);
+
+/**
+ * tee_session_calc_client_uuid() - Calculates client UUID for session
+ * @uuid:		Resulting UUID
+ * @connection_method:	Connection method for session (TEE_IOCTL_LOGIN_*)
+ * @connectuon_data:	Connection data for opening session
+ *
+ * Based on connection method calculates UUIDv5 based client UUID.
+ *
+ * For group based logins verifies that calling process has specified
+ * credentials.
+ *
+ * @return < 0 on failure
+ */
+int tee_session_calc_client_uuid(uuid_t *uuid, u32 connection_method,
+				 const u8 connection_data[TEE_IOCTL_UUID_LEN]);
+
+/**
+ * struct tee_shm - shared memory object
+ * @ctx:	context using the object
+ * @paddr:	physical address of the shared memory
+ * @kaddr:	virtual address of the shared memory
+ * @size:	size of shared memory
+ * @refcount:	reference counter
+ * @flags:	defined by TEE_SHM_* in tee_drv.h
+ * @link:	list head for registering object globally
+ *
+ * This pool is only supposed to be accessed directly from the TEE
+ * subsystem and from drivers that implements their own shm pool manager.
+ */
+struct tee_shm {
+	struct tee_context *ctx;
+	phys_addr_t paddr;
+	void *kaddr;
+	size_t size;
+	refcount_t refcount;
+	u32 flags;
+	struct list_head link;
+};
+
+/**
+ * tee_get_drvdata() - Return driver_data pointer
+ * @returns the driver_data pointer supplied to tee_register().
+ */
+void *tee_get_drvdata(struct tee_device *teedev);
+
+struct tee_shm *tee_shm_alloc_priv_buf(struct tee_context *ctx, size_t size);
+struct tee_shm *tee_shm_alloc_kernel_buf(struct tee_context *ctx, size_t size);
+
+/**
+ * tee_shm_is_dynamic() - Check if shared memory object is of the dynamic kind
+ * @shm:	Shared memory handle
+ * @returns true if object is dynamic shared memory
+ */
+static inline bool tee_shm_is_dynamic(struct tee_shm *shm)
+{
+	return shm && (shm->flags & TEE_SHM_DYNAMIC);
+}
+
+/**
+ * tee_shm_free() - Free shared memory
+ * @shm:	Handle to shared memory to free
+ */
+void tee_shm_free(struct tee_shm *shm);
+
+/**
+ * tee_shm_put() - Decrease reference count on a shared memory handle
+ * @shm:	Shared memory handle
+ */
+void tee_shm_put(struct tee_shm *shm);
+
+/**
+ * tee_shm_get_va() - Get virtual address of a shared memory plus an offset
+ * @shm:	Shared memory handle
+ * @offs:	Offset from start of this shared memory
+ * @returns virtual address of the shared memory + offs if offs is within
+ *	the bounds of this shared memory, else an ERR_PTR
+ */
+void *tee_shm_get_va(struct tee_shm *shm, size_t offs);
+
+/**
+ * tee_shm_get_pa() - Get physical address of a shared memory plus an offset
+ * @shm:	Shared memory handle
+ * @offs:	Offset from start of this shared memory
+ * @pa:		Physical address to return
+ * @returns 0 if offs is within the bounds of this shared memory, else an
+ *	error code.
+ */
+int tee_shm_get_pa(struct tee_shm *shm, size_t offs, phys_addr_t *pa);
+
+/**
+ * tee_shm_get_size() - Get size of shared memory buffer
+ * @shm:	Shared memory handle
+ * @returns size of shared memory
+ */
+static inline size_t tee_shm_get_size(struct tee_shm *shm)
+{
+	return shm->size;
+}
+
+/**
+ * tee_client_open_context() - Open a TEE context
+ * @start:	if not NULL, continue search after this context
+ * @match:	function to check TEE device
+ * @data:	data for match function
+ * @vers:	if not NULL, version data of TEE device of the context returned
+ *
+ * This function does an operation similar to open("/dev/teeX") in user space.
+ * A returned context must be released with tee_client_close_context().
+ *
+ * Returns a TEE context of the first TEE device matched by the match()
+ * callback or an ERR_PTR.
+ */
+struct tee_context *
+tee_client_open_context(struct tee_context *start,
+			int (*match)(struct tee_ioctl_version_data *,
+				     const void *),
+			const void *data, struct tee_ioctl_version_data *vers);
+
+/**
+ * tee_client_close_context() - Close a TEE context
+ * @ctx:	TEE context to close
+ *
+ * Note that all sessions previously opened with this context will be
+ * closed when this function is called.
+ */
+void tee_client_close_context(struct tee_context *ctx);
+
+/**
+ * tee_client_get_version() - Query version of TEE
+ * @ctx:	TEE context to TEE to query
+ * @vers:	Pointer to version data
+ */
+void tee_client_get_version(struct tee_context *ctx,
+			    struct tee_ioctl_version_data *vers);
+
+/**
+ * tee_client_open_session() - Open a session to a Trusted Application
+ * @ctx:	TEE context
+ * @arg:	Open session arguments, see description of
+ *		struct tee_ioctl_open_session_arg
+ * @param:	Parameters passed to the Trusted Application
+ *
+ * Returns < 0 on error else see @arg->ret for result. If @arg->ret
+ * is TEEC_SUCCESS the session identifier is available in @arg->session.
+ */
+int tee_client_open_session(struct tee_context *ctx,
+			    struct tee_ioctl_open_session_arg *arg,
+			    struct tee_param *param);
+
+/**
+ * tee_client_close_session() - Close a session to a Trusted Application
+ * @ctx:	TEE Context
+ * @session:	Session id
+ *
+ * Return < 0 on error else 0, regardless the session will not be
+ * valid after this function has returned.
+ */
+int tee_client_close_session(struct tee_context *ctx, u32 session);
+
+/**
+ * tee_client_invoke_func() - Invoke a function in a Trusted Application
+ * @ctx:	TEE Context
+ * @arg:	Invoke arguments, see description of
+ *		struct tee_ioctl_invoke_arg
+ * @param:	Parameters passed to the Trusted Application
+ *
+ * Returns < 0 on error else see @arg->ret for result.
+ */
+int tee_client_invoke_func(struct tee_context *ctx,
+			   struct tee_ioctl_invoke_arg *arg,
+			   struct tee_param *param);
+
+static inline bool tee_param_is_memref(struct tee_param *param)
+{
+	switch (param->attr & TEE_IOCTL_PARAM_ATTR_TYPE_MASK) {
+	case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT:
+	case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT:
+	case TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT:
+		return true;
+	default:
+		return false;
+	}
+}
+
+extern struct bus_type tee_bus_type;
+
+/**
+ * struct tee_client_device - tee based device
+ * @id:			device identifier
+ * @dev:		device structure
+ */
+struct tee_client_device {
+	struct tee_client_device_id id;
+	struct device dev;
+};
+
+#define to_tee_client_device(d) container_of(d, struct tee_client_device, dev)
+
+/**
+ * struct tee_client_driver - tee client driver
+ * @id_table:		device id table supported by this driver
+ * @driver:		driver structure
+ */
+struct tee_client_driver {
+	const struct tee_client_device_id *id_table;
+	struct device_driver driver;
+};
+
+#define to_tee_client_driver(d) \
+		container_of(d, struct tee_client_driver, driver)
+
+/**
+ * teedev_open() - Open a struct tee_device
+ * @teedev:	Device to open
+ *
+ * @return a pointer to struct tee_context on success or an ERR_PTR on failure.
+ */
+struct tee_context *teedev_open(struct tee_device *teedev);
+
+/**
+ * teedev_close_context() - closes a struct tee_context
+ * @ctx:	The struct tee_context to close
+ */
+void teedev_close_context(struct tee_context *ctx);
+
+#endif /*__TEE_DRV_H*/
diff --git a/include/uapi/linux/tee.h b/include/uapi/linux/tee.h
new file mode 100644
index 000000000000..0e90f58edd97
--- /dev/null
+++ b/include/uapi/linux/tee.h
@@ -0,0 +1,407 @@
+/*
+ * Copyright (c) 2015-2016, Linaro Limited
+ * All rights reserved.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are met:
+ *
+ * 1. Redistributions of source code must retain the above copyright notice,
+ * this list of conditions and the following disclaimer.
+ *
+ * 2. Redistributions in binary form must reproduce the above copyright notice,
+ * this list of conditions and the following disclaimer in the documentation
+ * and/or other materials provided with the distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+ * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
+ * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
+ * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
+ * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+ * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
+ * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
+ * POSSIBILITY OF SUCH DAMAGE.
+ */
+
+#ifndef __TEE_H
+#define __TEE_H
+
+#include <ioctl.h>
+#include <linux/types.h>
+
+/*
+ * This file describes the API provided by a TEE driver to user space.
+ *
+ * Each TEE driver defines a TEE specific protocol which is used for the
+ * data passed back and forth using TEE_IOC_CMD.
+ */
+
+/* Helpers to make the ioctl defines */
+#define TEE_IOC_MAGIC	0xa4
+#define TEE_IOC_BASE	0
+
+/* Flags relating to shared memory */
+#define TEE_IOCTL_SHM_MAPPED	0x1	/* memory mapped in normal world */
+#define TEE_IOCTL_SHM_DMA_BUF	0x2	/* dma-buf handle on shared memory */
+
+#define TEE_MAX_ARG_SIZE	1024
+
+#define TEE_GEN_CAP_GP		(1 << 0)/* GlobalPlatform compliant TEE */
+#define TEE_GEN_CAP_PRIVILEGED	(1 << 1)/* Privileged device (for supplicant) */
+#define TEE_GEN_CAP_REG_MEM	(1 << 2)/* Supports registering shared memory */
+#define TEE_GEN_CAP_MEMREF_NULL	(1 << 3)/* NULL MemRef support */
+
+#define TEE_MEMREF_NULL		(__u64)(-1) /* NULL MemRef Buffer */
+
+/*
+ * TEE Implementation ID
+ */
+#define TEE_IMPL_ID_OPTEE	1
+#define TEE_IMPL_ID_AMDTEE	2
+
+/*
+ * OP-TEE specific capabilities
+ */
+#define TEE_OPTEE_CAP_TZ	(1 << 0)
+
+/**
+ * struct tee_ioctl_version_data - TEE version
+ * @impl_id:	[out] TEE implementation id
+ * @impl_caps:	[out] Implementation specific capabilities
+ * @gen_caps:	[out] Generic capabilities, defined by TEE_GEN_CAPS_* above
+ *
+ * Identifies the TEE implementation, @impl_id is one of TEE_IMPL_ID_* above.
+ * @impl_caps is implementation specific, for example TEE_OPTEE_CAP_*
+ * is valid when @impl_id == TEE_IMPL_ID_OPTEE.
+ */
+struct tee_ioctl_version_data {
+	__u32 impl_id;
+	__u32 impl_caps;
+	__u32 gen_caps;
+};
+
+/**
+ * TEE_IOC_VERSION - query version of TEE
+ *
+ * Takes a tee_ioctl_version_data struct and returns with the TEE version
+ * data filled in.
+ */
+#define TEE_IOC_VERSION		_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 0, \
+				     struct tee_ioctl_version_data)
+
+/**
+ * struct tee_ioctl_shm_alloc_data - Shared memory allocate argument
+ * @size:	[in/out] Size of shared memory to allocate
+ * @flags:	[in/out] Flags to/from allocation.
+ * @id:		[out] Identifier of the shared memory
+ *
+ * The flags field should currently be zero as input. Updated by the call
+ * with actual flags as defined by TEE_IOCTL_SHM_* above.
+ * This structure is used as argument for TEE_IOC_SHM_ALLOC below.
+ */
+struct tee_ioctl_shm_alloc_data {
+	__u64 size;
+	__u32 flags;
+	__s32 id;
+};
+
+/**
+ * TEE_IOC_SHM_ALLOC - allocate shared memory
+ *
+ * Allocates shared memory between the user space process and secure OS.
+ *
+ * Returns a file descriptor on success or < 0 on failure
+ *
+ * The returned file descriptor is used to map the shared memory into user
+ * space. The shared memory is freed when the descriptor is closed and the
+ * memory is unmapped.
+ */
+#define TEE_IOC_SHM_ALLOC	_IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 1, \
+				     struct tee_ioctl_shm_alloc_data)
+
+/**
+ * struct tee_ioctl_buf_data - Variable sized buffer
+ * @buf_ptr:	[in] A __user pointer to a buffer
+ * @buf_len:	[in] Length of the buffer above
+ *
+ * Used as argument for TEE_IOC_OPEN_SESSION, TEE_IOC_INVOKE,
+ * TEE_IOC_SUPPL_RECV, and TEE_IOC_SUPPL_SEND below.
+ */
+struct tee_ioctl_buf_data {
+	__u64 buf_ptr;
+	__u64 buf_len;
+};
+
+/*
+ * Attributes for struct tee_ioctl_param, selects field in the union
+ */
+#define TEE_IOCTL_PARAM_ATTR_TYPE_NONE		0	/* parameter not used */
+
+/*
+ * These defines value parameters (struct tee_ioctl_param_value)
+ */
+#define TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT	1
+#define TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT	2
+#define TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT	3	/* input and output */
+
+/*
+ * These defines shared memory reference parameters (struct
+ * tee_ioctl_param_memref)
+ */
+#define TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INPUT	5
+#define TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_OUTPUT	6
+#define TEE_IOCTL_PARAM_ATTR_TYPE_MEMREF_INOUT	7	/* input and output */
+
+/*
+ * Mask for the type part of the attribute, leaves room for more types
+ */
+#define TEE_IOCTL_PARAM_ATTR_TYPE_MASK		0xff
+
+/* Meta parameter carrying extra information about the message. */
+#define TEE_IOCTL_PARAM_ATTR_META		0x100
+
+/* Mask of all known attr bits */
+#define TEE_IOCTL_PARAM_ATTR_MASK \
+	(TEE_IOCTL_PARAM_ATTR_TYPE_MASK | TEE_IOCTL_PARAM_ATTR_META)
+
+/*
+ * Matches TEEC_LOGIN_* in GP TEE Client API
+ * Are only defined for GP compliant TEEs
+ */
+#define TEE_IOCTL_LOGIN_PUBLIC			0
+#define TEE_IOCTL_LOGIN_USER			1
+#define TEE_IOCTL_LOGIN_GROUP			2
+#define TEE_IOCTL_LOGIN_APPLICATION		4
+#define TEE_IOCTL_LOGIN_USER_APPLICATION	5
+#define TEE_IOCTL_LOGIN_GROUP_APPLICATION	6
+/*
+ * Disallow user-space to use GP implementation specific login
+ * method range (0x80000000 - 0xBFFFFFFF). This range is rather
+ * being reserved for REE kernel clients or TEE implementation.
+ */
+#define TEE_IOCTL_LOGIN_REE_KERNEL_MIN		0x80000000
+#define TEE_IOCTL_LOGIN_REE_KERNEL_MAX		0xBFFFFFFF
+/* Private login method for REE kernel clients */
+#define TEE_IOCTL_LOGIN_REE_KERNEL		0x80000000
+
+/**
+ * struct tee_ioctl_param - parameter
+ * @attr: attributes
+ * @a: if a memref, offset into the shared memory object, else a value parameter
+ * @b: if a memref, size of the buffer, else a value parameter
+ * @c: if a memref, shared memory identifier, else a value parameter
+ *
+ * @attr & TEE_PARAM_ATTR_TYPE_MASK indicates if memref or value is used in
+ * the union. TEE_PARAM_ATTR_TYPE_VALUE_* indicates value and
+ * TEE_PARAM_ATTR_TYPE_MEMREF_* indicates memref. TEE_PARAM_ATTR_TYPE_NONE
+ * indicates that none of the members are used.
+ *
+ * Shared memory is allocated with TEE_IOC_SHM_ALLOC which returns an
+ * identifier representing the shared memory object. A memref can reference
+ * a part of a shared memory by specifying an offset (@a) and size (@b) of
+ * the object. To supply the entire shared memory object set the offset
+ * (@a) to 0 and size (@b) to the previously returned size of the object.
+ *
+ * A client may need to present a NULL pointer in the argument
+ * passed to a trusted application in the TEE.
+ * This is also a requirement in GlobalPlatform Client API v1.0c
+ * (section 3.2.5 memory references), which can be found at
+ * http://www.globalplatform.org/specificationsdevice.asp
+ *
+ * If a NULL pointer is passed to a TA in the TEE, the (@c)
+ * IOCTL parameters value must be set to TEE_MEMREF_NULL indicating a NULL
+ * memory reference.
+ */
+struct tee_ioctl_param {
+	__u64 attr;
+	__u64 a;
+	__u64 b;
+	__u64 c;
+};
+
+#define TEE_IOCTL_UUID_LEN		16
+
+/**
+ * struct tee_ioctl_open_session_arg - Open session argument
+ * @uuid:	[in] UUID of the Trusted Application
+ * @clnt_uuid:	[in] UUID of client
+ * @clnt_login:	[in] Login class of client, TEE_IOCTL_LOGIN_* above
+ * @cancel_id:	[in] Cancellation id, a unique value to identify this request
+ * @session:	[out] Session id
+ * @ret:	[out] return value
+ * @ret_origin	[out] origin of the return value
+ * @num_params	[in] number of parameters following this struct
+ */
+struct tee_ioctl_open_session_arg {
+	__u8 uuid[TEE_IOCTL_UUID_LEN];
+	__u8 clnt_uuid[TEE_IOCTL_UUID_LEN];
+	__u32 clnt_login;
+	__u32 cancel_id;
+	__u32 session;
+	__u32 ret;
+	__u32 ret_origin;
+	__u32 num_params;
+	/* num_params tells the actual number of element in params */
+	struct tee_ioctl_param params[];
+};
+
+/**
+ * TEE_IOC_OPEN_SESSION - opens a session to a Trusted Application
+ *
+ * Takes a struct tee_ioctl_buf_data which contains a struct
+ * tee_ioctl_open_session_arg followed by any array of struct
+ * tee_ioctl_param
+ */
+#define TEE_IOC_OPEN_SESSION	_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 2, \
+				     struct tee_ioctl_buf_data)
+
+/**
+ * struct tee_ioctl_invoke_func_arg - Invokes a function in a Trusted
+ * Application
+ * @func:	[in] Trusted Application function, specific to the TA
+ * @session:	[in] Session id
+ * @cancel_id:	[in] Cancellation id, a unique value to identify this request
+ * @ret:	[out] return value
+ * @ret_origin	[out] origin of the return value
+ * @num_params	[in] number of parameters following this struct
+ */
+struct tee_ioctl_invoke_arg {
+	__u32 func;
+	__u32 session;
+	__u32 cancel_id;
+	__u32 ret;
+	__u32 ret_origin;
+	__u32 num_params;
+	/* num_params tells the actual number of element in params */
+	struct tee_ioctl_param params[];
+};
+
+/**
+ * TEE_IOC_INVOKE - Invokes a function in a Trusted Application
+ *
+ * Takes a struct tee_ioctl_buf_data which contains a struct
+ * tee_invoke_func_arg followed by any array of struct tee_param
+ */
+#define TEE_IOC_INVOKE		_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 3, \
+				     struct tee_ioctl_buf_data)
+
+/**
+ * struct tee_ioctl_cancel_arg - Cancels an open session or invoke ioctl
+ * @cancel_id:	[in] Cancellation id, a unique value to identify this request
+ * @session:	[in] Session id, if the session is opened, else set to 0
+ */
+struct tee_ioctl_cancel_arg {
+	__u32 cancel_id;
+	__u32 session;
+};
+
+/**
+ * TEE_IOC_CANCEL - Cancels an open session or invoke
+ */
+#define TEE_IOC_CANCEL		_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 4, \
+				     struct tee_ioctl_cancel_arg)
+
+/**
+ * struct tee_ioctl_close_session_arg - Closes an open session
+ * @session:	[in] Session id
+ */
+struct tee_ioctl_close_session_arg {
+	__u32 session;
+};
+
+/**
+ * TEE_IOC_CLOSE_SESSION - Closes a session
+ */
+#define TEE_IOC_CLOSE_SESSION	_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 5, \
+				     struct tee_ioctl_close_session_arg)
+
+/**
+ * struct tee_iocl_supp_recv_arg - Receive a request for a supplicant function
+ * @func:	[in] supplicant function
+ * @num_params	[in/out] number of parameters following this struct
+ *
+ * @num_params is the number of params that tee-supplicant has room to
+ * receive when input, @num_params is the number of actual params
+ * tee-supplicant receives when output.
+ */
+struct tee_iocl_supp_recv_arg {
+	__u32 func;
+	__u32 num_params;
+	/* num_params tells the actual number of element in params */
+	struct tee_ioctl_param params[];
+};
+
+/**
+ * TEE_IOC_SUPPL_RECV - Receive a request for a supplicant function
+ *
+ * Takes a struct tee_ioctl_buf_data which contains a struct
+ * tee_iocl_supp_recv_arg followed by any array of struct tee_param
+ */
+#define TEE_IOC_SUPPL_RECV	_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 6, \
+				     struct tee_ioctl_buf_data)
+
+/**
+ * struct tee_iocl_supp_send_arg - Send a response to a received request
+ * @ret:	[out] return value
+ * @num_params	[in] number of parameters following this struct
+ */
+struct tee_iocl_supp_send_arg {
+	__u32 ret;
+	__u32 num_params;
+	/* num_params tells the actual number of element in params */
+	struct tee_ioctl_param params[];
+};
+
+/**
+ * TEE_IOC_SUPPL_SEND - Send a response to a received request
+ *
+ * Takes a struct tee_ioctl_buf_data which contains a struct
+ * tee_iocl_supp_send_arg followed by any array of struct tee_param
+ */
+#define TEE_IOC_SUPPL_SEND	_IOR(TEE_IOC_MAGIC, TEE_IOC_BASE + 7, \
+				     struct tee_ioctl_buf_data)
+
+/**
+ * struct tee_ioctl_shm_register_data - Shared memory register argument
+ * @addr:      [in] Start address of shared memory to register
+ * @length:    [in/out] Length of shared memory to register
+ * @flags:     [in/out] Flags to/from registration.
+ * @id:                [out] Identifier of the shared memory
+ *
+ * The flags field should currently be zero as input. Updated by the call
+ * with actual flags as defined by TEE_IOCTL_SHM_* above.
+ * This structure is used as argument for TEE_IOC_SHM_REGISTER below.
+ */
+struct tee_ioctl_shm_register_data {
+	__u64 addr;
+	__u64 length;
+	__u32 flags;
+	__s32 id;
+};
+
+/**
+ * TEE_IOC_SHM_REGISTER - Register shared memory argument
+ *
+ * Registers shared memory between the user space process and secure OS.
+ *
+ * Returns a file descriptor on success or < 0 on failure
+ *
+ * The shared memory is unregisterred when the descriptor is closed.
+ */
+#define TEE_IOC_SHM_REGISTER   _IOWR(TEE_IOC_MAGIC, TEE_IOC_BASE + 9, \
+				     struct tee_ioctl_shm_register_data)
+/*
+ * Five syscalls are used when communicating with the TEE driver.
+ * open(): opens the device associated with the driver
+ * ioctl(): as described above operating on the file descriptor from open()
+ * close(): two cases
+ *   - closes the device file descriptor
+ *   - closes a file descriptor connected to allocated shared memory
+ * mmap(): maps shared memory into user space using information from struct
+ *	   tee_ioctl_shm_alloc_data
+ * munmap(): unmaps previously shared memory
+ */
+
+#endif /*__TEE_H*/
-- 
2.39.2



