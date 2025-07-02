Delivery-date: Wed, 02 Jul 2025 14:05:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCz-00DHwU-2T
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCy-0006al-Pv
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/57Z4JNWQVWfbVQJDLZNVmBMV4fabIVl4jKXMli01YA=; b=ZxKMfE3HlA9Yeq5LOlbrWnJMhO
	4e7RWnYQEoRDDz0SUP8rvzQKNRsbOAKXJ+3yAHHOAeNUoXOp7sNZm7s0BD5bkecULPBpbjNn5fJ8J
	RNleXR93jRU3+7CnrZM5lLGie2+byHXlXq6UxDeqvqYkAshvfagkXjM4/kE7G9sdY8PAboV236lI+
	L1uo/W5psXTb7yJFeUhphiB6WXLUyvow/lgUUJztbFlDKcjXzeUdY2UdwFRYM8cp1aa5sCelOj0Kf
	pchjF33nShvhY9BbEkN0323GPrOpz1FqvAJcZZRfKhvUnWaPZOkueiDYaXoIJ7g0Q927CRjbCURZl
	GiAgb6EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwCa-00000008F0H-0IuF;
	Wed, 02 Jul 2025 12:04:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvDi-000000083TE-16Sc
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:01:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDh-0005t9-1K; Wed, 02 Jul 2025 13:01:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-006QSf-2a;
	Wed, 02 Jul 2025 13:01:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-009NqZ-0e;
	Wed, 02 Jul 2025 13:01:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 13:01:39 +0200
Message-Id: <20250702110139.2235318-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
References: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_040142_310151_6DE49E90 
X-CRM114-Status: GOOD (  11.80  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] mci: sdhci: reduce duplication in sdhci_wait_idle[_data]
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the two functions look nearly identical, let's factor out the
common parts into a helper function and keep only the differences.

In future, we may export only a single function once the implications
are better understood, but even now, it's already a win for readability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 42 ++++++++++++++----------------------------
 1 file changed, 14 insertions(+), 28 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index f0c95f2dbfa8..2d32a8b31188 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -821,17 +821,12 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 	sdhci_write16(host, SDHCI_CLOCK_CONTROL, clk);
 }
 
-int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
+static int __sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd,
+			     struct mci_data *data, u32 mask)
 {
-	u32 mask;
 	ktime_t timeout_ns;
 	int ret;
 
-	mask = SDHCI_CMD_INHIBIT_CMD;
-
-	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
-		mask |= SDHCI_CMD_INHIBIT_DATA;
-
 	if (cmd && (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ||
 		    mmc_op_tuning(cmd->cmdidx)))
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
@@ -849,30 +844,21 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 	return 0;
 }
 
+int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
+{
+	u32 mask = SDHCI_CMD_INHIBIT_CMD;
+
+	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
+		mask |= SDHCI_CMD_INHIBIT_DATA;
+
+	return __sdhci_wait_idle(host, cmd, data, mask);
+}
+
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 {
-	u32 mask;
-	ktime_t timeout_ns;
-	int ret;
+	u32 mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
 
-	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
-
-	if (cmd && (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ||
-		    mmc_op_tuning(cmd->cmdidx)))
-		mask &= ~SDHCI_CMD_INHIBIT_DATA;
-
-	timeout_ns = sdhci_compute_timeout(cmd, NULL);
-
-	ret = wait_on_timeout(timeout_ns,
-			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
-
-	if (ret) {
-		dev_err(sdhci_dev(host),
-				"SDHCI timeout while waiting for idle\n");
-		return -EBUSY;
-	}
-
-	return 0;
+	return __sdhci_wait_idle(host, cmd, NULL, mask);
 }
 
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock)
-- 
2.39.5



