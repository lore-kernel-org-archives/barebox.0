Delivery-date: Thu, 29 Feb 2024 16:58:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinT-00GBAo-3B
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 16:58:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinT-0003Vv-Ah
	for lore@pengutronix.de; Thu, 29 Feb 2024 16:58:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=agauh48jlAyTvOPwi5Kid/et6D9u3Xejrvng2OkYl4Q=; b=O+bhczA4vANFwKgaBKBb2KHg1g
	jlhnVMh+m5832cItYRbOyeIAc0KKiqgocuoqH912eI0Vla8/7R5f+PgMuKXxSG8BlDT2qCMu0y4PV
	AclN95sMOd6Oxlc2g8WKcFLerLeeh/iDzW/HwaGTEEN8rh7AccmPCsGBjjr0+eqrbZpYCInlPli4T
	xLyv6ydRi2N8kNU1g8gyZntBbOCwtyUB47sJMrcJQ9LLOc0X+B8I8Ve4ipQNtwWj2BJtArGmVFbmw
	9e6YzwWP5Fc8hx02JUn53yydNOBRuQGwUDkwkfCtaHWKwD5lPtW62Hj1n2zEerWtJcMRe8rR7jnwh
	fb8r/TOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimp-0000000EAGh-06pU;
	Thu, 29 Feb 2024 15:57:31 +0000
Received: from smtpout143.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimk-0000000EADB-30zi
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 15:57:28 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 97C59596EF2
	for <barebox@lists.infradead.org>; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709222242;
	bh=UsNiormco5EoSQEQAo3RIrkvAlJX+kgIscQcf/08zhQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=b/zZ2hO81xw+03jxol2glJWlkKVGBThec+RH/h4aerXL+x8ykPOG5MAmUZjsBfDOk
	 8BC5K9jM3OGWbjaQJY5xDGqf21a0h2pIRcG5Vmo385BUsPisdwP9MXdxSupWhUHJbd
	 t5oO2NT8trybmyyEwCiD6TS4iuMpBWsCZh4GSuYU=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 525845970D4; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx403.security-mail.net (Postfix) with ESMTPS id A7EA1596B5F; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 78F1D40363; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
X-Quarantine-ID: <itdPkDqct3P0>
X-Virus-Scanned: E-securemail
Secumail-id: <6141.65e0a961.a50a6.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Thu, 29 Feb 2024 16:56:58 +0100
Message-ID: <20240229155700.17443-2-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229155700.17443-1-ysionneau@kalrayinc.com>
References: <20240229155700.17443-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075726_935190_9D05868A 
X-CRM114-Status: UNSURE (   9.93  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] mci: dwcmshc-sdhci: Fix f_max computation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

f_max was possibly set from max-frequency DT property
by mci_of_parse() and then overwritten few lines later
with the clock frequency, making it impossible to
reduce the clock frequency from DT.

Move the call to mci_of_parse() after the first assignment
to f_max.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>

---
 drivers/mci/dwcmshc-sdhci.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 7cc6fe3f18..d9c51752db 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -316,12 +316,17 @@ static int dwcmshc_probe(struct device *dev)
 	mci->send_cmd = dwcmshc_mci_send_cmd;
 	mci->card_present = dwcmshc_mci_card_present;
 
-	mci_of_parse(&host->mci);
-
 	sdhci_setup_host(&host->sdhci);
 
 	mci->max_req_size = 0x8000;
+	/*
+	 * Let's first initialize f_max to the DT clock freq
+	 * Then mci_of_parse can override if with the content
+	 * of the 'max-frequency' DT property if it is present.
+	 * Then we can finish by computing the f_min.
+	 */
 	mci->f_max = clk_get_rate(clk);
+	mci_of_parse(&host->mci);
 	mci->f_min = mci->f_max / SDHCI_MAX_DIV_SPEC_300;
 
 	dev->priv = host;
-- 
2.43.0







