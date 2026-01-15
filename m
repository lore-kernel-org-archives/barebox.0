Delivery-date: Thu, 15 Jan 2026 16:20:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgP9P-001dek-1I
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 16:20:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgP9O-00038f-8l
	for lore@pengutronix.de; Thu, 15 Jan 2026 16:20:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cGIMviF8wqj4NiqGxopxVC5FQubRyqOF4E7cEmRuv6Q=; b=NC6qmIc7h6tCusuj3ln1CZDZi1
	o/jAdo65nIF9ZSxYj6ksIRC6JaptyAJBnvo6RU3WQfjDc3H95h/hKCUTJrQeb2IVf6mBuH1dUSp5J
	re7EcZedROYdkhDm1mqJ6ZTHhF57Q7DLWwo2G443WKkgwt169ziLwBn9CL06m1jYAdFjRXWdyHnqV
	Mo6U5ivVPZ4ERaUD+P9dzgJ0LhG0EgKGZJPwhsyQ7AsSz4CF0BE8829fWcVYTQ6UsETQwzxMDEHP7
	uB4ayzlNLmGlM77Kx+qF7wIHjqIUKldFppDTrZyYbuRUesuxiqFqi2Nw6d43+jQEg0g5z/75c8NR9
	OWFc11iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgP8g-0000000CZwb-2ba1;
	Thu, 15 Jan 2026 15:19:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgP8d-0000000CZvk-37g7
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 15:19:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vgP8b-00030v-TZ; Thu, 15 Jan 2026 16:19:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vgP8c-000m5n-1H;
	Thu, 15 Jan 2026 16:19:53 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vgP8b-00Dgso-1u;
	Thu, 15 Jan 2026 16:19:53 +0100
Date: Thu, 15 Jan 2026 16:19:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260115151953.ufmzak6ax57q37sy@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-20-8f0625ac5471@pengutronix.de>
 <aRrnxjr_iL3mCKZa@pengutronix.de>
 <c0aeacd1-8b11-4f98-ba8a-dd4af0d6e333@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c0aeacd1-8b11-4f98-ba8a-dd4af0d6e333@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_071955_808824_3A218869 
X-CRM114-Status: GOOD (  40.90  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 20/23] ARM: i.MX8M: Add support to extract OP-TEE
 provided informations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-15, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/17/25 10:15 AM, Sascha Hauer wrote:
> > On Mon, Nov 10, 2025 at 09:35:00PM +0100, Marco Felsch wrote:
> >> Extract the OP-TEE overlay fragements information into a dedicated
> >> overlay buffer and add the handoff data on success. The handoff data is
> >> used by next commit.
> >>
> >> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >> ---
> >>  arch/arm/mach-imx/esdctl.c | 40 ++++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 40 insertions(+)
> >>
> >> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> >> index 964d438e3f3433332e351d9a70f91857ee33e0b4..b9393fba4ab0f14992d2fec32b0e1b7f1d4bbdfd 100644
> >> --- a/arch/arm/mach-imx/esdctl.c
> >> +++ b/arch/arm/mach-imx/esdctl.c
> >> @@ -1015,10 +1015,50 @@ resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
> >>  	return min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
> >>  }
> >>  
> >> +static void imx8m_extract_optee_fdto(void)
> >> +{
> >> +	unsigned int early_fdt_sz, fdto_size;
> >> +	void *early_fdt, *fdto_dst;
> >> +
> >> +	imx_scratch_get_fdt(&early_fdt, &early_fdt_sz);
> >> +	/* SCRATCH_FDT_SIZE == 0, e.g. if OP-TEE w/o CFG_DT support is used */
> >> +	if (early_fdt_sz == 0)
> >> +		return;
> >> +
> >> +	imx_scratch_get_optee_fdto(&fdto_dst, &fdto_size);
> >> +	/* SCRATCH_FDTO_SIZE == 0 if feature (back-channel) is not required */
> >> +	if (fdto_size == 0) {
> >> +		pr_debug("OP-TEE dest DTBO size == 0, skip extracting\n");
> >> +		return;
> >> +	}
> >> +
> >> +	/*
> >> +	 * OP-TEE DT handling is really cumbersome. In case an external DT was
> >> +	 * supplied, OP-TEE re-use this DT and appends overlays.
> >> +	 *
> >> +	 * Extract the overlays into a single overlay file to make it easier
> >> +	 * to apply these onto the barebox and kernel DT.
> >> +	 *
> >> +	 * It will become easier once barebox supports the transfer-list
> >> +	 * protocol and the protocol itself has overlay-entry support.
> >> +	 */
> > 
> > The problem doesn't seem to be i.MX8M specific, so we'll end up
> > duplicating this for other SoCs. Couldn't you do optee_extract_fdto() in
> > optee_register_overlay() instead?
> > 
> > Also we are in PBL here. The device tree is already in the i.MX scratch
> > space which is available in barebox proper as well, so you could move
> > the code there.
> 
> On top of that, we don't have even MMU enabled at this point of time.
> 
> 
> > 
> >> +	if (optee_extract_fdto(early_fdt, fdto_dst, fdto_size)) {
> >> +		pr_warn("Failed to extract OP-TEE FDTO, continue without FDTO\n");
> >> +		/*
> >> +		 * Don't BUG() because the system may have compile-time config
> >> +		 * support
> >> +		 */
> >> +		return;
> >> +	}
> >> +
> >> +	handoff_data_add(HANDOFF_DATA_BL32_DT_OVL, fdto_dst, fdto_size);
> > 
> > The overlay isn't used in barebox itself, but only for the Kernel.

This is not true. This patchset adds to support to use the overlay
within barebox too. With the patches Fabian provided, it would eliminate
the need for i.MX6(ULL) boards to have this strange initcall which
checks a magic memory location for an overlay to apply it.

> > 
> > You Could just pick up the overlay from the i.MX scratch space in
> > barebox proper and pass it to optee_register_overlay().
> 
> Agreed. There seems to be no need to do this in the PBL.

The early barebox code checks for HANDOFF_DATA_BL32_DT_OVL and applies
the overlay. Do you suggest that I shall extract the data within barebox
common code rather? I'm not sure if this is even possible.

Regards,
  Marco

> 
> Thanks,
> Ahmad
> 
> > 
> > Sascha
> > 
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


