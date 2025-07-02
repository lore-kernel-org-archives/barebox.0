Delivery-date: Wed, 02 Jul 2025 14:05:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCz-00DHwo-37
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:05:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwCz-0006aq-4R
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:05:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWmgTFp5dELVSTlHjJOXWbM9adyBKC2RsXL1VeqU874=; b=K43OE+CMEu8adiR72YBzDpfaxE
	fd1TLsDJUvOi9kVat5Ca/Y4UebSf+YNAbJXmGGzZWlyJtwj9meTo/LRrHk26iW/G5zw7h073oTMaO
	2Vn7KxIcPjiwytf4FEe6fgPBAYfezTCp+gK/BUO7hSNx+QPw/xtKObcMpGXtXCJjw6qK8WLY4SiPy
	y0ThfTZX/cY2dtuiWOW+M60I/r59ZAhyZKQBtu3Zk5reu3QwhWHMlyqycsEbjjkSuJkxV15pdm9q4
	joXPHEif+3VWbIrAyhwfZNk1vtQi2pa/y5U+lrOk6U5+iKl8ZZxt2Iw7pQD758RAPJVmwHU3Qa5+V
	/IfqLW6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwCb-00000008F1G-1zHc;
	Wed, 02 Jul 2025 12:04:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvDi-000000083TD-16hi
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 11:01:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-0005t8-Vr; Wed, 02 Jul 2025 13:01:40 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-006QSc-2S;
	Wed, 02 Jul 2025 13:01:40 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvDg-009NqZ-0V;
	Wed, 02 Jul 2025 13:01:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 13:01:38 +0200
Message-Id: <20250702110139.2235318-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
References: <20250702110139.2235318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_040142_316428_CA38B63E 
X-CRM114-Status: GOOD (  10.88  )
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
Subject: [PATCH 3/4] mci: sdhci: use sdhci_compute_timeout in sdhci_wait_idle[_data]
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_compute_timeout looks at the timeout values in both cmd and data
and if both are NULL falls back to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS.

It's thus can be used as-is in sdhci_wait_idle_data to reduce the
difference to sdhci_wait_idle in preparation for their merger.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 38a108adb1a8..f0c95f2dbfa8 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -856,14 +856,12 @@ int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
-	timeout_ns = SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS;
 
 	if (cmd && (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ||
 		    mmc_op_tuning(cmd->cmdidx)))
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
-	if (cmd && cmd->busy_timeout != 0)
-		timeout_ns = ms_to_ktime(cmd->busy_timeout);
+	timeout_ns = sdhci_compute_timeout(cmd, NULL);
 
 	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
-- 
2.39.5



