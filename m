Delivery-date: Wed, 07 May 2025 11:27:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3p-0035Wk-0q
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3o-0006LS-AU
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IZzOV4yyokfrt1HBvkIPljfuoyAuzAUkaIBALkF/NKk=; b=NC+15azhBfAkJWsSaGcUhbVwfJ
	DMVtsC7PAP2irEveDb8u5D0oU9+vlxNubja1d3+j+Ul1FsinlV6gPQJb4BV+p7Icc7RHqUCC6HyVA
	bqzUhUnrAgSkaVVZfj6MkED93HI+AY//Si6UzQnDtmeFr+wtOUS4fCxsuSaUnbFErznbaRBFtC+3F
	FKR5dRHAkuK6yRuDcaKHTHLcertkFFSzyDq2eS5ReUEJuioA1pNmcs2bnmXB4DzysnDr6X5SrYhla
	suooI4vttOzzb9934DN9pSU9i/4pcx0M6p19uYHpBeSeOmT2GqWT4Sc9hl1mDsNS34luAbmSszClH
	rsTulejA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3H-0000000Ewue-3vpA;
	Wed, 07 May 2025 09:26:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFN-0000000ElqG-3umR
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IZzOV4yyokfrt1HBvkIPljfuoyAuzAUkaIBALkF/NKk=; b=WgqJeKMPtlitBwT8RudJq1JXpp
	czV28jjxH3eQYV01ifAib6hvJS3Vk9eMGTmfkdR+DsM55WKVzuRGzUI6d2jpomqE+F442FS/OuOMZ
	BWaA0zyPqBWqnmbQbFjKB/3rILzr08HXJO+fv3gQccKnZmualfp0zh7gm7CThS3VKgIZLMmkTkfU0
	6Ss8wBnADF+howj6mMKaxsZxAaAENVXJhSmhjb4YrJ8v4rgNkn/klLLaifftwWjcfBJhodUodRwHH
	TZpx1oEe/3mJUJbrullXEc1fiudxPCSDMWcwFQQtkGRfzI9F23x1yRIWrLPpJLSnq3jhrwm2sXlS3
	iq62q+UA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFG-0000000FoIm-0n1I
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003xT-HN; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001WuU-0x;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-2k;
	Wed, 07 May 2025 10:22:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:22:06 +0200
Message-Id: <20250507082209.3289972-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093514_440901_E00BD7E5 
X-CRM114-Status: GOOD (  11.75  )
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
Subject: [PATCH v2 27/30] mci: imx-esdhc: set burst_length_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux writes this register unconditionally for all usdhc. As we didn't
seem to be hurt by its lack so far, we will set it only when
tuning support is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2bdd1532fe74..00b7e0693fcc 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -347,6 +347,21 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 	    (host->socdata->flags & ESDHC_FLAG_STD_TUNING)) {
 		u32 tmp;
 
+		/*
+		 * ROM code will change the bit burst_length_enable setting
+		 * to zero if this usdhc is chosen to boot system. Change
+		 * it back here, otherwise it will impact the performance a
+		 * lot. This bit is used to enable/disable the burst length
+		 * for the external AHB2AXI bridge. It's useful especially
+		 * for INCR transfer because without burst length indicator,
+		 * the AHB2AXI bridge does not know the burst length in
+		 * advance. And without burst length indicator, AHB INCR
+		 * transfer can only be converted to singles on the AXI side.
+		 */
+		sdhci_write32(&host->sdhci, SDHCI_HOST_CONTROL,
+			      sdhci_read32(&host->sdhci, SDHCI_HOST_CONTROL)
+			| ESDHC_BURST_LEN_EN_INCR);
+
 		/* disable DLL_CTRL delay line settings */
 		sdhci_write32(&host->sdhci, ESDHC_DLL_CTRL, 0x0);
 
-- 
2.39.5



