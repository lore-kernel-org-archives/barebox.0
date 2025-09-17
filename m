Delivery-date: Wed, 17 Sep 2025 17:51:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRp-0047qT-2e
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 17:51:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyuRj-0000wq-Ke
	for lore@pengutronix.de; Wed, 17 Sep 2025 17:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nCSfHs992eEjbq77/M4ly30e734YiG8Iq9Z/g/bKcSg=; b=a1Unhhmys5tlXP9w+5midUsDiu
	D7LjG17FKCr317ZkJUdm8w2SZG22rQtbnKRpJMknR+e1gnPSsc+wNSx963YfolvjS2vbuBYdSc1Rg
	HsNlzzLN1fEMnjPOM/YYEV+icHAsm7jxbwktolvfzX25PHS5WDTLIXG87wU0Kh0eFCF+p8oEznPtp
	Ld0THuBdxkrjIuTWkzUCS3rrbTkOPWWteNFPZzCjTvWEqrDKIZRJFc7RuHgu9HgO6btYMH3Fx7ohF
	pO613u4JOicks/YXtbsSejPIt9l22I9U6kmj1/nFmc0oWNMhvZfeFyrCzH1lgmZIic1+X8XFy8fSn
	bP8qmiDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuRC-0000000CtLr-03eq;
	Wed, 17 Sep 2025 15:51:18 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyuR8-0000000CtAB-4Ah9
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 15:51:16 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58HFNoCB032210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 17 Sep 2025 17:24:02 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Wed, 17 Sep 2025 17:22:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758122641; l=20434;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=7KXvMiOHu5Fjt6tjhrXUGYxdAh+YHIcOMWLn/C1vukg=;
 b=86hy2mVwacMbB2Nupxfa0y9ETJ4nZPdlq/VD4vdqhgG6kyXrLIm5kOvq+TdkWlJe+ACc0Ghi1
 8TcQk3KZ/KeBSrnEwUXLxoT0IEqSWqQM02AcTarpw6Z4fVKRcmhPCFY
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_085115_463925_9AA225B3 
X-CRM114-Status: GOOD (  31.81  )
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
Subject: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/boards/enclustra-sa2/Makefile    |   2 +-
 arch/arm/boards/enclustra-sa2/atsha204a.c | 436 ++++++++++++++++++++++++++++++
 arch/arm/boards/enclustra-sa2/atsha204a.h |  19 ++
 arch/arm/boards/enclustra-sa2/board.c     |  51 +++-
 arch/arm/boards/enclustra-sa2/crc16.c     |  65 +++++
 arch/arm/boards/enclustra-sa2/crc16.h     |  28 ++
 arch/arm/mach-socfpga/Kconfig             |   1 +
 7 files changed, 598 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/enclustra-sa2/Makefile b/arch/arm/boards/enclustra-sa2/Makefile
index 8c927fe291a6b3eb20a32a2db96c73f231ab4697..1448ea1266aa24a5b0404cb6379f8c2d76573079 100644
--- a/arch/arm/boards/enclustra-sa2/Makefile
+++ b/arch/arm/boards/enclustra-sa2/Makefile
@@ -1,2 +1,2 @@
-obj-y += lowlevel.o board.o
+obj-y += lowlevel.o board.o atsha204a.o crc16.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/enclustra-sa2/atsha204a.c b/arch/arm/boards/enclustra-sa2/atsha204a.c
new file mode 100644
index 0000000000000000000000000000000000000000..3f445de06e73c5bdf27d2d0fc81dc6d939d5cd17
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/atsha204a.c
@@ -0,0 +1,436 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include "atsha204a.h"
+#include <stdio.h>
+#include <driver.h>
+#include <linux/libfdt.h>
+#include <linux/kernel.h>           /* ARRAY_SIZE */
+#include <linux/bitrev.h>           /* bitrev16 */
+#include <i2c/i2c.h>
+#include "crc16.h"
+
+#define ATSHA204A_TWLO_US                  (60)
+#define ATSHA204A_TWHI_US                  (2500)
+#define ATSHA204A_EXECTIME_US              (5000)
+#define ATSHA204A_TRANSACTION_TIMEOUT      (100000)
+#define ATSHA204A_TRANSACTION_RETRY      (5)
+
+enum atsha204a_status {
+	ATSHA204A_STATUS_SUCCES         = 0x00,
+	ATSHA204A_STATUS_MISCOMPARE     = 0x01,
+	ATSHA204A_STATUS_PARSE_ERROR    = 0x03,
+	ATSHA204A_STATUS_EXEC_ERROR     = 0x0F,
+	ATSHA204A_STATUS_AFTER_WAKE     = 0x11,
+	ATSHA204A_STATUS_CRC_ERROR      = 0xFF,
+};
+
+enum atsha204a_func {
+	ATSHA204A_FUNC_RESET    = 0x00,
+	ATSHA204A_FUNC_SLEEP    = 0x01,
+	ATSHA204A_FUNC_IDLE     = 0x02,
+	ATSHA204A_FUNC_COMMAND  = 0x03,
+};
+
+enum atsha204a_zone {
+	ATSHA204A_ZONE_CONFIG   = 0,
+	ATSHA204A_ZONE_OTP      = 1,
+	ATSHA204A_ZONE_DATA     = 2,
+};
+
+enum atsha204a_cmd {
+	ATSHA204A_CMD_READ      = 0x02,
+	ATSHA204A_CMD_RANDOM    = 0x1B,
+};
+
+/**
+ * @brief A response from the device to the host
+ */
+struct atsha204a_resp {
+	uint8_t length;         /**< Number of bytes in the struct, including \a
+								length and \a code */
+	uint8_t code;           /**< Op code that must match the last command */
+	uint8_t data[82];       /**< Data buffer */
+} __packed;
+
+struct atsha204a_req {
+	u8 function;
+	u8 length;
+	u8 command;
+	u8 param1;
+	u16 param2;
+	u8 data[78];
+} __packed;
+
+/**
+ * @brief Calculate a CRC
+ * @param[in] buffer Data on which the CRC must be calculated
+ * @param[in] len Number of bytes in \a buffer
+ *
+ * For example, afer wake-up, the data read from the device is `0x04 0x11 0x33
+ *0x43`.
+ * The 1st byte is the packet length, the 2nd byte is the op code and the last
+ * 2 bytes are the CRC, with the bytes swapped.
+ * The function must be called with the 1st 2 bytes and if it returns 0x4333,
+ * then the CRC is valid.
+ *
+ * @return The CRC.
+ */
+static inline u16 atsha204a_crc16(const u8 *buffer, size_t len)
+{
+	debug("%s() >> len = %u, buffer =", __func__, len);
+	for (size_t i = 0 ; i < len ; i++)
+		debug(" 0x%02x", buffer[i]);
+	debug("\n");
+	return bitrev16(crc16(0, buffer, len));
+}
+
+/**
+ * @brief Get the device from the devicetree
+ * @return A pointer to the device if found, or \t NULL otherwise.
+ */
+static struct device *atsha204a_get_dev(void)
+{
+	struct device *dev;
+	struct i2c_client *client;
+
+	dev = get_device_by_name("atsha204a0");
+	if (dev == NULL) {
+		printf("%s() >> ERROR: can't find device\n", __func__);
+		return NULL;
+	}
+	client = to_i2c_client(dev);
+	debug("%s() >> ATASHA204a found at I2C address 0x%02x\n", __func__,
+		  client->addr);
+
+	return dev;
+}
+
+/**
+ * @brief Send one message to the device
+ * @param[in] dev A pointer to the device, returned by #atsha204a_get_dev()
+ * @param[in] buf The data to send
+ * @param[in] len The number of bytes in \a buf
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int atsha204a_send(struct device *dev, const uint8_t *buf, uint8_t len)
+{
+	int ret;
+	struct i2c_client *client;
+
+	client = to_i2c_client(dev);
+	struct i2c_msg msg[] = {
+		{
+			.addr = client->addr,
+			.buf = (uint8_t *)buf,
+			.len = len,
+		}
+	};
+	debug("%s() >> dev addr = 0x%02x\n", __func__, client->addr);
+
+	ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+/**
+ * @brief Read from the device
+ * @param[in] dev A pointer to the device, returned by #atsha204a_get_dev()
+ * @param[in] buf The data to send
+ * @param[in] len The number of bytes in \a buf
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int atsha204a_recv(struct device *dev, uint8_t *buf, uint8_t len)
+{
+	int ret;
+	struct i2c_client *client;
+
+	client = to_i2c_client(dev);
+	/* flags: this is a read operation and generate a stop condition */
+	struct i2c_msg msg[] = {
+		{
+			.addr = client->addr,
+			.buf = (uint8_t *)buf,
+			.len = len,
+			.flags = I2C_M_RD | I2C_M_STOP,
+		}
+	};
+
+	ret = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
+	if (ret < 0) {
+		printf("%s() >> ERROR: ret = %d\n", __func__, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * @brief Read from the device and check the CRC
+ * @param[in] dev A pointer to the device, returned by #atsha204a_get_dev()
+ * @param[in] resp The response from the device
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int atsha204a_recv_resp(struct device *dev, struct atsha204a_resp *resp)
+{
+	int ret;
+	uint16_t resp_crc, computed_crc;
+	uint8_t *p = (uint8_t *)resp;
+
+	ret = atsha204a_recv(dev, p, 4);
+	if (ret)
+		return ret;
+	debug("%s() >> resp:", __func__);
+	for (size_t i = 0 ; i < 4 ; i++)
+		debug(" 0x%02x", p[i]);
+	debug(
+		"\n%s() >> length=0x%02x, code=0x%02x, data[0]=0x%02x, data[1]=0x%02x\n",
+		__func__,
+		resp->length, resp->code, resp->data[0], resp->data[1]);
+
+	if (resp->length > 4) {
+		if (resp->length > sizeof(*resp)) {
+			printf("%s() >> ERROR: resp->length %d > 4\n", __func__,
+				   resp->length);
+			return -EMSGSIZE;
+		}
+		ret = atsha204a_recv(dev, p + 4, resp->length - 4);
+		if (ret)
+			return ret;
+	}
+
+	debug("%s() >> checking CRC... resp->length = %d\n", __func__,
+		  resp->length);
+	resp_crc = (uint16_t)p[resp->length - 2]
+			   | (((uint16_t)p[resp->length - 1]) << 8);
+	computed_crc = atsha204a_crc16(p, resp->length - 2);
+
+	if (resp_crc != computed_crc) {
+		printf(
+			"%s() >> ERROR: Invalid CRC. Received: 0x%04x; computed: 0x%04x\n",
+			__func__,
+			resp_crc, computed_crc);
+		return -EBADMSG;
+	}
+	debug("%s() >> CRC OK: 0x%04x\n", __func__, resp_crc);
+	return 0;
+}
+
+/**
+ * @brief Put the device to sleep
+ * @param[in] dev A pointer to the device, returned by #atsha204a_get_dev()
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int atsha204a_sleep(struct device *dev)
+{
+	int ret;
+	uint8_t req = ATSHA204A_FUNC_SLEEP;
+
+	for (int i = 1 ; i < 10 ; i++) {
+		ret = atsha204a_send(dev, &req, 1);
+		if (!ret) {
+			debug("%s() >> sleeping! Trial #%d\n", __func__, i);
+			break;
+		}
+		udelay(ATSHA204A_EXECTIME_US);
+	}
+
+	return ret;
+}
+
+/**
+ * @brief Wake up the device
+ * @param[in] dev A pointer to the device, returned by #atsha204a_get_dev()
+ *
+ * See datasheet §5.3.2 Synchronization Procedures.
+ *
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+static int atsha204a_wakeup(struct device *dev)
+{
+	uint8_t buf = 0x00;
+	struct atsha204a_resp resp;
+	int ret;
+	struct i2c_client *client;
+
+	client = to_i2c_client(dev);
+
+	for (int i = 1; i <= 10; i++) {
+		/*
+		 * The device ignores any levels or transitions on the SCL pin
+		 * when the device is idle, asleep or during waking up.
+		 * Generate the wake condition: set SDA low for at least t_WLO.
+		 */
+		struct i2c_msg msg;
+
+		msg.addr = 0;
+		msg.flags = I2C_M_IGNORE_NAK;
+		msg.len = 1;
+		msg.buf = &buf;
+		/* don't check errors: there is always one */
+		i2c_transfer(client->adapter, &msg, 1);
+
+		udelay(ATSHA204A_TWLO_US + ATSHA204A_TWHI_US);
+
+		ret = atsha204a_recv_resp(dev, &resp);
+		if (ret == -EBADMSG) {
+			debug("%s() >> WARN: CRC error. Retrying...\n", __func__);
+			continue;   /* retry on CRC error */
+		} else if (ret) {
+			printf("%s() >> ERROR: no response\n", __func__);
+			return ret;
+		}
+
+		if (resp.code != ATSHA204A_STATUS_AFTER_WAKE) {
+			printf(
+				"%s() >> ERROR: bad response, code = %02x, expected = 0x11\n",
+				__func__, resp.code);
+			return -EBADMSG;
+		}
+
+		return 0;
+	}
+
+	return -ETIMEDOUT;
+}
+
+static void atsha204a_req_crc32(struct atsha204a_req *req)
+{
+	u8 *p = (u8 *)req;
+	u16 computed_crc;
+	u16 *crc_ptr = (u16 *)&p[req->length - 1];
+
+	/* The buffer to crc16 starts at byte 1, not 0 */
+	computed_crc = atsha204a_crc16(p + 1, req->length - 2);
+
+	*crc_ptr = cpu_to_le16(computed_crc);
+}
+
+static int atsha204a_transaction(struct device *dev, struct atsha204a_req *req,
+								 struct atsha204a_resp *resp)
+{
+	int ret, timeout = ATSHA204A_TRANSACTION_TIMEOUT;
+
+	ret = atsha204a_send(dev, (u8 *)req, req->length + 1);
+	if (ret) {
+		printf("%s() >> ERROR: transaction send failed\n", __func__);
+		return -EBUSY;
+	}
+
+	do {
+		udelay(ATSHA204A_EXECTIME_US);
+		ret = atsha204a_recv_resp(dev, resp);
+		if (!ret || ret == -EMSGSIZE || ret == -EBADMSG)
+			break;
+
+		debug("%s() >> polling for response "
+			  "(timeout = %d)\n", __func__, timeout);
+
+		timeout -= ATSHA204A_EXECTIME_US;
+	} while (timeout > 0);
+
+	if (timeout <= 0) {
+		printf("%s() >> ERROR: transaction timed out\n", __func__);
+		return -ETIMEDOUT;
+	}
+
+	return ret;
+}
+
+static int atsha204a_read(struct device *dev, enum atsha204a_zone zone,
+						  bool read32,
+						  u16 addr, u8 *buffer)
+{
+	int res, retry = ATSHA204A_TRANSACTION_RETRY;
+	struct atsha204a_req req;
+	struct atsha204a_resp resp;
+
+	req.function = ATSHA204A_FUNC_COMMAND;
+	req.length = 7;
+	req.command = ATSHA204A_CMD_READ;
+
+	req.param1 = (u8)zone;
+	if (read32)
+		req.param1 |= 0x80;
+
+	req.param2 = cpu_to_le16(addr);
+
+	atsha204a_req_crc32(&req);
+
+	do {
+		res = atsha204a_transaction(dev, &req, &resp);
+		if (!res)
+			break;
+
+		debug("ATSHA204A read retry (%d)\n", retry);
+		retry--;
+		atsha204a_wakeup(dev);
+	} while (retry >= 0);
+
+	if (res) {
+		debug("ATSHA204A read failed\n");
+		return res;
+	}
+
+	if (resp.length != (read32 ? 32 : 4) + 3) {
+		debug("ATSHA204A read bad response length (%d)\n",
+			  resp.length);
+		return -EBADMSG;
+	}
+
+	memcpy(buffer, ((u8 *)&resp) + 1, read32 ? 32 : 4);
+
+	return 0;
+}
+
+int atsha204_get_mac(uint8_t *buffer)
+{
+	int ret;
+	uint8_t data[4];
+	struct device *dev;
+
+	dev = atsha204a_get_dev();
+	if (dev == NULL)
+		return -ENODEV;
+
+	/* put the device to sleep to make sure it is in a defined state */
+	ret = atsha204a_sleep(dev);
+	if (ret) {
+		printf("%s() >> ERROR: can't put the device to sleep; ret = %d\n",
+			   __func__, ret);
+		return ret;
+	}
+
+	ret = atsha204a_wakeup(dev);
+	if (ret) {
+		printf("%s() >> ERROR: can't wake up the device; ret = %d\n", __func__,
+			   ret);
+		return ret;
+	}
+
+	ret = atsha204a_read(dev, ATSHA204A_ZONE_OTP, false,
+						 4, data);
+	if (ret)
+		return ret;
+	for (int i = 0; i < 4; i++)
+		buffer[i] = data[i];
+
+	ret = atsha204a_read(dev, ATSHA204A_ZONE_OTP, false,
+						 5, data);
+	if (ret)
+		return ret;
+	buffer[4] = data[0];
+	buffer[5] = data[1];
+
+	atsha204a_sleep(dev);
+	debug("%s() >> MAC address: ", __func__);
+	for (int i = 0; i <= 5; i++) {
+		debug("%02x", buffer[i]);
+		if (i != 5)
+			debug(":");
+	}
+	debug("\n");
+
+	return 0;
+}
diff --git a/arch/arm/boards/enclustra-sa2/atsha204a.h b/arch/arm/boards/enclustra-sa2/atsha204a.h
new file mode 100644
index 0000000000000000000000000000000000000000..5062c7c07c587994c90a1ba8c3de5baeae94badb
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/atsha204a.h
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#pragma once
+
+#include <linux/types.h>
+
+/**
+ * @brief Read the board MAC address from EEPROM
+ * @param[out] buffer A 6-byte buffer set to the MAC address on success
+ *
+ * If the MAC address is 20:B0:F7:0A:6C:08, `buffer[0]` equals 0x20.
+ *
+ * Read from the one-time programmable zone (OTP) of the chip:
+ * - 4 bytes at address 0x10 (32-bit word address 0x04)
+ * - 2 bytes at address 0x14 (32-bit word address 0x04)
+ *
+ * @return 0 on success, a negative value from `asm-generic/errno.h` on error.
+ */
+int atsha204_get_mac(uint8_t *buffer);
diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
index 834d0ab91871d0329af20f89a13af65e194b21c3..4629ca8c08b3046bd0bdc2f09a24d6cc006794b0 100644
--- a/arch/arm/boards/enclustra-sa2/board.c
+++ b/arch/arm/boards/enclustra-sa2/board.c
@@ -10,6 +10,11 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <mach/socfpga/cyclone5-regs.h>
+#include <net.h>
+#include "atsha204a.h"
+
+/** Enclustra's MAC address vendor prefix is 20:B0:F7 */
+#define ENCLUSTRA_PREFIX            (0x20b0f7)
 
 /*
  * Ethernet PHY: Microchip/Micrel KSZ9031RNX
@@ -19,14 +24,54 @@ static int phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
+static void set_mac_addr(void)
+{
+	uint8_t hwaddr[6] = { 0, 0, 0, 0, 0, 0 };
+	uint32_t hwaddr_prefix;
+	/* backup MAC addresses, used if the actual one can't be read from EEPROM:
+	*/
+	const uint8_t enclustra_ethaddr_def1[] = { 0x20, 0xB0, 0xF7, 0x01, 0x02,
+											   0x03 };
+
+	/* 2nd backup MAC address if required later
+	   const uint8_t enclustra_ethaddr_def2[] = { 0x20, 0xB0, 0xF7, 0x01, 0x02,
+	      0x04 };
+	 */
+
+	if (atsha204_get_mac(hwaddr)) {
+		printf(
+			"%s() >> ERROR: can't read MAC address from EEPROM, using default address\n",
+			__func__);
+		eth_register_ethaddr(0, enclustra_ethaddr_def1);
+		return;
+	}
+
+	debug("MAC address: %02X:%02X:%02X:%02X:%02X:%02X\n",
+		  hwaddr[0], hwaddr[1], hwaddr[2],
+		  hwaddr[3], hwaddr[4], hwaddr[5]);
+
+	/* check vendor prefix and set the environment variable */
+	hwaddr_prefix = (hwaddr[0] << 16) | (hwaddr[1] << 8) | (hwaddr[2]);
+	if (hwaddr_prefix == ENCLUSTRA_PREFIX)
+		eth_register_ethaddr(0, hwaddr);
+	else {
+		printf(
+			"ERROR: invalid MAC address vendor prefix, using default address\n");
+		eth_register_ethaddr(0, enclustra_ethaddr_def1);
+	}
+}
+
 static int socfpga_init(void)
 {
-	if (!of_machine_is_compatible("altr,socfpga-cyclone5"))
+	if (!of_machine_is_compatible("enclustra,mercury-sa2"))
 		return 0;
 
 	if (IS_ENABLED(CONFIG_PHYLIB))
-		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK, phy_fixup);
+		phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
+								   phy_fixup);
+
+	set_mac_addr();
 
 	return 0;
 }
-console_initcall(socfpga_init);
+late_initcall(socfpga_init);
diff --git a/arch/arm/boards/enclustra-sa2/crc16.c b/arch/arm/boards/enclustra-sa2/crc16.c
new file mode 100644
index 0000000000000000000000000000000000000000..a94659df00fec8a61b6a0ab6497ebd925e720b4c
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/crc16.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *      crc16.c
+ */
+
+#include <linux/types.h>
+#include <linux/module.h>
+#include "crc16.h"
+
+/** CRC table for the CRC-16. The poly is 0x8005 (x^16 + x^15 + x^2 + 1) */
+u16 const crc16_table[256] = {
+	0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301, 0x03C0, 0x0280, 0xC241,
+	0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1, 0xC481, 0x0440,
+	0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81, 0x0E40,
+	0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
+	0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40,
+	0x1E00, 0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41,
+	0x1400, 0xD4C1, 0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641,
+	0xD201, 0x12C0, 0x1380, 0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040,
+	0xF001, 0x30C0, 0x3180, 0xF141, 0x3300, 0xF3C1, 0xF281, 0x3240,
+	0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501, 0x35C0, 0x3480, 0xF441,
+	0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0, 0x3E80, 0xFE41,
+	0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881, 0x3840,
+	0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
+	0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40,
+	0xE401, 0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640,
+	0x2200, 0xE2C1, 0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041,
+	0xA001, 0x60C0, 0x6180, 0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240,
+	0x6600, 0xA6C1, 0xA781, 0x6740, 0xA501, 0x65C0, 0x6480, 0xA441,
+	0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01, 0x6FC0, 0x6E80, 0xAE41,
+	0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1, 0xA881, 0x6840,
+	0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80, 0xBA41,
+	0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
+	0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640,
+	0x7200, 0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041,
+	0x5000, 0x90C1, 0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241,
+	0x9601, 0x56C0, 0x5780, 0x9741, 0x5500, 0x95C1, 0x9481, 0x5440,
+	0x9C01, 0x5CC0, 0x5D80, 0x9D41, 0x5F00, 0x9FC1, 0x9E81, 0x5E40,
+	0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901, 0x59C0, 0x5880, 0x9841,
+	0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1, 0x8A81, 0x4A40,
+	0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80, 0x8C41,
+	0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
+	0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040
+};
+EXPORT_SYMBOL(crc16_table);
+
+/**
+ * crc16 - compute the CRC-16 for the data buffer
+ * @crc:	previous CRC value
+ * @buffer:	data pointer
+ * @len:	number of bytes in the buffer
+ *
+ * Returns the updated CRC value.
+ */
+u16 crc16(u16 crc, u8 const *buffer, size_t len)
+{
+	while (len--)
+		crc = crc16_byte(crc, *buffer++);
+	return crc;
+}
+EXPORT_SYMBOL(crc16);
+
+MODULE_DESCRIPTION("CRC16 calculations");
+MODULE_LICENSE("GPL");
+
diff --git a/arch/arm/boards/enclustra-sa2/crc16.h b/arch/arm/boards/enclustra-sa2/crc16.h
new file mode 100644
index 0000000000000000000000000000000000000000..9fa74529b31787ba2434326d9ff02913c8cdf740
--- /dev/null
+++ b/arch/arm/boards/enclustra-sa2/crc16.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *	crc16.h - CRC-16 routine
+ *
+ * Implements the standard CRC-16:
+ *   Width 16
+ *   Poly  0x8005 (x^16 + x^15 + x^2 + 1)
+ *   Init  0
+ *
+ * Copyright (c) 2005 Ben Gardner <bgardner@wabtec.com>
+ */
+
+#ifndef __CRC16_H
+#define __CRC16_H
+
+#include <linux/types.h>
+
+extern u16 const crc16_table[256];
+
+extern u16 crc16(u16 crc, const u8 *buffer, size_t len);
+
+static inline u16 crc16_byte(u16 crc, const u8 data)
+{
+	return (crc >> 8) ^ crc16_table[(crc ^ data) & 0xff];
+}
+
+#endif /* __CRC16_H */
+
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index a4f859ebf3d7956697d180e15f50b3495cd4c472..fbd7d5c4abb1c6d598adf9209535f6f8fbd060e2 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -36,6 +36,7 @@ config MACH_SOCFPGA_ENCLUSTRA_AA1
 
 config MACH_SOCFPGA_ENCLUSTRA_SA2
 	select ARCH_SOCFPGA_CYCLONE5
+	select BITREV
 	bool "Enclustra SA2"
 
 config MACH_SOCFPGA_REFLEX_ACHILLES

-- 
2.43.0



