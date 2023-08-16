Delivery-date: Wed, 16 Aug 2023 11:41:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD21-0066cY-W7
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 11:41:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWD20-0001QR-2n
	for lore@pengutronix.de; Wed, 16 Aug 2023 11:41:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rMOMfbUwugmB5l4CC2V/h41pDuMtmdRFbXww28YHKgE=; b=PEfvwCuv7R+9lJgBVh0/e8A0mE
	QFzBiA7NiAame508h3IsM/gXL91yKLSx08/OYDvA9bJdC2RfHf/tRxMxMdhfpKfHvWc7IGT4AAthT
	Vhi9PIim1wknWIF9MG3WdD4zPA0Tami6ZcsIyw1u/Mx6Ax3B131FevwbNmvbiUeZe7oiwfzC92RZj
	TI55QjUfXA8k6h9yXSt/JrVGwk9/MFxNYJ5NXPb4wI1LSlatsPxqQ8oLgGAFkduqmnv32U3yRCJCE
	rUQuF69oqqokMyFRdNnoI8GGI0GRiM6AB8ZtAZj04wu/gbF1yKtMrQuaO8fWT1W3OYFb8aEvbXyIE
	7JhNOuKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD14-003cv1-0M;
	Wed, 16 Aug 2023 09:40:38 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWD0y-003cq2-30
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 09:40:34 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A343340011;
	Wed, 16 Aug 2023 09:40:28 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 16 Aug 2023 11:39:42 +0200
Message-ID: <20230816093945.19974-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816093945.19974-1-jmaselbas@kalray.eu>
References: <20230816093945.19974-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_024033_107967_AD460830 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/7] mci: sdhci: Add sd host v4 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mci/sdhci.c | 21 +++++++++++++++++++++
 drivers/mci/sdhci.h |  2 ++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index a980e34314..bce4ff2a14 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -480,6 +480,24 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 	sdhci_enable_clk(host, clk);
 }
 
+static void sdhci_do_enable_v4_mode(struct sdhci *host)
+{
+	u16 ctrl2;
+
+	ctrl2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+	if (ctrl2 & SDHCI_CTRL_V4_MODE)
+		return;
+
+	ctrl2 |= SDHCI_CTRL_V4_MODE;
+	sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl2);
+}
+
+void sdhci_enable_v4_mode(struct sdhci *host)
+{
+	host->v4_mode = true;
+	sdhci_do_enable_v4_mode(host);
+}
+
 void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 			const u32 *caps, const u32 *caps1)
 {
@@ -497,6 +515,9 @@ void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 
 	sdhci_reset(host, SDHCI_RESET_ALL);
 
+	if (host->v4_mode)
+		sdhci_do_enable_v4_mode(host);
+
 	of_property_read_u64(np, "sdhci-caps-mask", &dt_caps_mask);
 	of_property_read_u64(np, "sdhci-caps", &dt_caps);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 50179de0e6..1f5d0564fc 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -201,6 +201,7 @@ struct sdhci {
 
 	enum mci_timing timing;
 	bool preset_enabled; /* Preset is enabled */
+	bool v4_mode;		/* Host Version 4 Enable */
 
 	unsigned int quirks;
 #define SDHCI_QUIRK_MISSING_CAPS		BIT(27)
@@ -279,6 +280,7 @@ u16 sdhci_calc_clk(struct sdhci *host, unsigned int clock,
 		   unsigned int *actual_clock, unsigned int input_clock);
 void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_clock);
 void sdhci_enable_clk(struct sdhci *host, u16 clk);
+void sdhci_enable_v4_mode(struct sdhci *host);
 int sdhci_setup_host(struct sdhci *host);
 void __sdhci_read_caps(struct sdhci *host, const u16 *ver,
 			const u32 *caps, const u32 *caps1);
-- 
2.41.0



