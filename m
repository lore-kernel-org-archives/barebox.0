Delivery-date: Wed, 20 Mar 2024 13:56:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmvV4-00F9EV-1u
	for lore@lore.pengutronix.de;
	Wed, 20 Mar 2024 13:56:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmvV3-0003SN-Gw
	for lore@pengutronix.de; Wed, 20 Mar 2024 13:56:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1HW2eNoqF5Sb/tuBgXt2SGh0ZfO6fYVynSbarIdroO4=; b=m31JeMF3bIihoi+oRICzPARzaL
	pb9tPUo75FpbjcuqmlH0XvBQ/SKMf6jjN4RjykEfDhUd3oiefyaU9VpXIZwgb9541yEZzwvmbDRfp
	z0/pnp5yCXpau82gUvfph05SY0WOOuwLlGpCHwcHz3fFU9b58lBI8NwM9DBd20sFx8zXQin2n7muO
	a4dJaKGGKN3y+icetzvFbLpG56tb7dPXiTD6RcCXuvvdmy7vkl3bweNviq/xClXQf2MCGwnHIknYr
	fUEu8KZuIOhj4EgLxDLugItzXzTtH+8gczV8C78qWIjWN21OQtRzORvSRyXCdx9gONyJKykbHVR9H
	LLvgjgOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmvUK-0000000HBRj-1S4H;
	Wed, 20 Mar 2024 12:56:12 +0000
Received: from smtp.cesky-hosting.cz ([2a00:1ed0:2:0:1:5bef:c8ee:1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmvUC-0000000HBPd-3E4P
	for barebox@lists.infradead.org;
	Wed, 20 Mar 2024 12:56:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=elrest.cz;
	s=rampa2-202308; t=1710939346;
	bh=+mejKqQyie20GRAAC0DIRkWKMs+1YadQSscRQkMhnHw=;
	h=From:To:Subject:Date:From;
	b=PAmtNs8FXszCKIUOLuZeJgG1OIzHJ2p873u3aiSZr8k3L4hWxjPvSrelNQy9QWhEc
	 U3hJT1G/yupIUAI4FOGcUIXtEIAFWOqxIeDCvbwmN8WUSGng2YhhIrw4NYAHB6mIjn
	 GYzAzwM3Yvhjre6UyHKgoxt3r+t61e1QbY3tzw2uGw6M/3vR0vRHcfM3WbbwCO9JPa
	 w7G//+DSNO76CDIfFQ08MEV4y/zg/ibxyiqJJFCyLApoXMRmf8VL7JMNrEXsk6Veo0
	 nAdEmrRdHjH16tR+Uqtt6x1RFCEJ+QnwXcvwGFDlCp+9PL7fi3T82d4q8mniSXfC76
	 BZ81YHm+YIthg==
X-Virus-Scanned: Debian amavis at smtp.cesky-hosting.cz
Received: from localhost.localdomain (unknown [185.63.98.16])
	(Authenticated sender: tomas.marek@elrest.cz)
	by smtp.cesky-hosting.cz (Postfix) with ESMTPSA id 18BB2B51
	for <barebox@lists.infradead.org>; Wed, 20 Mar 2024 13:55:44 +0100 (CET)
From: Tomas Marek <tomas.marek@elrest.cz>
To: barebox@lists.infradead.org
Date: Wed, 20 Mar 2024 13:55:38 +0100
Message-Id: <20240320125538.31679-1-tomas.marek@elrest.cz>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_055605_478983_59D8145D 
X-CRM114-Status: GOOD (  20.53  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an I2C master driver which uses EFI interface to implement access
to I2C bus.

Signed-off-by: Tomas Marek <tomas.marek@elrest.cz>
---
 drivers/i2c/busses/Kconfig   |   6 +
 drivers/i2c/busses/Makefile  |   1 +
 drivers/i2c/busses/i2c-efi.c | 258 +++++++++++++++++++++++++++++++++++
 efi/guid.c                   |   1 +
 include/efi.h                |   3 +
 5 files changed, 269 insertions(+)
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
index 0000000000..e647efd9d3
--- /dev/null
+++ b/drivers/i2c/busses/i2c-efi.c
@@ -0,0 +1,258 @@
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
+struct efi_i2c_one_request_packet {
+	unsigned int OperationCount;
+	struct efi_i2c_operation Operation[1];
+};
+
+struct efi_i2c_master_protocol {
+	efi_status_t(EFIAPI * set_bus_frequency)(
+		struct efi_i2c_master_protocol *this,
+		unsigned int bus_clock
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
+		struct efi_i2c_request_packet *request,
+		struct efi_i2c_priv *i2c_priv,
+		const struct i2c_msg *msg)
+{
+	struct device *dev = &i2c_priv->adapter.dev;
+	unsigned int slave_address = msg->addr;
+	efi_status_t efiret;
+
+	if (msg->flags & I2C_M_DATA_ONLY)
+		return -ENOTSUPP;
+
+	if (msg->flags & I2C_M_TEN)
+		slave_address |= EFI_I2C_ADDRESSING_10_BIT;
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
+static efi_status_t efi_i2c_write(const struct i2c_msg *msg,
+				  struct efi_i2c_priv *i2c_priv,
+				  u8 *buf, u32 len)
+{
+	struct efi_i2c_one_request_packet write_request = {
+		.OperationCount = 1,
+		.Operation = { {
+			.Flags = 0,
+			.LengthInBytes = len,
+			.Buffer = buf,
+		} },
+	};
+
+	return efi_i2c_request(
+		(struct efi_i2c_request_packet *)&write_request,
+		i2c_priv, msg);
+}
+
+static efi_status_t efi_i2c_read(struct i2c_msg *msg,
+				 struct efi_i2c_priv *i2c_priv,
+				 u8 *buf, u32 len)
+{
+	struct efi_i2c_one_request_packet read_request = {
+		.OperationCount = 1,
+		.Operation = { {
+			.Flags = EFI_I2C_FLAG_READ,
+			.LengthInBytes = len,
+			.Buffer = buf,
+		} },
+	};
+
+	return efi_i2c_request(
+		(struct efi_i2c_request_packet *)&read_request,
+		i2c_priv, msg);
+}
+
+static int efi_i2c_max_len(struct efi_i2c_priv *i2c_priv,
+			   struct i2c_msg *msg)
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
+static int efi_i2c_message_xfer(struct efi_i2c_priv *i2c_priv,
+				struct i2c_msg *msg)
+{
+	const u32 max_len = efi_i2c_max_len(i2c_priv, msg);
+
+	efi_status_t efiret;
+	u32 offset = 0;
+	u32 len;
+	u8 *buf = msg->buf;
+
+	do {
+		len = min(max_len, msg->len - offset);
+
+		if (msg->flags & I2C_M_RD)
+			efiret = efi_i2c_read(msg, i2c_priv, buf, len);
+		else
+			efiret = efi_i2c_write(msg, i2c_priv, buf, len);
+
+		if (EFI_ERROR(efiret))
+			break;
+
+		offset += len;
+		buf += len;
+	} while (offset < msg->len);
+
+	return -efi_errno(efiret);
+}
+
+
+static int efi_i2c_xfer(struct i2c_adapter *adapter,
+			struct i2c_msg *msg, int nmsgs)
+{
+	struct efi_i2c_priv *i2c_priv = adapter_to_efi_i2c_priv(adapter);
+	int i, ret;
+
+	for (i = nmsgs; i > 0; i--, msg++) {
+		ret = efi_i2c_message_xfer(i2c_priv, msg);
+		if (ret)
+			return ret;
+	}
+
+	return nmsgs;
+}
+
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
+	efiret = efi_i2c->efi_protocol->set_bus_frequency(
+			efi_i2c->efi_protocol,
+			timings.bus_freq_hz);
+	if (EFI_ERROR(efiret)) {
+		dev_err(&efidev->dev, "clock frequency update failed - %ld\n",
+			efiret);
+		ret = -efi_errno(efiret);
+		goto out_free;
+	}
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



