Delivery-date: Mon, 09 Feb 2026 21:51:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpYEA-00Akdu-2Z
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 21:51:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpYE9-00021G-LW
	for lore@pengutronix.de; Mon, 09 Feb 2026 21:51:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KbzGwtIr2xsme8qPIT4mHA2KhsOT5IoERPHTqBJD7L8=; b=gBn2BDLeXEv2FMIjbmMwnDo6rF
	8lp5T0q8bfFWgr9T/XcxFKLRjptPnKQdZ8C+13uD9xKis/JWCqSE/AQJk60i9U2tDHvGaGJMMcp+h
	8LdtYqsgfOhrx1lUtGQqK/sfjhW+fsC+GGbn3ZM8dgOk4jGbTpfMOTL5BTnmFrVPrkveNr7rz8B/f
	NwJYajk0jHh6TtfC49gWIWSH/vxmqUiFF/p4jiMcEBCrH9VU+gpdBCjxZS9XdO6edwxGkRPYNzb3U
	2XB85ePc42uD7XXHtcVzoW2MmxWeMi4+fNPZ1HXihzJ3x+737TfJUSKSXNuUvxzcyCJatZGTuyroU
	piN5ffJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpYDf-0000000G0b7-1mfo;
	Mon, 09 Feb 2026 20:50:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpYDa-0000000G0aW-0iuv
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 20:50:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpYDX-0001we-HN; Mon, 09 Feb 2026 21:50:47 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpYDY-00514j-05;
	Mon, 09 Feb 2026 21:50:47 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vpYDX-008A8C-0r;
	Mon, 09 Feb 2026 21:50:47 +0100
Date: Mon, 9 Feb 2026 21:50:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260209205047.7nite5dc5n2erpa7@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
 <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
 <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
 <a871ce2a-00e9-46ec-912a-f64cce27b7b9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a871ce2a-00e9-46ec-912a-f64cce27b7b9@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_125050_216229_1447E5F2 
X-CRM114-Status: GOOD (  37.48  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> Hi,
> 
> On 2/6/26 11:02 AM, Marco Felsch wrote:
> >> On 2/4/26 9:01 PM, Marco Felsch wrote:
> >>> Add support to store a FDT within the scratch area. The user needs to
> >>> query the location and size via imx_scratch_get_fdt() which can be used
> >>> afterwards to write the actual FDT into it.
> >>>
> >>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> >>> +config SCRATCH_FDT_SIZE
> >>> +	hex
> >>> +	default 0x0
> >>> +	prompt "Scratch FDT size"
> >>> +	help
> >>> +	  The size of the scratch area used as destination to load and optional
> >>> +	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
> >>> +	  support is not requied.
> >>> +
> >>> +	  If specified, SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
> >>> +
> >>> +	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
> >>> +	  if used by OP-TEE.
> >>
> >> AFAIU, this is a workaround because OP-TEE doesn't accept outside
> >> information about how big the DTB buffer is, just its base address.
> > 
> > This is correct for the bl_params case. In case of transfer-lists the
> > size could be detected by OP-TEE OS.
> > 
> >> In that case, this should go to security/Kconfig and be named something
> >> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
> >> configures barebox about this.
> > 
> > This would bind the FDT support to OP-TEE but the FDT could be used by
> > other boot binaries as well.In the speak of ARM, it could be used by
> > the TF-A. In the speak of RISC-V, it could be used by opensbi. Therefore
> > I made it generic.
> > 
> > I wanted to avoid multiple Kconfig options to configure the scatch space
> > for:
> >  - OP-TEE FDT
> >  - OpenSBI FDT
> >  - TF-A FDT
> > 
> > I'm currently unsure if dropping the OP-TEE note from the help message
> > helps. But I have no hard feelings about PBL_OPTEE_DTB_MAX_SIZE either.
> 
> How about:
> 
> struct imx_scratch_space {
>         union {
>                 u8 __b[CONFIG_SCRATCH_SIZE];
>                 struct {
>                         u32 bootrom_log[128];
>                         u32 reserved[128];
>                         struct optee_header optee_hdr;
>                         u8 fdt[] __aligned(8);

This would require, that the 'fdt' element is always the last element.
We could add a comment, but it's rather fragile IMHO.

>                 };
>         };
> };
> static_assert(sizeof(struct imx_scratch_space)
>           - offsetof(struct imx_scratch_space, fdt)
> 			<= PBL_OPTEE_DTB_MAX_SIZE);

This would introduce a very strict dependency for CONFIG_SCRATCH_SIZE to
the not always visible PBL_OPTEE_DTB_MAX_SIZE. As you said:

> >> In that case, this should go to security/Kconfig and be named something
> >> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
> >> configures barebox about this.

Therefore I would like to use your name suggestion
PBL_OPTEE_DTB_MAX_SIZE but keep it loose like RK does.

> The benefits I see:
>   - Just one argument to tune (CONFIG_SCRATCH_SIZE) like we already use
>     for Rockchip

Rockchip is using two Kconfig switch too (ARCH_ROCKCHIP_ATF_FDT_SIZE).

>   - We still have a dedicated option that can be kept in-sync with the
>     exact option value in OP-TEE to find problems at compile-time
>   - Only those who actually use OP-TEE will be asked about
>     PBL_OPTEE_DTB_MAX_SIZE

Good points!

> Would this work for you?

Please see above.

Regards,
  Marco


> 
> Cheers,
> Ahmad
> 
> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> >>
> >>
> >> Cheers,
> >> Ahmad
> >>
> >> -- 
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
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


