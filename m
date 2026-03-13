Delivery-date: Fri, 13 Mar 2026 15:48:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13oM-000F5X-2b
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:48:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13oM-00006Q-5I
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:48:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OCEQmjEzmBEjFURiXm89/cC1/0BLLQXwbv5vfKd86T4=; b=qEEbNXCyxCdVQ6IhdbdHqGHA3a
	B2GmFtFrMsRQUebZ4T5RiM09m+Cq1ozS08yAGb4t2GrhXGyqbCQlKriIfFMXPQdZQj6YCSRrEbgcH
	CoUqL0eyyX/SODPi4FfWKlKtAxGgNpK/LCNQZARb56LHYebiR/q4A9EhJntnf7DSQYgVu2Dr75VTC
	2G6BFaDJSsRjLztb5ZoYqraf1ucqCN/chI0GhV9fxVxGdep2lxs8jHT1fBgg9CPocB4BcKry/6GqF
	LA1KYHCApvYENlDzATwxmCfA1g1/2h1zxxNxG37CUsdErY6tjMl3oheWxyih0nZE5/YxrglOkOQyQ
	EJ7ps6pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13nu-00000000RKq-10Ko;
	Fri, 13 Mar 2026 14:47:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13nr-00000000RH5-3oVM
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:47:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1w13nq-0008OI-1c; Fri, 13 Mar 2026 15:47:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1w13np-00062g-2b;
	Fri, 13 Mar 2026 15:47:49 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1w13np-0000000HFYu-2zD9;
	Fri, 13 Mar 2026 15:47:49 +0100
Date: Fri, 13 Mar 2026 15:47:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
	David Jander <david@protonic.nl>
Message-ID: <abQjlVOqCKtL3RZA@pengutronix.de>
References: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-v2026-02-0-topic-imx8-ecc-v3-0-ffdf97760441@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_074751_947869_24FB5298 
X-CRM114-Status: GOOD (  23.72  )
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
Subject: Re: [PATCH v3 0/4] ARM: i.MX8: add DDRC-ECC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Steffen,

This doesn't apply cleanly. Could you rebase on master?

Sascha

On Wed, Mar 11, 2026 at 09:38:13AM +0100, Steffen Trumtrar wrote:
> The i.MX8 DDRC controller supports using inline ECC with the DDR RAM.
> Inline ECC reduces the usable RAM size by 1/8: 7/8 RAM is for data and
> 1/8 RAM is for the ECC bits. Also, measuring random memory writes in
> linux with
> 
>     stress-ng --memthrash 4 --memthrash-method chunk1 -t 1m --metrics
> 
> shows a performance decrease by ~10%.
> 
> If a board wants to support ECC, the lpddr4 RAM settings in the
> according lpddr4-timing-* must be adapted to enable and configure the
> ECC registers.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes in v3:
> - move timing struct to own noinline function
> - rename dram_timing_info->size -> dram_timing_info->ecc_full_size
> - replace #ifdef with IS_ENABLED
> - add defines for ECC_STRIDE/INLINE/SCRUB_SIZE
> - remove imx8mq-ddrc, only quad x plus has ecc
> - Fix kconfig text
> - Link to v2: https://lore.barebox.org/20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de
> 
> Changes in v2:
> - prt8ml: move ram timings to header
> - prt8ml: build two images: with and without ecc
> - add RAM size and scrubbing function to generic code
> - Link to v1: https://lore.barebox.org/20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de
> 
> ---
> David Jander (3):
>       arm: mach-imx: esdctl.c: Add support for imx8mp inline ECC
>       drivers: ddr: imx8m: ddr_init.c: support ECC scrubbing
>       arm: boards: protonic-imx8ml: Add ECC + scrubbing
> 
> Steffen Trumtrar (1):
>       ARM: i.MX: esdctl: fix spelling of ad(d)ress
> 
>  arch/arm/boards/protonic-imx8m/Makefile            |    2 +-
>  arch/arm/boards/protonic-imx8m/lowlevel-prt8ml.c   |   29 +-
>  .../protonic-imx8m/lpddr4-timing-prt8ml-ecc.c      |   26 +
>  .../boards/protonic-imx8m/lpddr4-timing-prt8ml.c   | 1100 +------------------
>  .../boards/protonic-imx8m/lpddr4-timing-prt8ml.h   | 1123 ++++++++++++++++++++
>  arch/arm/dts/imx8mp-prt8ml.dts                     |   10 +-
>  arch/arm/mach-imx/Kconfig                          |   11 +
>  arch/arm/mach-imx/esdctl.c                         |   86 +-
>  drivers/ddr/imx/imx8m_ddr_init.c                   |   96 ++
>  images/Makefile.imx                                |    2 +
>  include/soc/imx/ddr.h                              |    1 +
>  include/soc/imx8m/ddr.h                            |    2 +
>  12 files changed, 1376 insertions(+), 1112 deletions(-)
> ---
> base-commit: f4122cb473bf8ca2d3d84cf7cd3c981d1da3309f
> change-id: 20260304-v2026-02-0-topic-imx8-ecc-9206fee1f037
> 
> Best regards,
> -- 
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


