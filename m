Delivery-date: Tue, 20 Feb 2024 10:32:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTt-00Fqhx-2I
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 10:32:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcMTo-0002k0-FX
	for lore@pengutronix.de; Tue, 20 Feb 2024 10:32:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WCe2ca+8op0ohfr1N6XQ6RaLP7TI/kwRFH0pV6CsmzQ=; b=tOT9rm7yoQCIkIkauJG6ZWJ9mF
	xPcs1aCKKfS+VzCRpyafAyUISt6LHITwKVASFYuktNgh8wl0cTFBGegOhtsKsDHWOqosvycSc2bXk
	nnV8TlE9tN+ZlxMi0XQAbfcJvd78jYB4nmYxYbu7vk1/3g2NoaP5pga0+TGx8gUW9t4thiM/souJf
	7HZTF70hU2XalpaS79H/l0ujF6yg84YrCKQf0FnHd/DMaeVumi4uNS1NZWV2rbxLuFmx0WCtqTMoM
	OQF9oPYbUpLcKyTWDN6uC9rjqVOsTyLGuL+RTd+BlleHInu4PGkf04tFM0NaKMAJGpSNSwpogWXr3
	DKICAYUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT4-0000000Dzs8-23il;
	Tue, 20 Feb 2024 09:31:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcMT0-0000000Dzo6-048s
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 09:31:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-0002F0-N2; Tue, 20 Feb 2024 10:31:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-001ohn-42; Tue, 20 Feb 2024 10:31:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcMSy-006TH7-07;
	Tue, 20 Feb 2024 10:31:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 10:30:47 +0100
Message-Id: <20240220093100.1539120-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
References: <20240220093100.1539120-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_013110_108883_E69017C5 
X-CRM114-Status: GOOD (  11.79  )
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
Subject: [PATCH v4 01/14] mci: atmel_mci: disable power save mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Power saving mode will clock down the MCI clock according to the value
of the PWSDIV (Power Saving Divider) field of the mode register.

No where in Linux or barebox do we set a value for PWSDIV however, so
the safe thing to do is disabling power saving mode.

This aligns barebox with what AT91Bootstrap and the U-Boot driver are
doing and fixes SD-Card block write failures when using barebox as first
stage bootloader on the AT91SAM9263.

Without this change, writing the environment would fail in barebox,
an ext4 fsck in Linux would hang and barebox PBL chainloading of barebox
proper would hang when CONFIG_DEBUG_PBL is disabled.

Fixes: 6cf02124b10d ("mci: add Atmel AT91 MCI driver")
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel_mci.c     | 1 +
 drivers/mci/atmel_mci_pbl.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 431331ddc310..9021dba0f89b 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -151,6 +151,7 @@ static int atmci_probe(struct device *hw_dev)
 
 	clk_enable(host->clk);
 	atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_PWSDIS);
 	atmci_writel(host, ATMCI_IDR, ~0UL);
 	host->bus_hz = clk_get_rate(host->clk);
 	clk_disable(host->clk);
diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index 7483e9375f1d..bd4faa4de5f0 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -106,6 +106,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 	else
 		host->sdc_reg = ATMCI_SDCSEL_SLOT_A;
 
+	atmci_writel(host, ATMCI_CR, ATMCI_CR_PWSDIS);
 	atmci_writel(host, ATMCI_DTOR, 0x7f);
 
 	atmci_common_set_ios(host, &ios);
-- 
2.39.2



