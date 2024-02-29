Delivery-date: Thu, 29 Feb 2024 16:58:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinT-00GBAn-35
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 16:58:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfinT-0003Va-8C
	for lore@pengutronix.de; Thu, 29 Feb 2024 16:58:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GFyBanayqNF6Co14gi/ja3h0C3CN4VhYyphOcJU81no=; b=nhs7yjSwtx/An2+DSQ9L/LrL99
	YtuD8IoyeK5dDxzxAGE0ky0iCso4rcDJtWtFELZPZSpEci6VHLeJoXHifJrbBC23ZeFQ/Fr0JzI0x
	LKq16ebR8yXsnWnX89y92ghFLoJhyK70A1tmv3X6ReHg6g4fBgSFQtOkK9wIoiwfTiqwcPIcmTCCP
	8s+HSI9vUOpXWjhTrUUEVLKZnMNZ7/orBiZXcNOErU16rbEZiPdJMKy5KR8xGaUKtwu0sn1K1nmJl
	iiVWXRB9rNraOraS8/vZEKNPEkQWh8wnEzmkw4vNZFAANuTksce9mpOu4nQkj0koSCrxY26Pq1qbJ
	QN8mJISQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimt-0000000EAJC-3x2l;
	Thu, 29 Feb 2024 15:57:35 +0000
Received: from smtpout143.security-mail.net ([85.31.212.143])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfimk-0000000EADC-343z
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 15:57:29 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id BBC2F5972B7
	for <barebox@lists.infradead.org>; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1709222242;
	bh=j09feZcylw1+PQR+N3kuI1KXVIfc6p8xQ20lfPD9Jc8=;
	h=From:To:Cc:Subject:Date;
	b=Qsu9BTuGyWmjbon420AUZwDGNB8eBiV4ufdM7ls7bZp5LoKRDlN3lss1FzVsquclx
	 gEP7KormlmbvBO4BkOITerVMKv84klfflKij6E492HW5gD4rbAUzsRLdnjAiFNY9fw
	 n3bg+OwoX/amffPUwBqBJzCr1XzKn/3mVXEOTpkE=
Received: from fx403 (localhost [127.0.0.1]) by fx403.security-mail.net
 (Postfix) with ESMTP id 75B90596F2F; Thu, 29 Feb 2024 16:57:22 +0100 (CET)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx403.security-mail.net (Postfix) with ESMTPS id AC2B259750F; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPSA id 6BD3740354; Thu, 29 Feb
 2024 16:57:21 +0100 (CET)
X-Quarantine-ID: <UHYFxXrBk9s9>
X-Virus-Scanned: E-securemail
Secumail-id: <6283.65e0a961.aa7f2.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: Jonathan Borne <jborne@kalrayinc.com>, Julian Vetter
 <jvetter@kalrayinc.com>, Jules Maselbas <jmaselbas@zdiv.net>, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Thu, 29 Feb 2024 16:56:57 +0100
Message-ID: <20240229155700.17443-1-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075726_964856_7935D9AB 
X-CRM114-Status: UNSURE (   8.06  )
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
Subject: [PATCH 1/4] mci: dwcmshc-sdhci: Remove superfluous call to
 sdhci_enable_v4_mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sdhci_enable_v4_mode is already called from dwcmshc_mci_init which is
always called before using the controller from mci-core.c

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>

---
 drivers/mci/dwcmshc-sdhci.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mci/dwcmshc-sdhci.c b/drivers/mci/dwcmshc-sdhci.c
index 6ccf195eac..7cc6fe3f18 100644
--- a/drivers/mci/dwcmshc-sdhci.c
+++ b/drivers/mci/dwcmshc-sdhci.c
@@ -318,8 +318,6 @@ static int dwcmshc_probe(struct device *dev)
 
 	mci_of_parse(&host->mci);
 
-	/* Enable host_version4 */
-	sdhci_enable_v4_mode(&host->sdhci);
 	sdhci_setup_host(&host->sdhci);
 
 	mci->max_req_size = 0x8000;
-- 
2.43.0







