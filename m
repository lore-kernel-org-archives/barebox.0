Delivery-date: Tue, 13 Dec 2022 15:13:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p562f-002hde-VU
	for lore@lore.pengutronix.de; Tue, 13 Dec 2022 15:13:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p562e-0000wW-Vf
	for lore@pengutronix.de; Tue, 13 Dec 2022 15:13:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7+4ddenDU5IJjXB15uSnl0vkemPh1cL0BoBtrIUSFUM=; b=gADDh4dKu8kK4seANwCADYwyUO
	DMG4OschSeOReLHPl8rkIKJWI/wMkDicrPRNCRh+p1cZIizm9smeKl0F9pHsVMZC9VlkM5lKedPkG
	XpOeNWacBxgvYoWqNcrHitXgHqbxE2XiO9c4d7Fm7npxDm+Lyf1RfiKn+wUAdUUZj/dFLtvgTibvj
	aNd+Dt4JkTSks//UCkuSh+bmmUmMQ4JFNXWmKQTR60f+8wcuLOrR76IwDfHSByXELKPTWlJwGPFmb
	PqbRsB1d513WXfH/auwkmkMrFkd+7qsMDQ+l8DexkLM2nntM2bVxRu6m5xPeoOAOmyvu3tFU+F6LV
	6Tl28dpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5614-000y2g-3b; Tue, 13 Dec 2022 14:12:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p560x-000xqX-09
	for barebox@lists.infradead.org; Tue, 13 Dec 2022 14:12:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p560s-0000mg-Nc; Tue, 13 Dec 2022 15:12:06 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p560r-004Gce-Au; Tue, 13 Dec 2022 15:12:06 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p560r-007wXY-Hd; Tue, 13 Dec 2022 15:12:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Dec 2022 15:12:04 +0100
Message-Id: <20221213141204.1860400-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221213_061211_064987_870E5DB0 
X-CRM114-Status: GOOD (  24.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: only write blocks when card out of programming mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

eMMC Spec v5.1 (JEDEC Standard No. 84-B51) is quite clear that:

  Due to legacy reasons, a Device may still treat CMD24/25 during
  prg-state (while busy is active) as a legal or illegal command.
  A host should not send CMD24/25 while the Device is in the prg
  state and busy is active.

So far, we had never evaluated MMC_CMD_SEND_STATUS. This patch
corrects this and thereby resolves an issue of timed out writes
with the atmel_mci driver:

  barebox@SAMA5D4:/ saveenv
  ERROR: atmel_mci fc000000.mmc@fc000000.of: command/data timeout
  ERROR: atmel_mci fc000000.mmc@fc000000.of: command/data timeout

These issues are not new, but were first reported in 2018[0] along
with a workaround suggesting a delay at the end of atmci_request:

  if (cmdidx == MMC_CMD_STOP_TRANSMISSION)
	mdelay(5)

Just before the command timing out, we read 0x00c00_0025 from the
status register, which is

  CMDRDY | TXRDY | NOTBUSY | XFERDONE | FIFOEMPTY

which suggests the issue is not at the MCI host side, but rather at
the card side. With this patch applied and debugging enabled, this
seems to be confirmed:

  barebox@SAMA5D4:/ saveenv
  saving environment
  mmc1: Ready polling took 0ms
  mmc1: Ready polling took 4ms

I compared with AT91Bootstrap[1], U-Boot[2] and Trusted Firmware-A[3]
and all of them poll MCI status after block writes.

The sequence imported here is taken from U-Boot, but instead of doing
it after writes, we do it before them in hope that we need not always
incur the extra delay.

I don't have an answer why this was only necessary on the SAMA5D3/4 and
such issues weren't observed with other drivers. Card was operated
at 50MHz (SD HS) and I didn't observe differences when trying other
cards. I tested this change also on a Beaglebone Black where an
environment is also stored into FAT on a SD-Card operated with 50 MHz:
Ready polling took 0ms for each of the two writes.

[0]: https://lore.barebox.org/barebox/20181102091156.26476-1-s.hauer@pengutronix.de/
[1]: https://github.com/linux4sam/at91bootstrap/blob/v4.0.5/driver/mci_media.c#L1187
[2]: https://github.com/trini/u-boot/blob/v2023.01-rc3/drivers/mmc/mmc_write.c#L181
[3]: https://github.com/ARM-software/arm-trusted-firmware/blob/v2.8.0/drivers/mmc/mmc.c#L718

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
For next, not master. I intend to test this change across more devices
in the coming weeks.
---
 drivers/mci/mci-core.c | 96 ++++++++++++++++++++++++++++++++++++++++++
 include/mci.h          | 15 +++++++
 2 files changed, 111 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8cda07e71120..ec78bd33911c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -74,6 +74,28 @@ static int mci_send_cmd(struct mci *mci, struct mci_cmd *cmd, struct mci_data *d
 	return host->send_cmd(mci->host, cmd, data);
 }
 
+/**
+ * mci_send_cmd_retry() - send a command to the mmc device, retrying on error
+ *
+ * @dev:	device to receive the command
+ * @cmd:	command to send
+ * @data:	additional data to send/receive
+ * @retries:	how many times to retry; mci_send_cmd is always called at least
+ *              once
+ * Return: 0 if ok, -ve on error
+ */
+static int mci_send_cmd_retry(struct mci *mci, struct mci_cmd *cmd,
+			      struct mci_data *data, unsigned retries)
+{
+	int ret;
+
+	do
+		ret = mci_send_cmd(mci, cmd, data);
+	while (ret && retries--);
+
+	return ret;
+}
+
 /**
  * @param p Command definition to setup
  * @param cmd Valid SD/MMC command (refer MMC_CMD_* / SD_CMD_*)
@@ -119,6 +141,69 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 
 static void *sector_buf;
 
+static int mci_send_status(struct mci *mci, unsigned int *status)
+{
+	struct mci_host *host = mci->host;
+	struct mci_cmd cmd;
+	int ret;
+
+	cmd.cmdidx = MMC_CMD_SEND_STATUS;
+	cmd.resp_type = MMC_RSP_R1;
+	if (!mmc_host_is_spi(host))
+		cmd.cmdarg = mci->rca << 16;
+
+	ret = mci_send_cmd_retry(mci, &cmd, NULL, 4);
+	if (!ret)
+		*status = cmd.response[0];
+
+	return ret;
+}
+
+static int mci_poll_until_ready(struct mci *mci, int timeout_ms)
+{
+	unsigned int status;
+	int err, retries = 0;
+
+	while (1) {
+		err = mci_send_status(mci, &status);
+		if (err)
+			return err;
+
+		/*
+		 * Some cards mishandle the status bits, so make sure to
+		 * check both the busy indication and the card state.
+		 */
+		if ((status & R1_READY_FOR_DATA) &&
+		    R1_CURRENT_STATE(status) != R1_STATE_PRG)
+			break;
+
+		if (status & R1_STATUS_MASK) {
+			dev_err(&mci->dev, "Status Error: 0x%08x\n", status);
+			return -EIO;
+		}
+
+		if (retries++ == timeout_ms)
+			break;
+
+		udelay(1000);
+	}
+
+	if (retries >=  timeout_ms) {
+		dev_err(&mci->dev, "Timeout waiting card ready\n");
+		return -ETIMEDOUT;
+	}
+
+	/*
+	 * With small UART FIFOs and slow CPUs, printing in the loop above
+	 * may take enough time to render the polling loop above unnecessary
+	 * falsifying the debugging info. Thus we report the retries here.
+	 */
+	dev_info(&mci->dev, "Ready polling took %ums\n", retries);
+
+	return 0;
+}
+
+
 /**
  * Write one or several blocks of data to the card
  * @param mci_dev MCI instance
@@ -136,6 +221,17 @@ static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	unsigned mmccmd;
 	int ret;
 
+	/*
+	 * Quoting eMMC Spec v5.1 (JEDEC Standard No. 84-B51):
+	 * Due to legacy reasons, a Device may still treat CMD24/25 during
+	 * prg-state (while busy is active) as a legal or illegal command.
+	 * A host should not send CMD24/25 while the Device is in the prg
+	 * state and busy is active.
+	 */
+	ret = mci_poll_until_ready(mci, 10 /* ms */);
+	if (ret)
+		return ret;
+
 	if (blocks > 1)
 		mmccmd = MMC_CMD_WRITE_MULTIPLE_BLOCK;
 	else
diff --git a/include/mci.h b/include/mci.h
index d949310fac30..1e53a09d71db 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -308,8 +308,23 @@
 #define EXT_CSD_DDR_BUS_WIDTH_8	6	/* Card is in 8 bit DDR mode */
 
 #define R1_ILLEGAL_COMMAND		(1 << 22)
+#define R1_STATUS(x)			(x & 0xFFF9A000)
+#define R1_CURRENT_STATE(x)		((x & 0x00001E00) >> 9)	/* sx, b (4 bits) */
+#define R1_READY_FOR_DATA 		(1 << 8)		/* sx, a */
 #define R1_APP_CMD			(1 << 5)
 
+#define R1_STATUS_MASK			(~0x0206BF7F)
+
+#define	R1_STATE_IDLE	0
+#define	R1_STATE_READY	1
+#define	R1_STATE_IDENT	2
+#define	R1_STATE_STBY	3
+#define	R1_STATE_TRAN	4
+#define	R1_STATE_DATA	5
+#define	R1_STATE_RCV	6
+#define	R1_STATE_PRG	7
+#define	R1_STATE_DIS	8
+
 #define R1_SPI_IDLE		(1 << 0)
 #define R1_SPI_ERASE_RESET	(1 << 1)
 #define R1_SPI_ILLEGAL_COMMAND	(1 << 2)
-- 
2.30.2



