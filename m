Delivery-date: Wed, 06 Nov 2024 16:37:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6J-005a06-0g
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:37:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8i6J-0004DD-Fa
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:37:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2X8hMysk4Uuuw9cPLUKdybtlirj1ZjRdqRJVRqzH20=; b=FG/lGw1M8KpMmR
	BiDdmGH8slCycCxGWJY72N/K/9UzIg5KsdDuVl2GXQqoIwNajPcwIRqLrbs66GoMdfH/Eexc6z57o
	q/bFez4TogBpiKQtgdsq77Ie0uzSZ4eNoW6EbURODSeMDXWOZO/3PcsWXnosTKhdzvIgCqUaYgPgC
	eMHz+yp8zg8nJqtwYmUd33lIaC0pWGvNLffmXEF9Fr7TInvQIQzEqULpxZ9HrmBOAi4ZdXVseBGhg
	N19Lgaod0i3zXCEkZ8am4EISNVtKDncbY7wyRtME5PQ/KgHxXEwrxXxxVmZGc/nHf6r5JKIbZNZS7
	YagIgPQDsK9ubjM/gnqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5p-00000003qZn-0Nlv;
	Wed, 06 Nov 2024 15:37:13 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i5l-00000003qX6-1pLa
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:37:11 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4315baa51d8so61402085e9.0
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730907427; x=1731512227; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/2X8hMysk4Uuuw9cPLUKdybtlirj1ZjRdqRJVRqzH20=;
        b=S1Wxmd2gz8m82U3F8/1aiJ3sR6YHG3F1mlo5md6vS/Msp279XDG72OnH49PlgTD2Xz
         YUwiOjqnhqlknFyQC8A7toRxYGU9q68Q8r6chHO0uk14aXaAUGg6BSGMgjd9tXUicdQ6
         wwzELrV6GS1HBB57wiR1G2HTihF+15148uH4KCpW4hTMLrysYyC5TJIOwGjh3DwN+w4/
         58OvjOY998ftnUIsxriPgjV75XkoTCeUgIRcy7gyKNPypWNcP2cmQBv0n8ugDp8n2ohN
         DtuCSLpsel15stu9XkM0dTCntbjlBRKWqAOPN7hvWRMtvwUPi8iOOHf/l9++/fPzW3pv
         1vZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730907427; x=1731512227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/2X8hMysk4Uuuw9cPLUKdybtlirj1ZjRdqRJVRqzH20=;
        b=r4yenT6uocDnIGnakZLd1uYxozvCs3tvgtWjGgHsgrV1r5k094sVfXAzL4gA3TaTan
         4khw6ZymPaikgLllzF2woffYrsvoXkaR5Fxo0G27jbqZvNl3Fs+LBdwIrEx6J0eor6gh
         cCkwsnVOsogVHOr+Ws83pV9DV1dgn3iLXLoVYutnjVlRQaDs98OF+sfeaJHIY1RKaaWR
         34wzQSpkTP/jdMwwGL7rzEhT0nFJQ+dF1luc23S/quPDnHEuRtK9FeCe2CbYLZg65EPI
         DC+FygheRui5QTaRFxYHYrhwUhY9KjXE4hbjoAi3saztHvwHLMjoN85rX/6DmhFNdXPg
         MU4Q==
X-Gm-Message-State: AOJu0YxnckkAUfZ/1dctoDEcXhp3kq1BekGoBK6faYtnD6+ISzo7ATVm
	OtGI7e1ckd2KUB6P+uPbDVXTyclZ7MSW+fGh/qx8h7cAsDt/zvYBH98fqeE1HfY=
X-Google-Smtp-Source: AGHT+IHSTl0CpEHDntu76EQ/WTCUILizKG47wRiy8KoMF/RDL6I77ooZ1o+cFYV2VisvFlGzvrr/Kw==
X-Received: by 2002:a05:6000:1446:b0:37d:52db:a0a7 with SMTP id ffacd0b85a97d-381be7adcf9mr19051442f8f.2.1730907427053;
        Wed, 06 Nov 2024 07:37:07 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c113e5cbsm19608925f8f.80.2024.11.06.07.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:37:06 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
X-Google-Original-From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:37:00 +0100
Message-ID: <20241106153702.858977-3-sebastien.bourdelin@rtone.fr>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
References: <20241106153702.858977-1-sebastien.bourdelin@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073709_501304_458015F4 
X-CRM114-Status: GOOD (  14.96  )
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
Cc: a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/4] mci: zeroed all structs mci_cmd instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All structs mci_cmd should be init to zero to avoid error while using
the busy_timeout value.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

---
Changes v2 -> v3:
  - Fix email author and signed-off
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
2.47.0



