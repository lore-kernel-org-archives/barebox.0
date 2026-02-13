Delivery-date: Fri, 13 Feb 2026 20:13:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybk-001LcC-1o
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 20:13:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybk-0007UN-9Q
	for lore@pengutronix.de; Fri, 13 Feb 2026 20:13:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thtyl20h19tkEDOz6dMdjAdig3DLOfZxkV75kpBUkHI=; b=ohg6Xuda1P2sR/
	/9P6OdCG/DsMdpnNTI+VEe+J/nNegVZml/iWNlv4cyctacGHcC2/ST6TAZKWw5xhe5GNmoQo64yFi
	LtPvn3oa9fCOTzEvmOM8dsEaxKCL0guMyQi5070cYycrA0I7sOw0n7HtwAQ3pR4KWKC0ZTT4wTF5/
	pnuUQySsJ4kqENhLeGiqAz78b0yHZN5A2Rqhdk2W9UO2hAQSGbyZPXLliBeHrZaCAKR7TKOMy0N32
	FOVCNzcb6lEYKYCQgqu46/cLKRAo4rS/RqC4Yc3OI0Z4bXsfgpKhraQzJ67WyLEdXgHGOaydMXqW1
	cRXcHwhJsPKCQGxVozZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqybB-00000003pih-16IW;
	Fri, 13 Feb 2026 19:13:05 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb6-00000003pgE-3ZSn
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 19:13:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=thtyl20h19tkEDOz6dMdjAdig3DLOfZxkV75kpBUkHI=; b=dlFad55/jZGO3Zt+++y0/YKZZI
	8Kaj51XJDlOP4Li1VapROMF6yUh63TRAw1vyAoyoqTdSCxI4brfRgc+9ZvB0X/gNg/kOwA0LQyjio
	qaxODReCJW5adkfog3eYUveQH5MV4mRXPI2IoDfsCwTQy0bA8I8UXAS65RKdgU4zzPoOpV3QxZVl0
	5mmhtKaXij8nAFqQ+Mpv6PM2IKbYhdENP//jPfMfjEMebl0avUvf26INxYXdiKToYRBX7S8OxPi/z
	nKNbbKxvSC4vkrEnd/zOkvZVrr3o8qyIrQ9X+X/aTvrpt2iFQfYgShvMdok8r9qFIOykIml6QqTLl
	C2pmeLig==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyaw-000HNY-2m;
	Fri, 13 Feb 2026 20:12:51 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyaw-000J4V-1F;
	Fri, 13 Feb 2026 20:12:50 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Feb 2026 20:12:44 +0100
Message-Id: <20260213191247.1671231-2-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213191247.1671231-1-rossi@amelchem.com>
References: <20260213191247.1671231-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27911/Fri Feb 13 08:25:28 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_111301_084279_AB66CF1C 
X-CRM114-Status: GOOD (  26.84  )
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
Cc: Nicola Fontana <ntd@entidi.it>, Giandomenico Rossi <rossi@amelchem.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/4] video: mipi-dbi: support for MIPI DBI Type C Option 1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This commit adds support for MIPI DBI Type C Option 1 displays which
require 9-bit SPI transfers, where the most significant bit encodes
the Data/Command flag.

Since many SPI controllers do not natively support 9 bits-per-word,
two transfer methods are implemented:

- mipi_dbi_spi1_transfer(): Uses native 9-bit SPI transfers when supported.
- mipi_dbi_spi1e_transfer(): Emulates 9-bit transfers over 8-bit SPI
  by packing 8 DBI words into 9 SPI bytes.

The appropriate method is chosen automatically based on the SPI
controller's capabilities.

Additionally, the transfer buffer for the emulation method is
allocated using device-managed memory (devm_kmalloc) to ensure proper
lifecycle management.

This implementation enables barebox to handle panels like the ILI9488 that
use this MIPI DBI protocol variant.

Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
Signed-off-by: Nicola Fontana <ntd@entidi.it>
---
 drivers/video/mipi_dbi.c | 263 +++++++++++++++++++++++++++++++++++++--
 include/video/mipi_dbi.h |  12 ++
 2 files changed, 266 insertions(+), 9 deletions(-)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 1e2883020b..c93af9fb0c 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -9,6 +9,7 @@
 
 #include <common.h>
 #include <dma.h>
+#include <linux/device.h> /* devm_kmalloc() */
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 #include <linux/gpio/consumer.h>
@@ -44,8 +45,6 @@ EXPORT_SYMBOL(mipi_dbi_list);
  * update and uses register 0x2C to write to frame memory, it is most likely
  * MIPI compliant.
  *
- * Only MIPI Type 1 displays are supported since a full frame memory is needed.
- *
  * There are 3 MIPI DBI implementation types:
  *
  * A. Motorola 6800 type parallel bus
@@ -58,8 +57,19 @@ EXPORT_SYMBOL(mipi_dbi_list);
  *    2. Same as above except it's sent as 16 bits
  *    3. 8-bit with the Data/Command signal as a separate D/CX pin
  *
- * Currently barebox mipi_dbi only supports Type C option 3 with
- * mipi_dbi_spi_init().
+ * MIPI DBI Type C Option 1 supports 9-bit transfers where the MSB is used
+ * as the Data/Command bit. Since most SPI controllers only support 8-bit
+ * words, two implementations are provided:
+ *
+ * - mipi_dbi_spi1_transfer(): uses native 9-bit SPI transfers when supported
+ * - mipi_dbi_spi1e_transfer(): emulates 9-bit transfers using 8-bit SPI by
+ *   packing 8 DBI words into 9 SPI bytes
+ *
+ * Read commands are not supported in this implementation, as MIPI DBI
+ * Type C Option 1 panels typically do not wire the SPI MISO line.
+ *
+ * The appropriate implementation is selected automatically based on the
+ * SPI controller capabilities.
  */
 
 #define MIPI_DBI_DEBUG_COMMAND(cmd, data, len) \
@@ -622,6 +632,235 @@ static int mipi_dbi_typec3_command_read(struct mipi_dbi *dbi, u8 *cmd,
 	return ret;
 }
 
+/**
+ * mipi_dbi_spi1e_transfer - Emulated MIPI DBI Type C Option 1 SPI transfer
+ * @dbi: MIPI DBI structure
+ * @dc: Data/Command flag (0 = command, 1 = data)
+ * @buf: Buffer containing command or pixel data
+ * @len: Number of bytes in @buf
+ * @bpw: Source bits-per-word (8 or 16)
+ *
+ * Perform a MIPI DBI Type C Option 1 transfer using an 8-bit SPI controller
+ * by emulating 9-bit words. The Data/Command bit is packed together with
+ * the data stream by grouping 8 DBI words (9 bits each) into 9 SPI bytes.
+ *
+ * If the transfer length is not a multiple of 8 bytes, the remaining bytes
+ * are padded with MIPI_DCS_NOP (zero) to complete the 9-byte block.
+ *
+ * This fallback implementation is used when the SPI controller does not
+ * support native 9 bits-per-word transfers.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+static int mipi_dbi_spi1e_transfer(struct mipi_dbi *dbi, int dc,
+				   const void *buf, size_t len,
+				   unsigned int bpw)
+{
+	bool swap_bytes = (bpw == 16 && mipi_dbi_machine_little_endian());
+	size_t chunk, max_chunk = dbi->tx_buf9_len;
+	struct spi_device *spi = dbi->spi;
+	struct spi_transfer tr = {
+		.tx_buf = dbi->tx_buf9,
+		.bits_per_word = 8,
+	};
+	struct spi_message m;
+	const u8 *src = buf;
+	int i, ret;
+	u8 *dst;
+
+	tr.speed_hz = mipi_dbi_spi_cmd_max_speed(spi, len);
+	spi_message_init_with_transfers(&m, &tr, 1);
+
+	if (!dc) {
+		if (WARN_ON_ONCE(len != 1))
+			return -EINVAL;
+
+		/* Command: pad no-op's (zeroes) at beginning of block */
+		dst = dbi->tx_buf9;
+		memset(dst, 0, 9);
+		dst[8] = *src;
+		tr.len = 9;
+
+		return spi_sync(spi, &m);
+	}
+
+	/* max with room for adding one bit per byte */
+	max_chunk = max_chunk / 9 * 8;
+	/* but no bigger than len */
+	max_chunk = min(max_chunk, len);
+	/* 8 byte blocks */
+	max_chunk = max_t(size_t, 8, max_chunk & ~0x7);
+
+	while (len) {
+		size_t added = 0;
+
+		chunk = min(len, max_chunk);
+		len -= chunk;
+		dst = dbi->tx_buf9;
+
+		if (chunk < 8) {
+			u8 val, carry = 0;
+
+			/* Data: pad no-op's (zeroes) at end of block */
+			memset(dst, 0, 9);
+
+			if (swap_bytes) {
+				for (i = 1; i < (chunk + 1); i++) {
+					val = src[1];
+					*dst++ = carry | BIT(8 - i) | (val >> i);
+					carry = val << (8 - i);
+					i++;
+					val = src[0];
+					*dst++ = carry | BIT(8 - i) | (val >> i);
+					carry = val << (8 - i);
+					src += 2;
+				}
+				*dst++ = carry;
+			} else {
+				for (i = 1; i < (chunk + 1); i++) {
+					val = *src++;
+					*dst++ = carry | BIT(8 - i) | (val >> i);
+					carry = val << (8 - i);
+				}
+				*dst++ = carry;
+			}
+
+			chunk = 8;
+			added = 1;
+		} else {
+			for (i = 0; i < chunk; i += 8) {
+				if (swap_bytes) {
+					*dst++ =                 BIT(7) | (src[1] >> 1);
+					*dst++ = (src[1] << 7) | BIT(6) | (src[0] >> 2);
+					*dst++ = (src[0] << 6) | BIT(5) | (src[3] >> 3);
+					*dst++ = (src[3] << 5) | BIT(4) | (src[2] >> 4);
+					*dst++ = (src[2] << 4) | BIT(3) | (src[5] >> 5);
+					*dst++ = (src[5] << 3) | BIT(2) | (src[4] >> 6);
+					*dst++ = (src[4] << 2) | BIT(1) | (src[7] >> 7);
+					*dst++ = (src[7] << 1) | BIT(0);
+					*dst++ = src[6];
+				} else {
+					*dst++ =                 BIT(7) | (src[0] >> 1);
+					*dst++ = (src[0] << 7) | BIT(6) | (src[1] >> 2);
+					*dst++ = (src[1] << 6) | BIT(5) | (src[2] >> 3);
+					*dst++ = (src[2] << 5) | BIT(4) | (src[3] >> 4);
+					*dst++ = (src[3] << 4) | BIT(3) | (src[4] >> 5);
+					*dst++ = (src[4] << 3) | BIT(2) | (src[5] >> 6);
+					*dst++ = (src[5] << 2) | BIT(1) | (src[6] >> 7);
+					*dst++ = (src[6] << 1) | BIT(0);
+					*dst++ = src[7];
+				}
+
+				src += 8;
+				added++;
+			}
+		}
+
+		tr.len = chunk + added;
+
+		ret = spi_sync(spi, &m);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * mipi_dbi_spi1_transfer - MIPI DBI Type C Option 1 SPI transfer
+ * @dbi: MIPI DBI structure
+ * @dc: Data/Command flag (0 = command, 1 = data)
+ * @buf: Buffer containing command or pixel data
+ * @len: Number of bytes in @buf
+ * @bpw: Source bits-per-word (8 or 16)
+ *
+ * Perform a MIPI DBI Type C Option 1 transfer using native 9-bit SPI words
+ * when supported by the SPI controller. The most significant bit of each
+ * SPI word is used as the Data/Command bit.
+ *
+ * If the SPI controller does not support 9 bits-per-word, this function
+ * automatically falls back to mipi_dbi_spi1e_transfer(), which emulates
+ * 9-bit transfers using an 8-bit SPI interface.
+ *
+ * Return: 0 on success, or a negative error code on failure.
+ */
+int mipi_dbi_spi1_transfer(struct mipi_dbi *dbi, int dc, const void *buf,
+			   size_t len, unsigned int bpw)
+{
+	struct spi_device *spi = dbi->spi;
+	struct spi_transfer tr = {
+		.bits_per_word = 9,
+	};
+	const u16 *src16 = buf;
+	const u8 *src8 = buf;
+	struct spi_message m;
+	size_t max_chunk;
+	u16 *dst16;
+	int ret;
+
+	if (!spi_is_bpw_supported(spi, 9))
+		return mipi_dbi_spi1e_transfer(dbi, dc, buf, len, bpw);
+
+	tr.speed_hz = mipi_dbi_spi_cmd_max_speed(spi, len);
+	max_chunk = dbi->tx_buf9_len;
+	dst16 = dbi->tx_buf9;
+
+	max_chunk = min(max_chunk / 2, len);
+
+	spi_message_init_with_transfers(&m, &tr, 1);
+	tr.tx_buf = dst16;
+
+	while (len) {
+		size_t chunk = min(len, max_chunk);
+		unsigned int i;
+
+		if (bpw == 16 && mipi_dbi_machine_little_endian()) {
+			for (i = 0; i < (chunk * 2); i += 2) {
+				dst16[i] = *src16 >> 8;
+				dst16[i + 1] = *src16++ & 0xFF;
+				if (dc) {
+					dst16[i] |= 0x0100;
+					dst16[i + 1] |= 0x0100;
+				}
+			}
+		} else {
+			for (i = 0; i < chunk; i++) {
+				dst16[i] = *src8++;
+				if (dc)
+					dst16[i] |= 0x0100;
+			}
+		}
+
+		tr.len = chunk * 2;
+		len -= chunk;
+
+		ret = spi_sync(spi, &m);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(mipi_dbi_spi1_transfer);
+
+static int mipi_dbi_typec1_command(struct mipi_dbi *dbi, u8 *cmd,
+				   u8 *parameters, size_t num)
+{
+	unsigned int bpw = (*cmd == MIPI_DCS_WRITE_MEMORY_START) ? 16 : 8;
+	int ret;
+
+	if (mipi_dbi_command_is_read(dbi, *cmd))
+		return -ENOTSUPP;
+
+	MIPI_DBI_DEBUG_COMMAND(*cmd, parameters, num);
+
+	ret = mipi_dbi_spi1_transfer(dbi, 0, cmd, 1, 8);
+	if (ret || !num)
+		return ret;
+
+	return mipi_dbi_spi1_transfer(dbi, 1, parameters, num, bpw);
+}
+
 static int mipi_dbi_typec3_command(struct mipi_dbi *dbi, u8 *cmd,
 				   u8 *par, size_t num)
 {
@@ -680,13 +919,19 @@ int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
 	dbi->spi = spi;
 	dbi->read_commands = mipi_dbi_dcs_read_commands;
 
-	if (!dc) {
-		dev_dbg(dev, "MIPI DBI Type-C 1 unsupported\n");
-		return -ENOSYS;
+	if (dc) {
+		dev_dbg(dev, "MIPI DBI Type-C 3\n");
+		dbi->command = mipi_dbi_typec3_command;
+		dbi->dc = dc;
+	} else {
+		dev_dbg(dev, "MIPI DBI Type-C 1\n");
+		dbi->command = mipi_dbi_typec1_command;
+		dbi->tx_buf9_len = SZ_16K;
+		dbi->tx_buf9 = devm_kmalloc(dev, dbi->tx_buf9_len, GFP_KERNEL);
+		if (!dbi->tx_buf9)
+			return -ENOMEM;
 	}
 
-	dbi->command = mipi_dbi_typec3_command;
-	dbi->dc = dc;
 	if (mipi_dbi_machine_little_endian() && !spi_is_bpw_supported(spi, 16))
 		dbi->swap_bytes = true;
 
diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index c1c2a620ed..42ca8a6332 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -54,6 +54,16 @@ struct mipi_dbi {
 	 */
 	struct gpio_desc *dc;
 
+	/**
+	 * @tx_buf9: Buffer used for option 1 9-bit conversion
+	 */
+	void *tx_buf9;
+
+	/**
+	 * @tx_buf9_len: Size of tx_buf9
+	 */
+	size_t tx_buf9_len;
+
 	struct list_head list;
 };
 
@@ -143,6 +153,8 @@ int mipi_dbi_command_read(struct mipi_dbi *dbi, u8 cmd, u8 *val);
 int mipi_dbi_command_buf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t len);
 int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, const u8 *data,
 			      size_t len);
+int mipi_dbi_spi1_transfer(struct mipi_dbi *dbi, int dc, const void *buf,
+			   size_t len, unsigned int bpw);
 
 /**
  * mipi_dbi_command - MIPI DCS command with optional parameter(s)
-- 
2.34.1



