Delivery-date: Thu, 18 Jan 2024 10:12:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQORl-0056gs-1I
	for lore@lore.pengutronix.de;
	Thu, 18 Jan 2024 10:12:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQORl-0001ah-Ug
	for lore@pengutronix.de; Thu, 18 Jan 2024 10:12:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AgCn7KGCoaxha9zuMWRdnmJgdap4dFLgPIw9P1lUtHU=; b=UVhHiD0DL1sxHPrnPoCie+E9gY
	Z7LXF/4HlWgb57CEeyh13zIxu2PsvN+do4EmBJTTpdgA6ooIV74DrMfLUWomGiaR+mI4gtqO+NYgI
	olem1clBqCvUDLdyZ/JQQb3ThFFqzGmF84tOmD+umPPaJm1W9LwE7fojbI0eQNE0Go0tE/csgfPQi
	jmyDI1a/7FT7cXZyCr06JZLcdCb2a+mIXWWCcPnQT6jmgNvRvd9Hm//Vxmhi+m5WmuqEMxTlO5h3F
	+8MtDNVx8huHGO6IZOc5QT6lN3QFCQw+RD0CrkdQu5oqa+hqmK11EMuujfJrlGHygSjtIYbUFwQ7M
	GkH02g4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOQl-002Ecp-0G;
	Thu, 18 Jan 2024 09:11:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQOQi-002EcG-0A
	for barebox@lists.infradead.org;
	Thu, 18 Jan 2024 09:11:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOQg-0001PP-Ri; Thu, 18 Jan 2024 10:11:18 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOQg-000eQ6-Eu; Thu, 18 Jan 2024 10:11:18 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rQOQg-000XN4-Ce; Thu, 18 Jan 2024 10:11:18 +0100
Date: Thu, 18 Jan 2024 10:11:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240118091118.q2gibngag2vqhspc@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <20240116170738.209954-3-m.felsch@pengutronix.de>
 <20240117143651.GJ4700@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117143651.GJ4700@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_011120_088069_EA8DA1A5 
X-CRM114-Status: GOOD (  27.23  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/18] ARM: i.MX8M: bundle imx-scratch code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-01-17, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 06:07:22PM +0100, Marco Felsch wrote:
> > The scatch code spread over the code base which is ok as long as we use
> > it for the bootrom-log only.
> > 
> > This commit bundles the scratch code into a own module to make it easier
> > to adapt later on and to make the scratch space independent of
> > CONFIG_ARCH_IMX_ROMAPI.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/Makefile       |  2 +-
> >  arch/arm/mach-imx/romapi.c       |  8 --------
> >  arch/arm/mach-imx/scratch.c      | 25 +++++++++++++++++++++++++
> >  arch/arm/mach-imx/xload-common.c |  8 --------
> >  include/mach/imx/romapi.h        |  2 +-
> >  include/mach/imx/scratch.h       | 17 +++++++++++++++++
> >  include/mach/imx/xload.h         | 11 -----------
> >  7 files changed, 44 insertions(+), 29 deletions(-)
> >  create mode 100644 arch/arm/mach-imx/scratch.c
> >  create mode 100644 include/mach/imx/scratch.h
> > 
> > diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> > index 3a51ae87813a..9505cffa8111 100644
> > --- a/arch/arm/mach-imx/Makefile
> > +++ b/arch/arm/mach-imx/Makefile
> > @@ -17,7 +17,7 @@ CFLAGS_imx6.o := -march=armv7-a
> >  lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
> >  obj-$(CONFIG_ARCH_IMX7) += imx7.o
> >  obj-$(CONFIG_ARCH_VF610) += vf610.o
> > -obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
> > +obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o scratch.o
> >  obj-$(CONFIG_ARCH_IMX9) += imx9.o
> >  lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
> >  obj-pbl-$(CONFIG_ARCH_IMX8M) += tzasc.o
> > diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> > index 6d47f3c6d4af..e11f38202461 100644
> > --- a/arch/arm/mach-imx/romapi.c
> > +++ b/arch/arm/mach-imx/romapi.c
> > @@ -228,14 +228,6 @@ const u32 *imx8m_get_bootrom_log(void)
> >  	return NULL;
> >  }
> >  
> > -static int imx8m_reserve_scratch_area(void)
> > -{
> > -	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
> > -				    (ulong)arm_mem_scratch_get(),
> > -				    sizeof(struct imx_scratch_space)));
> > -}
> > -device_initcall(imx8m_reserve_scratch_area);
> > -
> >  void imx8m_save_bootrom_log(void *dest)
> >  {
> >  	const u32 *rom_log;
> > diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
> > new file mode 100644
> > index 000000000000..0828b55ff8e5
> > --- /dev/null
> > +++ b/arch/arm/mach-imx/scratch.c
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +
> > +#include <asm/barebox-arm.h>
> > +#include <init.h>
> > +#include <linux/err.h>
> > +#include <mach/imx/imx8m-regs.h>
> > +#include <mach/imx/esdctl.h>
> > +#include <mach/imx/scratch.h>
> > +#include <memory.h>
> > +
> > +struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
> > +{
> > +	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
> > +		imx8m_barebox_earlymem_size(ddr_buswidth);
> > +
> > +	return (void *)arm_mem_scratch(endmem);
> > +}
> > +
> > +static int imx8m_reserve_scratch_area(void)
> > +{
> > +	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
> > +				    (ulong)arm_mem_scratch_get(),
> > +				    sizeof(struct imx_scratch_space)));
> > +}
> > +device_initcall(imx8m_reserve_scratch_area);
> 
> This reservation doesn't seem to be i.MX specific. You could move this
> to a more generic place.

You mean to use it for Rockchip,... as well or just for all i.MX SoCs? I
wanted to keep this commit as simple as possible by just shifting the
code from placeA to placeB without changing the logic nor the naming.

Regards,
  Marco

> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


