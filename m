Delivery-date: Wed, 02 Jul 2025 14:02:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAs-00DHtv-0U
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:02:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAr-0003vf-7y
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x0uuJDTLn352NyUWx3Gn1eHQ0VD2ecRvc7WYt1c+k8M=; b=IqF9A6nBpXkwIy
	5lAXafVPyRPc064te02xxwn1ag4NqraQkbfBLAUGg3eD4MlLr3THPEtQNF6v5ohZSIYyCyFF/RfXr
	aB0yxef87NZA+2bmjYwN75Bt5tXjb6Bpubrrx29uVY9+RdhQCeXeAVdYtE3uPGk1ULFHiZMZmwZw5
	9xXhge5pt5WMcMbfIptEW4SDwCazWa6FNDqRoxv1wV3dpmw2kDQa3oVUnWTJLv9LxncNzXI1IfWg9
	hq7377pxx9ApFjE3/THjTIChFPhNrldyrIHYiLwp8u8eV3/Y5/PQ8oCkO8w9vOUns8alvBMxLfduT
	miV+dCg4Qp+32w1sOwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwAJ-00000008EJy-1Y7T;
	Wed, 02 Jul 2025 12:02:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvBt-000000082uI-2thc
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 10:59:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBs-0003k1-G9; Wed, 02 Jul 2025 12:59:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBs-006QGP-11;
	Wed, 02 Jul 2025 12:59:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBr-009Mga-2I;
	Wed, 02 Jul 2025 12:59:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  2 Jul 2025 12:59:46 +0200
Message-Id: <20250702105947.2232095-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_035949_727599_94434E5E 
X-CRM114-Status: GOOD (  13.97  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] mci: imx-esdhc: restore longer timeouts for idle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit 02986964885c ("mci: imx-esdhc: implement esdhc_poll using
sdhci_read32_poll_timeout") introduces sdhci_compute_timeout() which
takes a default timeout, but that default timeout is ignored in the
function.

Commit bbecd0b7bb7e ("mci: sdhci: add support for struct mci_data::timeout_ns")
then makes use of this function and with this breaks the polling for DATA0
line by reducing the original 2.5s timeout to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS
which is 10ms.

With this writing to the card times out during a MMC_CMD_STOP_TRANSMISSION
command, observed on i.MX6ul.

All these timeouts print errors and are not expected to trigger in
normal operation, therefore just make the hardcoded timeouts in the
driver the new minimum.

Fixes: 02986964885c ("mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout")
Fixes: bbecd0b7bb7e ("mci: sdhci: add support for struct mci_data::timeout_ns")
Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 6 +++---
 drivers/mci/sdhci.c            | 2 +-
 drivers/mci/sdhci.h            | 4 +---
 3 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 228f4a9b03fe..66f3edc670e0 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -394,7 +394,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 		 */
 		ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
 				 val & PRSSTAT_DAT0,
-				 sdhci_compute_timeout(cmd, NULL, 2500 * MSECOND));
+				 max_t(u64, sdhci_compute_timeout(cmd, NULL), 2500 * MSECOND));
 		if (ret) {
 			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
 			goto undo_setup_data;
@@ -419,7 +419,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 	/* Wait for the bus to be idle */
 	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
 			 (val & (SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA)) == 0,
-			 sdhci_compute_timeout(cmd, data, SECOND));
+			 max_t(u64, sdhci_compute_timeout(cmd, data), SECOND));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
 		return -ETIMEDOUT;
@@ -427,7 +427,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 
 	ret = esdhc_poll(host, SDHCI_PRESENT_STATE, val,
 			 (val & SDHCI_DATA_LINE_ACTIVE) == 0,
-			 sdhci_compute_timeout(cmd, NULL, 100 * MSECOND));
+			 max_t(u64, sdhci_compute_timeout(cmd, NULL), 100 * MSECOND));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 17847a13ed5f..9bf886dfe3f4 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -836,7 +836,7 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 		    mmc_op_tuning(cmd->cmdidx)))
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	timeout_ns = sdhci_compute_timeout(cmd, data, SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS);
+	timeout_ns = sdhci_compute_timeout(cmd, data);
 
 	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 25d257b23145..ec82b1b8ff9a 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -372,12 +372,10 @@ void sdhci_set_bus_width(struct sdhci *host, int width);
  * sdhci_compute_timeout() - compute suitable timeout for operation
  * @cmd: MCI command being sent, can be NULL
  * @data: MCI data being sent, can be NULL
- * @default_timeout: fallback value
  *
  * Return: the number of nanoseconds to wait.
  */
-static inline ktime_t sdhci_compute_timeout(struct mci_cmd *cmd, struct mci_data *data,
-					    ktime_t default_timeout)
+static inline ktime_t sdhci_compute_timeout(struct mci_cmd *cmd, struct mci_data *data)
 {
 	if (data && data->timeout_ns != 0)
 		return data->timeout_ns;
-- 
2.39.5



