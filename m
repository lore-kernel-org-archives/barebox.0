Delivery-date: Wed, 07 May 2025 11:31:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7b-0035e1-07
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:31:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb7a-0007h7-9E
	for lore@pengutronix.de; Wed, 07 May 2025 11:31:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N9I53PmrxTlP6KAAJA1cTh/u3fKEQKcGN+I5FLxqlgo=; b=jHDBIOlLqSDTrmojksBCPL71X8
	zF5NRLbs+iUcmhOIbnj+xtoag9oL0KUPL7pHD7EKLiFPFPiIpLH7a9OryvaCjTcShg/7w7Pogb5f9
	KiacIh9YBYlzXWrEW3thS2MFyaz7hPorKYr3IwycLXGKLL8Uvl/gQJgAzrFMIzJ9yGDSwX4IixqbF
	fGNxl2eeTgaWq90yBXdjRlBY6YB3fqS4rkSZZzZoZ+gd9zbseiRcKYNIORjUZPmUBXp11cXRsdL3K
	+Q3LrewZyc4IuCIATup7IrPw9PsK2DCibb0IwcbzDGd3DIGZo00LKeAoFNhjArWdar9r1UezWl1Ac
	umHrreYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb79-0000000EyCT-3XCk;
	Wed, 07 May 2025 09:30:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaGh-0000000EmFH-1lfg
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=N9I53PmrxTlP6KAAJA1cTh/u3fKEQKcGN+I5FLxqlgo=; b=VcMtK4St/NOxuDnIaoV226QGjN
	iY1uJd3cTrpk+sUwmEeizYJSHwEB/QCct86LX5NPnvDWb8mz+b5Lq1b0mu0kOyi0djkFLGbZjI3tP
	Q69/puYDiNXnVQUqkx6bsS72uxqrDr2kwAUaKB+0Rc/VprZMyNzl/3rCGCB93BAhF7b8iOZ44tgJ0
	JFH0eiVOc9SY0fwwDpzzt6L8GQXCASQ1XCATP2ug/owtuGOXAiOphp0I77uLiOWFGaXTLdzwtpFCk
	oDtAK/ufGgIZYwmdmOe56SW+f7YLvk+ObSmg/Qcjlhr1h/SVLcysK7sow3E3AYGACAgcFz1a9KMq+
	frchoexQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFn-00000001ihH-3nQU
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-00040T-AE; Wed, 07 May 2025 10:35:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaFA-001Wv8-0O;
	Wed, 07 May 2025 10:35:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0S;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:50 +0200
Message-Id: <20250507082209.3289972-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093548_419290_0BC889F8 
X-CRM114-Status: GOOD (  15.08  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/30] mci: sdhci: add support for struct mci_data::timeout_ns
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With tuning sequences, we will want to associate the busy timeout with
the struct mci_data, so add a timeout_ns member to it like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 17 +++++++----------
 drivers/mci/sdhci.h | 23 ++++++++++++++++++++++-
 include/mci.h       |  1 +
 3 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index d0caee22f2f7..84acb3d163b5 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -813,11 +813,10 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 mask;
-	unsigned timeout_ms;
+	ktime_t timeout_ns;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD;
-	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS;
 
 	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
 		mask |= SDHCI_CMD_INHIBIT_DATA;
@@ -825,12 +824,10 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	if (cmd && cmd->busy_timeout != 0)
-		timeout_ms = cmd->busy_timeout;
+	timeout_ns = sdhci_compute_timeout(cmd, data, SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS);
 
-	ret = wait_on_timeout(timeout_ms * MSECOND,
+	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
-
 	if (ret) {
 		dev_err(sdhci_dev(host),
 				"SDHCI timeout while waiting for idle\n");
@@ -843,19 +840,19 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask;
-	unsigned timeout_ms;
+	unsigned timeout_ns;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
-	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS;
+	timeout_ns = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS;
 
 	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
 	if (cmd && cmd->busy_timeout != 0)
-		timeout_ms = cmd->busy_timeout;
+		timeout_ns = cmd->busy_timeout;
 
-	ret = wait_on_timeout(timeout_ms * MSECOND,
+	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index d3b681153134..61058ca030a8 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -3,9 +3,11 @@
 #define __MCI_SDHCI_H
 
 #include <pbl.h>
+#include <mci.h>
 #include <dma.h>
 #include <linux/iopoll.h>
 #include <linux/sizes.h>
+#include <linux/ktime.h>
 
 #define SDHCI_DMA_ADDRESS					0x00
 #define SDHCI_BLOCK_SIZE__BLOCK_COUNT				0x04
@@ -201,7 +203,7 @@
 #define SDHCI_MAX_DIV_SPEC_200	256
 #define SDHCI_MAX_DIV_SPEC_300	2046
 
-#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS 10
+#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS	(10 * NSEC_PER_MSEC)
 
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
@@ -352,4 +354,23 @@ void sdhci_set_bus_width(struct sdhci *host, int width);
 #define sdhci_read32_poll_timeout(sdhci, reg, val, cond, timeout_us) \
 	read_poll_timeout(sdhci_read32, val, cond, timeout_us, sdhci, reg)
 
+/**
+ * sdhci_compute_timeout() - compute suitable timeout for operation
+ * @cmd: MCI command being sent, can be NULL
+ * @data: MCI data being sent, can be NULL
+ * @default_timeout: fallback value
+ *
+ * Return: the number of nanoseconds to wait.
+ */
+static inline ktime_t sdhci_compute_timeout(struct mci_cmd *cmd, struct mci_data *data,
+					    ktime_t default_timeout)
+{
+	if (data && data->timeout_ns != 0)
+		return data->timeout_ns;
+	else if (cmd && cmd->busy_timeout != 0)
+		return cmd->busy_timeout * (u64)NSEC_PER_MSEC;
+	else
+		return SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS;
+}
+
 #endif /* __MCI_SDHCI_H */
diff --git a/include/mci.h b/include/mci.h
index 56527f956802..d3b855f530fc 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -513,6 +513,7 @@ struct mci_data {
 	unsigned flags;		/**< refer MMC_DATA_* to define direction */
 	unsigned blocks;	/**< block count to handle in this command */
 	unsigned blocksize;	/**< block size in bytes (mostly 512) */
+	unsigned timeout_ns;	/**< data timeout in ns */
 };
 
 enum mci_timing {
-- 
2.39.5



