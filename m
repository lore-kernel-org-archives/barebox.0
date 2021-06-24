Delivery-date: Thu, 24 Jun 2021 15:25:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwPMW-0002zs-Da
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 15:25:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwPMV-0003pz-F1
	for lore@pengutronix.de; Thu, 24 Jun 2021 15:25:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y58FPA/hQE0g1FHuRfTU4uU/2Rf/ZMgg2pAuUFk6dlM=; b=BEP9GbwNzAkRVF
	U0TCim9sfpdG2Pw++eIT7COQUHoznP0blLVBhGSKbQfMdvNak7Ue7IWwM18HI/uHw4UidVTD0iMLQ
	y5gNHoT5jhQGsvAkwNRt9rGoOok8FZJQHrK3zVy9TpIYHkdnNChbU4k4s1+EqZ9fkEttApOgUJ2Zk
	86zSP68vlCArP4nJ6zuuseMleICV5IA3u7cP/qRYTzOiUcXZsnI076LZtt/I5FWcLFFEXIPYjUBY5
	kb60oMSzug9591ZFtzuA8HIaEeLhMKN5S2HzVQaPMhcTSLZuBWzVaMNNqA76SUp5jHbdgpmz4aoZi
	JcVjkPQtxEGBPUa7lPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwPLJ-00EnIm-Sl; Thu, 24 Jun 2021 13:24:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwPLE-00EnHa-VK
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 13:24:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lwPLD-0003an-P9; Thu, 24 Jun 2021 15:24:23 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lwPLD-0006HT-FM; Thu, 24 Jun 2021 15:24:23 +0200
Date: Thu, 24 Jun 2021 15:24:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210624132423.GD28030@pengutronix.de>
References: <20210624102342.269363-1-m.tretter@pengutronix.de>
 <20210624102342.269363-5-m.tretter@pengutronix.de>
 <c06d88d6-db66-0a43-a4d8-3717c329c928@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c06d88d6-db66-0a43-a4d8-3717c329c928@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:20:49 up 126 days, 16:44, 127 users,  load average: 0.15, 0.19,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_062425_058129_22EF16EA 
X-CRM114-Status: GOOD (  29.11  )
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
Subject: Re: [PATCH 4/7] ARM: zynqmp: add update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 24 Jun 2021 12:52:58 +0200, Ahmad Fatoum wrote:
> On 24.06.21 12:23, Michael Tretter wrote:
> > The ZynqMP boots from an SDHCI device by reading a boot.bin file from
> > the FAT16/32 partition, which is the first partition in the MBR.
> > 
> > The update handler copies a boot.bin image to this partition, which
> > might be board specific.
> 
> Is barebox the boot.bin or is that a separate first stage bootloader?

Both. The boot.bin contains at least the first stage bootloader, TF-A, and
Barebox. You cannot boot a "standalone" Barebox image on the ZynqMP.

I also documented this in the zynqmp documentation as part of this patch
series.

Michael

> 
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/mach-zynqmp/Makefile                 |  1 +
> >  .../arm/mach-zynqmp/include/mach/zynqmp-bbu.h | 21 ++++++++
> >  arch/arm/mach-zynqmp/zynqmp-bbu.c             | 48 +++++++++++++++++++
> >  3 files changed, 70 insertions(+)
> >  create mode 100644 arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
> >  create mode 100644 arch/arm/mach-zynqmp/zynqmp-bbu.c
> > 
> > diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
> > index 14b8a4e46b87..e24a43c0d59f 100644
> > --- a/arch/arm/mach-zynqmp/Makefile
> > +++ b/arch/arm/mach-zynqmp/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-or-later
> >  obj-y += firmware-zynqmp.o
> >  obj-y += zynqmp.o
> > +obj-$(CONFIG_BAREBOX_UPDATE) += zynqmp-bbu.o
> > diff --git a/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h b/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
> > new file mode 100644
> > index 000000000000..8502791ee0f7
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/include/mach/zynqmp-bbu.h
> > @@ -0,0 +1,21 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
> > + */
> > +#ifndef __MACH_ZYNQMP_BBU_H
> > +#define __MACH_ZYNQMP_BBU_H
> > +
> > +#include <bbu.h>
> > +
> > +#ifdef CONFIG_BAREBOX_UPDATE
> > +int zynqmp_bbu_register_handler(const char *name, char *devicefile,
> > +				unsigned long flags);
> > +#else
> > +static int zynqmp_bbu_register_handler(const char *name, char *devicefile,
> > +				       unsigned long flags)
> > +{
> > +	return 0;
> > +};
> > +#endif
> > +
> > +#endif /* __MACH_ZYNQMP_BBU_H */
> > diff --git a/arch/arm/mach-zynqmp/zynqmp-bbu.c b/arch/arm/mach-zynqmp/zynqmp-bbu.c
> > new file mode 100644
> > index 000000000000..d1197c01dc41
> > --- /dev/null
> > +++ b/arch/arm/mach-zynqmp/zynqmp-bbu.c
> > @@ -0,0 +1,48 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 Michael Tretter <m.tretter@pengutronix.de>
> > + */
> > +
> > +#include <common.h>
> > +#include <libfile.h>
> > +#include <mach/zynqmp-bbu.h>
> > +
> > +static int zynqmp_bbu_handler(struct bbu_handler *handler,
> > +		struct bbu_data *data)
> > +{
> > +	int ret = 0;
> > +
> > +	ret = bbu_confirm(data);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = copy_file(data->imagefile, data->devicefile, 1);
> > +	if (ret < 0) {
> > +		pr_err("update failed: %s", strerror(-ret));
> > +		return ret;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +int zynqmp_bbu_register_handler(const char *name, char *devicefile,
> > +		unsigned long flags)
> > +{
> > +	struct bbu_handler *handler;
> > +	int ret = 0;
> > +
> > +	if (!name || !devicefile)
> > +		return -EINVAL;
> > +
> > +	handler = xzalloc(sizeof(*handler));
> > +	handler->name = name;
> > +	handler->devicefile = devicefile;
> > +	handler->flags = flags;
> > +	handler->handler = zynqmp_bbu_handler;
> > +
> > +	ret = bbu_register_handler(handler);
> > +	if (ret)
> > +		free(handler);
> > +
> > +	return ret;
> > +}
> > 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

