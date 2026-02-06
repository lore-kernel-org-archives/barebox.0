Delivery-date: Fri, 06 Feb 2026 14:47:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMAy-009V7I-2c
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:47:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voMAx-0004X3-CZ
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:47:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uFZ7mBK2eZjj71orcZVNUMxV3Ky1wWnDltBSQ9wvRc0=; b=JLNda3uvT0vtbFachvyEUO1r8M
	RgcFCIkeXJWxRvqt84bPiX7+f6OCBSmHVxzv1GA9jQZCTYi+OkTUVLzZkZqk2j2vL44ApMeqyGpEC
	qbeePw21LXnTKzwLgtz+YQjNa2Pug/1EU3h0mYpRVu7zuexO+KLGGn1ObNmaZMMuZwX9M0qm/xtbN
	7HlN87dfTyvtMAU7OlgCkVhClY9slGj/6qol6eu/C5O1ii1Du4ddNxFBpL1bP5EJrcIviCtbFTFVP
	apR9EkcAX5p6ZeMnuUs2iO6E/bW2ttkevgAHDEGAwd/c4aOPy9bqsLwoJQQsFvxFLlJRCIWN3BC9z
	1Nz3lEFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMAJ-0000000BOBW-397j;
	Fri, 06 Feb 2026 13:46:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voMAH-0000000BOAz-0mYA
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:46:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voMAF-0004OH-As; Fri, 06 Feb 2026 14:46:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voMAF-004PhV-2c;
	Fri, 06 Feb 2026 14:46:27 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voMAF-002MSI-08;
	Fri, 06 Feb 2026 14:46:27 +0100
Date: Fri, 6 Feb 2026 14:46:27 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260206134627.g5nzhi5jwb7x247w@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-9-da075e6818e0@pengutronix.de>
 <aYTNJuyGYsdyoia8@pengutronix.de>
 <20260205224130.pe2fzkyvnuqwwkhu@pengutronix.de>
 <2fb379a6-98a7-4895-b01e-c8903535b1cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2fb379a6-98a7-4895-b01e-c8903535b1cd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_054629_383791_64E8FDFB 
X-CRM114-Status: GOOD (  69.25  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/15] ARM: i.MX8M: add support to pass BL3x bl_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/5/26 11:41 PM, Marco Felsch wrote:
> > On 26-02-05, Michael Tretter wrote:
> >> On Wed, 04 Feb 2026 21:01:25 +0100, Marco Felsch wrote:
> 
> 
> >>> +	fdt = buf;
> >>> +	error = fdt_fixup_mem(fdt, &mem_base, &mem_sz, 1);
> >>
> >> On rk3588, I noticed that fdt_fixup_mem() adds a significant delay,
> >> which depends on the size of the device tree, to boot time. Did you
> >> notice something similar in your tests?
> > 
> > I noticed a delay as well but didn't debugged the root cause yet since
> > doing a lot of string parsing doesn't come for free. Thanks for the
> > heads up, that this function is problematic. On the other hand, we need
> > to do the fixup to keep the DRAM information only encoded within the
> > lpddr config file.
> 
> I actually have code lying around somewhere that takes a barebox ELF and
> extracts the memory size by parsing the i.MX8M memory structs offline :D
> 
> I wouldn't recommend actually using that though..
> 
> What might help is adding dummy memory entries into the DT for all
> memory banks, but with a 0 size and then patch the final size in.

I thought about something similiar too but since I don't know the
hot-path of fdt_fixup_mem(), I don't know if adding a dummy memory node
might help.

Since I need to send a new version anyway, I will add a comment, that
this call causes a boot-time regression and how to possible fix this. So
$someone can work on this afterwards.

> >> Furthermore, if OP-TEE receives a large device tree, it also seems to
> >> initialize much slower and add further delay to the boot time.
> > 
> > Good to know! I didn't spent to much time for performance analysis
> > unfortunately.
> > 
> >> I wonder if it may be better to build a custom device tree during the
> >> initialization that only contains the necessary nodes rather than
> >> passing the full device tree with some fixups.
> > 
> > But in that case you need to know which DT nodes are important for
> > $platform. E.g. for i.MX CAAM devices, the CAAM node is interessting
> > too, since OP-TEE disables the secure OS used jobring nodes. I don't
> > know if this scales for all SoCs.
> > 
> > That beeing said, currently we pass the DT only to OP-TEE but it could
> > be used for TF-A use-cases as well. 
> > 
> > I also don't know if building a custom FDT during runtime is less
> > effort than using the built-in unmodified DT.
> > 
> > It would be great if we shift "creating the minimal DT" to build time.
> > U-Boot has this "bootph-all" and CONFIG_OF_SPL_REMOVE_PROPS for the SPL.
> > But U-Boot uses the custom binman tool to heavily manipulate the DTB
> > after the DTC.
> 
> fdtgrep can filter device trees according to the bootph- properties.
> It's not part of upstream dtc, but we vendor in dtc anyway, so we could
> also include that tool if needed.

But than you need to mark all the relevant nodes like U-Boot. My idea is
to don't bother the users with the details. By providing a "high-level
API" where the user only need to mark the very interesting nodes.

> > We could also do something fancy like having a minimal DT for the PBL
> > (no MMU) and later on barebox-proper loads the rest as overlay (MMU on).
> 
> We should rather enable the MMU earlier. Waiting until just before
> decompression in EL2 is much later than need be.

This will help for sure! Having a common PBL lowlevel "framework" would
help establishing a common load chain (incl. enabling the MMU early).

> > This would require that we split the DT into a DT and DTO. A quick
> > search showed that we could use '/omit-if-no-ref/' feature to build a
> > minimal pbl DTB. For PBL DTB builds the build-process needs to handle
> > adding the property accordingly, so a minimal DT is produced and the
> > user-impact is minimal. I could imagine something like:
> > 
> > / {
> > 	barebox,pbl-devices {
> >   		caam = <&phandle_to_caam>;
> > 		emmc = <&sdhci1>;
> > 		eeprom = <&i2c_eeprom>;
> > 	};
> > };
> > 
> > The build process could:
> >  1) add the /omit-if-no-ref/ and later on
> >  2) follows the phandles listed in barebox,pbl-devices and removes the
> >     property from each parent recursive.
> > 
> > This way we could implement something similar to the U-Boot "bootph-all"
> > marking but IMHO more user friendly and only relying on DTC.
> 
> I think we can do it even simpler, let's say we had these three phases
> (we can think about mapping them to bootph- later):
> 
>   barebox,bootph-pbl:   The parts of the DT needed in PBL
> 
>   barebox,bootph-core:  The parts of the DT needed very early
>                         in barebox proper and prior to and including
> 			board driver probe
> 
>   barebox,bootph-all:   Everything after the board driver probe
>                         Unmarked nodes are here as well
> 
> Now we would filter the barebox DT by each of these properties and get
> three device trees, which we just concatenate and use as barebox DT.
>
>   PBL: Would take only the first DT and ignore the concatenated DTs,
>        but still pass all along to barebox proper
> 
>   early barebox proper: would just unflatten both DTs after another into
>                         the same live tree
> 
>   late barebox proper: would unflatten the last DT and fix it up into
>                        the live tree
> 
> Benefits I see:
> 
>   - We can have a minimal DT just for the CAAM and memory nodes for
>     example
> 
>   - We have no extra runtime overhead as unflattening a DT split
>     into three will take as much time as doing it all in one pass
> 
>   - We can actually switch out the DTs before unflattening steps,
>     e.g. we could have a smaller generic DT uses for the first two
>     stages and then a bigger DT used for the last stage, which
>     is board-specific.
> 
> I don't think when we are getting around to this though ^^.

Sounds interesting :) but also not very easy to get for actual "normal"
users.

> > However, thanks for your reply :) Of course there is room for
> > improvements, but this shouldn't stop us from merging this since all
> > current mainline users are not affected (no boot-time regression).
> 
> Agreed. I hope we will recover some speed when we start enabling the MMU
> earlier in future.

This would be one important first step.

Regards,
  Marco

> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>
> >> Michael
> >>
> >>> +	if (error) {
> >>> +		pr_warn("Failed to fixup FDT memory node, continue without FDT\n");
> >>> +		bl31_via_bl_params(bl31, bl32, bl33, NULL);
> >>> +	}
> >>> +
> >>> +	bl31_via_bl_params(bl31, bl32, bl33, fdt);
> >>> +}
> >>> +
> >>>  /**
> >>>   * imx8m_tfa_start_bl31 - Load TF-A BL31 blob and transfer control to it
> >>>   *
> >>> @@ -122,7 +186,21 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
> >>>  	asm volatile("msr sp_el2, %0" : :
> >>>  		     "r" (tfa_dest - 16) :
> >>>  		     "cc");
> >>> -	bl31();
> >>> +
> >>> +	/*
> >>> +	 * If enabled the bl_params are passed via x0 to the TF-A, except for
> >>> +	 * the i.MX8MQ which doesn't support bl_params yet.
> >>> +	 * Passing the bl_params must be explicit enabled to be backward
> >>> +	 * compatible with downstream TF-A versions, which may have problems
> >>> +	 * with the bl_params.
> >>> +	 */
> >>> +	if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS) || cpu_is_mx8mq()) {
> >>> +		pr_debug("Jump to BL31 without bl-params\n");
> >>> +		bl31();
> >>> +	} else {
> >>> +		start_bl31_via_bl_params(bl31, bl32, bl33, fdt);
> >>> +	}
> >>> +
> >>>  	__builtin_unreachable();
> >>>  }
> >>
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


