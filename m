Delivery-date: Thu, 14 Mar 2024 19:49:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8v-006Qma-1F
	for lore@lore.pengutronix.de;
	Thu, 14 Mar 2024 19:49:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkq8s-0004Ql-5t
	for lore@pengutronix.de; Thu, 14 Mar 2024 19:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJV8izfsk1hPR8VB296isMsBBIKQrJ3fwplOXJV+CdE=; b=gpmgjH1c9yjSKF4E/auS0uD/yZ
	ovGCeZMijzMbwulk7VL1Deh47h93qkeTA3MQcp2vcAkHyh8HvpZiFDWCex5Ckr7gJ6o7UUlCYajUk
	7pjTn/X1CtCIBm1DqxGlIsDRH2zanHjqU8Y3gowD5gRNAT4I6d375/+r/6dGPu5ieOGqjSXaltb7K
	wLLl0U8CoQu4STWu6dYM4u46uGB27IeXyFMmo6bTHERQm9GRSAzOv6HOc9Aqtj6M+XZZfdwjQSwOZ
	QtG0q5F6HOUDuns7jYZKF/knHJQbS/OpiW/yDa2nrTGypnRaol4ShtxQsbsZtmGzD2ij6xMJanqKr
	FctS/l6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq8H-0000000FN4b-0Zqr;
	Thu, 14 Mar 2024 18:48:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7z-0000000FMra-1zK3
	for barebox@bombadil.infradead.org;
	Thu, 14 Mar 2024 18:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CJV8izfsk1hPR8VB296isMsBBIKQrJ3fwplOXJV+CdE=; b=YTN06iva7lizohjgYhzZev7Ncf
	epl74WrGfUDyX/W//cMk/yJvnT7hDsplJbhQ+5Ol9ICIsluxxtZXDDjoVaSF7tG8YztwJLh37f37N
	P22QJrquyUWWYf6QsGEejb/gB0S8tVdKyz3faUb2OscfLTjqRQXeNdqc4U3NBGpUC/YIWo67Vs2fM
	gWP9Dg5muDpdwYA7QPQo6Y8O4uX1+QxEEwQWMn+WSfprMI2JiQ3r0zjz5RkWSKoaM29At+jJFWe7B
	j+potehI558AMXXS2dsEvWncbacUdUUXF2ffhj5NKoGodx7qI2YC3y2KWn4ciqRhgBwWhhxCq03Fc
	A+LdiSBg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkq7v-0000000AcMU-242W
	for barebox@lists.infradead.org;
	Thu, 14 Mar 2024 18:48:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rkq7s-0001yt-PR; Thu, 14 Mar 2024 19:48:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 14 Mar 2024 19:47:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-14-0386c27fe653@pengutronix.de>
References: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
In-Reply-To: <20240314-v2024-02-0-topic-arasan-hs200-support-v2-0-0386c27fe653@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5903;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=+M0pH0zZKF6IXOrNhE4ncvlMKwMSk4tHceZoGsW0DVs=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFI/uxXeOWb07vzW+codXAqN5n/mnUmMMuhP4eG7UXl2f
 dWZaeXyHaUsDGJcDLJiiiyRaw9pbBb+rPPl+HkGmDmsTCBDGLg4BWAiHfwM/1ScrB5tibnnHTXF
 PiWT+WJK5tyAnH/vkowdj8kYxykq7mNk+Lk0ty1zoZP9imB3hwflN1dNYPxXtPrKpvX7Q//WzOg
 JZgcA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_184827_746375_4B49A3F1 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 14/14] mci: sdhci: replace sdhci_wait_idle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux uses a different sdhci_wait_idle function than what barebox
currently does. For HS200 support, the linux version needs to be used.
As currently only arasan-sdhci is tested with HS200, keep the old
sdhci_wait_idle as sdhci_wait_idle_data and convert all users of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/am654-sdhci.c            |  2 +-
 drivers/mci/arasan-sdhci.c           |  2 +-
 drivers/mci/atmel-sdhci-common.c     |  4 ++--
 drivers/mci/dove-sdhci.c             |  2 +-
 drivers/mci/mci-bcm2835.c            |  2 +-
 drivers/mci/rockchip-dwcmshc-sdhci.c |  2 +-
 drivers/mci/sdhci.c                  | 29 +++++++++++++++++++++++++++--
 drivers/mci/sdhci.h                  |  3 ++-
 8 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/am654-sdhci.c b/drivers/mci/am654-sdhci.c
index 1d94834c1a..391b65591c 100644
--- a/drivers/mci/am654-sdhci.c
+++ b/drivers/mci/am654-sdhci.c
@@ -471,7 +471,7 @@ static int am654_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	int ret;
 	dma_addr_t dma;
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 80489e98f4..0a06308dbe 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -250,7 +250,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	u32 mask, command, xfer;
 	int ret;
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle(&host->sdhci, cmd, data);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index a69d6b67b5..082ce842f7 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -98,7 +98,7 @@ int at91_sdhci_send_command(struct at91_sdhci *host, struct mci_cmd *cmd,
 	int status;
 	int ret;
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
 
@@ -188,7 +188,7 @@ static int at91_sdhci_set_clock(struct at91_sdhci *host, unsigned clock)
 	u32 caps, caps_clk_mult;
 	int ret;
 
-	ret = sdhci_wait_idle(&host->sdhci, NULL);
+	ret = sdhci_wait_idle_data(&host->sdhci, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index 8a4c4a11b4..d37046ad31 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -62,7 +62,7 @@ static int dove_sdhci_mci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	unsigned int num_bytes = 0;
 	struct dove_sdhci *host = priv_from_mci_host(mci);
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 2b541e4c05..455ce994f7 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -128,7 +128,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		block_data |= data->blocksize;
 	}
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 03f463a3f6..f503dbae65 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -249,7 +249,7 @@ static int rk_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	int ret;
 	dma_addr_t dma;
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle_data(&host->sdhci, cmd);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 7dedd5a7b2..8bba1e3bf9 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -788,7 +788,32 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
 }
 
-int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd)
+int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
+{
+	u32 mask;
+	int ret;
+
+	mask = SDHCI_CMD_INHIBIT_CMD;
+
+	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		mask &= ~SDHCI_CMD_INHIBIT_DATA;
+
+	ret = wait_on_timeout(10 * MSECOND,
+			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
+
+	if (ret) {
+		dev_err(host->mci->hw_dev,
+				"SDHCI timeout while waiting for idle\n");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
+int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask;
 	int ret;
@@ -820,7 +845,7 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	sdhci_set_uhs_signaling(host, host->mci->timing);
 
-	sdhci_wait_idle(host, NULL);
+	sdhci_wait_idle_data(host, NULL);
 
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, 0);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index f10a801c88..15ce2b92b6 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -309,7 +309,8 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
 int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
-int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
+int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd);
+int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
 int sdhci_wait_for_done(struct sdhci *host, u32 mask);
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,

-- 
2.40.1



