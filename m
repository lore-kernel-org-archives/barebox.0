Delivery-date: Wed, 01 Oct 2025 16:06:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3xTn-0039w8-0C
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 16:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3xTm-0005GW-GD
	for lore@pengutronix.de; Wed, 01 Oct 2025 16:06:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AtlRcn4kCxNcoKlAX6BjqCG2UoIic1GXbZzP5O2bSXY=; b=RWYhoSncnA6deluL3f1NyzRmld
	XOopJo+A4W7/QU1KGE69HEtOOoj2VvOPEIzrqQpq/ntOzcA6VArwr0ppPtoA8UMlX9b3Ee4t0lbiT
	LWw1xXS6U07+tTijh1ygweZj7CpqvmRnw2xTi9mYWzpyleq3l4gHwHLZeFuxLnxHVfQaC6vvslg+T
	htbqAPMGTLzhxtTimdh/nhsX3QA2NXPL3BsL/qqAoyionDWk+162r98x2xTCAyRFlqtXMtDbz2QI9
	DJVW9E0mFzXhzub4sKKW0s9U/KoPMpuAcihmpewLl9lVTx0gkSI0oUlpav5fs5T9pfO5GG8yb5kyU
	oVtXGPwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3xT5-000000087bb-1OWh;
	Wed, 01 Oct 2025 14:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3xT3-000000087a7-0cnp
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 14:06:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1v3xSz-000540-Sh; Wed, 01 Oct 2025 16:06:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1v3xSz-001QLc-2E;
	Wed, 01 Oct 2025 16:06:01 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1v3xSz-006YnL-1u;
	Wed, 01 Oct 2025 16:06:01 +0200
Date: Wed, 1 Oct 2025 16:06:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aN01SY3mFJVfdf2X@pengutronix.de>
References: <20250929135857.965181-1-eagle.alexander923@gmail.com>
 <20250929135857.965181-2-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250929135857.965181-2-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_070605_186066_CC25414A 
X-CRM114-Status: GOOD (  16.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Set CPLL frequency for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Mon, 29 Sep 2025 16:58:57 +0300, Alexander Shiyan wrote:
> Explicitly configure CPLL frequency to 1500 MHz to ensure system
> stability and reliable operation.
> The change aligns with Rockchip's recommended practices for clock
> configuration in embedded systems using RK3588 SoCs.

This change breaks eMMC operation in barebox on ROCK 5T boards. I get
the following alert during barebox boot:

	ALERT: rk3568-dwcmshc-sdhci fe2e0000.mmc@fe2e0000.of: DMA wait timed out. Resetting, but recovery unlikely
	WARNING: mmc0: Card's startup fails with -110

I fumbled a bit with the clocks, especially the aclk_emmc, but no
improvement so far.

Michael

> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/dts/rk3588.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
> index 416700cf0e..42d692a9bd 100644
> --- a/arch/arm/dts/rk3588.dtsi
> +++ b/arch/arm/dts/rk3588.dtsi
> @@ -1,6 +1,9 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
>  / {
> +	assigned-clocks = <&cru PLL_CPLL>;
> +	assigned-clock-rates = <1500000000>;
> +
>  	dmc: memory-controller {
>  		compatible = "rockchip,rk3588-dmc";
>  		rockchip,pmu = <&pmu1grf>;


