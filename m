Delivery-date: Thu, 31 Oct 2024 10:28:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RU2-0032qY-2Z
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 10:28:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6RU3-0007oJ-0i
	for lore@pengutronix.de; Thu, 31 Oct 2024 10:28:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OgHBUO1ZA3Izyk6jMfq6ZQ1muT8vUlZ/7kLFRGnEOe4=; b=zJpm2xz1L6WYj1wBWPqNKe1N7E
	WaQU+iGzNvdqepcQNzxd85IfX0Wxbjpv5Gw05EcwNpO7CG3glnu1qn9Nvj+dMQ5qWIHAxtGCAO7us
	e0FI9qyGzXtUpEy0hnBaukFCPxiBFzNBBmjbZgpHZCTJRRoFZRaxwxrxHnl9W16bYyccELUeUY1B7
	mlXNpAR32G0psnnKzNO7gxCNZJINCAHH4SGRKxGx2FCdqDcE1I5+H63beh1tPF1eepsTqeoFlL4XV
	3XDG/T3HpI+vFWWhAnmpyk8jIsALfOMBcqPs4c6Et5yOJ7b65rJF6l9DvdlHd71YDoJD16YFiIQrt
	X5wlBiUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RTS-000000034rt-1yGV;
	Thu, 31 Oct 2024 09:28:14 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6RSn-000000034pN-29ja
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 09:27:34 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-37d6ff1cbe1so526360f8f.3
        for <barebox@lists.infradead.org>; Thu, 31 Oct 2024 02:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730366851; x=1730971651; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OgHBUO1ZA3Izyk6jMfq6ZQ1muT8vUlZ/7kLFRGnEOe4=;
        b=dCyKJKHsRqlzTc4d2zESUWH9HAAcmEvP8z56AAOm2g9tqzQaPg/1qD3mbR7ItCAk+C
         gBw7Z8PPTGFfLVovEwsDRS5jyYKHlNZSeupvKVBRGCMqAGH17csGtGWMU/7ilwfUIM6V
         P8+KRLFyui3DPPlxujzJf0bChCHV/4XpaGbjntIDGjG71L5BCLy/I/JihJalG7Zfo3jx
         v0IGNHgwjkEVixKb5/Po/7235Z+5DbasTxbEqUBAGN9pBoe/OEVJq4LK2irE6yExSEda
         ljEaBYuev+iSwDiR9iwN2YMDMb4bBiyy2LpXqpo1jrH0yQo2yKsdxg8kD5ouwehPIZyY
         kJAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730366851; x=1730971651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OgHBUO1ZA3Izyk6jMfq6ZQ1muT8vUlZ/7kLFRGnEOe4=;
        b=KahRN4iD3uSFUEhf1ueQOfQnJk1YTqXz9zGVScSO3cFeI19GrsrwejjqusH/0ZY20Q
         j3hVGkd+3FswiKdodczPWozkK5KPPwaVF2PzO86pUDxeXqBNYHIjg1ioCQXTRS0JyW1P
         l0Mqqc8uuTDE4AbGJoXgner2Ba0ZBwjh30ZL10WzxmG+JGECS6I2PIEMbp2qIUUR0iXI
         LflJ3Dhsm6CErMdukSyvRaLADkqcnT8tY7lsJh6HPM8SQo7iWyug1abF3Vbe7z2J/fEf
         U1J8Nw1Cn+G5onzBDxZf27wUJbg3W0aTT5zSBkdAIt/C9uKOd1nBLrUxWKyq5qKQxvoQ
         Oo2Q==
X-Gm-Message-State: AOJu0YzISJS32cdznLHhJl4wXXnDTCk/nvpsOzd1BHKyQf3fjJmwfYDY
	rL0ybpdsHAjVKlqLgrC965LNH3/12Z7Zryyb+f5cDyWX8Y1SbVwfjWJ68BZ5
X-Google-Smtp-Source: AGHT+IEoJXbaz8nyysDyWM/rh5fVb6MzD02BgCUNfIx5HdtN0+9/oTFP0BW0HhH6BNSxEB+QYDY1PQ==
X-Received: by 2002:a05:6000:1449:b0:37c:f3e0:b436 with SMTP id ffacd0b85a97d-381be7d8f96mr2120256f8f.30.1730366850974;
        Thu, 31 Oct 2024 02:27:30 -0700 (PDT)
Received: from kaliss.. (82-65-217-21.subs.proxad.net. [82.65.217.21])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10d4d82sm1538825f8f.45.2024.10.31.02.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 02:27:30 -0700 (PDT)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Cc: oss-contrib@rtone.fr,
	sebastien.bourdelin@gmail.com,
	Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Date: Thu, 31 Oct 2024 10:27:19 +0100
Message-ID: <20241031092721.763280-3-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
References: <20241031092721.763280-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_022733_588423_309A5BF0 
X-CRM114-Status: GOOD (  14.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] mci: zeroed all structs mci_cmd instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

All structs mci_cmd should be init to zero to avoid error while using
the busy_timeout value.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
---
 arch/arm/mach-socfpga/arria10-xload-emmc.c |  2 +-
 drivers/mci/dwcmshc-sdhci.c                |  2 +-
 drivers/mci/imx-esdhc-pbl.c                |  4 +--
 drivers/mci/mci-core.c                     | 34 +++++++++++-----------
 drivers/mci/stm32_sdmmc2.c                 |  2 +-
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload-emmc.c b/arch/arm/mach-socfpga/arria10-xload-emmc.c
index ed24faf9bf..61774c6174 100644
--- a/arch/arm/mach-socfpga/arria10-xload-emmc.c
+++ b/arch/arm/mach-socfpga/arria10-xload-emmc.c
@@ -178,7 +178,7 @@ static int dwmci_cmd(struct mci_cmd *cmd, struct mci_data *data)
 
 int arria10_read_blocks(void *dst, int blocknum, size_t len)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	int ret;
 	int blocks;
diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 010d376421..a7306fdb44 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -52,7 +52,7 @@ static int do_abort_sequence(struct mci_host *mci, struct mci_cmd *current_cmd)
 {
 	int ret = 0;
 	struct dwcmshc_host *host = priv_from_mci_host(mci);
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	u64 start;
 
 	mci_setup_cmd(&cmd, MMC_CMD_STOP_TRANSMISSION, 0, MMC_RSP_R1b);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 5b1d9a3cf4..0e4f96d2de 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -35,7 +35,7 @@ static u8 ext_csd[512] __aligned(64);
 
 static int esdhc_send_ext_csd(struct fsl_esdhc_host *host)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 
 	cmd.cmdidx = MMC_CMD_SEND_EXT_CSD;
@@ -67,7 +67,7 @@ static bool __maybe_unused esdhc_bootpart_active(struct fsl_esdhc_host *host)
 
 static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	u32 val;
 	int ret;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 48a3df9ec9..a6c304c1bd 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -119,7 +119,7 @@ static void mci_setup_cmd(struct mci_cmd *p, unsigned cmd, unsigned arg, unsigne
  */
 static int mci_set_dsr(struct mci *mci)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_DSR,
 			(mci->host->dsr_val >> 16) | 0xffff, MMC_RSP_NONE);
@@ -134,7 +134,7 @@ static int mci_set_dsr(struct mci *mci)
  */
 static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 
 	if (mci->host->timing == MMC_TIMING_MMC_DDR52)
 		return 0;
@@ -148,7 +148,7 @@ static void *sector_buf;
 static int mci_send_status(struct mci *mci, unsigned int *status)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int ret;
 
 	/*
@@ -172,7 +172,7 @@ static int mci_send_status(struct mci *mci, unsigned int *status)
 static int mci_app_sd_status(struct mci *mci, __be32 *ssr)
 {
 	int err;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 
 	cmd.cmdidx = MMC_CMD_APP_CMD;
@@ -272,7 +272,7 @@ static int mci_poll_until_ready(struct mci *mci, int timeout_ms)
 static int mci_block_write(struct mci *mci, const void *src, int blocknum,
 	int blocks)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	unsigned mmccmd;
 	int ret;
@@ -374,7 +374,7 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 static int mci_read_block(struct mci *mci, void *dst, int blocknum,
 		int blocks)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	int ret;
 	unsigned mmccmd;
@@ -411,7 +411,7 @@ static int mci_read_block(struct mci *mci, void *dst, int blocknum,
  */
 static int mci_go_idle(struct mci *mci)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int err;
 
 	udelay(1000);
@@ -431,7 +431,7 @@ static int mci_go_idle(struct mci *mci)
 
 static int sdio_send_op_cond(struct mci *mci)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 
 	mci_setup_cmd(&cmd, SD_IO_SEND_OP_COND, 0, MMC_RSP_SPI_R4 | MMC_RSP_R4 | MMC_CMD_BCR);
 
@@ -446,7 +446,7 @@ static int sdio_send_op_cond(struct mci *mci)
 static int sd_send_op_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int timeout = 1000;
 	int err;
 	unsigned voltages;
@@ -521,7 +521,7 @@ static int sd_send_op_cond(struct mci *mci)
 static int mmc_send_op_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int timeout = 1000;
 	int err;
 
@@ -566,7 +566,7 @@ static int mmc_send_op_cond(struct mci *mci)
  */
 int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 
 	/* Get the Card Status Register */
@@ -595,7 +595,7 @@ int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 int mci_switch(struct mci *mci, unsigned index, unsigned value)
 {
 	unsigned int status;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int ret;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SWITCH,
@@ -840,7 +840,7 @@ static int mmc_change_freq(struct mci *mci)
 static int sd_switch(struct mci *mci, unsigned mode, unsigned group,
 			unsigned value, uint8_t *resp)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	unsigned arg;
 
@@ -909,7 +909,7 @@ static int sd_read_ssr(struct mci *mci)
  */
 static int sd_change_freq(struct mci *mci)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	struct mci_data data;
 	struct mci_host *host = mci->host;
 	uint32_t *switch_status = sector_buf;
@@ -1387,7 +1387,7 @@ static char *mci_version_string(struct mci *mci)
 
 static int mci_startup_sd(struct mci *mci)
 {
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int err;
 
 	if (mci_caps(mci) & MMC_CAP_4_BIT_DATA) {
@@ -1782,7 +1782,7 @@ static int mci_startup_mmc(struct mci *mci)
 static int mci_startup(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int err;
 
 	if (IS_ENABLED(CONFIG_MMC_SPI_CRC_ON) && mmc_host_is_spi(host)) { /* enable CRC check for spi */
@@ -1924,7 +1924,7 @@ static int mci_startup(struct mci *mci)
 static int sd_send_if_cond(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
-	struct mci_cmd cmd;
+	struct mci_cmd cmd = {};
 	int err;
 
 	mci_setup_cmd(&cmd, SD_CMD_SEND_IF_COND,
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 822416c457..64a7171d2c 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -512,7 +512,7 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	 * shall be send on cmd or data errors.
 	 */
 	if (ret && cmd->cmdidx != MMC_CMD_STOP_TRANSMISSION) {
-		struct mci_cmd stop_cmd;
+		struct mci_cmd stop_cmd = {};
 
 		stop_cmd.cmdidx = MMC_CMD_STOP_TRANSMISSION;
 		stop_cmd.cmdarg = 0;
-- 
2.46.2



