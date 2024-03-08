Delivery-date: Fri, 08 Mar 2024 12:19:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFr-00DdD4-0Z
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:19:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFq-0001H8-I1
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:19:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dLIzdkbdGX6F0NQsLoXnG0hUwyZrekjUySdRcr745Mk=; b=JMKR425BpzWXD2Oan5QQA0/54g
	4NnlQVfN2rSziDeH2kC8ToxUTP9f97BK43xhhG7p8ouWocx+F+CeIZu0dnsNjM0C38b8fpkoXH6Zd
	efuRm5JS2R46REpN1KoeHDldrkNnwlhIR/+iTXTD+cKYGNHOkU8sklM5OKdxwdcFqvQHUggwQz5/b
	rjrzsO7gV9eCo6abRJU9Dp6qeXQG1V9xBazX/xqepGbp+TK/DoBJDZtK7UiEYUYyZ1SxC3Pqp+eby
	uU8gDfO42w1NyabdnAhcBs90d0paqhmfwWpy/ildwJHS7PSultjomGX4ozfPtuuU/qlnBcu0AfWP1
	e7MjbrsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYFF-00000008vsA-0SxY;
	Fri, 08 Mar 2024 11:18:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEg-00000008vQw-2sp4
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:18:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEa-0007Id-8R; Fri, 08 Mar 2024 12:17:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-12-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2555;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=IAqwpOAeoJPBAf5vQDx6TvW4m0hKYf+8CQdpktmZfPU=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffb4lVT3nyPJtPZUTYzzYbX++7HmvLyka+mTuwQy/H
 68rhAUZOkpZGMS4GGTFFFki1x7S2Cz8WefL8fMMMHNYmUCGMHBxCsBEjm5mZPg8zXyF+Vu9fWuF
 ky4X3GSX6P/w+1YBX+SxUwYb+t9+v7iUkeH6Tp+Fj02YTymu4JVddeT/7KKSSzrbQmPO+bPPTy3
 4l8UNAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031759_071052_42E18A83 
X-CRM114-Status: GOOD (  11.97  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/12] mci: arasan: use sdhci_wait_idle2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To support HS200 mode, the arasan needs a differernt sdhci_wait_idle
function. Remove the default CMD_INHIBIT_DATA, otherwise the sdhci hs200
tuning will timeout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c |  2 +-
 drivers/mci/sdhci.c        | 25 +++++++++++++++++++++++++
 drivers/mci/sdhci.h        |  1 +
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index c20d901c3f..afddf19de7 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -250,7 +250,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	u32 mask, command, xfer;
 	int ret;
 
-	ret = sdhci_wait_idle(&host->sdhci, cmd);
+	ret = sdhci_wait_idle2(&host->sdhci, cmd, data);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 62e6443e64..0f7e3cc193 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -757,6 +757,31 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
 }
 
+int sdhci_wait_idle2(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
+{
+	u32 mask;
+	int ret;
+
+	mask = SDHCI_CMD_INHIBIT_CMD;
+
+	if (data || (cmd->resp_type & MMC_RSP_BUSY))
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
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 80916e670f..80c3f98c9c 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -307,6 +307,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 #define SDHCI_NO_DMA DMA_ERROR_CODE
 int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd);
+int sdhci_wait_idle2(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
 int sdhci_wait_for_done(struct sdhci *host, u32 mask);
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
 void sdhci_set_cmd_xfer_mode(struct sdhci *host, struct mci_cmd *cmd,

-- 
2.40.1



