Delivery-date: Fri, 06 Feb 2026 11:03:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voIgI-009RgP-2W
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 11:03:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voIgH-0007aP-JK
	for lore@pengutronix.de; Fri, 06 Feb 2026 11:03:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaYWuMwytWl+sVQIjNFijMm99gv4PU2UefDfscjs2+w=; b=N4C9Mx+TQ6Gaw2N3jJIXswwTJl
	uzJ+zL0fvNDPNYYbFVL3gPD753ZKAL2/BkL5tCpow/HzG2sr3gvKczKXkqAFqU3vd4DBY+QkLK1dQ
	ubdfQ0lu0arrowfTZRgmpKLO7rHdbrdQVZEK7k6IgKfsL5t3P5LpgJlqUQs06408rnHM+knfX3k1D
	mNfvqfRd4luFYSbGoPuM9/g4jkel1fRGBUW9ORqtsrgaAPDvxlkWJUH3zM42FVkcDaMj+pwoHWTYg
	LiKEQrRaMN62C3ngyt4lUnIAc5I2qFDsCKvJjf2Tu/eJtFXAz29maV7HVZD9jBjqfMoWHAV/RSJCq
	4S1z8P/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIfo-0000000B8U5-3NBf;
	Fri, 06 Feb 2026 10:02:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voIfm-0000000B8Tk-0D3W
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 10:02:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voIfk-0007St-9P; Fri, 06 Feb 2026 11:02:44 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voIfk-004Nob-2V;
	Fri, 06 Feb 2026 11:02:44 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voIfk-002JnR-00;
	Fri, 06 Feb 2026 11:02:44 +0100
Date: Fri, 6 Feb 2026 11:02:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
 <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_020246_096724_9B44E581 
X-CRM114-Status: GOOD (  36.34  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> 
> 
> On 2/4/26 9:01 PM, Marco Felsch wrote:
> > Add support to store a FDT within the scratch area. The user needs to
> > query the location and size via imx_scratch_get_fdt() which can be used
> > afterwards to write the actual FDT into it.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/scratch.c | 24 ++++++++++++++++++++++++
> >  common/Kconfig              | 14 ++++++++++++++
> >  include/mach/imx/scratch.h  |  2 ++
> >  3 files changed, 40 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> > index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..da138445dfb352f2f3497be77004aefc7d46f188 100644
> > --- a/arch/arm/mach-imx/scratch.c
> > +++ b/arch/arm/mach-imx/scratch.c
> > @@ -16,7 +16,10 @@ struct imx_scratch_space {
> >  	u32 bootrom_log[128];
> >  	u32 reserved[128];		/* reserve for bootrom log */
> >  	struct optee_header optee_hdr;
> > +	/* FDT needs an 8 byte alignment */
> > +	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
> >  };
> > +static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
> >  
> >  static struct imx_scratch_space *scratch;
> >  
> > @@ -92,3 +95,24 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
> >  
> >  	return &scratch->optee_hdr;
> >  }
> > +
> > +u8 *imx_scratch_get_fdt(unsigned int *fdt_sz)
> > +{
> > +	unsigned int sz;
> > +
> > +	if (!scratch) {
> > +		if (IN_PBL)
> > +			return ERR_PTR(-EINVAL);
> > +		else
> > +			scratch = (void *)arm_mem_scratch_get();
> > +	}
> > +
> > +	sz = sizeof(scratch->fdt);
> > +	if (sz == 0)
> > +		return NULL;
> > +
> > +	if (fdt_sz)
> > +		*fdt_sz = sz;
> > +
> > +	return scratch->fdt;
> > +}
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 50c26695b2b56a943edfd00a7e0cb1067ad269a9..265652900a5632177d36efa84d590be6db2e7015 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -304,6 +304,20 @@ config SCRATCH_SIZE
> >  	default 0x8000
> >  	prompt "Scratch size"
> >  
> > +config SCRATCH_FDT_SIZE
> > +	hex
> > +	default 0x0
> > +	prompt "Scratch FDT size"
> > +	help
> > +	  The size of the scratch area used as destination to load and optional
> > +	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
> > +	  support is not requied.
> > +
> > +	  If specified, SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
> > +
> > +	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
> > +	  if used by OP-TEE.
> 
> AFAIU, this is a workaround because OP-TEE doesn't accept outside
> information about how big the DTB buffer is, just its base address.

This is correct for the bl_params case. In case of transfer-lists the
size could be detected by OP-TEE OS.

> In that case, this should go to security/Kconfig and be named something
> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
> configures barebox about this.

This would bind the FDT support to OP-TEE but the FDT could be used by
other boot binaries as well. In the speak of ARM, it could be used by
the TF-A. In the speak of RISC-V, it could be used by opensbi. Therefore
I made it generic.

I wanted to avoid multiple Kconfig options to configure the scatch space
for:
 - OP-TEE FDT
 - OpenSBI FDT
 - TF-A FDT

I'm currently unsure if dropping the OP-TEE note from the help message
helps. But I have no hard feelings about PBL_OPTEE_DTB_MAX_SIZE either.

Regards,
  Marco


> 
> 
> Cheers,
> Ahmad
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


