Delivery-date: Tue, 13 Feb 2024 16:18:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYI-004xpq-1v
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYH-0004fz-AX
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aYOXr5xQlt3DfjHypOh6CBgIfnwtgpTxoeMFoAXbQog=; b=kq+G/7Od65YJp+oWt6JXIEEeYt
	r4pRPmkXVjcGH0JsFtVeTPiL0UnJJ4LMl9zgzYFkk9PS+EA8OeJ7dbWQSGCHYWCr9KJyPhOhAmqyB
	qk4mQ6/SNnDO4WX8tyjOkJRuvk7m/64hogkawmJcEuqZRKOauYSMBLqmyeJECbiUs3JEF37261P8U
	ayMcKaJF+vVlpCeVQEsGGFITjLbi5RGFjcNnuUMTTqPW6iGEblp0Vr/cc9k58/MOgp8pWRAn1AfYI
	qhBhXFJ0eyeKpyq5Is5vjwVfYl7zfrE5Z1gza80qukoxE2O+uTyODakvV8INBGCFW8/gcD+q21jZR
	SC9GA+9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXk-00000009ijG-0Jzs;
	Tue, 13 Feb 2024 15:17:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if6-0sj1
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXa-0004M5-2t; Tue, 13 Feb 2024 16:17:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpQ-Mq; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-1x;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:43 +0100
Message-Id: <20240213151744.307958-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_588266_3B4A4667 
X-CRM114-Status: GOOD (  21.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] ARM: i.MX: ele: implement more ELE operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements more ELE operations useful for AHAB secure boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 345 +++++++++++++++++++++++++++++++++++++++-
 include/mach/imx/ele.h  |  18 +++
 2 files changed, 362 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index eaae784c94..18161428c6 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -2,7 +2,7 @@
 /*
  * Copyright 2020-2022 NXP
  */
-#define pr_fmt(fmt) "s4mu: " fmt
+#define pr_fmt(fmt) "ele: " fmt
 
 #include <common.h>
 #include <io.h>
@@ -253,6 +253,130 @@ int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 	return ret;
 }
 
+/*
+ * ele_write_fuse - write a fuse
+ * @fuse_id: The fuse to write to
+ * @fuse_val: The value to write to the fuse
+ * @lock: lock fuse after writing
+ * @response: on return contains the response from ELE
+ *
+ * This writes the 32bit given in @fuse_val to the fuses at @fuse_id. This is
+ * a permanent change, be careful.
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
+int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response)
+{
+	struct ele_msg msg;
+	int ret;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 3;
+	msg.command = ELE_WRITE_FUSE_REQ;
+	msg.data[0] = (32 << 16) | (fuse_id << 5);
+
+	if (lock)
+		msg.data[0] |= (1 << 31);
+
+	msg.data[1] = fuse_val;
+
+	ret = imx9_s3mua_call(&msg, true);
+
+	if (response)
+		*response = msg.data[0];
+
+	return ret;
+}
+
+/*
+ * ele_forward_lifecycle - forward lifecycle
+ * @lc: The lifecycle value to forward to
+ * @response: on return contains the response from ELE
+ *
+ * This changes the chip's lifecycle value. Mainly useful to forward to
+ * from ELE_LIFECYCLE_OEM_OPEN to ELE_LIFECYCLE_OEM_CLOSED. When doing
+ * this the SoC will only boot authenticated images. Make sure the correct
+ * SRK has been fused beforehand, otherwise you brick your board.
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
+int ele_forward_lifecycle(enum ele_lifecycle lc, u32 *response)
+{
+	struct ele_msg msg;
+	int ret;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 2;
+	msg.command = ELE_FWD_LIFECYCLE_UP_REQ;
+	msg.data[0] = lc;
+
+	ret = imx9_s3mua_call(&msg, true);
+
+	if (response)
+		*response = msg.data[0];
+
+	return ret;
+}
+
+/*
+ * ele_authenticate_container - authenticate a container image
+ * @addr: the address of the container
+ * @response: on return contains the response from ELE
+ *
+ * This authenticates a container with the ELE. On return the result
+ * of the authentication will be encoded in @response
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
+int ele_authenticate_container(unsigned long addr, u32 *response)
+{
+	struct ele_msg msg;
+	int ret;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 3;
+	msg.command = ELE_OEM_CNTN_AUTH_REQ;
+	msg.data[0] = upper_32_bits(addr);
+	msg.data[1] = lower_32_bits(addr);
+
+	ret = imx9_s3mua_call(&msg, true);
+
+	if (response)
+		*response = msg.data[0];
+
+	return ret;
+}
+
+/*
+ * ele_release_container - release a container image
+ * @response: on return contains the response from ELE
+ *
+ * This releases a container image. Must be called when done with an
+ * image previously authenticated with ele_authenticate_container()
+ *
+ * Return: 0 when the ELE call succeeds, negative error code otherwise
+ */
+int ele_release_container(u32 *response)
+{
+	struct ele_msg msg;
+	int ret;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 1;
+	msg.command = ELE_RELEASE_CONTAINER_REQ;
+
+	ret = imx9_s3mua_call(&msg, true);
+
+	if (response)
+		*response = msg.data[0];
+
+	return ret;
+}
+
 int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response)
 {
 	struct ele_msg msg;
@@ -290,3 +414,222 @@ int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response)
 
 	return ret;
 }
+
+struct ele_str {
+	u8 id;
+	const char *str;
+};
+
+static struct ele_str ele_ind[] = {
+	{ .id = ELE_ROM_PING_FAILURE_IND, .str = "ELE_ROM_PING_FAILURE" },
+	{ .id = ELE_FW_PING_FAILURE_IND, .str = "ELE_FW_PING_FAILURE" },
+	{ .id = ELE_BAD_SIGNATURE_FAILURE_IND, .str = "ELE_BAD_SIGNATURE_FAILURE" },
+	{ .id = ELE_BAD_HASH_FAILURE_IND, .str = "ELE_BAD_HASH_FAILURE" },
+	{ .id = ELE_INVALID_LIFECYCLE_IND, .str = "ELE_INVALID_LIFECYCLE" },
+	{ .id = ELE_PERMISSION_DENIED_FAILURE_IND, .str = "ELE_PERMISSION_DENIED_FAILURE" },
+	{ .id = ELE_INVALID_MESSAGE_FAILURE_IND, .str = "ELE_INVALID_MESSAGE_FAILURE" },
+	{ .id = ELE_BAD_VALUE_FAILURE_IND, .str = "ELE_BAD_VALUE_FAILURE" },
+	{ .id = ELE_BAD_FUSE_ID_FAILURE_IND, .str = "ELE_BAD_FUSE_ID_FAILURE" },
+	{ .id = ELE_BAD_CONTAINER_FAILURE_IND, .str = "ELE_BAD_CONTAINER_FAILURE" },
+	{ .id = ELE_BAD_VERSION_FAILURE_IND, .str = "ELE_BAD_VERSION_FAILURE" },
+	{ .id = ELE_INVALID_KEY_FAILURE_IND, .str = "ELE_INVALID_KEY_FAILURE" },
+	{ .id = ELE_BAD_KEY_HASH_FAILURE_IND, .str = "ELE_BAD_KEY_HASH_FAILURE" },
+	{ .id = ELE_NO_VALID_CONTAINER_FAILURE_IND, .str = "ELE_NO_VALID_CONTAINER_FAILURE" },
+	{ .id = ELE_BAD_CERTIFICATE_FAILURE_IND, .str = "ELE_BAD_CERTIFICATE_FAILURE" },
+	{ .id = ELE_BAD_UID_FAILURE_IND, .str = "ELE_BAD_UID_FAILURE" },
+	{ .id = ELE_BAD_MONOTONIC_COUNTER_FAILURE_IND, .str = "ELE_BAD_MONOTONIC_COUNTER_FAILURE" },
+	{ .id = ELE_MUST_SIGNED_FAILURE_IND, .str = "ELE_MUST_SIGNED_FAILURE" },
+	{ .id = ELE_NO_AUTHENTICATION_FAILURE_IND, .str = "ELE_NO_AUTHENTICATION_FAILURE" },
+	{ .id = ELE_BAD_SRK_SET_FAILURE_IND, .str = "ELE_BAD_SRK_SET_FAILURE" },
+	{ .id = ELE_UNALIGNED_PAYLOAD_FAILURE_IND, .str = "ELE_UNALIGNED_PAYLOAD_FAILURE" },
+	{ .id = ELE_WRONG_SIZE_FAILURE_IND, .str = "ELE_WRONG_SIZE_FAILURE" },
+	{ .id = ELE_ENCRYPTION_FAILURE_IND, .str = "ELE_ENCRYPTION_FAILURE" },
+	{ .id = ELE_DECRYPTION_FAILURE_IND, .str = "ELE_DECRYPTION_FAILURE" },
+	{ .id = ELE_OTP_PROGFAIL_FAILURE_IND, .str = "ELE_OTP_PROGFAIL_FAILURE" },
+	{ .id = ELE_OTP_LOCKED_FAILURE_IND, .str = "ELE_OTP_LOCKED_FAILURE" },
+	{ .id = ELE_OTP_INVALID_IDX_FAILURE_IND, .str = "ELE_OTP_INVALID_IDX_FAILURE" },
+	{ .id = ELE_TIME_OUT_FAILURE_IND, .str = "ELE_TIME_OUT_FAILURE" },
+	{ .id = ELE_BAD_PAYLOAD_FAILURE_IND, .str = "ELE_BAD_PAYLOAD_FAILURE" },
+	{ .id = ELE_WRONG_ADDRESS_FAILURE_IND, .str = "ELE_WRONG_ADDRESS_FAILURE" },
+	{ .id = ELE_DMA_FAILURE_IND, .str = "ELE_DMA_FAILURE" },
+	{ .id = ELE_DISABLED_FEATURE_FAILURE_IND, .str = "ELE_DISABLED_FEATURE_FAILURE" },
+	{ .id = ELE_MUST_ATTEST_FAILURE_IND, .str = "ELE_MUST_ATTEST_FAILURE" },
+	{ .id = ELE_RNG_NOT_STARTED_FAILURE_IND, .str = "ELE_RNG_NOT_STARTED_FAILURE" },
+	{ .id = ELE_CRC_ERROR_IND, .str = "ELE_CRC_ERROR" },
+	{ .id = ELE_AUTH_SKIPPED_OR_FAILED_FAILURE_IND, .str = "ELE_AUTH_SKIPPED_OR_FAILED_FAILURE" },
+	{ .id = ELE_INCONSISTENT_PAR_FAILURE_IND, .str = "ELE_INCONSISTENT_PAR_FAILURE" },
+	{ .id = ELE_RNG_INST_FAILURE_FAILURE_IND, .str = "ELE_RNG_INST_FAILURE_FAILURE" },
+	{ .id = ELE_LOCKED_REG_FAILURE_IND, .str = "ELE_LOCKED_REG_FAILURE" },
+	{ .id = ELE_BAD_ID_FAILURE_IND, .str = "ELE_BAD_ID_FAILURE" },
+	{ .id = ELE_INVALID_OPERATION_FAILURE_IND, .str = "ELE_INVALID_OPERATION_FAILURE" },
+	{ .id = ELE_NON_SECURE_STATE_FAILURE_IND, .str = "ELE_NON_SECURE_STATE_FAILURE" },
+	{ .id = ELE_MSG_TRUNCATED_IND, .str = "ELE_MSG_TRUNCATED" },
+	{ .id = ELE_BAD_IMAGE_NUM_FAILURE_IND, .str = "ELE_BAD_IMAGE_NUM_FAILURE" },
+	{ .id = ELE_BAD_IMAGE_ADDR_FAILURE_IND, .str = "ELE_BAD_IMAGE_ADDR_FAILURE" },
+	{ .id = ELE_BAD_IMAGE_PARAM_FAILURE_IND, .str = "ELE_BAD_IMAGE_PARAM_FAILURE" },
+	{ .id = ELE_BAD_IMAGE_TYPE_FAILURE_IND, .str = "ELE_BAD_IMAGE_TYPE_FAILURE" },
+	{ .id = ELE_CORRUPTED_SRK_FAILURE_IND, .str = "ELE_CORRUPTED_SRK_FAILURE" },
+	{ .id = ELE_OUT_OF_MEMORY_IND, .str = "ELE_OUT_OF_MEMORY" },
+	{ .id = ELE_CSTM_FAILURE_IND, .str = "ELE_CSTM_FAILURE" },
+	{ .id = ELE_OLD_VERSION_FAILURE_IND, .str = "ELE_OLD_VERSION_FAILURE" },
+	{ .id = ELE_WRONG_BOOT_MODE_FAILURE_IND, .str = "ELE_WRONG_BOOT_MODE_FAILURE" },
+	{ .id = ELE_APC_ALREADY_ENABLED_FAILURE_IND, .str = "ELE_APC_ALREADY_ENABLED_FAILURE" },
+	{ .id = ELE_RTC_ALREADY_ENABLED_FAILURE_IND, .str = "ELE_RTC_ALREADY_ENABLED_FAILURE" },
+	{ .id = ELE_ABORT_IND, .str = "ELE_ABORT" },
+};
+
+static struct ele_str ele_ipc[] = {
+	{ .id = ELE_IPC_MU_RTD, .str = "MU RTD" },
+	{ .id = ELE_IPC_MU_APD, .str = "MU APD" },
+};
+
+static struct ele_str ele_command[] = {
+	{ .id = ELE_PING_REQ, .str = "ELE_PING" },
+	{ .id = ELE_FW_AUTH_REQ, .str = "ELE_FW_AUTH" },
+	{ .id = ELE_RESTART_RST_TIMER_REQ, .str = "ELE_RESTART_RST_TIMER" },
+	{ .id = ELE_DUMP_DEBUG_BUFFER_REQ, .str = "ELE_DUMP_DEBUG_BUFFER" },
+	{ .id = ELE_OEM_CNTN_AUTH_REQ, .str = "ELE_OEM_CNTN_AUTH" },
+	{ .id = ELE_VERIFY_IMAGE_REQ, .str = "ELE_VERIFY_IMAGE" },
+	{ .id = ELE_RELEASE_CONTAINER_REQ, .str = "ELE_RELEASE_CONTAINER" },
+	{ .id = ELE_WRITE_SECURE_FUSE_REQ, .str = "ELE_WRITE_SECURE_FUSE" },
+	{ .id = ELE_FWD_LIFECYCLE_UP_REQ, .str = "ELE_FWD_LIFECYCLE_UP" },
+	{ .id = ELE_READ_FUSE_REQ, .str = "ELE_READ_FUSE" },
+	{ .id = ELE_GET_FW_VERSION_REQ, .str = "ELE_GET_FW_VERSION" },
+	{ .id = ELE_RET_LIFECYCLE_UP_REQ, .str = "ELE_RET_LIFECYCLE_UP" },
+	{ .id = ELE_GET_EVENTS_REQ, .str = "ELE_GET_EVENTS" },
+	{ .id = ELE_ENABLE_PATCH_REQ, .str = "ELE_ENABLE_PATCH" },
+	{ .id = ELE_RELEASE_RDC_REQ, .str = "ELE_RELEASE_RDC" },
+	{ .id = ELE_GET_FW_STATUS_REQ, .str = "ELE_GET_FW_STATUS" },
+	{ .id = ELE_ENABLE_OTFAD_REQ, .str = "ELE_ENABLE_OTFAD" },
+	{ .id = ELE_RESET_REQ, .str = "ELE_RESET" },
+	{ .id = ELE_UPDATE_OTP_CLKDIV_REQ, .str = "ELE_UPDATE_OTP_CLKDIV" },
+	{ .id = ELE_POWER_DOWN_REQ, .str = "ELE_POWER_DOWN" },
+	{ .id = ELE_ENABLE_APC_REQ, .str = "ELE_ENABLE_APC" },
+	{ .id = ELE_ENABLE_RTC_REQ, .str = "ELE_ENABLE_RTC" },
+	{ .id = ELE_DEEP_POWER_DOWN_REQ, .str = "ELE_DEEP_POWER_DOWN" },
+	{ .id = ELE_STOP_RST_TIMER_REQ, .str = "ELE_STOP_RST_TIMER" },
+	{ .id = ELE_WRITE_FUSE_REQ, .str = "ELE_WRITE_FUSE" },
+	{ .id = ELE_RELEASE_CAAM_REQ, .str = "ELE_RELEASE_CAAM" },
+	{ .id = ELE_RESET_A35_CTX_REQ, .str = "ELE_RESET_A35_CTX" },
+	{ .id = ELE_MOVE_TO_UNSECURED_REQ, .str = "ELE_MOVE_TO_UNSECURED" },
+	{ .id = ELE_GET_INFO_REQ, .str = "ELE_GET_INFO" },
+	{ .id = ELE_ATTEST_REQ, .str = "ELE_ATTEST" },
+	{ .id = ELE_RELEASE_PATCH_REQ, .str = "ELE_RELEASE_PATCH" },
+	{ .id = ELE_OTP_SEQ_SWITH_REQ, .str = "ELE_OTP_SEQ_SWITH" },
+};
+
+static struct ele_str ele_status[] = {
+	{ .id = ELE_SUCCESS_IND, .str = "ELE_SUCCESS" },
+	{ .id = ELE_FAILURE_IND, .str = "ELE_FAILURE" },
+};
+
+static const struct ele_str *get_idx(struct ele_str *str, int size, int id)
+{
+	u32 i;
+
+	for (i = 0; i < size; i++) {
+		if (str[i].id == id)
+			return &str[i];
+	}
+
+	return NULL;
+}
+
+#define ELE_EVENT_IPC		GENMASK(31, 24)
+#define ELE_EVENT_COMMAND	GENMASK(23, 16)
+#define ELE_EVENT_IND		GENMASK(15, 8)
+#define ELE_EVENT_STATUS	GENMASK(7, 0)
+
+static void display_event(u32 event)
+{
+	int ipc = FIELD_GET(ELE_EVENT_IPC, event);
+	int command = FIELD_GET(ELE_EVENT_COMMAND, event);
+	int ind = FIELD_GET(ELE_EVENT_IND, event);
+	int status = FIELD_GET(ELE_EVENT_STATUS, event);
+	const struct ele_str *ipc_str = get_idx(ARRAY_AND_SIZE(ele_ipc), ipc);
+	const struct ele_str *command_str = get_idx(ARRAY_AND_SIZE(ele_command), command);
+	const struct ele_str *ind_str = get_idx(ARRAY_AND_SIZE(ele_ind), ind);
+	const struct ele_str *status_str = get_idx(ARRAY_AND_SIZE(ele_status), status);
+
+	pr_info("Event 0x%08x:\n", event);
+	pr_info("  IPC = %s (0x%02x)\n", ipc_str ? ipc_str->str : "INVALID", ipc);
+	pr_info("  CMD = %s (0x%02x)\n", command_str ? command_str->str : "INVALID", command);
+	pr_info("  IND = %s (0x%02x)\n", ind_str ? ind_str->str : "INVALID", ind);
+	pr_info("  STA = %s (0x%02x)\n", status_str ? status_str->str : "INVALID", status);
+}
+
+#define AHAB_MAX_EVENTS 8
+
+static int ahab_get_events(u32 *events)
+{
+	struct ele_msg msg;
+	int ret, i = 0;
+	u32 n_events;
+
+	msg.version = ELE_VERSION;
+	msg.tag = ELE_CMD_TAG;
+	msg.size = 1;
+	msg.command = ELE_GET_EVENTS_REQ;
+
+	ret = imx9_s3mua_call(&msg, true);
+	if (ret) {
+		pr_err("%s: ret %d, response 0x%x\n", __func__, ret, msg.data[0]);
+
+		return ret;
+	}
+
+	n_events = msg.data[1] & 0xffff;
+
+	if (n_events > AHAB_MAX_EVENTS)
+		n_events = AHAB_MAX_EVENTS;
+
+	for (; i < n_events; i++)
+		events[i] = msg.data[i + 2];
+
+	return n_events;
+}
+
+unsigned int imx93_ahab_read_lifecycle(void)
+{
+	return readl(MX9_OCOTP_BASE_ADDR + 0x41c) & 0x3ff;
+}
+
+static const char *ele_life_cycle(u32 lc)
+{
+	switch (lc) {
+	case ELE_LIFECYCLE_BLANK: return "BLANK";
+	case ELE_LIFECYCLE_FAB: return "FAB";
+	case ELE_LIFECYCLE_NXP_PROVISIONED: return "NXP Provisioned";
+	case ELE_LIFECYCLE_OEM_OPEN: return "OEM Open";
+	case ELE_LIFECYCLE_OEM_CLOSED: return "OEM closed";
+	case ELE_LIFECYCLE_FIELD_RETURN_OEM: return "Field Return OEM";
+	case ELE_LIFECYCLE_FIELD_RETURN_NXP: return "Field Return NXP";
+	case ELE_LIFECYCLE_OEM_LOCKED: return "OEM Locked";
+	case ELE_LIFECYCLE_BRICKED: return "BRICKED";
+	default: return "Unknown";
+	}
+}
+
+int ele_print_events(void)
+{
+	unsigned int lc;
+	u32 events[AHAB_MAX_EVENTS];
+	int i, ret;
+
+	lc = imx93_ahab_read_lifecycle();
+	pr_info("Current lifecycle: %s\n", ele_life_cycle(lc));
+
+	ret = ahab_get_events(events);
+	if (ret < 0)
+		return ret;
+
+	if (!ret) {
+		pr_info("No Events Found!\n");
+		return 0;
+	}
+
+	for (i = 0; i < ret; i++)
+		display_event(events[i]);
+
+	return 0;
+}
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index 7e6896be3c..018e8345aa 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -132,6 +132,18 @@ struct ele_get_info_data {
 	u32 state;
 };
 
+enum ele_lifecycle {
+	ELE_LIFECYCLE_BLANK = 0x1,
+	ELE_LIFECYCLE_FAB = 0x2,
+	ELE_LIFECYCLE_NXP_PROVISIONED = 0x4,
+	ELE_LIFECYCLE_OEM_OPEN = 0x8,
+	ELE_LIFECYCLE_OEM_CLOSED = 0x20,
+	ELE_LIFECYCLE_FIELD_RETURN_OEM = 0x40,
+	ELE_LIFECYCLE_FIELD_RETURN_NXP = 0x80,
+	ELE_LIFECYCLE_OEM_LOCKED = 0x100,
+	ELE_LIFECYCLE_BRICKED = 0x200,
+};
+
 #define ELE_INFO_SOC_REV	GENMASK(31, 24)
 
 int ele_call(struct ele_msg *msg, bool get_response);
@@ -140,7 +152,13 @@ int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
 int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response);
 int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
 int ele_get_info(struct ele_get_info_data *info);
+int ele_write_fuse(u16 fuse_id, u32 fuse_val, bool lock, u32 *response);
+int ele_authenticate_container(unsigned long addr, u32 *response);
+int ele_release_container(u32 *response);
+int ele_forward_lifecycle(enum ele_lifecycle lc, u32 *response);
+int ele_print_events(void);
 
 int imx93_ele_load_fw(void *bl33);
+unsigned int imx93_ahab_read_lifecycle(void);
 
 #endif
-- 
2.39.2



