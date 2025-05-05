Delivery-date: Mon, 05 May 2025 14:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6P-002SZV-0U
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6J-0006yu-Oi
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y3Lxo9lA0CO0wJS//+RXXt/CUQrhWH8DyhCH4kkyI2Y=; b=Qb5NzKQpSjr7vGGX+lLpZFoZRo
	EVAfM5eE4Gvw6/3KWMdQrksvsoa3WfO1o08GqYwPhohT+Y6OV3sTmo17mcBfHh6Eiq+34kT0ckr0w
	tSrYecYKESYiSU3V88nLx8Zz7Mex02CI2pG/sESg2XhFZHMObo4cqx8srs1MmhhxQSwHAW/f8cuiJ
	HQfq0bE1T6xYXVJtgHmWxmtnwYM4D9x4QRFj1buLmeLz0rq/cDiHuYe9hrNuA3D+IpyQCoPIpGkTp
	SDKOx1JEBQgHCeMQJX44wOky29hSGzqqevykR5nHS06COnhubgt81N9r7pRWqqRcvr7dSzwTAqh3b
	/Ooxhbwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5U-00000007LkZ-1ioo;
	Mon, 05 May 2025 12:38:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv2H-00000007Kgw-0Z1r
	for barebox@bombadil.infradead.org;
	Mon, 05 May 2025 12:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=y3Lxo9lA0CO0wJS//+RXXt/CUQrhWH8DyhCH4kkyI2Y=; b=ZZ05/z/BZVLXb9euuFHcgigrdA
	S1DkUWUxSM9h98G7eOsk1Yb/zxIif30OEljl5ytTgLUTO3KXTMdHyJcWsaa4km6L4mXZd/65Y+Q8Z
	y8KWiDVIDQ/8hqdc/ivP7OjUp0wWZOnoB2VbWtwYkxbvBpYUiG3DX4iUW4suLzIRwhozl+BpqR7G6
	8CTPK7XWNl4P9iZRbRj7pvVJezHw3T1KXzo0a4EYiJUvNIdnH5ndjPNbergm17wDNvm/IDi2zY4Ts
	ix3kE+Z7Q4X7qq+MfLwt/aftVCxRgPGKkSvwr6oYv7bpJo60RQwFUjZEt9/V2uV5UTJp24nh/usE9
	B9jXn3Zw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uBv2C-0000000FUTS-1JFn
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-0004su-F1; Mon, 05 May 2025 14:34:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-001ER8-0s;
	Mon, 05 May 2025 14:34:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-3A;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:14 +0200
Message-Id: <20250505120633.3717186-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_133500_749497_08FC95FC 
X-CRM114-Status: GOOD (  14.27  )
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
Subject: [PATCH 11/30] mci: sdhci: add support for struct mci_data::timeout_ns
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With tuning sequences, we will want to associate the busy timeout with
the struct mci_data, so add a timeout_ns member to it like Linux does.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 21 ++++++++++++---------
 drivers/mci/sdhci.h |  2 +-
 include/mci.h       |  1 +
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index d0caee22f2f7..61934bcad937 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -813,11 +813,10 @@ void sdhci_enable_clk(struct sdhci *host, u16 clk)
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data)
 {
 	u32 mask;
-	unsigned timeout_ms;
+	u64 timeout_ns;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD;
-	timeout_ms = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS;
 
 	if (data || (cmd && (cmd->resp_type & MMC_RSP_BUSY)))
 		mask |= SDHCI_CMD_INHIBIT_DATA;
@@ -825,10 +824,14 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 	if (cmd && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	if (cmd && cmd->busy_timeout != 0)
-		timeout_ms = cmd->busy_timeout;
+	if (data && data->timeout_ns != 0)
+		timeout_ns = data->timeout_ns;
+	else if (cmd && cmd->busy_timeout != 0)
+		timeout_ns = cmd->busy_timeout * (u64)NSEC_PER_MSEC;
+	else
+		timeout_ns = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS;
 
-	ret = wait_on_timeout(timeout_ms * MSECOND,
+	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
 
 	if (ret) {
@@ -843,19 +846,19 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
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
index d3b681153134..d3cb45c36248 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -201,7 +201,7 @@
 #define SDHCI_MAX_DIV_SPEC_200	256
 #define SDHCI_MAX_DIV_SPEC_300	2046
 
-#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS 10
+#define SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS	(10 * NSEC_PER_MSEC)
 
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
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



