Delivery-date: Wed, 02 Jul 2025 14:02:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAp-00DHtP-2m
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:02:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwAp-0003th-B8
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:02:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Br9T7p0QVyxx7eKriIxpOtk9tF2q3XpTdCfB3cI18UU=; b=CSAWnEMo9A9e0qbZrUSl63WMhM
	HgsYd4sgy+LMIZOkw5fDO2jR2cNG3pa5Aagc5Vuf89yTPlo8DqZqikjgGp6F1inhl7FBCpoVaYRQt
	J49LwRYPx23+SG74tljPlR8vNb4du3ht19YxjJE2mlQgvjF13HrKZIN4U0cWlwHb3x7VwVbwDkgTr
	xuv/Op0+fwEgDWtM+h1ztlUXFbay13bszX9Ta7U7AB6osUeL8V5KHPrR2uH2PdJSez97Ph+FP8uD/
	hFKTxA+QmBj6jkOHHE1g16/KzkVLqQKu3NzmKJ2GrTZuc6mV8yxpzMlG4zwWPo3FhiAkq6Cg5+4B6
	UndjCrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwAI-00000008EJV-36dn;
	Wed, 02 Jul 2025 12:02:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWvBt-000000082uJ-2u5P
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 10:59:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBs-0003k2-HY; Wed, 02 Jul 2025 12:59:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBs-006QGQ-1A;
	Wed, 02 Jul 2025 12:59:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWvBr-009Mga-2R;
	Wed, 02 Jul 2025 12:59:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Jul 2025 12:59:47 +0200
Message-Id: <20250702105947.2232095-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250702105947.2232095-1-a.fatoum@pengutronix.de>
References: <20250702105947.2232095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_035949_727553_C0A287CB 
X-CRM114-Status: GOOD (  12.19  )
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
Subject: [PATCH master 2/2] mci: sdhci: fix too short timeout in sdhci_wait_idle_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cmd::busy_timeout is in milliseconds like its Linux counterpart and was
correctly used as such, when it was first added.
Switching the function to use SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS
instead of SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_MS mixed up the units and
probably reintroduced the regression that commit 8242c8e6fbef
("mci: sdhci: use the busy_timeout value in the sdhci_wait_idle functions")
originally fixed.

Fixes: bbecd0b7bb7e ("mci: sdhci: add support for struct mci_data::timeout_ns")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 9bf886dfe3f4..38a108adb1a8 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -852,7 +852,7 @@ int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *da
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 {
 	u32 mask;
-	unsigned timeout_ns;
+	ktime_t timeout_ns;
 	int ret;
 
 	mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
@@ -863,7 +863,7 @@ int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd)
 		mask &= ~SDHCI_CMD_INHIBIT_DATA;
 
 	if (cmd && cmd->busy_timeout != 0)
-		timeout_ns = cmd->busy_timeout;
+		timeout_ns = ms_to_ktime(cmd->busy_timeout);
 
 	ret = wait_on_timeout(timeout_ns,
 			!(sdhci_read32(host, SDHCI_PRESENT_STATE) & mask));
-- 
2.39.5



