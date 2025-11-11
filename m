Delivery-date: Tue, 11 Nov 2025 16:07:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpxv-000BZd-2s
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 16:07:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpxv-0001tD-71
	for lore@pengutronix.de; Tue, 11 Nov 2025 16:07:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=++9H/2BJTJ2MpYqubWbRzznBAtehvqy6vFrFMQ/uH7o=; b=2OPA8jiNqjtLyEwGp+Nt2iUlW+
	3yiEseri43IMRidWyH5v49lMUbo6bEcjiB9Wen2fnminTTQXFWdBNfglILxMJkyfb0EXAtf3xXARb
	MGs0emwU+Qu2yQ4tG23Xuk0Y+TGAfqeiBXHHeiQxj+2BQzD63/UA5nIUG+AyHjcmTaxqR4DHxG4Rs
	Q4CBlj4i64Y/MB/yr00l26gs4DXwWDlRTMpXyNL5IHbukcUQ9VbnNyqjnLk7xYL+pi1VglmUd9F2l
	Ex1xLa1PEWQ4e0vL+f7JY5CSMYVzZXTKRLDRNe+2G7vb/fQMFshMEWd47WcVgc9Nx+2qP9zb5xeg1
	xDydV3Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpxN-00000007MIP-3UkT;
	Tue, 11 Nov 2025 15:06:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpxF-00000007MHb-3KSO
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 15:06:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vIpxC-0001mK-5e; Tue, 11 Nov 2025 16:06:42 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vIpxB-008Duc-3A;
	Tue, 11 Nov 2025 16:06:41 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vIpxB-00EWdW-2q;
	Tue, 11 Nov 2025 16:06:41 +0100
Date: Tue, 11 Nov 2025 16:06:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20251111150641.jbgefevhsyspi75o@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-10-8f0625ac5471@pengutronix.de>
 <aRNEygSVau3tmHVk@pengutronix.de>
 <e5018cae-3676-4c67-b809-84a72b647c21@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5018cae-3676-4c67-b809-84a72b647c21@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_070645_837151_A1FE4709 
X-CRM114-Status: GOOD (  35.58  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/23] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-11-11, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/11/25 3:14 PM, Sascha Hauer wrote:
> > On Mon, Nov 10, 2025 at 09:34:50PM +0100, Marco Felsch wrote:
> >> Add support to store a FDT within the scratch area. The user needs to
> >> query the location and size via imx_scratch_get_fdt() which can be used
> >> afterwards to write the actual FDT into it.
> >>
> >> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >> ---
> >>  arch/arm/mach-imx/scratch.c | 16 ++++++++++++++++
> >>  common/Kconfig              | 14 ++++++++++++++
> >>  include/mach/imx/scratch.h  |  2 ++
> >>  3 files changed, 32 insertions(+)
> >>
> >> diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> >> index e4e2d25969f061c9fcdfd7c3d87701b715eb2805..9c0f1c09c4e0b863d8c95888db7cf0518f698d53 100644
> >> --- a/arch/arm/mach-imx/scratch.c
> >> +++ b/arch/arm/mach-imx/scratch.c
> >> @@ -16,7 +16,10 @@ struct imx_scratch_space {
> >>  	u32 bootrom_log[128];
> >>  	u32 reserved[128];		/* reserve for bootrom log */
> >>  	struct optee_header optee_hdr;
> >> +	/* FDT needs an 8 byte alignment */
> >> +	u8 fdt[CONFIG_SCRATCH_FDT_SIZE] __aligned(8);
> >>  };
> >> +static_assert(sizeof(struct imx_scratch_space) <= CONFIG_SCRATCH_SIZE);
> >>  
> >>  static struct imx_scratch_space *scratch;
> >>  
> >> @@ -92,3 +95,16 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
> >>  
> >>  	return &scratch->optee_hdr;
> >>  }
> >> +
> >> +void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz)
> >> +{
> >> +	if (!scratch) {
> >> +		if (IN_PBL)
> >> +			return;
> >> +		else
> >> +			scratch = (void *)arm_mem_scratch_get();
> >> +	}
> >> +
> >> +	*fdt = scratch->fdt;
> >> +	*fdt_sz = sizeof(scratch->fdt);
> >> +}
> >> diff --git a/common/Kconfig b/common/Kconfig
> >> index eb2fb1da1e0919b6e7d5e868c48ad2e195cd8aa8..3f394416c3c376d1cf842472803a47462bb012ed 100644
> >> --- a/common/Kconfig
> >> +++ b/common/Kconfig
> >> @@ -302,8 +302,22 @@ config MALLOC_SIZE
> >>  config SCRATCH_SIZE
> >>  	hex
> >>  	default 0x8000
> >> +	default 0x48000 if PBL_EARLY_FDT_LOAD
> 
> Easy to misconfigure. How about an additional:
> 
> range 0x48000 <some big size> if PBL_EARLY_FDT_LOAD

I wasn't aware of the 'range' property. I just simply followed the
Rockchip implementation, with the exception that I wanted to provide a
sane default for the SCRATCH_SIZE too.

> >>  	prompt "Scratch size"
> > 
> > Do I get this right that the scratch space now includes the space for
> > the early FDT? If yes then this can lead to inconsistencies when the
> > scratch space is to small. Why not add an extra space?

There is a static size check for the i.MX and Rockchip case to ensure
that the overall SCRATCH_SIZE fits all members.

> I would prefer we do not complicate the "endmem" layout more than we
> have currently.
> 
> What I think we want in future is an API to allocate from the scratch
> mem a handoff block and there would be no hardcoded offsets and struct
> imx_scratch_space could go away. To save handoff when switching from PBL
> to proper, we would then also allocate to the scratch space.
> 
> This will probably happen separately, so I am in favor of not creating a
> new section that's removed afterwards.

I'm with Ahmad, the scratch/handoff handling could be generalized for
all platforms. IMHO the current implementation requires to much user
input (Kconfig setup), but this should be part of another patchset.

My idea is basically the same as Ahmad explained:
 - Scratch pool size configured via Kconfig
 - Handoff-data allocates bytes from the scratch-pool (eliminates the
   moving the handoff-data)

This way barebox could check the actual FDT size (incl. adding some
space like 4K for additions).

Regards,
  Marco


> 
> Cheers,
> Ahmad
> 
> > 
> > Sascha
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


