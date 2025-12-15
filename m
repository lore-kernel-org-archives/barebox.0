Delivery-date: Mon, 15 Dec 2025 15:22:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sc-00Blvj-0K
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:22:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-0002ao-GW
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:22:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dnVrL5YmZ1r3lY3Zh9oSENIHcD+v7r40pHFohByuAGw=; b=pXIEw0Ea7mlbavZHydwUpJTjJ8
	DdilqcgTYQ0OXn3vH692P2efSnN914cyrn1XGW7WFKdemeD+oN6aSjTd+1u7oxDn9hlIICKKMCixT
	yPk1Fl3TETwYc3YkDXbXz9QzoHe2ukJxVUsPF/phFvphw7NEk6h6ZOJ/BiQjJUjds0MwxJrRpn7GV
	DFPd/qmOhesXyuPsI3oxmLKT3CANF63ZtU6C7KmdccbNEu9EVoy3AhAHoznq5HbEP3nt4WDnrliNl
	4IgkaDCONQ97U2lAvJ+qIz+Co3fEfS4kF2Q1i+DGwF9z/O05I4QWjbDado3eJpCQn48BPIS+rZwwS
	ANc4Wgsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S9-00000003ml3-2Qfb;
	Mon, 15 Dec 2025 14:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S4-00000003mhc-1WSF
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:21:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9S2-0002Gv-UZ; Mon, 15 Dec 2025 15:21:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:21:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-4-11eea1b2ef41@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062128_405004_03B41A12 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] mci: sdhci: add set_uhs_signaling callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Allow adding a set_uhs_signaling callback in a host driver.

If the callback is not provided, just call the generic
sdhci_set_uhs_signaling function as before.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/sdhci.c | 7 +++++--
 drivers/mci/sdhci.h | 1 +
 include/mci.h       | 1 +
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index cfdfdbba8d..e24575d541 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -473,7 +473,7 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 }
 
-static void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing)
+void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing)
 {
 	u16 ctrl_2;
 
@@ -999,7 +999,10 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	host->mci->ios.clock = 0;
 
-	sdhci_set_uhs_signaling(host, host->mci->ios.timing);
+	if (host->mci->ops.set_uhs_signaling)
+		host->mci->ops.set_uhs_signaling(host->mci, host->mci->ios.timing);
+	else
+		sdhci_set_uhs_signaling(host, host->mci->ios.timing);
 
 	sdhci_wait_idle_data(host, NULL);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 6b3849e5f7..9c70eae111 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -344,6 +344,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 }
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
+void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing);
 int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd);
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
diff --git a/include/mci.h b/include/mci.h
index e54f6eba8d..c4faf11054 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -583,6 +583,7 @@ struct mci_ops {
 	int (*card_write_protected)(struct mci_host *);
 	/* The tuning command opcode value is different for SD and eMMC cards */
 	int (*execute_tuning)(struct mci_host *, u32);
+	void (*set_uhs_signaling)(struct mci_host *, unsigned int);
 };
 
 /** host information */

-- 
2.51.0



