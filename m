Delivery-date: Thu, 25 Sep 2025 14:00:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1keC-000vvg-3B
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke8-0005Iy-TS
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sRKexSNql3jasvnSFeAZXjc8tSUwsyjL1mO4iN7ODIQ=; b=BiQXLdwL5L42ONkYcgakZUxDJ9
	k7SvgyAShnxV62YIxJFDXKhclnwFtV5KE91Pei3OovTyj9I7+1R1njtF8BVxckeaHct4odXIfnjqK
	826taTk21eA7Dn0Kriz40GUW9Jo/v4bkgZxPqz6iyDBc3Vk85hgYuYFTqVwlwR4Rv9TyPRciFMY0y
	CdPBn8J0TUX2r4/PNGTg57Fw/njcniDWD1KYND1+XOPIl5zUsyfCM1L68mk5/dswPLGiPP1mZI9Sd
	AlKCQD67jrGltDeerMf4kP4awZwpXpxCZQ4JR5PKJvgWEEUfOZg7kGOZ2hK5hj/UWag78si2wUk0p
	rQpg70dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdM-00000008jzk-1eSO;
	Thu, 25 Sep 2025 11:59:36 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jqa-1Gkb
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:34 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEl0016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-9-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=20670;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=xR/K5vEekR28RH24mx4aFUJ5FHWnK3zf9IVxMsEPmiE=;
 b=4ihVVPx/zfkZ6/NMZHlVEGCgJhBBms3+X3G5T3VBClH51Id7cScqwSzPY0TL9nWu8unDL3Hfg
 O09fwcPfHL9DTf0uxLdT1P17oucP3KVk30KBzEBNixLSxGOkm4/amAP
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_773576_946836F4 
X-CRM114-Status: GOOD (  36.72  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/10] nvmem: add support for Atmel sha204(a)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

This adds support for the Atmel SHA204(a) which is a SHA accelerator
with hwrng and OTP support. This only adds the OTP functionality, hence
the driver resides in drivers/nvmem for now. The code is based on the
corresponding Linux driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

---
v1 -> v2:
  - replace devm_kmalloc() with devm_kzalloc() in atmel_i2c_probe().
---
---
 drivers/nvmem/Kconfig         |  15 +++
 drivers/nvmem/Makefile        |   2 +
 drivers/nvmem/atmel-i2c.c     | 302 ++++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/atmel-i2c.h     | 180 +++++++++++++++++++++++++
 drivers/nvmem/atmel-sha204a.c | 114 ++++++++++++++++
 5 files changed, 613 insertions(+)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 41a3bf26dda04155e7457a5bd9473ff4be646574..7428512e28babc35fb3ca3b144a6b8a762ea584e 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -121,4 +121,19 @@ config STARFIVE_OTP
 	  This adds support for the StarFive OTP controller. Only reading
 	  is currently supported.
 
+config NVMEM_ATMEL_SHA204A
+	bool "Support for Microchip / Atmel SHA accelerator OTP support"
+	depends on I2C
+	select CRC16
+	select BITREV
+	select NVMEM_ATMEL_I2C
+	help
+	  Microchip / Atmel SHA accelerator and RNG.
+	  Select this if you want to use the Microchip / Atmel SHA204A
+	  chip. This driver currently only supports reading the OTP memory
+
+config NVMEM_ATMEL_I2C
+	bool
+	select BITREVERSE
+
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index fdd5c63e321db009f5eaa282e0b37fe0c8f28572..9cdc669a966958551e708bc4ef21ff353f0cfe83 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -34,3 +34,5 @@ nvmem-kvx-otp-nv-y		:= kvx-otp-nv.o
 obj-$(CONFIG_NVMEM_ROCKCHIP_OTP)+= rockchip-otp.o
 obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
 obj-$(CONFIG_IMX_OCOTP_ELE)	+= imx-ocotp-ele.o
+obj-$(CONFIG_NVMEM_ATMEL_I2C)	+= atmel-i2c.o
+obj-$(CONFIG_NVMEM_ATMEL_SHA204A) += atmel-sha204a.o
diff --git a/drivers/nvmem/atmel-i2c.c b/drivers/nvmem/atmel-i2c.c
new file mode 100644
index 0000000000000000000000000000000000000000..19ab5f89240be31a02ecb3af83f2dcb26cb75bae
--- /dev/null
+++ b/drivers/nvmem/atmel-i2c.c
@@ -0,0 +1,302 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip / Atmel ECC (I2C) driver.
+ *
+ * Copyright (c) 2017, Microchip Technology Inc.
+ * Author: Tudor Ambarus
+ */
+
+#include <linux/bitrev.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <i2c/i2c.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include "atmel-i2c.h"
+
+static const struct {
+	u8 value;
+	const char *error_text;
+} error_list[] = {
+	{ 0x01, "CheckMac or Verify miscompare" },
+	{ 0x03, "Parse Error" },
+	{ 0x05, "ECC Fault" },
+	{ 0x0F, "Execution Error" },
+	{ 0xEE, "Watchdog about to expire" },
+	{ 0xFF, "CRC or other communication error" },
+};
+u16 crc16(u16 crc, const u8 *buffer, size_t len);
+/**
+ * atmel_i2c_checksum() - Generate 16-bit CRC as required by ATMEL ECC.
+ * CRC16 verification of the count, opcode, param1, param2 and data bytes.
+ * The checksum is saved in little-endian format in the least significant
+ * two bytes of the command. CRC polynomial is 0x8005 and the initial register
+ * value should be zero.
+ *
+ * @cmd : structure used for communicating with the device.
+ */
+static void atmel_i2c_checksum(struct atmel_i2c_cmd *cmd)
+{
+	u8 *data = &cmd->count;
+	size_t len = cmd->count - CRC_SIZE;
+	__le16 *__crc16 = (__le16 *)(data + len);
+
+	*__crc16 = cpu_to_le16(bitrev16(crc16(0, data, len)));
+}
+
+void atmel_i2c_init_read_config_cmd(struct atmel_i2c_cmd *cmd)
+{
+	cmd->word_addr = COMMAND;
+	cmd->opcode = OPCODE_READ;
+	/*
+	 * Read the word from Configuration zone that contains the lock bytes
+	 * (UserExtra, Selector, LockValue, LockConfig).
+	 */
+	cmd->param1 = CONFIGURATION_ZONE;
+	cmd->param2 = cpu_to_le16(DEVICE_LOCK_ADDR);
+	cmd->count = READ_COUNT;
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_READ;
+	cmd->rxsize = READ_RSP_SIZE;
+}
+EXPORT_SYMBOL(atmel_i2c_init_read_config_cmd);
+
+int atmel_i2c_init_read_otp_cmd(struct atmel_i2c_cmd *cmd, u16 addr)
+{
+	if (addr > OTP_ZONE_SIZE)
+		return -EINVAL;
+
+	cmd->word_addr = COMMAND;
+	cmd->opcode = OPCODE_READ;
+	/*
+	 * Read the word from OTP zone that may contain e.g. serial
+	 * numbers or similar if persistently pre-initialized and locked
+	 */
+	cmd->param1 = OTP_ZONE;
+	cmd->param2 = cpu_to_le16(addr);
+	cmd->count = READ_COUNT;
+
+	atmel_i2c_checksum(cmd);
+
+	cmd->msecs = MAX_EXEC_TIME_READ;
+	cmd->rxsize = READ_RSP_SIZE;
+
+	return 0;
+}
+EXPORT_SYMBOL(atmel_i2c_init_read_otp_cmd);
+
+/*
+ * After wake and after execution of a command, there will be error, status, or
+ * result bytes in the device's output register that can be retrieved by the
+ * system. When the length of that group is four bytes, the codes returned are
+ * detailed in error_list.
+ */
+static int atmel_i2c_status(struct device *dev, u8 *status)
+{
+	size_t err_list_len = ARRAY_SIZE(error_list);
+	int i;
+	u8 err_id = status[1];
+
+	if (*status != STATUS_SIZE)
+		return 0;
+
+	if (err_id == STATUS_WAKE_SUCCESSFUL || err_id == STATUS_NOERR)
+		return 0;
+
+	for (i = 0; i < err_list_len; i++)
+		if (error_list[i].value == err_id)
+			break;
+
+	/* if err_id is not in the error_list then ignore it */
+	if (i != err_list_len) {
+		dev_err(dev, "%02x: %s:\n", err_id, error_list[i].error_text);
+		return err_id;
+	}
+
+	return 0;
+}
+
+/**
+ * i2c_transfer_buffer_flags - issue a single I2C message transferring data
+ *                             to/from a buffer
+ * @client: Handle to slave device
+ * @buf: Where the data is stored
+ * @count: How many bytes to transfer, must be less than 64k since msg.len is u16
+ * @flags: The flags to be used for the message, e.g. I2C_M_RD for reads
+ *
+ * Returns negative errno, or else the number of bytes transferred.
+ */
+static int i2c_transfer_buffer_flags(const struct i2c_client *client, char *buf,
+			      int count, u16 flags)
+{
+	int ret;
+	struct i2c_msg msg = {
+		.addr = client->addr,
+		.flags = flags,
+		.len = count,
+		.buf = buf,
+	};
+
+	ret = i2c_transfer(client->adapter, &msg, 1);
+
+	/*
+	 * If everything went ok (i.e. 1 msg transferred), return #bytes
+	 * transferred, else error code.
+	 */
+	return (ret == 1) ? count : ret;
+}
+
+static int atmel_i2c_wakeup(struct i2c_client *client)
+{
+	struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
+	u8 status[STATUS_RSP_SIZE];
+	int ret;
+
+	/*
+	 * The device ignores any levels or transitions on the SCL pin when the
+	 * device is idle, asleep or during waking up. Don't check for error
+	 * when waking up the device.
+	 */
+	i2c_transfer_buffer_flags(client, i2c_priv->wake_token,
+				i2c_priv->wake_token_sz, I2C_M_IGNORE_NAK);
+
+	/*
+	 * Wait to wake the device. Typical execution times for ecdh and genkey
+	 * are around tens of milliseconds. Delta is chosen to 50 microseconds.
+	 */
+	udelay(TWHI_MIN);
+
+	ret = i2c_master_recv(client, status, STATUS_SIZE);
+	if (ret < 0)
+		return ret;
+
+	return atmel_i2c_status(&client->dev, status);
+}
+
+static int atmel_i2c_sleep(struct i2c_client *client)
+{
+	u8 sleep = SLEEP_TOKEN;
+
+	return i2c_master_send(client, &sleep, 1);
+}
+
+/*
+ * atmel_i2c_send_receive() - send a command to the device and receive its
+ *                            response.
+ * @client: i2c client device
+ * @cmd   : structure used to communicate with the device
+ *
+ * After the device receives a Wake token, a watchdog counter starts within the
+ * device. After the watchdog timer expires, the device enters sleep mode
+ * regardless of whether some I/O transmission or command execution is in
+ * progress. If a command is attempted when insufficient time remains prior to
+ * watchdog timer execution, the device will return the watchdog timeout error
+ * code without attempting to execute the command. There is no way to reset the
+ * counter other than to put the device into sleep or idle mode and then
+ * wake it up again.
+ */
+int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd)
+{
+	int ret;
+
+	ret = atmel_i2c_wakeup(client);
+	if (ret)
+		goto err;
+
+	/* send the command */
+	ret = i2c_master_send(client, (u8 *)cmd, cmd->count + WORD_ADDR_SIZE);
+	if (ret < 0)
+		goto err;
+
+	/* delay the appropriate amount of time for command to execute */
+	mdelay(cmd->msecs);
+
+	/* receive the response */
+	ret = i2c_master_recv(client, cmd->data, cmd->rxsize);
+	if (ret < 0)
+		goto err;
+
+	/* put the device into low-power mode */
+	ret = atmel_i2c_sleep(client);
+	if (ret < 0)
+		goto err;
+
+	return atmel_i2c_status(&client->dev, cmd->data);
+err:
+	return ret;
+}
+EXPORT_SYMBOL(atmel_i2c_send_receive);
+
+static inline size_t atmel_i2c_wake_token_sz(u32 bus_clk_rate)
+{
+	u32 no_of_bits = DIV_ROUND_UP(TWLO_USEC * bus_clk_rate, USEC_PER_SEC);
+
+	/* return the size of the wake_token in bytes */
+	return DIV_ROUND_UP(no_of_bits, 8);
+}
+
+static int device_sanity_check(struct i2c_client *client)
+{
+	struct atmel_i2c_cmd *cmd;
+	int ret;
+
+	cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
+	if (!cmd)
+		return -ENOMEM;
+
+	atmel_i2c_init_read_config_cmd(cmd);
+
+	ret = atmel_i2c_send_receive(client, cmd);
+	if (ret)
+		goto free_cmd;
+
+	/*
+	 * It is vital that the Configuration, Data and OTP zones be locked
+	 * prior to release into the field of the system containing the device.
+	 * Failure to lock these zones may permit modification of any secret
+	 * keys and may lead to other security problems.
+	 */
+	if (cmd->data[LOCK_CONFIG_IDX] || cmd->data[LOCK_VALUE_IDX]) {
+		dev_err(&client->dev, "Configuration or Data and OTP zones are unlocked!\n");
+		ret = -ENOTSUPP;
+	}
+
+	/* fall through */
+free_cmd:
+	kfree(cmd);
+	return ret;
+}
+
+int atmel_i2c_probe(struct i2c_client *client)
+{
+	struct atmel_i2c_client_priv *i2c_priv;
+	struct device *dev = &client->dev;
+	int bus_clk_rate = 1000000; /* maximum */
+
+	i2c_priv = devm_kzalloc(dev, sizeof(*i2c_priv), GFP_KERNEL);
+	if (!i2c_priv)
+		return -ENOMEM;
+
+	i2c_priv->client = client;
+
+	/*
+	 * WAKE_TOKEN_MAX_SIZE was calculated for the maximum bus_clk_rate -
+	 * 1MHz. The previous bus_clk_rate check ensures us that wake_token_sz
+	 * will always be smaller than or equal to WAKE_TOKEN_MAX_SIZE.
+	 */
+	i2c_priv->wake_token_sz = atmel_i2c_wake_token_sz(bus_clk_rate);
+
+	memset(i2c_priv->wake_token, 0, sizeof(i2c_priv->wake_token));
+
+	i2c_set_clientdata(client, i2c_priv);
+
+	return device_sanity_check(client);
+}
+EXPORT_SYMBOL(atmel_i2c_probe);
+
+MODULE_AUTHOR("Tudor Ambarus");
+MODULE_DESCRIPTION("Microchip / Atmel ECC (I2C) driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/nvmem/atmel-i2c.h b/drivers/nvmem/atmel-i2c.h
new file mode 100644
index 0000000000000000000000000000000000000000..5e8b2b12951d988dd8b8e37751dd82c9f41d9411
--- /dev/null
+++ b/drivers/nvmem/atmel-i2c.h
@@ -0,0 +1,180 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2017, Microchip Technology Inc.
+ * Author: Tudor Ambarus
+ */
+
+#ifndef __ATMEL_I2C_H__
+#define __ATMEL_I2C_H__
+
+#include <linux/types.h>
+#include <linux/nvmem-provider.h>
+
+#define ATMEL_ECC_PRIORITY		300
+
+#define COMMAND				0x03 /* packet function */
+#define SLEEP_TOKEN			0x01
+#define WAKE_TOKEN_MAX_SIZE		8
+
+/* Definitions of Data and Command sizes */
+#define WORD_ADDR_SIZE			1
+#define COUNT_SIZE			1
+#define CRC_SIZE			2
+#define CMD_OVERHEAD_SIZE		(COUNT_SIZE + CRC_SIZE)
+
+/* size in bytes of the n prime */
+#define ATMEL_ECC_NIST_P256_N_SIZE	32
+#define ATMEL_ECC_PUBKEY_SIZE		(2 * ATMEL_ECC_NIST_P256_N_SIZE)
+
+#define STATUS_RSP_SIZE			4
+#define ECDH_RSP_SIZE			(32 + CMD_OVERHEAD_SIZE)
+#define GENKEY_RSP_SIZE			(ATMEL_ECC_PUBKEY_SIZE + \
+					 CMD_OVERHEAD_SIZE)
+#define READ_RSP_SIZE			(4 + CMD_OVERHEAD_SIZE)
+#define RANDOM_RSP_SIZE			(32 + CMD_OVERHEAD_SIZE)
+#define MAX_RSP_SIZE			GENKEY_RSP_SIZE
+
+/**
+ * atmel_i2c_cmd - structure used for communicating with the device.
+ * @word_addr: indicates the function of the packet sent to the device. This
+ *             byte should have a value of COMMAND for normal operation.
+ * @count    : number of bytes to be transferred to (or from) the device.
+ * @opcode   : the command code.
+ * @param1   : the first parameter; always present.
+ * @param2   : the second parameter; always present.
+ * @data     : optional remaining input data. Includes a 2-byte CRC.
+ * @rxsize   : size of the data received from i2c client.
+ * @msecs    : command execution time in milliseconds
+ */
+struct atmel_i2c_cmd {
+	u8 word_addr;
+	u8 count;
+	u8 opcode;
+	u8 param1;
+	__le16 param2;
+	u8 data[MAX_RSP_SIZE];
+	u8 msecs;
+	u16 rxsize;
+} __packed;
+
+/* Status/Error codes */
+#define STATUS_SIZE			0x04
+#define STATUS_NOERR			0x00
+#define STATUS_WAKE_SUCCESSFUL		0x11
+
+/* Definitions for eeprom organization */
+#define CONFIGURATION_ZONE		0
+#define OTP_ZONE			1
+
+/* Definitions for eeprom zone sizes */
+#define OTP_ZONE_SIZE			64
+
+/* Definitions for Indexes common to all commands */
+#define RSP_DATA_IDX			1 /* buffer index of data in response */
+#define DATA_SLOT_2			2 /* used for ECDH private key */
+
+/* Definitions for the device lock state */
+#define DEVICE_LOCK_ADDR		0x15
+#define LOCK_VALUE_IDX			(RSP_DATA_IDX + 2)
+#define LOCK_CONFIG_IDX			(RSP_DATA_IDX + 3)
+
+/*
+ * Wake High delay to data communication (microseconds). SDA should be stable
+ * high for this entire duration.
+ */
+#define TWHI_MIN			1500
+#define TWHI_MAX			1550
+
+/* Wake Low duration */
+#define TWLO_USEC			60
+
+/* Command execution time (milliseconds) */
+#define MAX_EXEC_TIME_ECDH		58
+#define MAX_EXEC_TIME_GENKEY		115
+#define MAX_EXEC_TIME_READ		1
+#define MAX_EXEC_TIME_RANDOM		50
+
+/* Command opcode */
+#define OPCODE_ECDH			0x43
+#define OPCODE_GENKEY			0x40
+#define OPCODE_READ			0x02
+#define OPCODE_RANDOM			0x1b
+
+/* Definitions for the READ Command */
+#define READ_COUNT			7
+
+/* Definitions for the RANDOM Command */
+#define RANDOM_COUNT			7
+
+/* Definitions for the GenKey Command */
+#define GENKEY_COUNT			7
+#define GENKEY_MODE_PRIVATE		0x04
+
+/* Definitions for the ECDH Command */
+#define ECDH_COUNT			71
+#define ECDH_PREFIX_MODE		0x00
+
+/**
+ * atmel_i2c_client_priv - i2c_client private data
+ * @client              : pointer to i2c client device
+ * @i2c_client_list_node: part of i2c_client_list
+ * @lock                : lock for sending i2c commands
+ * @wake_token          : wake token array of zeros
+ * @wake_token_sz       : size in bytes of the wake_token
+ * @tfm_count           : number of active crypto transformations on i2c client
+ * @hwrng               : hold the hardware generated rng
+ *
+ * Reads and writes from/to the i2c client are sequential. The first byte
+ * transmitted to the device is treated as the byte size. Any attempt to send
+ * more than this number of bytes will cause the device to not ACK those bytes.
+ * After the host writes a single command byte to the input buffer, reads are
+ * prohibited until after the device completes command execution. Use a mutex
+ * when sending i2c commands.
+ */
+struct atmel_i2c_client_priv {
+	struct i2c_client *client;
+	u8 wake_token[WAKE_TOKEN_MAX_SIZE];
+	size_t wake_token_sz;
+	struct nvmem_config nvmem_config;
+	struct nvmem_device *nvmem;
+	void *data;
+};
+
+/**
+ * atmel_i2c_work_data - data structure representing the work
+ * @ctx : transformation context.
+ * @cbk : pointer to a callback function to be invoked upon completion of this
+ *        request. This has the form:
+ *        callback(struct atmel_i2c_work_data *work_data, void *areq, u8 status)
+ *        where:
+ *        @work_data: data structure representing the work
+ *        @areq     : optional pointer to an argument passed with the original
+ *                    request.
+ *        @status   : status returned from the i2c client device or i2c error.
+ * @areq: optional pointer to a user argument for use at callback time.
+ * @work: describes the task to be executed.
+ * @cmd : structure used for communicating with the device.
+ */
+struct atmel_i2c_work_data {
+	void *ctx;
+	struct i2c_client *client;
+	void (*cbk)(struct atmel_i2c_work_data *work_data, void *areq,
+		    int status);
+	void *areq;
+	struct atmel_i2c_cmd cmd;
+};
+
+int atmel_i2c_probe(struct i2c_client *client);
+
+void atmel_i2c_enqueue(struct atmel_i2c_work_data *work_data,
+		       void (*cbk)(struct atmel_i2c_work_data *work_data,
+				   void *areq, int status),
+		       void *areq);
+void atmel_i2c_flush_queue(void);
+
+int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd);
+
+void atmel_i2c_init_read_config_cmd(struct atmel_i2c_cmd *cmd);
+int atmel_i2c_init_read_otp_cmd(struct atmel_i2c_cmd *cmd, u16 addr);
+
+#endif /* __ATMEL_I2C_H__ */
diff --git a/drivers/nvmem/atmel-sha204a.c b/drivers/nvmem/atmel-sha204a.c
new file mode 100644
index 0000000000000000000000000000000000000000..3bf077c057286ae2f659a76ebb0c02c62f647535
--- /dev/null
+++ b/drivers/nvmem/atmel-sha204a.c
@@ -0,0 +1,114 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Microchip / Atmel SHA204A (I2C) driver.
+ *
+ * Copyright (c) 2019 Linaro, Ltd. <ard.biesheuvel@linaro.org>
+ */
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <i2c/i2c.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+
+#include "atmel-i2c.h"
+
+static int atmel_sha204a_otp_read_full(struct atmel_i2c_client_priv *i2c_priv, void *buf)
+{
+	u16 addr;
+	struct atmel_i2c_cmd cmd;
+	struct i2c_client *client = i2c_priv->client;
+	int ret;
+
+	for (addr = 0; addr < OTP_ZONE_SIZE / 4; addr++) {
+		ret = atmel_i2c_init_read_otp_cmd(&cmd, addr);
+		if (ret) {
+			dev_err(&client->dev, "failed, invalid otp address %04X\n",
+				addr);
+			return ret;
+		}
+
+		ret = atmel_i2c_send_receive(client, &cmd);
+
+		if (cmd.data[0] == 0xff) {
+			dev_err(&client->dev, "failed, device not ready\n");
+			return -EINVAL;
+		}
+
+		memcpy(buf, cmd.data + 1, 4);
+		buf += 4;
+	}
+
+	return 0;
+}
+
+static int atmel_sha204a_otp_read(void *ctx, unsigned off, void *val, size_t count)
+{
+	struct atmel_i2c_client_priv *i2c_priv = ctx;
+	int ret;
+
+	if (!i2c_priv->data) {
+		i2c_priv->data = xzalloc(OTP_ZONE_SIZE);
+		ret = atmel_sha204a_otp_read_full(i2c_priv, i2c_priv->data);
+		if (ret) {
+			free(i2c_priv->data);
+			i2c_priv->data = NULL;
+			return ret;
+		}
+	}
+
+	memcpy(val, i2c_priv->data + off, count);
+
+	return 0;
+}
+
+static int atmel_sha204a_probe(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct atmel_i2c_client_priv *i2c_priv;
+	int ret;
+
+	ret = atmel_i2c_probe(client);
+	if (ret)
+		return ret;
+
+	i2c_priv = i2c_get_clientdata(client);
+
+	i2c_priv->nvmem_config.name = dev_name(&client->dev);
+	i2c_priv->nvmem_config.dev = &client->dev;
+	i2c_priv->nvmem_config.priv = i2c_priv;
+	i2c_priv->nvmem_config.read_only = true;
+	i2c_priv->nvmem_config.reg_read = atmel_sha204a_otp_read;
+
+	i2c_priv->nvmem_config.stride = 4;
+	i2c_priv->nvmem_config.word_size = 1;
+	i2c_priv->nvmem_config.size = OTP_ZONE_SIZE;
+
+	i2c_priv->nvmem = nvmem_register(&i2c_priv->nvmem_config);
+	if (IS_ERR(i2c_priv->nvmem)) {
+		ret = PTR_ERR(i2c_priv->nvmem);
+		goto fail;
+	}
+
+fail:
+	return ret;
+}
+
+static const struct of_device_id atmel_sha204a_dt_ids[] __maybe_unused = {
+	{ .compatible = "atmel,atsha204", },
+	{ .compatible = "atmel,atsha204a", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, atmel_sha204a_dt_ids);
+
+static struct driver sha204a_driver = {
+	.name  = "atmel-sha204a",
+	.probe = atmel_sha204a_probe,
+	.of_compatible = DRV_OF_COMPAT(atmel_sha204a_dt_ids),
+};
+device_i2c_driver(sha204a_driver);
+
+MODULE_AUTHOR("Ard Biesheuvel <ard.biesheuvel@linaro.org>");
+MODULE_DESCRIPTION("Microchip / Atmel SHA204A (I2C) driver");
+MODULE_LICENSE("GPL v2");

-- 
2.43.0



