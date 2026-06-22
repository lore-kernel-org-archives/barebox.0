Delivery-date: Mon, 22 Jun 2026 09:12:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbYpo-008ZNy-2h
	for lore@lore.pengutronix.de;
	Mon, 22 Jun 2026 09:12:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wbYpo-0008HF-2a
	for lore@pengutronix.de; Mon, 22 Jun 2026 09:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=T7tuOblB8TtuAFMC9r+QmEvNiMfxGDEaL/XODCO3a8w=; b=C5f+vgbA55myVQYpoHKTGU1vai
	fQCiRuPWPxvwWnT443PHhhXAf2ZKKEtpvOLU2C0sF8T9YibFsWXMGTGueCTCkf2khaWXszpAZ25Gz
	Uy/i6t3+WrTvUtOhgokbwrTnZdvR26jky+8sfwfcTahd/yzDEdogOyB4aJAd7+Si3YKv9z0PHWQ1X
	D0DBNfqR3DFQyBNyGI23oQVg0dQRrhx6i0+4vP6mR8xCRIkXvct4gYe0vhDl12j2M87s5JXcro+Kl
	oT6lXBE0/q5Y7smc0TFF3el96AfTvaX/oSkA8Fha8GvhFzVizuowBZNab24Ej9bC5Bn0mglLErDqp
	zAGSkurA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbYoj-00000004Wnv-0Swf;
	Mon, 22 Jun 2026 07:11:37 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbYog-00000004Wn5-1njt
	for barebox@lists.infradead.org;
	Mon, 22 Jun 2026 07:11:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B97D220025B;
	Mon, 22 Jun 2026 09:11:30 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wbYoc-0042oN-2C;
	Mon, 22 Jun 2026 09:11:30 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wbYoc-00000005eGZ-2Q1s;
	Mon, 22 Jun 2026 09:11:30 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org, "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260619160915.88090-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 07:11:30 +0000
Message-Id: <E1wbYoc-00000005eGZ-2Q1s@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260622_001134_615896_159A84EB 
X-CRM114-Status: GOOD (  16.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] mci: imx-esdhc-pbl: enable ADMA2 for i.MX8M BL33 loads --
 help needed: ADMA stalls in ST_TFR despite every visible register matching
 the Linux runtime driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes,

On 2026-06-19 16:09, Johannes Schneider wrote:
> Add a generic sdhci_enable_adma() helper that lets drivers provide their =
own
> descriptor table (so PBL builds can use a static buffer without dma_alloc=
),
> gate the SDMA boundary-restart loop in sdhci_transfer_data_dma() behind
> !SDHCI_USE_ADMA, and switch the i.MX8M PBL BL33 load path to call into the
> new helper. On a working i.MX8MM board this should cut load_bl33 from
> ~645 ms (SDMA polled, restart-per-DMA-boundary) to ~140 ms (single ADMA2
> descriptor, one interrupt at completion).
>=20
> The patch builds and applies cleanly on barebox/next. On our test
> hardware (custom i.MX8MM board, USDHC3 -> eMMC) the ADMA engine fetches
> the descriptor, programs the data path, then stalls in ST_TFR
> (ADMA_ERR=3D0x3) with no progress. Looking for input from anyone who has
> either (a) shipped ADMA2 in i.MX PBL successfully, or (b) can point at
> what infrastructure the full runtime driver does on probe that PBL would
> need to replicate.
>=20
> Assisted-by: Claude:claude-opus-4-7
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.co=
m>
> ---
> RFC writeup
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Motivation
> ----------
> Current PBL i.MX8M BL33 load is SDMA-based with the SDHCI boundary-restart
> loop in sdhci_transfer_data_dma(). For a 32 KiB BL33 transfer at the defa=
ult
> 4 KiB SDMA boundary that's eight kicks-and-restarts. Measured on a custom
> i.MX8MM board:
>=20
>  Boot timeline (from power-on):
> 	 BootROM:          1 ms
> 	 PBL-init:         3 ms
> 	 DDR-training:   262 ms
> 	 PBL-load:       819 ms
> 		 PBL-pre-load:    168 ms
> 		 load_bl33:       645 ms   <--  (SDMA, ~5 MiB/s effective)
> 		 PBL-post-load:     5 ms
> 		 BL31-early:      114 ms
> 		 BL31-platform:    15 ms
> 		 BL31-runtime:     98 ms
> 			 thru-OPTEE:       98 ms
> 			 post-OPTEE:        0 ms
> 	 barebox:       5654 ms
> 	 kernel-init:    111 ms
>=20
> barebox's own runtime imx-esdhc.c driver uses ADMA2 for the same controll=
er
> and gets the FIT image off the same eMMC at expected speed. ADMA2 in PBL
> should match.

You lost me here. ADMA(2) usage is gated behind the SDHCI_USE_ADMA which
is set in sdhci_setup_adma(). Only the Rockchip driver calls this
currently, so imx-esdhc should use SDMA also in barebox proper.

So you have patches in your tree I haven't seen yet?

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


