Delivery-date: Thu, 05 Feb 2026 23:42:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo83V-009Gx0-26
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 23:42:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo83U-0004xR-6z
	for lore@pengutronix.de; Thu, 05 Feb 2026 23:42:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cR4rC3bcyT29fOTXShUUbA9u5/UzhiDiSSBeojo5f18=; b=z/bxYYAQp61W+ORcB3mBYBeuPr
	GU9rrLpGyj/fJkXJlTlJAE8VgcT6TIa1B8yPTnpBUQrcgBgjVXOA8VbuZOEFbkaISBr4iVg6S5JHK
	MTZWUinVza3SKUTquuyxuwvGEKbJIWvNE52YvBVj6h7WA4zXz2sEJV0gMsOHw7SlJYA6IUWE3BcG3
	1mLBB5AVSIfKLt788iSOmZEmoq8K493GFj4pfIUaCvBM74zKPiTq84B/YL/VLwasxi1wbTRXoRvgA
	JmxG7Vqm5yA9lXWL5KaI7gU8Hdqo0UjkEIhcjWy/qkjxSz4b4dADa68m95k+jKHn6vYS45Szcgwou
	gG0ITpqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo82a-0000000Aa4F-2mu0;
	Thu, 05 Feb 2026 22:41:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo82W-0000000Aa3D-3ilX
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 22:41:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo82U-0004p1-Om; Thu, 05 Feb 2026 23:41:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo82V-004JAZ-0l;
	Thu, 05 Feb 2026 23:41:30 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vo82U-000Xry-1Y;
	Thu, 05 Feb 2026 23:41:30 +0100
Date: Thu, 5 Feb 2026 23:41:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20260205224130.pe2fzkyvnuqwwkhu@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-9-da075e6818e0@pengutronix.de>
 <aYTNJuyGYsdyoia8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYTNJuyGYsdyoia8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_144133_651298_26892BDD 
X-CRM114-Status: GOOD (  50.40  )
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
Subject: Re: [PATCH v2 09/15] ARM: i.MX8M: add support to pass BL3x bl_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On 26-02-05, Michael Tretter wrote:
> On Wed, 04 Feb 2026 21:01:25 +0100, Marco Felsch wrote:
> > Add support to handover the BL32 and BL33 entrypoints via the TF-A
> > struct::bl_params in arg0. This eliminates the requirement to share the
> > different load addresses between multiple binaries to lower the BSP
> > integration effort.
> > 
> > In addition to the entriespoints, this commit also adds the support to
> > pass the builtin barebox DTB to OP-TEE if enabled.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/Kconfig | 16 ++++++++++
> >  arch/arm/mach-imx/atf.c   | 80 ++++++++++++++++++++++++++++++++++++++++++++++-
> >  2 files changed, 95 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index d244c5758073c0f2c683e500e0d4ed0a6bff2cb5..b3e6e944867e7bd0ce6f15a6d693de44590c809c 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -38,6 +38,22 @@ config ARCH_IMX_ATF
> >  	def_bool y
> >  	depends on ARCH_IMX8M || ARCH_IMX9
> >  
> > +config ARCH_IMX_ATF_PASS_BL_PARAMS
> > +	bool "Pass BL3x bl_params as arg0 to TF-A"
> > +	depends on ARCH_IMX_ATF
> > +	select ARM_ATF
> > +	select LIBFDT
> > +	help
> > +	  Enable this option if you are using an upstream TF-A that uses
> > +	  the struct::bl_params to handover all required BL32 and BL33
> > +	  information required to start the BL32 and BL33 image.
> > +
> > +	  Since upstream TF-A v2.12 all i.MX8M support this feature except for
> > +	  the i.MX8MQ.
> > +
> > +	  This option is required if the barebox DT should be passed to the
> > +	  BL32 firmware.
> > +
> >  config ARCH_IMX_ROMAPI
> >  	def_bool y
> >  	depends on ARCH_IMX8M || ARCH_IMX9
> > diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> > index 11d26607bc2ea449402d9cb8e20fbb44f425989c..34893c3a04616a9fbf2648a58940bec793ae04c8 100644
> > --- a/arch/arm/mach-imx/atf.c
> > +++ b/arch/arm/mach-imx/atf.c
> > @@ -1,5 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0-only
> >  
> > +#include <asm/atf_common.h>
> >  #include <asm/sections.h>
> >  #include <common.h>
> >  #include <firmware.h>
> > @@ -18,6 +19,7 @@
> >  #include <mach/imx/ele.h>
> >  #include <mach/imx/xload.h>
> >  #include <mach/imx/snvs.h>
> > +#include <pbl.h>
> >  
> >  static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
> >  {
> > @@ -37,6 +39,68 @@ static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32
> >  	*bl32_image += sizeof(*hdr);
> >  }
> >  
> > +static __noreturn void bl31_via_bl_params(void *bl31, void *bl32, void *bl33,
> > +					  void *fdt)
> > +{
> > +	struct bl2_to_bl31_params_mem_v2 *params;
> > +
> > +	/* Prepare bl_params for BL32 */
> > +	params = bl2_plat_get_bl31_params_v2((uintptr_t)bl32,
> > +			(uintptr_t)bl33, (uintptr_t)fdt);
> > +
> > +	pr_debug("Jump to BL31 with bl-params (%s BL32-FDT)\n",
> > +		 fdt ? "including" : "excluding");
> > +	/*
> > +	 * Start BL31 without passing the FDT via x1 since the mainline
> > +	 * TF-A doesn't support it yet.
> > +	 */
> > +	bl31_entry_v2((uintptr_t)bl31, &params->bl_params, NULL);
> > +
> > +	__builtin_unreachable();
> > +}
> > +
> > +static __noreturn void start_bl31_via_bl_params(void *bl31, void *bl32,
> > +						void *bl33, void *fdt)
> > +{
> > +	unsigned long mem_base = MX8M_DDR_CSD1_BASE_ADDR;
> > +	unsigned long mem_sz;
> > +	unsigned int bufsz = 0;
> > +	int error;
> > +	u8 *buf;
> > +
> > +	if (!fdt)
> > +		bl31_via_bl_params(bl31, bl32, bl33, NULL);
> > +
> > +	buf = imx_scratch_get_fdt(&bufsz);
> > +	if (IS_ERR_OR_NULL(buf)) {
> > +		if (!buf)
> > +			pr_debug("No FDT scratch mem configured, continue without FDT\n");
> > +		else
> > +			pr_warn("Failed to get FDT scratch mem, continue without FDT\n");
> > +		bl31_via_bl_params(bl31, bl32, bl33, NULL);
> > +	}
> > +
> > +	error = pbl_load_fdt(fdt, buf, bufsz);
> > +	if (error) {
> > +		pr_warn("Failed to load FDT, continue without FDT\n");
> > +		bl31_via_bl_params(bl31, bl32, bl33, NULL);
> > +	}
> > +
> > +	if (cpu_is_mx8mn())
> > +		mem_sz = imx8m_ddrc_sdram_size(16);
> > +	else
> > +		mem_sz = imx8m_ddrc_sdram_size(32);
> > +
> > +	fdt = buf;
> > +	error = fdt_fixup_mem(fdt, &mem_base, &mem_sz, 1);
> 
> On rk3588, I noticed that fdt_fixup_mem() adds a significant delay,
> which depends on the size of the device tree, to boot time. Did you
> notice something similar in your tests?

I noticed a delay as well but didn't debugged the root cause yet since
doing a lot of string parsing doesn't come for free. Thanks for the
heads up, that this function is problematic. On the other hand, we need
to do the fixup to keep the DRAM information only encoded within the
lpddr config file.

> Furthermore, if OP-TEE receives a large device tree, it also seems to
> initialize much slower and add further delay to the boot time.

Good to know! I didn't spent to much time for performance analysis
unfortunately.

> I wonder if it may be better to build a custom device tree during the
> initialization that only contains the necessary nodes rather than
> passing the full device tree with some fixups.

But in that case you need to know which DT nodes are important for
$platform. E.g. for i.MX CAAM devices, the CAAM node is interessting
too, since OP-TEE disables the secure OS used jobring nodes. I don't
know if this scales for all SoCs.

That beeing said, currently we pass the DT only to OP-TEE but it could
be used for TF-A use-cases as well. 

I also don't know if building a custom FDT during runtime is less
effort than using the built-in unmodified DT.

It would be great if we shift "creating the minimal DT" to build time.
U-Boot has this "bootph-all" and CONFIG_OF_SPL_REMOVE_PROPS for the SPL.
But U-Boot uses the custom binman tool to heavily manipulate the DTB
after the DTC.

We could also do something fancy like having a minimal DT for the PBL
(no MMU) and later on barebox-proper loads the rest as overlay (MMU on).
This would require that we split the DT into a DT and DTO. A quick
search showed that we could use '/omit-if-no-ref/' feature to build a
minimal pbl DTB. For PBL DTB builds the build-process needs to handle
adding the property accordingly, so a minimal DT is produced and the
user-impact is minimal. I could imagine something like:

/ {
	barebox,pbl-devices {
  		caam = <&phandle_to_caam>;
		emmc = <&sdhci1>;
		eeprom = <&i2c_eeprom>;
	};
};

The build process could:
 1) add the /omit-if-no-ref/ and later on
 2) follows the phandles listed in barebox,pbl-devices and removes the
    property from each parent recursive.

This way we could implement something similar to the U-Boot "bootph-all"
marking but IMHO more user friendly and only relying on DTC.

However, thanks for your reply :) Of course there is room for
improvements, but this shouldn't stop us from merging this since all
current mainline users are not affected (no boot-time regression).

Regards,
  Marco

> 
> Michael
> 
> > +	if (error) {
> > +		pr_warn("Failed to fixup FDT memory node, continue without FDT\n");
> > +		bl31_via_bl_params(bl31, bl32, bl33, NULL);
> > +	}
> > +
> > +	bl31_via_bl_params(bl31, bl32, bl33, fdt);
> > +}
> > +
> >  /**
> >   * imx8m_tfa_start_bl31 - Load TF-A BL31 blob and transfer control to it
> >   *
> > @@ -122,7 +186,21 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
> >  	asm volatile("msr sp_el2, %0" : :
> >  		     "r" (tfa_dest - 16) :
> >  		     "cc");
> > -	bl31();
> > +
> > +	/*
> > +	 * If enabled the bl_params are passed via x0 to the TF-A, except for
> > +	 * the i.MX8MQ which doesn't support bl_params yet.
> > +	 * Passing the bl_params must be explicit enabled to be backward
> > +	 * compatible with downstream TF-A versions, which may have problems
> > +	 * with the bl_params.
> > +	 */
> > +	if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS) || cpu_is_mx8mq()) {
> > +		pr_debug("Jump to BL31 without bl-params\n");
> > +		bl31();
> > +	} else {
> > +		start_bl31_via_bl_params(bl31, bl32, bl33, fdt);
> > +	}
> > +
> >  	__builtin_unreachable();
> >  }
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


