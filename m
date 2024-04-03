Delivery-date: Wed, 03 Apr 2024 09:50:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvO0-005TgR-2S
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 09:50:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrvNz-0007jQ-Lh
	for lore@pengutronix.de; Wed, 03 Apr 2024 09:50:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eaoZkMeGWzNp+iUD+3eDY7veBVrZPe7Kz9xBVCipzvs=; b=IO45HWGiA+8+IUB4BEX/bydEzv
	Gryogb7Y4QQFyZwE3ibTNa7kk4kk9nO22B/YF1COcJHOImd1ysjA4/CQkSt1XOGEcmrjNfFpromNJ
	0CJMTl7VPmkK3Ir3tgozfaErVgS87EJYYQhcwhX9CVZ2yqFs74z/apWS2u6Mgs+UpjGj/1hRpKXlx
	NEmAw2uAjgcyWPh90VUtszCJZFmG7ia/PWM/yTO5Up9U+i/MAPYeBsE+ipluGrXdRZiT4vCRKHKfp
	Hy7+92BQ1k+DxlJKiWgssc4+HmNEKuNf03yE1NOCbNNZAhnQDni/Ej8FXJfCK7C1dKyWB4QLjBwW9
	uD0KfOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvNO-0000000Eehf-0w66;
	Wed, 03 Apr 2024 07:49:42 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvNJ-0000000Eea5-1P00
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 07:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1712130559;
	bh=acUTXwaW1SdaOYuXnxXf7Ge1qrvt06FWhfsNM/ick/o=;
	h=From:To:Subject:Date:From;
	b=k+Bv1sLb15q2uuux3zcISykbWzEeYIvIiSNpdi6FlfA0dgvt6SyM895brY13edg9h
	 jcfxw81idWUUFowuyQufWY37ahS9fHmva1cqe+PKnfNw8qt4j+ET/j2SMJ4yjo02Bf
	 a+5GAoW9C+KwCO7Om2/8RlfDD5reWRMtQ3F9YMnxV7ODe3dvzSnYZA5JW94tGa7+Zp
	 dUQB6iEjhb3eNLRQEcrzW2GvLj57Jad/i08Iz5bbT7Iz+wKPxvS0jO5najftuOpM8a
	 47YmXHRYWZWoyRAGxa02VReObWwsLHO8vI/SDgeZv65S5XspwiF99LLVFiA1RfnZJs
	 fqWT/h3oQvtsA==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
Received: from localhost.localdomain (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 07CE91DB2
	for <barebox@lists.infradead.org>; Wed,  3 Apr 2024 09:49:17 +0200 (CEST)
From: Tomas Marek <tomas.marek@elrest.cz>
To: barebox@lists.infradead.org
Date: Wed,  3 Apr 2024 09:49:09 +0200
Message-Id: <20240403074909.32256-1-tomas.marek@elrest.cz>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_004938_058893_954E024F 
X-CRM114-Status: GOOD (  25.30  )
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
X-Spam-Status: No, score=-1.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH v2] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an I2C master driver which uses EFI interface to implement access
to I2C bus.

Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>
---
Changes in v2:
- Addressed comments from Sascha - mapped all nmsgs to a single EFI
  request packet instead of sending each message as one EFI request
  (sending just one stop bit for all nmsgs instead of sending the stop
  bit after each message).
- Fixed I2C set bus clock frequency (EFI parameter is a pointer to an
  unsigned int, not an unsigned int).
- Link to v1: https://lore.barebox.org/barebox/20240320125538.31679-1-tomas.marek@elrest.cz/
---
 drivers/i2c/busses/Kconfig   |   6 +
 drivers/i2c/busses/Makefile  |   1 +
 drivers/i2c/busses/i2c-efi.c | 292 +++++++++++++++++++++++++++++++++++
 efi/guid.c                   |   1 +
 include/efi.h                |   3 +
 5 files changed, 303 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-efi.c

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index a274baf4b6..093b12b2ef 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -89,4 +89,10 @@ config I2C_CADENCE
 	  Say Y here to include support for the Cadence I2C host controller found
 	  in Zynq UltraScale+ MPSoCs.
 
+config I2C_EFI
+	bool "EFI I2C Master driver"
+	depends on EFI_PAYLOAD
+	help
+	  Say Y here to include support for the EFI I2C Master driver.
+
 endmenu
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index b4225995c0..30005c2bf8 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_I2C_AT91)		+= i2c-at91.o
 obj-$(CONFIG_I2C_BCM283X)	+= i2c-bcm283x.o
+obj-$(CONFIG_I2C_EFI)		+= i2c-efi.o
 obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
 obj-$(CONFIG_I2C_IMX)		+= i2c-imx.o
 lwl-$(CONFIG_I2C_IMX_EARLY)	+= i2c-imx-early.o
diff --git a/drivers/i2c/busses/i2c-efi.c b/drivers/i2c/busses/i2c-efi.c
new file mode 100644
index 0000000000..17bdbe995c
--- /dev/null
+++ b/drivers/i2c/busses/i2c-efi.c
@@ -0,0 +1,292 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * EFI I2C master driver
+ *
+ * Copyright (C) 2024 Elrest Solutions Company s.r.o.
+ * Author: Tomas Marek <tomas.marek@elrest.cz>
+ */
+
+#include <common.h>
+#include <i2c/i2c.h>
+#include <driver.h>
+#include <efi.h>
+#include <efi/efi-device.h>
+#include <efi/efi-util.h>
+#include <linux/kernel.h>
+
+/* Define EFI I2C transfer control flags */
+#define EFI_I2C_FLAG_READ           0x00000001
+
+#define EFI_I2C_ADDRESSING_10_BIT   0x80000000
+
+/* The set_bus_frequency() EFI call doesn't work (doesn't alter SPI clock
+ * frequency) if it's parameter is defined on the stack (observed with
+ * American Megatrends EFI Revision 5.19) - let's define it globaly.
+ */
+static unsigned int bus_clock;
+
+struct efi_i2c_capabilities {
+	u32 StructureSizeInBytes;
+	u32 MaximumReceiveBytes;
+	u32 MaximumTransmitBytes;
+	u32 MaximumTotalBytes;
+};
+
+struct efi_i2c_operation {
+	u32 Flags;
+	u32 LengthInBytes;
+	u8  *Buffer;
+};
+
+struct efi_i2c_request_packet {
+	unsigned int OperationCount;
+	struct efi_i2c_operation Operation[];
+};
+
+struct efi_i2c_master_protocol {
+	efi_status_t(EFIAPI * set_bus_frequency)(
+		struct efi_i2c_master_protocol *this,
+		unsigned int *bus_clock
+	);
+	efi_status_t(EFIAPI * reset)(
+		struct efi_i2c_master_protocol *this
+	);
+	efi_status_t(EFIAPI * start_request)(
+		struct efi_i2c_master_protocol *this,
+		unsigned int slave_address,
+		struct efi_i2c_request_packet *request_packet,
+		void *event,
+		efi_status_t *status
+	);
+	struct efi_i2c_capabilities *capabilities;
+};
+
+struct efi_i2c_priv {
+	struct efi_i2c_master_protocol *efi_protocol;
+	struct i2c_adapter adapter;
+};
+
+static inline struct efi_i2c_priv *
+adapter_to_efi_i2c_priv(struct i2c_adapter *a)
+{
+	return container_of(a, struct efi_i2c_priv, adapter);
+}
+
+static efi_status_t efi_i2c_request(
+	struct efi_i2c_request_packet *request,
+	const struct efi_i2c_priv *i2c_priv,
+	const unsigned int slave_address)
+{
+	const struct device *dev = &i2c_priv->adapter.dev;
+	efi_status_t efiret;
+
+	efiret = i2c_priv->efi_protocol->start_request(
+		i2c_priv->efi_protocol,
+		slave_address,
+		request,
+		NULL,
+		NULL
+	);
+
+	if (EFI_ERROR(efiret))
+		dev_err(dev, "I2C operation failed - %s (%lx)\n",
+			efi_strerror(efiret), -efiret);
+
+	return efiret;
+}
+
+static u32 efi_i2c_max_len(const struct efi_i2c_priv *i2c_priv,
+			   const struct i2c_msg *msg)
+{
+	const struct efi_i2c_capabilities *capabilities =
+		i2c_priv->efi_protocol->capabilities;
+
+	if (msg->flags & I2C_M_RD)
+		return capabilities->MaximumReceiveBytes;
+	else
+		return capabilities->MaximumTransmitBytes;
+}
+
+static unsigned int efi_i2c_msg_op_cnt(const struct efi_i2c_priv *i2c_priv,
+				       const struct i2c_msg *msg)
+{
+	unsigned int max_len;
+
+	max_len = efi_i2c_max_len(i2c_priv, msg);
+	return ((u64)msg->len + max_len - 1) / max_len;
+}
+
+static unsigned int efi_i2c_req_op_cnt(
+	const struct efi_i2c_priv *i2c_priv,
+	const struct i2c_msg *msg,
+	const int nmsgs)
+{
+	unsigned int op_cnt = 0;
+	int i;
+
+	for (i = nmsgs; i > 0; i--, msg++)
+		op_cnt += efi_i2c_msg_op_cnt(i2c_priv, msg);
+
+	return op_cnt;
+}
+
+static void i2c_msg_to_efi_op(
+	const struct efi_i2c_priv *i2c_priv,
+	const struct i2c_msg *msg,
+	struct efi_i2c_operation **op)
+{
+	unsigned int max_len = efi_i2c_max_len(i2c_priv, msg);
+	unsigned int remaining = msg->len;
+	u32 flags;
+
+	flags = (msg->flags & I2C_M_RD) ? EFI_I2C_FLAG_READ : 0;
+
+	do {
+		unsigned int len = (remaining < max_len) ? remaining : max_len;
+
+		(*op)->Flags = flags;
+		(*op)->LengthInBytes = len;
+		(*op)->Buffer = msg->buf + (msg->len - remaining);
+		(*op)++;
+
+		remaining -= len;
+	} while (remaining > 0);
+}
+
+static int i2c_msgs_to_efi_transaction(struct i2c_adapter *adapter,
+				       struct efi_i2c_operation *op,
+				       const struct i2c_msg *msg,
+				       const int nmsgs)
+{
+	struct efi_i2c_priv *i2c_priv = adapter_to_efi_i2c_priv(adapter);
+	const struct i2c_msg *msg_tmp;
+	int ret = 0;
+	int i;
+
+	msg_tmp = msg;
+	for (i = nmsgs; i > 0; i--, msg_tmp++) {
+		if (msg_tmp->flags & I2C_M_DATA_ONLY) {
+			ret = -ENOTSUPP;
+			break;
+		}
+
+		if (i > 0) {
+			if (msg_tmp->addr != msg->addr) {
+				dev_err(&adapter->dev, "Different I2C addresses in one request not supported!\n");
+				ret = -ENOTSUPP;
+				break;
+			}
+		}
+
+		i2c_msg_to_efi_op(i2c_priv, msg_tmp, &op);
+	}
+
+	return ret;
+}
+
+static int efi_i2c_xfer(struct i2c_adapter *adapter,
+			struct i2c_msg *msg, int nmsgs)
+{
+	struct efi_i2c_priv *i2c_priv = adapter_to_efi_i2c_priv(adapter);
+	struct efi_i2c_request_packet *request_packet;
+	unsigned int slave_address;
+	efi_status_t efiret;
+	unsigned int op_cnt;
+	int ret = nmsgs;
+	int len;
+
+	op_cnt = efi_i2c_req_op_cnt(i2c_priv, msg, nmsgs);
+
+	len = sizeof(*request_packet) + op_cnt*sizeof(struct efi_i2c_operation);
+	request_packet = malloc(len);
+	if (!request_packet)
+		return -ENOMEM;
+
+	request_packet->OperationCount = op_cnt;
+	ret = i2c_msgs_to_efi_transaction(adapter, request_packet->Operation,
+					  msg, nmsgs);
+	if (ret)
+		goto out_free;
+
+	slave_address = msg->addr;
+	if (msg->flags & I2C_M_TEN)
+		slave_address |= EFI_I2C_ADDRESSING_10_BIT;
+
+	efiret = efi_i2c_request(request_packet, i2c_priv, slave_address);
+	if (EFI_ERROR(efiret)) {
+		ret = -efi_errno(efiret);
+		goto out_free;
+	}
+
+	ret = nmsgs;
+
+out_free:
+	free(request_packet);
+
+	return ret;
+}
+
+static int efi_i2c_probe(struct efi_device *efidev)
+{
+	struct i2c_platform_data *pdata;
+	struct efi_i2c_priv *efi_i2c;
+	struct i2c_timings timings;
+	efi_status_t efiret;
+	int ret;
+
+	efi_i2c = xzalloc(sizeof(*efi_i2c));
+
+	efi_i2c->efi_protocol = efidev->protocol;
+
+	efi_i2c->adapter.master_xfer = efi_i2c_xfer;
+	efi_i2c->adapter.nr = efidev->dev.id;
+	efi_i2c->adapter.dev.parent = &efidev->dev;
+	efi_i2c->adapter.dev.of_node = efidev->dev.of_node;
+
+	i2c_parse_fw_timings(&efidev->dev, &timings, true);
+
+	pdata = efidev->dev.platform_data;
+	if (pdata && pdata->bitrate)
+		timings.bus_freq_hz = pdata->bitrate;
+
+	efiret = efi_i2c->efi_protocol->reset(efi_i2c->efi_protocol);
+	if (EFI_ERROR(efiret)) {
+		dev_err(&efidev->dev, "controller reset failed - %ld\n",
+			efiret);
+		ret = -efi_errno(efiret);
+		goto out_free;
+	}
+
+	bus_clock = timings.bus_freq_hz;
+	efiret = efi_i2c->efi_protocol->set_bus_frequency(
+			efi_i2c->efi_protocol,
+			&bus_clock);
+	if (EFI_ERROR(efiret)) {
+		dev_err(&efidev->dev, "I2C clock frequency %u update failed - %s (%lx)\n",
+			timings.bus_freq_hz, efi_strerror(efiret), -efiret);
+		ret = -efi_errno(efiret);
+		goto out_free;
+	}
+	dev_info(&efidev->dev, "I2C clock frequency %u\n", bus_clock);
+
+	ret = i2c_add_numbered_adapter(&efi_i2c->adapter);
+
+out_free:
+	if (ret < 0)
+		kfree(efi_i2c);
+
+	return ret;
+}
+
+static struct efi_driver efi_i2c_driver = {
+	.driver = {
+		.name  = "efi-i2c",
+	},
+	.probe = efi_i2c_probe,
+	.guid = EFI_I2C_MASTER_PROTOCOL_GUID
+};
+device_efi_driver(efi_i2c_driver);
+
+MODULE_AUTHOR("Tomas Marek <tomas.marek@elrest.cz>");
+MODULE_DESCRIPTION("EFI I2C master driver");
+MODULE_LICENSE("GPL");
diff --git a/efi/guid.c b/efi/guid.c
index f6bd4a24e2..ef230a2b24 100644
--- a/efi/guid.c
+++ b/efi/guid.c
@@ -115,6 +115,7 @@ const char *efi_guid_string(efi_guid_t *g)
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31, "Network Interface Identifier Protocol_31",  "EFI1.1 Network Interface Identifier Protocol");
 	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID, "Network Interface Identifier Protocol", "EFI Network Interface Identifier Protocol");
 	EFI_GUID_STRING(EFI_TIMESTAMP_PROTOCOL_GUID, "Timestamp", "Timestamp");
+	EFI_GUID_STRING(EFI_I2C_MASTER_PROTOCOL_GUID, "I2C Master Protocol", "EFI I2C Master Protocol");
 
 	/* TPM 1.2 */
 	EFI_GUID_STRING( EFI_TCG_PROTOCOL_GUID, "TcgService", "TCGServices Protocol");
diff --git a/include/efi.h b/include/efi.h
index 6bb5f8cb0a..a27cbe1f49 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -562,6 +562,9 @@ extern struct efi_runtime_services *RT;
 #define EFI_TIMESTAMP_PROTOCOL_GUID \
     EFI_GUID(0xafbfde41, 0x2e6e, 0x4262, 0xba, 0x65, 0x62, 0xb9, 0x23, 0x6e, 0x54, 0x95)
 
+#define EFI_I2C_MASTER_PROTOCOL_GUID \
+	EFI_GUID(0xcd72881f, 0x45b5, 0x4feb, 0x98, 0xc8, 0x31, 0x3d, 0xa8, 0x11, 0x74, 0x62)
+
 /* barebox specific GUIDs */
 #define EFI_BAREBOX_VENDOR_GUID \
     EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
-- 
2.39.2



