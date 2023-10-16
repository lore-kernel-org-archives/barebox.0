Delivery-date: Mon, 16 Oct 2023 07:47:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsGRX-00AEGX-1l
	for lore@lore.pengutronix.de; Mon, 16 Oct 2023 07:47:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsGRU-0006Pq-QP
	for lore@pengutronix.de; Mon, 16 Oct 2023 07:47:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MENA0qg8M7vrJoy5xCX8x5DZw6CgIuT8j3MPRD2y7UE=; b=TrxQCWqFb1srzljQjyz9jPNppz
	cpLRF+p4aHWRNfKsELSCgYiHuXp3RolwXol1+7IHlHhbM+4jo4UC9KvmMCOdPRaUpVLhpZinysMmD
	QfV2LZM5/5FPZy3T89X7aa7PSy0TiJXVEd4j68l+v3A08QpSnR7H0C68Azbd0jvnDtI2notu00tnz
	s2W0CbJeQUpxLEzC1DkdKHU6jIgwqe/TT8aJlwZY3KMjttvFB1W/mLu6q8TlA8rdI3MQwyjRYFIS7
	OmIfgI7/U8txu2EJfMwIzP7X1A2rLmwBbSIoBHU7SDpcGAJKkysOmeT8ALOA6H+JtfU+3WQumw8/D
	WjgwQJww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsGQK-008QGP-1w;
	Mon, 16 Oct 2023 05:45:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsGQH-008QFK-0w
	for barebox@lists.infradead.org;
	Mon, 16 Oct 2023 05:45:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGQG-0006Bp-2W; Mon, 16 Oct 2023 07:45:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGQF-0020kU-MN; Mon, 16 Oct 2023 07:45:47 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qsGQF-00EgMp-KA; Mon, 16 Oct 2023 07:45:47 +0200
Date: Mon, 16 Oct 2023 07:45:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231016054547.aqohhitkpsc54icp@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-15-m.felsch@pengutronix.de>
 <20231013063759.GL3359458@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231013063759.GL3359458@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231015_224549_329640_2F471BD4 
X-CRM114-Status: GOOD (  28.14  )
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

On 23-10-13, Sascha Hauer wrote:
> On Tue, Oct 10, 2023 at 04:33:02PM +0200, Marco Felsch wrote:
> > Extend the CSF area to be able two store two CSF slots. The 2nd CSF slot
> > is required in case of FlexSPI HAB boot support. The first slot is used
> > for the MMC-IVT + barebox-pbl; the 2nd slot is used for the FlexSPI-IVT
> > + barebox-pbl. This is necessary because of the fact that the HAB ROM
> > code requires that the IVT is signed as well.
> > 
> > Use the CONFIG_SPI_NXP_FLEXSPI Kconfig symbol to decide if we need to
> > add the support for FlexSPI image signatures as well since early SRAM
> > space is limited and 4K can make a difference here.
> > 
> > Please check the documentation for a more detailed information about the
> > i.MX8M image layout.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/lib/pbl.lds.S | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> > index 898d6be33b54..9ab6d22eb59d 100644
> > --- a/arch/arm/lib/pbl.lds.S
> > +++ b/arch/arm/lib/pbl.lds.S
> > @@ -12,7 +12,11 @@
> >  #define BASE	(TEXT_BASE - SZ_2M)
> >  #endif
> >  
> > +#ifdef CONFIG_SPI_NXP_FLEXSPI
> > +#define HAB_CSF_LEN	0x4000
> > +#else
> >  #define HAB_CSF_LEN	0x2000
> > +#endif
> 
> No. Enabling/Disabling the FlexSPI driver shouldn't influence the image
> layout.
> 
> Having the driver enabled doesn't necessarily mean you want to use it
> for booting. Having the driver disabled doesn't necessarily mean you are
> *not* booting from it.

You're right, it's a bit to simple. I will rework that.

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


