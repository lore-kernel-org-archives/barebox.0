Delivery-date: Fri, 13 Oct 2023 08:39:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrBpR-006kU8-GL
	for lore@lore.pengutronix.de; Fri, 13 Oct 2023 08:39:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qrBpP-0002yy-9U
	for lore@pengutronix.de; Fri, 13 Oct 2023 08:39:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jGHhz1q11kVTp2RREJiytde52E1CccV3z8gvpvQIT3o=; b=BS2zbZccPslcJ63TkgUX/9FOEM
	B2WNoJxLsps4kjRjdGrtO1VpJqt6IS5lFSOSbZHzCz15AjL6XNRhwgLEv7KB6BeVxxpMAQ6w7fccU
	bMYtE/j1BPi185GH8zdY03ePiaFY/khTW0CAxJYQpw91KWoFSqUZIbx9YVsYMmzhp2PM2ZAmLPweS
	yXj1LmWYssTOI9PhsTvaWGCMwyaLxUbs739zwohsip49rqGFSIO/PHfXlTOrqpkxeNGHT49ebP4EM
	kVtDVfY/MWREPG3QExwXGUaHqV+yQaSs2AFC0gdqLsCW5wsH0QQF56MmYN1niUfox96h2nXy/BmOP
	CFbSPVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBoD-002bZn-0m;
	Fri, 13 Oct 2023 06:38:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrBo9-002bYs-2Y
	for barebox@lists.infradead.org;
	Fri, 13 Oct 2023 06:38:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBo8-0002r4-D5; Fri, 13 Oct 2023 08:38:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBo8-001Kld-0g; Fri, 13 Oct 2023 08:38:00 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrBo7-00EEF8-Uf; Fri, 13 Oct 2023 08:37:59 +0200
Date: Fri, 13 Oct 2023 08:37:59 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231013063759.GL3359458@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-15-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010143314.2031253-15-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_233801_827724_1BE30929 
X-CRM114-Status: GOOD (  26.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/26] ARM: lds: add support for a 2nd CSF area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 10, 2023 at 04:33:02PM +0200, Marco Felsch wrote:
> Extend the CSF area to be able two store two CSF slots. The 2nd CSF slot
> is required in case of FlexSPI HAB boot support. The first slot is used
> for the MMC-IVT + barebox-pbl; the 2nd slot is used for the FlexSPI-IVT
> + barebox-pbl. This is necessary because of the fact that the HAB ROM
> code requires that the IVT is signed as well.
> 
> Use the CONFIG_SPI_NXP_FLEXSPI Kconfig symbol to decide if we need to
> add the support for FlexSPI image signatures as well since early SRAM
> space is limited and 4K can make a difference here.
> 
> Please check the documentation for a more detailed information about the
> i.MX8M image layout.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/lib/pbl.lds.S | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index 898d6be33b54..9ab6d22eb59d 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -12,7 +12,11 @@
>  #define BASE	(TEXT_BASE - SZ_2M)
>  #endif
>  
> +#ifdef CONFIG_SPI_NXP_FLEXSPI
> +#define HAB_CSF_LEN	0x4000
> +#else
>  #define HAB_CSF_LEN	0x2000
> +#endif

No. Enabling/Disabling the FlexSPI driver shouldn't influence the image
layout.

Having the driver enabled doesn't necessarily mean you want to use it
for booting. Having the driver disabled doesn't necessarily mean you are
*not* booting from it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


