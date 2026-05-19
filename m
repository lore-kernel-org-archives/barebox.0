Delivery-date: Tue, 19 May 2026 09:46:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPF9p-001QP3-2A
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 09:46:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPF9p-0005XV-26
	for lore@pengutronix.de; Tue, 19 May 2026 09:46:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+N9G5pphlIPaNNzndiOM4VC2HyxifE7QE91lPom6bI=; b=2GZWezXuZ3X5Ael3wxqqThUQyc
	koFEoe6nwnsWAJ60nUFNu3X/dCfTBYCeEJRv0/ALtSNicVzD6fjlz5TXXn8Mdc0rfd+rUXgQM0GN1
	Ee62RS7yO4lbVdjFipJwzP6qY4DeQa+SjbUD8+1gSNaHbICg9ihdCfMNHjq8cj03U+Ae7PYLzb6zt
	O+RE3/EaeeV4nJqixYmtzY441GB3gqjZppj4FBSy/bV+ITV2INtGgpsW+g+iJM5wKrRRsUf84U0tp
	55V5GJ2HcOp5+XKDNtWRtNKpLoqC7sBjP8Wv1Rxv5TymfHj5TLzRFYl2b+3X1caZ3LA2CzzRJGdSU
	J7327HIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDki-00000000IQt-3uas;
	Tue, 19 May 2026 06:16:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDkg-00000000IQH-3PlA
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 06:16:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDke-0003LW-S9; Tue, 19 May 2026 08:16:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDke-000iTD-0o;
	Tue, 19 May 2026 08:16:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPDke-00000002BsC-3C6Q;
	Tue, 19 May 2026 08:16:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
References: <20260518-rockchip-emmc-hs400-v2-0-789ce495f70b@pengutronix.de>
Message-Id: <177917138475.522271.9701069128592946571.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 08:16:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_231626_860623_013B7BB8 
X-CRM114-Status: UNSURE (   8.49  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] mci: rockchip-dwcmshc: add HS400(ES) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 15:13:35 +0200, Sascha Hauer wrote:
> Based on the previous series to add HS200 support for the Rockchip SDHCI
> controller this series now adds core support for HS400(ES) and also
> Rockchip support for HS400(ES). As expected the speed gain isn't that
> dramatic anymore, but it still goes up from 120MB/s to 170MB/s on reads.
> Write is at about 22MB/s.
> 
> Tested on a Radxa Rock 5T.
> 
> [...]

Applied, thanks!

[01/10] mci: sdhci: define VDD_180 and shrink UHS_MASK to bits 0..2
        https://git.pengutronix.de/cgit/barebox/commit/?id=5aafa0d8c5f6 (link may not be stable)
[02/10] mci: mmc_send_tuning: actually point data.dest at the buffer
        https://git.pengutronix.de/cgit/barebox/commit/?id=ceddbdd150cc (link may not be stable)
[03/10] mci: sdhci: add ADMA2 descriptor helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=1f2caa910e30 (link may not be stable)
[04/10] mci: add HS400 mode selection
        https://git.pengutronix.de/cgit/barebox/commit/?id=f2cb02fc0730 (link may not be stable)
[05/10] mci: add HS400 Enhanced Strobe (HS400ES) selection
        https://git.pengutronix.de/cgit/barebox/commit/?id=7ee07905c13e (link may not be stable)
[06/10] mci: rockchip-dwcmshc-sdhci: use ADMA2
        https://git.pengutronix.de/cgit/barebox/commit/?id=62b36a4bb9cd (link may not be stable)
[07/10] mci: sdhci: rockchip: set TX-path source-select bit in DWCMSHC_EMMC_DLL_TXCLK
        https://git.pengutronix.de/cgit/barebox/commit/?id=ba18f076cde6 (link may not be stable)
[08/10] mci: sdhci: rockchip: distinguish IP revision 0 (rk3568) from 1 (rk3576/rk3588)
        https://git.pengutronix.de/cgit/barebox/commit/?id=03fb27bd3ffc (link may not be stable)
[09/10] mci: sdhci: rockchip: support HS400
        https://git.pengutronix.de/cgit/barebox/commit/?id=bdf08df24ce2 (link may not be stable)
[10/10] mci: sdhci: rockchip: support HS400 Enhanced Strobe
        https://git.pengutronix.de/cgit/barebox/commit/?id=817026a8cce0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



