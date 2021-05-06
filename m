Delivery-date: Thu, 06 May 2021 13:34:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecH7-00020b-7r
	for lore@lore.pengutronix.de; Thu, 06 May 2021 13:34:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lecH6-00083V-AA
	for lore@pengutronix.de; Thu, 06 May 2021 13:34:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lzbDdJQAKGy7RVpgmIiOapIZckZ3CbubspRktjSbl7c=; b=MjXtmTeN913s+AgOhwPJsV8hb
	993WYwdHt68Vgm8dH3io4K86UcD+qpiHe0qb8/pYhL+hZbu795gBciT55PLdUS+sgQ9A6l5HF2gRQ
	hnFnLLhBQp14FeZD+eVMX3E1dmWUK6i4SDTQdfGYebgidghMvEWHbY2zyK6+IfTLiUImYv+nF6fov
	/pqSqAG3QtPbkqa9FpR3y85hUejS5WLYneRQi2TogkxZaD4dG7kVKMANpg3UL6/H0tNLhMLnPuowL
	djkDoPzK/TjveC4Cq1jQzEVLwsLmPmcJJW0w41GBOqv2AI6Idgf4vKf3bRoXkFVZUYJaPvMTm4UfH
	jT85OY7RQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lecG9-0048gn-HB; Thu, 06 May 2021 11:33:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecG2-0048gW-3H
 for barebox@desiato.infradead.org; Thu, 06 May 2021 11:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=1c2feyKdb2EjOgegfutKT53nqsOa59qEcZXcugp3tQI=; b=mUVAGUtZ6yl4uqd00KvNGOYJ7W
 DN29EUVqQQQMI+pNojUtgqoxwke+LYVPT0GbmHQ+MtW1aX+Zdp6vDwmm/5QiH4ZRHtowryvzSKERG
 b5zMUOBEKvxYqoLL59SkPdDrCoBdY4jtUnMh8tf6BCPNXrR6vacs3a+sgLSg4zgAFJMzf86KFLyqC
 nxi9xuX9z83QFe3bi/j4W5x8r+D21LOO8aN325ldLpNmeg7N9QbJxXBROlQAFa7hnS/cde+5+TTkt
 zshxOqA+414txffx981cP5eRyWecvFtr/BLlU5MWfCdRVUb7mWZNPR5O+K+CkAegt3SaBc8MUGpx1
 ugWfbFrQ==;
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lecFz-005zRW-4I
 for barebox@lists.infradead.org; Thu, 06 May 2021 11:33:28 +0000
Received: by mail-lj1-x233.google.com with SMTP id b21so6576313ljf.11
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 04:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1c2feyKdb2EjOgegfutKT53nqsOa59qEcZXcugp3tQI=;
 b=uMtHJayUPlgz3ab3Tw/V4j4ErYPcUbt+of4aPi6UBgnpcVbtdFqCjAqcWjX4YZmX0u
 UQPKH5D5yTZEgyUnDRHnJI7R32UvezgLaCSiZ3b5BQH7zHGetSZWV5K4qb7ire6o9eYe
 UbMbXhj8qw7GVwNwaw1cPG5MOTb234D6MIH4C42g3T9gITLEZYkO4vheyenJqxfjMUpJ
 lGLQgFPLjMfYHbc18ZaDP7cV9H4ItLrd47K6P7Y4Jw94y7ZucbNhUhxibVqVtF3E1IQt
 A6YYf/gyFVs6sOWoXSRx3HjAYcnBJ1jvVJaTbtthzsIPbGZ1HTZCjVd3pSVX8EykTV7q
 WtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1c2feyKdb2EjOgegfutKT53nqsOa59qEcZXcugp3tQI=;
 b=cOtmSfscrvHxb8e3OD149QP3SacReobpbRs/aX2ToBMeTMouWUDZn3IKMWIHz4qNOu
 dgc2IaoXsyn2976kzr/s+nvki9VEoswt+qWuPjaNK99ijKzHn2miFJCVif8mznN2v0sQ
 6yYOmvp+/PVctXxnSHCpKShTLLvZB7ul/fwtnQ63ye74VaUlZX8qYhWS2Zb+GmIqonNx
 5G6Kom8l0loT6xoLyPM+IuZVMPJmIEUFn+JWBUJyMY38rxMHQL0MR7uVuOBMaGWpa7Px
 G2uAkL2maMjsp7DVZErIkFJ0cS909NjDbeAP2kWJqRQQ1hk9OdUTu8Bf7cHcOnTzWm4/
 nBoQ==
X-Gm-Message-State: AOAM533BGuSOA/FcIKD6IU750H991cIQtZalLXd5Z0YMnEtzUzfhDXK0
 36VJL9UvIOyQWkQOaTEa06E=
X-Google-Smtp-Source: ABdhPJyR0qJKxqx545YGx/K0ZIYarxoNWKHUDSmlOkffeuMK8giY1JQJlSfRpL3XnloHSQSjMoIuEw==
X-Received: by 2002:a05:651c:a06:: with SMTP id
 k6mr2982292ljq.347.1620300804349; 
 Thu, 06 May 2021 04:33:24 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id l10sm784305ljc.132.2021.05.06.04.33.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 May 2021 04:33:23 -0700 (PDT)
Date: Thu, 6 May 2021 14:33:22 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Roland Hieber <rhi@pengutronix.de>, Joel Stanley <joel@jms.id.au>
Cc: barebox@lists.infradead.org, Marek Czerski <m.czerski@ap-tech.pl>, Ahmad
 Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210506143322.bd692fce2559d6cf83b117bf@gmail.com>
In-Reply-To: <20210506101038.hq4rqkbl6w7wljqb@pengutronix.de>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-7-antonynpavlov@gmail.com>
 <20210506101038.hq4rqkbl6w7wljqb@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_043327_213609_358D04F6 
X-CRM114-Status: GOOD (  23.79  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] net: add LiteEth driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 6 May 2021 12:10:38 +0200
Roland Hieber <rhi@pengutronix.de> wrote:

Hi !

> On Wed, May 05, 2021 at 01:08:57PM +0300, Antony Pavlov wrote:
> > LiteEth provides a small footprint and configurable Ethernet core.
> > =

> > LiteEth is part of LiteX libraries whose aims are to lower entry level =
of
> > complex FPGA cores by providing simple, elegant and efficient implement=
ations
> > of components used in today's SoC such as Ethernet, SATA, PCIe, SDRAM C=
ontroller...
> > =

> > Using Migen to describe the HDL allows the core to be highly and easily=
 configurable.
> > =

> > LiteEth can be used as LiteX library or can be integrated with your sta=
ndard
> > design flow by generating the verilog rtl that you will use as a standa=
rd core.
> > =

> > See https://github.com/enjoy-digital/liteeth for details.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > Signed-off-by: Marek Czerski <m.czerski@ap-tech.pl>
> > ---
> >  drivers/net/Kconfig   |   8 +
> >  drivers/net/Makefile  |   1 +
> >  drivers/net/liteeth.c | 376 ++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 385 insertions(+)
> > =

> > Cc: Marek Czerski <m.czerski@ap-tech.pl>
> > =

...
> > diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> > index 656d45a868..bb751943f6 100644
> > --- a/drivers/net/Makefile
> > +++ b/drivers/net/Makefile
> > @@ -36,3 +36,4 @@ obj-$(CONFIG_DRIVER_NET_TAP)		+=3D tap.o
> >  obj-$(CONFIG_DRIVER_NET_TSE)		+=3D altera_tse.o
> >  obj-$(CONFIG_DRIVER_NET_EFI_SNP)	+=3D efi-snp.o
> >  obj-$(CONFIG_DRIVER_NET_AG71XX)		+=3D ag71xx.o
> > +obj-$(CONFIG_DRIVER_NET_LITEETH)	+=3D liteeth.o
> > diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
> > new file mode 100644
> > index 0000000000..137cb854c5
> > --- /dev/null
> > +++ b/drivers/net/liteeth.c
> > @@ -0,0 +1,376 @@
> > +/*
> =

> Could you please add an SPDX-License-Identifier header [1] here? (Maybe
> also for other newly introduced files in this series, haven't checked.)
> =

> [1]: https://www.kernel.org/doc/html/latest/process/license-rules.html
> =


Original driver by Joel Stanley contains MODULE_LICENSE("GPL").
This is a bit confusing because I can't determine exact GPL version.

To: Joel Stanley

Can I add `SPDX-License-Identifier: GPL-2.0-or-later` or
`SPDX-License-Identifier: GPL-2.0-only` to the LiteEth barebox driver heade=
r?


> > + * LiteX Liteeth Ethernet
> > + *
> > + * Copyright 2017 Joel Stanley <joel@jms.id.au>
> > + *
> > + * Ported to barebox from linux kernel
> > + *   Copyright (C) 2019-2021 Antony Pavlov <antonynpavlov@gmail.com>
> > + *   Copyright (C) 2021 Marek Czerski <m.czerski@ap-tech.pl>
> > + *
> > + */

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

