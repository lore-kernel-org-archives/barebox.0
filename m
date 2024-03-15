Delivery-date: Fri, 15 Mar 2024 15:02:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl892-007x8l-0q
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88z-0001db-VX
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=70LKJ1TPESwD9K18otlq9HHXeOqkZ9mDZhprmdL2wjw=; b=zKt/VADaoSlx/HpkxzyJlztdJj
	F1enlyYb6fEUgufOm5g56wfpQ8DXIK+3TfmAp+bNzqW6noyxz608r8BJJPkSbzZndqsOI/8ja9Ear
	+LZ6n1NibUPxwfDx66K7kYrPFZvrP/qcdOOsYf/z1A9kt+d/9OSq3qWNksNvzYFcoCzNkhW+eZbAl
	t0uNmb8n7ow4YvR62vN4HRQmqwwSVQ/H442tdDzAKQnaoSZaihZ+vkjzmA9Q54x/0asC3d5t1etob
	xRvPndchz67F4MyuAw5Uq+r3JfZX9RKIsSuastMwmFHNrd75GptRPnNrggFhfEnhZ1VmY47AE+2gq
	x9zBle9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl88I-00000000OwP-3FPL;
	Fri, 15 Mar 2024 14:02:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl881-00000000Om0-2FRG
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl880-000817-Bd; Fri, 15 Mar 2024 15:01:44 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-14-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5894;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=Gxbns2CEsFK+SBgAa0UmaRI8N2vUhZoeKB2izUfGG+4=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hByM2L1EaofK2khXG6frdh75PmrGF7OOrD0c5cV6x
 /ZDFMexjlIWBjEuBlkxRZbItYc0Ngt/1vly/DwDzBxWJpAhDFycAjCRe1yMDEca1bouHpz/de+s
 4MmctvN69ij32Gt02O3OmsbIkB7p0MrwzzpGsihyxUfnNbY/Dt+xNtiz5dTjCP0PX89M+fN+5Yz
 ytfwA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070145_640963_6D9A0059 
X-CRM114-Status: GOOD (  13.37  )
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
Subject: [PATCH v3 14/14] mci: sdhci: replace sdhci_wait_idle
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
index c8b5a84060..f01396d7ee 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -251,7 +251,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	dma_addr_t dma;
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
index 35cf0c4241..3546cc3a32 100644
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



