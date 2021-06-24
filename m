Delivery-date: Thu, 24 Jun 2021 15:22:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwPJQ-0002wP-Gg
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 15:22:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwPJP-0003PP-AO
	for lore@pengutronix.de; Thu, 24 Jun 2021 15:22:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0SYCNXt0tHrh3rCekUQfZL76pfwRd9u/gVa5AFr2BA=; b=ODqtMq9mAa9rUe
	E6mVKMZxyFhrsNaYqI1ZZ7ALUVvAZ/10ZuYUTDAxUNKNYxSLewo6jaLMaIRCs/A/ItlvPahUroP28
	/4Js9Hc5b512TlXFHmMkXQA5OnDiKgc/WjuL/NwCXc7rwpCiXiOIelIrYnrt8zrJNwQA60rImEC77
	o60E/mGt0m+TaeidvRWYQS7eNyH/sMKzLrcrd2Layzfnx4ZQkrEEA6InE3XOSQy82u+Tz3SK2bRbd
	BQW7lNPWzk8Hl8Nss8YW93u3ab1b3EfaUvbeMTGx6Za7/Og+qIjkfy/yZEje+9xj/xrg6Kaoi95t4
	jC3cnVqXAzzgAJhRjuRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwPHn-00EmbD-Fo; Thu, 24 Jun 2021 13:20:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwPHi-00Emak-ML
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 13:20:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lwPHg-00038X-NV; Thu, 24 Jun 2021 15:20:44 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lwPHg-0006FA-Du; Thu, 24 Jun 2021 15:20:44 +0200
Date: Thu, 24 Jun 2021 15:20:44 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210624132044.GC28030@pengutronix.de>
References: <20210624102342.269363-1-m.tretter@pengutronix.de>
 <20210624102342.269363-2-m.tretter@pengutronix.de>
 <d4c75885-e160-c875-3370-484e8c9a7739@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4c75885-e160-c875-3370-484e8c9a7739@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:01:54 up 126 days, 16:25, 129 users,  load average: 1.78, 0.65,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_062046_781365_277B4077 
X-CRM114-Status: GOOD (  35.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/7] ARM: zynqmp: set reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 24 Jun 2021 12:48:44 +0200, Ahmad Fatoum wrote:
> On 24.06.21 12:23, Michael Tretter wrote:
> > The reset reason is available in the APB register set on the ZynqMP.
> > Read the reset reason and set the reset source accordingly.
> > 
> > There might be multiple bits set in the APB register. Use the MSB for
> > determining the actual reset source.
> 
> APB is usually the AMBA Advanced Peripheral Bus. Perhaps CRL is the
> actual name of the register and APB just tells that it's mapped there?

Ack. The data sheet calls it "Clock and Reset control registers for LPD." I
will fix it in v2.

> 
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/mach-zynqmp/Makefile              |  1 +
> >  arch/arm/mach-zynqmp/include/mach/zynqmp.h |  6 ++
> >  arch/arm/mach-zynqmp/zynqmp.c              | 74 ++++++++++++++++++++++
> >  3 files changed, 81 insertions(+)
> >  create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp.h
> >  create mode 100644 arch/arm/mach-zynqmp/zynqmp.c
> > 
> > diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
> > index 021efc94afaf..14b8a4e46b87 100644
> > --- a/arch/arm/mach-zynqmp/Makefile
> > +++ b/arch/arm/mach-zynqmp/Makefile
> > @@ -1,2 +1,3 @@
> >  # SPDX-License-Identifier: GPL-2.0-or-later
> >  obj-y += firmware-zynqmp.o
> > +obj-y += zynqmp.o
> > diff --git a/arch/arm/mach-zynqmp/include/mach/zynqmp.h b/arch/arm/mach-zynqmp/include/mach/zynqmp.h
> > new file mode 100644
> > index 000000000000..f6c05f35a470
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/include/mach/zynqmp.h
> 
> Nitpick: revision.h sounds more self-describing.

Ok. I thought there might be some more soc specific function instead of
revision specific functions here, but revision.h is fine for me as well.

> 
> > @@ -0,0 +1,6 @@
> > +#ifndef __MACH_ZYNQMP_H
> > +#define __MACH_ZYNQMP_H
> > +
> > +int zynqmp_soc_revision(void);
> > +
> > +#endif /* __MACH_ZYNQMP_H */
> > diff --git a/arch/arm/mach-zynqmp/zynqmp.c b/arch/arm/mach-zynqmp/zynqmp.c
> > new file mode 100644
> > index 000000000000..2b3bd8406ce9
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/zynqmp.c
> > @@ -0,0 +1,74 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <linux/types.h>
> > +#include <reset_source.h>
> > +
> > +#include <mach/zynqmp.h>
> > +
> > +#define ZYNQMP_CRL_APB_BASE		0xff5e0000
> > +#define ZYNQMP_CRL_APB_RESET_REASON	(ZYNQMP_CRL_APB_BASE + 0x220)
> > +
> > +/* External POR: The PS_POR_B reset signal pin was asserted. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_EXTERNAL   BIT(0)
> > +/* Internal POR: A system error triggered a POR reset. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_INTERNAL   BIT(1)
> > +/* Internal system reset; A system error triggered a system reset. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_PMU        BIT(2)
> > +/* PS-only reset: Write to PMU_GLOBAL.GLOBAL_RESET [PS_ONLY_RST]. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_PSONLY     BIT(3)
> > +/* External system reset: The PS_SRST_B reset signal pin was asserted. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_SRST       BIT(4)
> > +/* Software system reset: Write to RESET_CTRL [soft_reset]. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_SOFT       BIT(5)
> > +/* Software debugger reset: Write to BLOCKONLY_RST [debug_only]. */
> > +#define ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS  BIT(6)
> > +
> > +struct zynqmp_reset_reason {
> > +	u32 mask;
> > +	enum reset_src_type type;
> > +};
> > +
> > +static const struct zynqmp_reset_reason reset_reasons[] = {
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_DEBUG_SYS,	RESET_UKWN },
> 
> RESET_JTAG?

I am not sure, if I understand RESET_JTAG correctly. The reference manual says
that it is like a soft reset while preserving the debug logic and originates
in the DAP controller. Is this RESET_JTAG?

> 
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_SOFT,		RESET_RST },
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_SRST,		RESET_POR },
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_PSONLY,		RESET_POR },
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_PMU,		RESET_POR },
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_INTERNAL,		RESET_POR },
> > +	{ ZYNQMP_CRL_APB_RESET_REASON_EXTERNAL,		RESET_POR },
> 
> RESET_EXT?

This bit is set for a normal POR, too.

> 
> > +	{ /* sentinel */ }
> > +};
> > +
> > +static enum reset_src_type zynqmp_get_reset_src(void)
> > +{
> > +	enum reset_src_type type = RESET_UKWN;
> > +	unsigned int i;
> > +	u32 val;
> > +
> > +	val = readl(ZYNQMP_CRL_APB_RESET_REASON);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(reset_reasons); i++) {
> > +		if (val & reset_reasons[i].mask) {
> > +			type = reset_reasons[i].type;
> > +			break;
> > +		}
> > +	}
> > +
> > +	pr_info("ZynqMP reset reason %s (ZYNQMP_CRL_APB_RESET_REASON: 0x%08x)\n",
> > +		reset_source_to_string(type), val);
> > +
> > +	return type;
> > +}
> > +
> > +static int zynqmp_init(void)
> > +{
> > +	reset_source_set(zynqmp_get_reset_src());
> > +
> > +	return 0;
> > +}
> > +postcore_initcall(zynqmp_init);
> > 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

