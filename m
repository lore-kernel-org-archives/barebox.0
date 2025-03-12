Delivery-date: Wed, 12 Mar 2025 14:06:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnH-00D8CD-1h
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnE-000250-4u
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yLBblb2rhJjvpjawebKAs9egrYeSobGJZDqx40+mhhg=; b=REN/neV86LJLA9/JEQXWBLVdq2
	eq5EiaTaHRfSdHTuNG4p/+kU2OniuJ+zeKYi7Hw8bNoFIlmGh06tEnXpdvNdaQnS56NVzcRpLjkso
	jHjnYZLg2AzMUP44HYk4BeEIDdWE3dVzl0nh6JxWaxxcRYv2G/9q3KmSjXEf0KyHY6ZswWt5s85aO
	qEwAHMnn/91frSHNcFRrwPnXGZqs9HTRKn0tCBLvXCrthPvgnoAHH7nsXfze0KK4C9EmWCd2h8Did
	qiceczVo5p+Oo4ELNsZdM10YFqsA1Tl+bGeZbsshBxuTVIDRRtE3/lGh634uBAihuNhOnya7ouAnI
	g5WG6y9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmh-00000008UuW-3Cff;
	Wed, 12 Mar 2025 13:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL12-00000008Nc9-0wZu
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0V-0003sP-0q; Wed, 12 Mar 2025 13:16:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8f-27;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1i;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-rpmb-v1-6-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=12019;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=L4cEkKLtUqeomLcyvEkOB0vF8fRQWIqfp0Np1eogdf0=;
 b=R4TKy/CJkab1NbZHTzbivu5yqr4jtQW3jky3qYKdYoJQW3ZTHsDzz/2rS6mlZv7zV/gou3gm9
 qfW2y3ir71KCvdTKrU0Y3FF+avKz+dVgoc37UM8fF32QF89gxIHvxFm
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051652_590021_269A825C 
X-CRM114-Status: GOOD (  31.92  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] tee: optee: implement shared mem alloc/free RPC
 commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements the OPTEE_RPC_CMD_SHM_ALLOC and OPTEE_RPC_CMD_SHM_FREE
commands to let the secure world allocate and free shared memory.

When OP-TEE calls into the nonsecure world in order to allocate shared
memory we'll need a list of pages returned to the secure world. This
is needed in two cases: once when we call into OP-TEE to register the
shared memory with OP-TEE and once in the return parameters of the
OPTEE_RPC_CMD_SHM_ALLOC RPC call. The U-Boot code this code is based on
allocates two separate page lists. In barebox we attach the page list
to the shared memory object instead so that we have to allocate and
initialize it only once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/optee_private.h |   3 +
 drivers/tee/optee/optee_rpc_cmd.h | 144 ++++++++++++++++++++++++++++++++++++++
 drivers/tee/optee/rpc.c           |  60 +++++++++++++++-
 drivers/tee/optee/smc_abi.c       |  26 ++++---
 drivers/tee/tee_shm.c             |   1 +
 include/linux/tee_drv.h           |   1 +
 6 files changed, 222 insertions(+), 13 deletions(-)

diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index 637d3195be..d739a6c609 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -17,7 +17,10 @@
 
 /* Some Global Platform error codes used in this driver */
 #define TEEC_SUCCESS			0x00000000
+#define TEEC_ERROR_GENERIC		0xffff0000
 #define TEEC_ERROR_BAD_PARAMETERS	0xFFFF0006
+#define TEEC_ERROR_ITEM_NOT_FOUND	0xffff0008
+#define TEEC_ERROR_NOT_IMPLEMENTED	0xFFFF0009
 #define TEEC_ERROR_NOT_SUPPORTED	0xFFFF000A
 #define TEEC_ERROR_COMMUNICATION	0xFFFF000E
 #define TEEC_ERROR_OUT_OF_MEMORY	0xFFFF000C
diff --git a/drivers/tee/optee/optee_rpc_cmd.h b/drivers/tee/optee/optee_rpc_cmd.h
new file mode 100644
index 0000000000..3ef5672be7
--- /dev/null
+++ b/drivers/tee/optee/optee_rpc_cmd.h
@@ -0,0 +1,144 @@
+/* SPDX-License-Identifier: BSD-2-Clause */
+/*
+ * Copyright (c) 2016-2021, Linaro Limited
+ */
+
+#ifndef __OPTEE_RPC_CMD_H
+#define __OPTEE_RPC_CMD_H
+
+/*
+ * All RPC is done with a struct optee_msg_arg as bearer of information,
+ * struct optee_msg_arg::arg holds values defined by OPTEE_RPC_CMD_* below.
+ * Only the commands handled by the kernel driver are defined here.
+ *
+ * RPC communication with tee-supplicant is reversed compared to normal
+ * client communication described above. The supplicant receives requests
+ * and sends responses.
+ */
+
+#define OPTEE_RPC_CMD_RPMB		1
+
+/*
+ * Get time
+ *
+ * Returns number of seconds and nano seconds since the Epoch,
+ * 1970-01-01 00:00:00 +0000 (UTC).
+ *
+ * [out]    value[0].a	    Number of seconds
+ * [out]    value[0].b	    Number of nano seconds.
+ */
+#define OPTEE_RPC_CMD_GET_TIME		3
+
+/*
+ * Notification from/to secure world.
+ *
+ * If secure world needs to wait for something, for instance a mutex, it
+ * does a notification wait request instead of spinning in secure world.
+ * Conversely can a synchronous notification can be sent when a secure
+ * world mutex with a thread waiting thread is unlocked.
+ *
+ * This interface can also be used to wait for a asynchronous notification
+ * which instead is sent via a non-secure interrupt.
+ *
+ * Waiting on notification
+ * [in]    value[0].a	    OPTEE_RPC_NOTIFICATION_WAIT
+ * [in]    value[0].b	    notification value
+ * [in]    value[0].c	    timeout in milliseconds or 0 if no timeout
+ *
+ * Sending a synchronous notification
+ * [in]    value[0].a	    OPTEE_RPC_NOTIFICATION_SEND
+ * [in]    value[0].b	    notification value
+ */
+#define OPTEE_RPC_CMD_NOTIFICATION	4
+#define OPTEE_RPC_NOTIFICATION_WAIT	0
+#define OPTEE_RPC_NOTIFICATION_SEND	1
+
+/*
+ * Suspend execution
+ *
+ * [in]    value[0].a	Number of milliseconds to suspend
+ */
+#define OPTEE_RPC_CMD_SUSPEND		5
+
+/*
+ * Allocate a piece of shared memory
+ *
+ * [in]    value[0].a	    Type of memory one of
+ *			    OPTEE_RPC_SHM_TYPE_* below
+ * [in]    value[0].b	    Requested size
+ * [in]    value[0].c	    Required alignment
+ * [out]   memref[0]	    Buffer
+ */
+#define OPTEE_RPC_CMD_SHM_ALLOC		6
+/* Memory that can be shared with a non-secure user space application */
+#define OPTEE_RPC_SHM_TYPE_APPL		0
+/* Memory only shared with non-secure kernel */
+#define OPTEE_RPC_SHM_TYPE_KERNEL	1
+
+/*
+ * Free shared memory previously allocated with OPTEE_RPC_CMD_SHM_ALLOC
+ *
+ * [in]     value[0].a	    Type of memory one of
+ *			    OPTEE_RPC_SHM_TYPE_* above
+ * [in]     value[0].b	    Value of shared memory reference or cookie
+ */
+#define OPTEE_RPC_CMD_SHM_FREE		7
+
+/*
+ * Issue master requests (read and write operations) to an I2C chip.
+ *
+ * [in]     value[0].a	    Transfer mode (OPTEE_RPC_I2C_TRANSFER_*)
+ * [in]     value[0].b	    The I2C bus (a.k.a adapter).
+ *				16 bit field.
+ * [in]     value[0].c	    The I2C chip (a.k.a address).
+ *				16 bit field (either 7 or 10 bit effective).
+ * [in]     value[1].a	    The I2C master control flags (ie, 10 bit address).
+ *				16 bit field.
+ * [in/out] memref[2]	    Buffer used for data transfers.
+ * [out]    value[3].a	    Number of bytes transferred by the REE.
+ */
+#define OPTEE_RPC_CMD_I2C_TRANSFER	21
+
+/* I2C master transfer modes */
+#define OPTEE_RPC_I2C_TRANSFER_RD	0
+#define OPTEE_RPC_I2C_TRANSFER_WR	1
+
+/* I2C master control flags */
+#define OPTEE_RPC_I2C_FLAGS_TEN_BIT	BIT(0)
+
+/*
+ * Reset RPMB probing
+ *
+ * Releases an eventually already used RPMB devices and starts over searching
+ * for RPMB devices. Returns the kind of shared memory to use in subsequent
+ * OPTEE_RPC_CMD_RPMB_PROBE_NEXT and OPTEE_RPC_CMD_RPMB calls.
+ *
+ * [out]    value[0].a	    OPTEE_RPC_SHM_TYPE_*, the parameter for
+ *			    OPTEE_RPC_CMD_SHM_ALLOC
+ */
+#define OPTEE_RPC_CMD_RPMB_PROBE_RESET	22
+
+/*
+ * Probe next RPMB device
+ *
+ * [out]    value[0].a	    Type of RPMB device, OPTEE_RPC_RPMB_*
+ * [out]    value[0].b	    EXT CSD-slice 168 "RPMB Size"
+ * [out]    value[0].c	    EXT CSD-slice 222 "Reliable Write Sector Count"
+ * [out]    memref[1]       Buffer with the raw CID
+ */
+#define OPTEE_RPC_CMD_RPMB_PROBE_NEXT	23
+
+/* Type of RPMB device */
+#define OPTEE_RPC_RPMB_EMMC		0
+#define OPTEE_RPC_RPMB_UFS		1
+#define OPTEE_RPC_RPMB_NVME		2
+
+/*
+ * Replay Protected Memory Block access
+ *
+ * [in]     memref[0]	    Frames to device
+ * [out]    memref[1]	    Frames from device
+ */
+#define OPTEE_RPC_CMD_RPMB_FRAMES	24
+
+#endif /*__OPTEE_RPC_CMD_H*/
diff --git a/drivers/tee/optee/rpc.c b/drivers/tee/optee/rpc.c
index 3d0a7f2980..bdb2a9da74 100644
--- a/drivers/tee/optee/rpc.c
+++ b/drivers/tee/optee/rpc.c
@@ -7,10 +7,66 @@
 
 #include <linux/tee_drv.h>
 #include "optee_private.h"
+#include "optee_rpc_cmd.h"
+
+static void cmd_shm_alloc(struct tee_context *ctx, struct optee_msg_arg *arg)
+{
+	struct tee_shm *shm;
+
+	arg->ret_origin = TEEC_ORIGIN_COMMS;
+
+	if (arg->num_params != 1 ||
+	    arg->params[0].attr != OPTEE_MSG_ATTR_TYPE_VALUE_INPUT) {
+		arg->ret = TEEC_ERROR_BAD_PARAMETERS;
+		return;
+	}
+
+	shm = tee_shm_alloc_kernel_buf(ctx, arg->params[0].u.value.b);
+	if (IS_ERR(shm)) {
+		if (PTR_ERR(shm) == -ENOMEM)
+			arg->ret = TEEC_ERROR_OUT_OF_MEMORY;
+		else
+			arg->ret = TEEC_ERROR_GENERIC;
+		return;
+	}
+
+	arg->params[0].attr = OPTEE_MSG_ATTR_TYPE_TMEM_OUTPUT |
+			      OPTEE_MSG_ATTR_NONCONTIG;
+	arg->params[0].u.tmem.buf_ptr = virt_to_phys(shm->pages_list);
+	arg->params[0].u.tmem.size = shm->size;
+	arg->params[0].u.tmem.shm_ref = (ulong)shm;
+	arg->ret = TEEC_SUCCESS;
+}
+
+static void cmd_shm_free(struct optee_msg_arg *arg)
+{
+	arg->ret_origin = TEEC_ORIGIN_COMMS;
+
+	if (arg->num_params != 1 ||
+	    arg->params[0].attr != OPTEE_MSG_ATTR_TYPE_VALUE_INPUT) {
+		arg->ret = TEEC_ERROR_BAD_PARAMETERS;
+		return;
+	}
+
+	tee_shm_free((struct tee_shm *)(ulong)arg->params[0].u.value.b);
+	arg->ret = TEEC_SUCCESS;
+}
 
 void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
 		   struct optee_msg_arg *arg)
 {
-	pr_notice_once("optee: No supplicant or RPC handler for command 0x%x\n", arg->cmd);
-	arg->ret = TEEC_ERROR_NOT_SUPPORTED;
+	pr_debug("%s: receive RPC CMD: %d\n", __func__, arg->cmd);
+
+	switch (arg->cmd) {
+	case OPTEE_RPC_CMD_SHM_ALLOC:
+		cmd_shm_alloc(ctx, arg);
+		break;
+	case OPTEE_RPC_CMD_SHM_FREE:
+		cmd_shm_free(arg);
+		break;
+	default:
+		arg->ret = TEEC_ERROR_NOT_IMPLEMENTED;
+	}
+
+	arg->ret_origin = TEEC_ORIGIN_COMMS;
 }
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index 354a94a2f2..aab8ebb186 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -301,7 +301,7 @@ static int optee_shm_register(struct tee_context *ctx, struct tee_shm *shm)
 	struct tee_shm *shm_arg;
 	u64 *pages_list;
 	u64 ph_ptr;
-	int rc = 0;
+	int rc;
 
 	pages_list = optee_alloc_and_init_page_list(shm->kaddr, shm->size, &ph_ptr);
 	if (!pages_list)
@@ -314,7 +314,7 @@ static int optee_shm_register(struct tee_context *ctx, struct tee_shm *shm)
 	msg_arg = optee_get_msg_arg(ctx, 1, &shm_arg);
 	if (IS_ERR(msg_arg)) {
 		rc = PTR_ERR(msg_arg);
-		goto free_pages_list;
+		goto err_free;
 	}
 
 	msg_arg->num_params = 1;
@@ -326,11 +326,20 @@ static int optee_shm_register(struct tee_context *ctx, struct tee_shm *shm)
 	msg_arg->params->u.tmem.size = tee_shm_get_size(shm);
 
 	if (optee->ops->do_call_with_arg(ctx, msg_arg) ||
-	    msg_arg->ret != TEEC_SUCCESS)
+	    msg_arg->ret != TEEC_SUCCESS) {
 		rc = -EINVAL;
+		goto err_free_msg_arg;
+	}
+
+	optee_free_msg_arg(ctx, shm_arg);
+
+	shm->pages_list = pages_list;
 
+	return 0;
+
+err_free_msg_arg:
 	optee_free_msg_arg(ctx, shm_arg);
-free_pages_list:
+err_free:
 	free(pages_list);
 
 	return rc;
@@ -383,8 +392,7 @@ static int optee_shm_unregister(struct tee_context *ctx, struct tee_shm *shm)
  *
  * Result of RPC is written back into @param.
  */
-static void optee_handle_rpc(struct tee_context *ctx, struct optee_rpc_param *param,
-			     void *page_list)
+static void optee_handle_rpc(struct tee_context *ctx, struct optee_rpc_param *param)
 {
 	struct tee_device *teedev = ctx->teedev;
 	struct optee *optee = tee_get_drvdata(teedev);
@@ -448,7 +456,6 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 {
 	struct optee *optee = tee_get_drvdata(ctx->teedev);
 	struct optee_rpc_param param = { .a0 = OPTEE_SMC_CALL_WITH_ARG };
-	void *page_list = NULL;
 
 	reg_pair_from_64(&param.a1, &param.a2, virt_to_phys(arg));
 	while (true) {
@@ -461,15 +468,12 @@ static int optee_smc_do_call_with_arg(struct tee_context *ctx,
 		optee->smc.invoke_fn(param.a0, param.a1, param.a2, param.a3,
 				     param.a4, param.a5, param.a6, param.a7, &res);
 
-		free(page_list);
-		page_list = NULL;
-
 		if (OPTEE_SMC_RETURN_IS_RPC(res.a0)) {
 			param.a0 = res.a0;
 			param.a1 = res.a1;
 			param.a2 = res.a2;
 			param.a3 = res.a3;
-			optee_handle_rpc(ctx, &param, &page_list);
+			optee_handle_rpc(ctx, &param);
 		} else {
 			return res.a0;
 		}
diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 9952608435..50ed086d0e 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -32,6 +32,7 @@ static void tee_shm_release(struct tee_device *teedev, struct tee_shm *shm)
 
 	teedev_ctx_put(shm->ctx);
 
+	kfree(shm->pages_list);
 	kfree(shm);
 
 	tee_device_put(teedev);
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index 7289c3057a..e2c1042deb 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -194,6 +194,7 @@ struct tee_shm {
 	struct tee_context *ctx;
 	phys_addr_t paddr;
 	void *kaddr;
+	u64 *pages_list;
 	size_t size;
 	refcount_t refcount;
 	u32 flags;

-- 
2.39.5



