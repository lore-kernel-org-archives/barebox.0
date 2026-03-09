Delivery-date: Mon, 09 Mar 2026 13:05:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMS-009jkf-2o
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 13:05:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzZMT-0000g3-2n
	for lore@pengutronix.de; Mon, 09 Mar 2026 13:05:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FumVeMA6ALoOZbY9k1Gx7Rm9Pbkuq+u538WjD0sj7Nk=; b=XaatppKNIFAj4n6Aw/cQF2m3Q/
	cLzNWaIRIBYMWvF8qmovB8EoS82SbBHQlLoLuBHkcvj2LkozFGiIqhlPFapfdJb5gMFNDykxioNF7
	+NZs5f/UUvp5njJYh9ygc91xdTWa3ezVWdg1yjl58iQQkR5FFsI0LAsTU/FuiTFxcGIOkwbU/kElC
	cOcZGJzt4dVvuBgoCwfyZuwxYiWpvfcC5a5vKb+dooikWiCCV6BTK+aNo5SCwBMf5ZuZnimrDiH2k
	H6CbUFQ6dpuB8adv0QkUO0WdIQEt7KJLlqs0DG0v/ktSSnUC8aS3h91XQyhfxjhT3ibR8cjP8nxQI
	x1wtL63w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLu-00000007Fbp-30UE;
	Mon, 09 Mar 2026 12:04:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLt-00000007FbK-2XYn
	for barebox@bombadil.infradead.org;
	Mon, 09 Mar 2026 12:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FumVeMA6ALoOZbY9k1Gx7Rm9Pbkuq+u538WjD0sj7Nk=; b=iK9ifFXTlyAFeRGb57OrfI+76r
	/DuOaY4/3PdaFreMyhp+wRIIo+FzJmw1vvFpscKuIDbzGZY2t2hAnay2ODTUaVYkpqFFk0hV7Olbt
	OIKlPvddQ9g8QQpUNzQtmD8LBn4wdkIgZBUZwovQ6IlKSwQ/DX6a8aPCQFe88s8ZVDiUWCA9KfHh0
	RH1DJmXdcfIRGcugdjwhdE1w4sQ5QxK9RfGToWGqF3lpvrTVCEI4FOAXJ+xO9o2x/rWCNz+y00Of3
	JDXfr/CtUGPqSyQi7t/mxrve4u9tKgMEjadwxuCy06EyrKM79JaJ8UJZ+Uv+njzXtHSSgwuT3a04D
	x+n2MjkQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZLq-0000000C4MA-3Mh3
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 12:04:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vzZLn-0000K8-AZ; Mon, 09 Mar 2026 13:04:43 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 09 Mar 2026 13:04:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-3-fcc1f327acf8@pengutronix.de>
References: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
In-Reply-To: <20260309-v2025-11-0-topic-socfpga-agilex5-sdhci-v2-0-fcc1f327acf8@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_120446_939800_1AB59D5A 
X-CRM114-Status: GOOD (  11.32  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/6] mci: sdhci: add set_uhs_signaling callback
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
index 371d3e4a4b..f7172347e1 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -471,7 +471,7 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 }
 
-static void sdhci_set_uhs_signaling(struct sdhci *host, unsigned timing)
+void sdhci_set_uhs_signaling(struct sdhci *host, unsigned int timing)
 {
 	u16 ctrl_2;
 
@@ -997,7 +997,10 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	host->mci->ios.clock = 0;
 
-	sdhci_set_uhs_signaling(host, host->mci->ios.timing);
+	if (host->mci->ops.set_uhs_signaling)
+		host->mci->ops.set_uhs_signaling(host->mci, host->mci->ios.timing);
+	else
+		sdhci_set_uhs_signaling(host, host->mci->ios.timing);
 
 	sdhci_wait_idle_data(host, NULL);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index e7c56d59f4..8d21febd7a 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -344,6 +344,7 @@ static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 }
 
 #define SDHCI_NO_DMA DMA_ERROR_CODE
+void sdhci_set_uhs_signaling(struct sdhci *host, unsigned int timing);
 int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode);
 int sdhci_wait_idle_data(struct sdhci *host, struct mci_cmd *cmd);
 int sdhci_wait_idle(struct sdhci *host, struct mci_cmd *cmd, struct mci_data *data);
diff --git a/include/mci.h b/include/mci.h
index 667829c489..7d903dec05 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -583,6 +583,7 @@ struct mci_ops {
 	int (*card_write_protected)(struct mci_host *);
 	/* The tuning command opcode value is different for SD and eMMC cards */
 	int (*execute_tuning)(struct mci_host *, u32);
+	void (*set_uhs_signaling)(struct mci_host *host, unsigned int timing);
 };
 
 /** host information */

-- 
2.52.0



