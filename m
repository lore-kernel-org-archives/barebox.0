Delivery-date: Wed, 19 Mar 2025 16:45:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbK-001Vjz-0E
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 16:45:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvbG-00049Z-Vb
	for lore@pengutronix.de; Wed, 19 Mar 2025 16:45:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A5hNMUFEEuTB33Fh0UD4lYsegKfWlHqVxVJwNUqIvyo=; b=SZu1v9503axW56vl9ad5oxotUG
	veS2b3iw6LbYeEiCbminr2wy99Qo5/8ZJLssubEKfY7kGq3uy1A6GX/qBmxAcKYkFDBOhnBHUGNwF
	DskB3p52zkd0/wYZ5GzSDKOKMYo7WlTm6jgOOuq8WyTmHtbLTvpkuDgMl8RHr6ax1cqbYHTrGpSJ+
	6vuXDvJ3M+acQHngQ0Fxc5dD4r14pn0WRTzD5mmmxAC2UMZ2oT2WeNblmYussLUb6Oa7FwTJuLaES
	spXohvgK4QPzA3BaO4ADDbuduzRCTIrGKrODjfKslDAIZizjgOyTYV3aZJFn04T9w0a4gWSrw445E
	qvE5oC1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvag-00000009QZ5-0zhL;
	Wed, 19 Mar 2025 15:44:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvNm-00000009OA8-27dc
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 15:31:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNl-0000zC-72; Wed, 19 Mar 2025 16:31:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-000cAj-1T;
	Wed, 19 Mar 2025 16:31:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuvNk-00Awy1-2T;
	Wed, 19 Mar 2025 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2025 16:30:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-rpmb-v2-7-a8801fb35cd4@pengutronix.de>
References: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
In-Reply-To: <20250319-rpmb-v2-0-a8801fb35cd4@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742398260; l=5528;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=R+Np7quk5qJpBblKOKwB5WQpy9iWjVqhim1gpoS/soA=;
 b=ynQRtVvQJcxwJq5a2MqyeaLSuBP4Au0xCTkjMWOdgE1xZ5ZM47xJY2ET01T7+dVZhaq6G+a26
 v4deAfp32ZSAvP4JD9H67Jv81vGIomdtNP1HZz2cYQGMYIHFIUivajo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_083102_581915_735493BB 
X-CRM114-Status: GOOD (  18.88  )
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
Subject: [PATCH v2 07/10] tee: optee: implement RPMB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements the OPTEE_RPC_CMD_RPMB RPC call. For data requests we
call into the MMC specific RPMB implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/optee/Makefile        |   1 +
 drivers/tee/optee/optee_private.h |  10 ++++
 drivers/tee/optee/rpc.c           |   4 ++
 drivers/tee/optee/rpmb.c          | 121 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 136 insertions(+)

diff --git a/drivers/tee/optee/Makefile b/drivers/tee/optee/Makefile
index 5e71af77ee..f68352aa4e 100644
--- a/drivers/tee/optee/Makefile
+++ b/drivers/tee/optee/Makefile
@@ -6,3 +6,4 @@ optee-objs += call.o
 optee-objs += rpc.o
 optee-objs += device.o
 optee-objs += smc_abi.o
+obj-$(CONFIG_MCI_MMC_RPMB) += rpmb.o
diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index d739a6c609..bb9ac1b068 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -179,4 +179,14 @@ static inline void reg_pair_from_64(u32 *reg0, u32 *reg1, u64 val)
 /* Registration of the ABIs */
 int optee_smc_abi_register(void);
 
+#ifdef CONFIG_MCI_MMC_RPMB
+void optee_suppl_cmd_rpmb(struct tee_context *ctx, struct optee_msg_arg *arg);
+#else
+static inline void optee_suppl_cmd_rpmb(struct tee_context *ctx, struct optee_msg_arg *arg)
+{
+	pr_debug("OPTEE_MSG_RPC_CMD_RPMB not implemented\n");
+	arg->ret = TEEC_ERROR_NOT_IMPLEMENTED;
+}
+#endif
+
 #endif /*OPTEE_PRIVATE_H*/
diff --git a/drivers/tee/optee/rpc.c b/drivers/tee/optee/rpc.c
index bdb2a9da74..bc398a625b 100644
--- a/drivers/tee/optee/rpc.c
+++ b/drivers/tee/optee/rpc.c
@@ -64,7 +64,11 @@ void optee_rpc_cmd(struct tee_context *ctx, struct optee *optee,
 	case OPTEE_RPC_CMD_SHM_FREE:
 		cmd_shm_free(arg);
 		break;
+	case OPTEE_RPC_CMD_RPMB:
+		optee_suppl_cmd_rpmb(ctx, arg);
+		break;
 	default:
+		pr_notice_once("optee: No supplicant or RPC handler for command 0x%x\n", arg->cmd);
 		arg->ret = TEEC_ERROR_NOT_IMPLEMENTED;
 	}
 
diff --git a/drivers/tee/optee/rpmb.c b/drivers/tee/optee/rpmb.c
new file mode 100644
index 0000000000..cdc8afc1a4
--- /dev/null
+++ b/drivers/tee/optee/rpmb.c
@@ -0,0 +1,121 @@
+// SPDX-License-Identifier: BSD-2-Clause
+/*
+ * Copyright (c) 2018 Linaro Limited
+ */
+
+#define pr_fmt(fmt)     "optee-rpmb: " fmt
+
+#include <mci.h>
+
+#include "optee_msg.h"
+#include "optee_private.h"
+
+/*
+ * Request and response definitions must be in sync with the secure side of
+ * OP-TEE.
+ */
+
+/* Request */
+struct rpmb_req {
+	u16 cmd;
+#define RPMB_CMD_DATA_REQ      0x00
+#define RPMB_CMD_GET_DEV_INFO  0x01
+	u16 dev_id;
+	u16 block_count;
+	/* Optional data frames (rpmb_data_frame) follow */
+};
+
+#define RPMB_REQ_DATA(req) ((void *)((struct rpmb_req *)(req) + 1))
+
+/* Response to device info request */
+struct rpmb_dev_info {
+	u8 cid[16];
+	u8 rpmb_size_mult;	/* EXT CSD-slice 168: RPMB Size */
+	u8 rel_wr_sec_c;	/* EXT CSD-slice 222: Reliable Write Sector */
+				/*                    Count */
+	u8 ret_code;
+#define RPMB_CMD_GET_DEV_INFO_RET_OK     0x00
+#define RPMB_CMD_GET_DEV_INFO_RET_ERROR  0x01
+};
+
+static u32 rpmb_get_dev_info(struct mci *mci, struct rpmb_dev_info *info)
+{
+	int i;
+
+	if (!mci->ext_csd)
+		return TEEC_ERROR_GENERIC;
+
+	for (i = 0; i < ARRAY_SIZE(mci->raw_cid); i++)
+		((u32 *) info->cid)[i] = cpu_to_be32(mci->raw_cid[i]);
+
+	info->rel_wr_sec_c = mci->ext_csd[222];
+	info->rpmb_size_mult = mci->ext_csd[168];
+	info->ret_code = RPMB_CMD_GET_DEV_INFO_RET_OK;
+
+	return TEEC_SUCCESS;
+}
+
+static u32 rpmb_process_request(struct tee_context *ctx, void *req,
+				ulong req_size, void *rsp, ulong rsp_size)
+{
+	struct rpmb_req *sreq = req;
+	struct mci *mci;
+
+	if (req_size < sizeof(*sreq))
+		return TEEC_ERROR_BAD_PARAMETERS;
+
+	mci = mci_get_rpmb_dev(sreq->dev_id);
+	if (!mci) {
+		pr_err_once("Cannot find RPMB MMC with id %u\n", sreq->dev_id);
+		return TEEC_ERROR_ITEM_NOT_FOUND;
+	}
+
+	switch (sreq->cmd) {
+	case RPMB_CMD_DATA_REQ:
+		if (mci_rpmb_route_frames(mci, RPMB_REQ_DATA(req),
+					  req_size - sizeof(struct rpmb_req),
+					  rsp, rsp_size))
+			return TEEC_ERROR_BAD_PARAMETERS;
+		return TEEC_SUCCESS;
+
+	case RPMB_CMD_GET_DEV_INFO:
+		if (rsp_size != sizeof(struct rpmb_dev_info)) {
+			pr_debug("Invalid req/rsp size\n");
+			return TEEC_ERROR_BAD_PARAMETERS;
+		}
+
+		return rpmb_get_dev_info(mci, rsp);
+
+	default:
+		pr_debug("Unsupported RPMB command: %d\n", sreq->cmd);
+		return TEEC_ERROR_BAD_PARAMETERS;
+	}
+}
+
+void optee_suppl_cmd_rpmb(struct tee_context *ctx, struct optee_msg_arg *arg)
+{
+	struct tee_shm *req_shm;
+	struct tee_shm *rsp_shm;
+	void *req_buf;
+	void *rsp_buf;
+	ulong req_size;
+	ulong rsp_size;
+
+	if (arg->num_params != 2 ||
+	    arg->params[0].attr != OPTEE_MSG_ATTR_TYPE_RMEM_INPUT ||
+	    arg->params[1].attr != OPTEE_MSG_ATTR_TYPE_RMEM_OUTPUT) {
+		arg->ret = TEEC_ERROR_BAD_PARAMETERS;
+		return;
+	}
+
+	req_shm = (struct tee_shm *)(ulong)arg->params[0].u.rmem.shm_ref;
+	req_buf = (u8 *)req_shm->kaddr + arg->params[0].u.rmem.offs;
+	req_size = arg->params[0].u.rmem.size;
+
+	rsp_shm = (struct tee_shm *)(ulong)arg->params[1].u.rmem.shm_ref;
+	rsp_buf = (u8 *)rsp_shm->kaddr + arg->params[1].u.rmem.offs;
+	rsp_size = arg->params[1].u.rmem.size;
+
+	arg->ret = rpmb_process_request(ctx, req_buf, req_size,
+					rsp_buf, rsp_size);
+}

-- 
2.39.5



