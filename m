Delivery-date: Mon, 18 May 2026 15:14:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxnx-00194G-27
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 15:14:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxnx-0002w4-1h
	for lore@pengutronix.de; Mon, 18 May 2026 15:14:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jy1F8eKaUds9J9KTfQ0CwatA2UvAm3vlt+ykIaZ366E=; b=btZpkgeoL9q5zbWkJmHr4wayOK
	G/zPngD+2ZhxQ5JEhz2W5cHXzgewb55oS1eb9FJ1txAodCyyW91B48rEkrRoot8qA1xDB54CHrmx9
	pRLGhhK65ESv8NkoqWz9CotnBGUFQhcHuFNqPtFVJl0zUmk127ytkyURaW1HzKMElhMuFqnF6Ps1r
	pzhKTZ+EiEPWFPo76Q1GubUDJs4h34WkPTjYyP72vothpVTqwQBdfRCMoxnhYX28uOcHrxILj5bkC
	OwH9JbC9oV2eFuE8XpMSZqphygrnGxJYggcaUJWvMK+4DdOMJbWuRS2DPj9BMtGSRYubJp1NA7N0H
	d9e+Vs5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxn1-0000000FlxU-24FX;
	Mon, 18 May 2026 13:13:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxmv-0000000Flsm-0sRT
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:13:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxms-0002US-Pa; Mon, 18 May 2026 15:13:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000bPK-1q;
	Mon, 18 May 2026 15:13:38 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOxmr-000000000ZS-44v7;
	Mon, 18 May 2026 15:13:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 May 2026 15:13:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-rockchip-emmc-hs400-v2-7-789ce495f70b@pengutronix.de>
References: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
In-Reply-To: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779110017; l=1806;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cg4a7DPr26BropIJY/q/2kmMa57WSp7BD+fwh7CUAwU=;
 b=sEjGZcnNkW8gap6bYvMYw3vluLdUeGwvwfzEWPXVoBPjc9bbGkny5RaLyWVpK2P1EQ9fFA6oB
 XTaeiWSwnQaBDCPwrooLJF9NbentYgXodZ6RHP5U+zQPcWWWW1m/oJW
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_061341_274109_934BA11F 
X-CRM114-Status: GOOD (  11.83  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] mci: sdhci: rockchip: set TX-path source-select
 bit in DWCMSHC_EMMC_DLL_TXCLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux's sdhci-of-dwcmshc has, since rk3588 support was added in 2022,
unconditionally OR'd DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL
(bit 29) into the DWCMSHC_EMMC_DLL_TXCLK write that follows DLL lock
in the high-speed path. Despite its name, position 29 in this
register controls a TX-path source-select; the constant just happens
to share the SRCSEL shift with the RX path register.

Barebox was never writing this bit. The omission was harmless on
controllers where the RX path's matching write (a few lines earlier
in this function) already sets the same bit position 29 - because on
those parts both clock paths end up with a working source-select.
The bit is needed for the TX path to have a working source-select in
its own right, however; the next commit's revision split, which
correctly stops setting the RX-path bit on rk3588 silicon, would
otherwise leave the TX path with no source-select at all and break
eMMC writes.

Match Linux's behaviour: set the bit unconditionally in the TXCLK
write.

Assisted-by: Claude Opus 4.7
Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/rockchip-dwcmshc-sdhci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index 23c887e906..fa2d9964a5 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -212,6 +212,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 
 	extra = DWCMSHC_EMMC_DLL_DLYENA |
 		DLL_TXCLK_TAPNUM_FROM_SW |
+		DLL_RXCLK_NO_INVERTER << DWCMSHC_EMMC_DLL_RXCLK_SRCSEL |
 		txclk_tapnum;
 	sdhci_write32(&host->sdhci, DWCMSHC_EMMC_DLL_TXCLK, extra);
 

-- 
2.47.3



