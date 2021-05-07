Delivery-date: Fri, 07 May 2021 13:28:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyeQ-0004Mp-G5
	for lore@lore.pengutronix.de; Fri, 07 May 2021 13:28:10 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyeP-0000CQ-Dt
	for lore@pengutronix.de; Fri, 07 May 2021 13:28:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J7WqJcgctVUcOZBjZlUi6BkB+mlUvz6YSCg1Cm2p510=; b=jXeKJtPcGEITO0UMekbZyFN2Y
	NVAj0/yzKlB9f1UseHSv4eJ4ebyj5clNMzC77N3VXZYKRSqG2HM0cIGf4v9QE6d/G/r0m3IVXESUe
	LPCUaIr7oiFqyvkdd1uCh+/Sv4lOvOA7I3ALFZMTAlcCQ9Hv0qEXnytxfbuEWyKkmIoA+yI9ba3pG
	yRIgtv6ynWJrcjX3eRU2BBvoCZ92RnjIMe0RHhbAlALg8itRcVAEbK9Ug0gsoqMXsamj0qAHLWgG5
	A9Vovz6F4UWaqpI1oXM1+EAmAe4kGc7CUi8tJNdd/8i+2kB5BGCPyTRJp4YKgr2Kd1mQqiE46sosp
	xq59ATJQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leydX-006x0D-7Y; Fri, 07 May 2021 11:27:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leydT-006wzO-Av
 for barebox@desiato.infradead.org; Fri, 07 May 2021 11:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=0rcnVpo7r9yScUq2N7R5zOPDlqa6/X3CvZmazoI2dCo=; b=3UIygY1UXif4q8DzITZRfCp/Va
 hhMJwzjAP5CunNQnq6MewokVsp0GmKS91s6e9z2spgllSU1vxTzT42SX8EXXCsRQHQdhHyccDaJ67
 RT2o0k3BDWUebTpBDgs94jD2WA0rDEO0b3wJIgzrN92j7u+3eagEqrkSVXX0xPZyRxfmRTzVXYcnV
 AgEKougG2GjQ36FjX9mBOUy0y+dSgpvijTROSLaWDU17ji0x4podA/Bv52TgodSFqgfDOl7Akiaem
 VM+pXIXbfeZgTHmXQE26leutnZXPrWGNRwr1CZv2lwEhSn1w9j2kn/u3tDSMWtv3tqQO7e3xjHpEq
 i7qQVl6g==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leydP-006olu-OH
 for barebox@lists.infradead.org; Fri, 07 May 2021 11:27:09 +0000
Received: by mail-lj1-x236.google.com with SMTP id v6so11113542ljj.5
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 04:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0rcnVpo7r9yScUq2N7R5zOPDlqa6/X3CvZmazoI2dCo=;
 b=RaqnzdrzcJYcBxLqsM6vBEIc6++pzPx1ULOmAWOdwflb0KOrKcv/9em7hRBOpFSQ5I
 yhSrN8OIJ6+HNu+YF01pvbHzCGOA6Nob5kjuC5mwSJr7V84KPfPnAb/O7d4Xh8C7aq8+
 9Vly83MGmQfbxJqlhZ//AUZw+oO8Mve14XvFWKEnlD61iXEbgl9Sa6603+vOhP2aVNM1
 RmrIu3piHwlgNCJXZfdxc7gqNhgB1WcKQQA6sd69K8Qj0G+eF6EfZ2HLCknpLHkRiUg1
 hDmFFyr7kuL6IlhSD/isNP//5gqLePfQW4pElcHhCC7IKG1csZMXczpk7k9FZnfK7iHj
 L/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0rcnVpo7r9yScUq2N7R5zOPDlqa6/X3CvZmazoI2dCo=;
 b=W/UDLV9lHwsPMAVoGQ2niv2gwKR9IYG2G8YLk0eps5gcowdU+Aqb1TJcfp5WWLIjOL
 SG7xZcfM/GTsvHjzZP+XBTa4iRmrMleuo+2CcnujZeEOsoSPnEMXM+Op3ls+bR1cepDj
 SyahJmmDH7PpWhiO09V2XlCb4ooArJf4mHp4UoNaqnHLWLlWdvTeghpVhVVy9ZprEvfx
 3aFvRXlrXVfw+NorrsG/cn3lDWVZ82myKzvhFXRPuhcHgGtU26vAExNWHTnDy6zDPgJF
 mEys1p1CcpzZSQmBpHcqIxXCVPRZvq1KXGKOwsRpXTebSmQMafKbgHIye+ggs2bAe+Mr
 3sAQ==
X-Gm-Message-State: AOAM531cLTDjhCOGJOF8Ooenem4f+DGGB6Xc9/2jLbY7yHL665nGPy0S
 duPNnAurmgWa9ZF2+0YSdQU=
X-Google-Smtp-Source: ABdhPJzuYvzHlW8aQkuR8QoI+LJns4UmtPtlITLwVGK6/TEpQFbohjjkTwUSbvoslXAJQiCPuWyZ+g==
X-Received: by 2002:a2e:9ad9:: with SMTP id p25mr7346650ljj.127.1620386826064; 
 Fri, 07 May 2021 04:27:06 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id c9sm1832832ljb.22.2021.05.07.04.27.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 04:27:05 -0700 (PDT)
Date: Fri, 7 May 2021 14:27:03 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507142703.33e2609ca0598e8050393b8c@gmail.com>
In-Reply-To: <7e99b38d-ea07-ff00-21b9-6123212b7a4c@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-6-a.fatoum@pengutronix.de>
 <20210505131801.5568b3337cefb36eda073522@gmail.com>
 <7e99b38d-ea07-ff00-21b9-6123212b7a4c@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_042707_818588_20C527C4 
X-CRM114-Status: GOOD (  32.86  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/12] RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 5 May 2021 12:21:25 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Sascha!

> Hello Antony,
> =

> On 05.05.21 12:18, Antony Pavlov wrote:
> > On Tue, 27 Apr 2021 22:23:03 +0200
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > =

> > Hi Ahmad!
> > =

> > Could you please rebase this patchseries on top of pengutronix next bra=
nch
> > and push it to github?
> > =

> > My latest LiteX SoC support patchseries introduces mach-litex/include/m=
ach/debug_ll.h.
> =

> I just commented that on your series :D
> next Branch already contains this series.
> =

> By the way, there's now lore.barebox.org, which allows you
> to download patch series as mbox via b4 (or a web browser).

Can we add lore.barebox.org link to the main page of https://www.barebox.or=
g/ ?

I suppose we can add RISC-V to list of computer architectures supported by =
barebox
at https://www.barebox.org/.

> Cheers,
> Ahmad
> =

> > =

> >> With the recent changes, we can now delete mach-erizo. Do so.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/riscv/Kconfig.socs                        |  2 +-
> >>  arch/riscv/Makefile                            | 13 -------------
> >>  .../include/mach =3D> include/asm}/debug_ll.h    | 18 +++++++--------=
---
> >>  arch/riscv/mach-erizo/Makefile                 |  3 ---
> >>  common/Kconfig                                 |  5 +++++
> >>  5 files changed, 13 insertions(+), 28 deletions(-)
> >>  rename arch/riscv/{mach-erizo/include/mach =3D> include/asm}/debug_ll=
.h (57%)
> >>  delete mode 100644 arch/riscv/mach-erizo/Makefile
> >>
> >> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> >> index 093bca33806c..ea5ae0a6e9b5 100644
> >> --- a/arch/riscv/Kconfig.socs
> >> +++ b/arch/riscv/Kconfig.socs
> >> @@ -3,7 +3,7 @@ menu "SoC selection"
> >>  config SOC_ERIZO
> >>  	bool "Erizo SoC"
> >>  	depends on ARCH_RV32I
> >> -	select HAS_DEBUG_LL
> >> +	select HAS_ASM_DEBUG_LL
> >>  	select HAS_NMON
> >>  	select USE_COMPRESSED_DTB
> >>  	select RISCV_M_MODE
> >> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> >> index 09a94d69b220..0b1278936d91 100644
> >> --- a/arch/riscv/Makefile
> >> +++ b/arch/riscv/Makefile
> >> @@ -19,8 +19,6 @@ LDFLAGS_pbl +=3D $(riscv-ldflags-y)
> >>  cflags-y +=3D $(riscv-cflags-y)
> >>  LDFLAGS_barebox +=3D -nostdlib
> >>  =

> >> -machine-$(CONFIG_SOC_ERIZO)	:=3D erizo
> >> -
> >>  LDFLAGS_barebox +=3D $(riscv-ldflags-y)
> >>  =

> >>  ifndef CONFIG_MODULES
> >> @@ -31,21 +29,10 @@ endif
> >>  =

> >>  KBUILD_BINARY :=3D barebox.bin
> >>  =

> >> -machdirs :=3D $(patsubst %,arch/riscv/mach-%/,$(machine-y))
> >> -
> >> -KBUILD_CPPFLAGS +=3D $(patsubst %,-I$(srctree)/%include,$(machdirs))
> >> -
> >>  archprepare: maketools
> >>  =

> >>  PHONY +=3D maketools
> >>  =

> >> -ifneq ($(machine-y),)
> >> -MACH  :=3D arch/riscv/mach-$(machine-y)/
> >> -else
> >> -MACH  :=3D
> >> -endif
> >> -
> >> -common-y +=3D $(MACH)
> >>  common-y +=3D arch/riscv/boards/
> >>  common-y +=3D arch/riscv/cpu/
> >>  common-y +=3D arch/riscv/lib/
> >> diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/risc=
v/include/asm/debug_ll.h
> >> similarity index 57%
> >> rename from arch/riscv/mach-erizo/include/mach/debug_ll.h
> >> rename to arch/riscv/include/asm/debug_ll.h
> >> index a20acfcdfb79..755ed09786d5 100644
> >> --- a/arch/riscv/mach-erizo/include/mach/debug_ll.h
> >> +++ b/arch/riscv/include/asm/debug_ll.h
> >> @@ -1,18 +1,10 @@
> >>  /* SPDX-License-Identifier: GPL-2.0-only */
> >>  /*
> >>   * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
> >> - *
> >> - * This file is part of barebox.
> >> - *
> >> - * This program is distributed in the hope that it will be useful,
> >> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >> - * GNU General Public License for more details.
> >> - *
> >>   */
> >>  =

> >> -#ifndef __MACH_ERIZO_DEBUG_LL__
> >> -#define __MACH_ERIZO_DEBUG_LL__
> >> +#ifndef __ASM_DEBUG_LL__
> >> +#define __ASM_DEBUG_LL__
> >>  =

> >>  /** @file
> >>   *  This File contains declaration for early output support
> >> @@ -20,6 +12,8 @@
> >>  =

> >>  #include <linux/kconfig.h>
> >>  =

> >> +#ifdef CONFIG_DEBUG_ERIZO
> >> +
> >>  #define DEBUG_LL_UART_ADDR	0x90000000
> >>  #define DEBUG_LL_UART_SHIFT	2
> >>  #define DEBUG_LL_UART_IOSIZE32
> >> @@ -30,4 +24,6 @@
> >>  =

> >>  #include <asm/debug_ll_ns16550.h>
> >>  =

> >> -#endif /* __MACH_ERIZO_DEBUG_LL__ */
> >> +#endif
> >> +
> >> +#endif /* __ASM_DEBUG_LL__ */
> >> diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Ma=
kefile
> >> deleted file mode 100644
> >> index d9c51e74c379..000000000000
> >> --- a/arch/riscv/mach-erizo/Makefile
> >> +++ /dev/null
> >> @@ -1,3 +0,0 @@
> >> -# just to build a built-in.o. Otherwise compilation fails when no o-f=
iles is
> >> -# created.
> >> -obj- +=3D dummy.o
> >> diff --git a/common/Kconfig b/common/Kconfig
> >> index b10fb45b722d..6d7a1c6b0494 100644
> >> --- a/common/Kconfig
> >> +++ b/common/Kconfig
> >> @@ -1342,6 +1342,11 @@ config DEBUG_RPI3_MINI_UART
> >>  	help
> >>  	  Say Y here if you want low-level debugging support on
> >>  	  RaspberryPi 3 board mini UART.
> >> +
> >> +config DEBUG_ERIZO
> >> +	bool "Erizo ns16550 port"
> >> +	depends on SOC_ERIZO
> >> +
> >>  endchoice
> >>  =

> >>  config DEBUG_IMX_UART_PORT
> >> -- =

> >> 2.29.2
> >>
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

