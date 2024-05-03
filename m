Delivery-date: Fri, 03 May 2024 09:21:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nEa-00GoJn-29
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:21:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2nEZ-0000VI-Mr
	for lore@pengutronix.de; Fri, 03 May 2024 09:21:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S1S0kS2nDvXaRc52S993FeEZLufzATUAaoB0i0K56v8=; b=BklLJU2pPnrNitzQJxLqnR1QOx
	MZ/XojcItr+pIy9ZUOvjZlcKYnVh47y4tPs60jsfc6okjQ2knmm/yamq2GO8Kn9I1cbLUYxbZlFM7
	g+y5cv6Frs7sZFq1BNcUHCmL6qtikU5gdQourwZNN37aRWSVLXZL4ZIICdkyUzr8UHhiIZHeb4CE0
	Ol5I0D0UtQ90XbnY27K8tpXtJfrreZeZ/TK5kh/FrmRikhH4wVEjCmoi2yVeEhnk62jGBfkQSY0bm
	TMZ8fYAz29JjrbkwVbs2dpEJYpo5RXzpZSE7N2Om/+1Iu6vOl+QGPaHx/ckos3gbY6JmTqbDGcoFE
	z0IdgPsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nE3-0000000FRXu-0V0o;
	Fri, 03 May 2024 07:20:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2nDz-0000000FRWE-46fF
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:20:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s2nDx-0000OD-7z; Fri, 03 May 2024 09:20:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s2nDw-00Ff2h-Rh; Fri, 03 May 2024 09:20:52 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s2nDw-009HT2-2J;
	Fri, 03 May 2024 09:20:52 +0200
Date: Fri, 3 May 2024 09:20:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZjSQVPs3xsyJN-H4@pengutronix.de>
References: <20240430112941.3207284-1-m.felsch@pengutronix.de>
 <20240430112941.3207284-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430112941.3207284-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_002056_047437_A74CB726 
X-CRM114-Status: GOOD (  33.22  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8M: add support to handle ROM SError
 ERR050350
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 30, 2024 at 01:29:41PM +0200, Marco Felsch wrote:
> This ports U-Boot commit:
> 
> | commit 2f3c92060dcd6bc9cfd3e2e344a3e1745ca39f09
> | Author: Peng Fan <peng.fan@nxp.com>
> | Date:   Thu Jul 9 13:39:26 2020 +0800
> |
> |     imx8m: workaround ROM serror
> |
> |     ROM SError happens on two cases:
> |
> |     1. ERR050342, on iMX8MQ HDCP enabled parts ROM writes to GPV1 register, but
> |     when ROM patch lock is fused, this write will cause SError.
> |
> |     2. ERR050350, on iMX8MQ/MM/MN, when the field return fuse is burned, HAB
> |     is field return mode, but the last 4K of ROM is still protected and cause
> |     SError.
> |
> |     Since ROM mask SError until ATF unmask it, so then ATF always meets the
> |     exception. This patch works around the issue in SPL by enabling SPL
> |     Exception vectors table and the SError exception, take the exception
> |     to eret immediately to clear the SError.
> |
> |     Signed-off-by: Ye Li <ye.li@nxp.com>
> |     Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> Other than U-Boot we don't support exceptions in PBL and therefore we
> can handle it simpler by installing an dummy exception table which does
> nothing. The table gets overriden by TF-A later on anyway.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Hi all,
> 
> I'm not sure if the relocation should be done within the erratum
> handler or if we should move it into the lowlevel code per default for
> all i.MX8M platforms since the board files call it anyway after the
> lowlevel init. In the later case this would be an separate patch to drop
> the pattern:
> 
>  lowlevel_setup();
>  relocate_to_current_adr();
> 
> from the board files.
> 
> Regards,
>   Marco
> 
>  arch/arm/mach-imx/Makefile                    |  1 +
>  arch/arm/mach-imx/cpu_init.c                  | 12 +++++-
>  arch/arm/mach-imx/errata.c                    | 22 ++++++++++
>  arch/arm/mach-imx/imx8m_early_exceptions_64.S | 42 +++++++++++++++++++
>  include/mach/imx/errata.h                     | 12 ++++++
>  5 files changed, 88 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-imx/errata.c
>  create mode 100644 arch/arm/mach-imx/imx8m_early_exceptions_64.S
>  create mode 100644 include/mach/imx/errata.h
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index ce8af486aed4..d182f95673f5 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -34,6 +34,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
>  pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
>  obj-$(CONFIG_RESET_IMX_SRC) += src.o
>  lwl-y += cpu_init.o
> +lwl-y += errata.o imx8m_early_exceptions_64.o

Should likely be:

lwl-$(CONFIG_ARCH_IMX8M) += imx8m_early_exceptions_64.o

Also you can drop the _64 suffix from the filename as the imx8m_ preifx
already implies this.

>  pbl-y += xload-spi.o xload-common.o xload-imx-nand.o xload-gpmi-nand.o
>  pbl-y += xload-qspi.o
>  obj-pbl-$(CONFIG_ARCH_IMX9) += ele.o
> diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
> index c5a47d9b9154..aebbd3defaec 100644
> --- a/arch/arm/mach-imx/cpu_init.c
> +++ b/arch/arm/mach-imx/cpu_init.c
> @@ -6,6 +6,7 @@
>  #include <asm/errata.h>
>  #include <linux/types.h>
>  #include <linux/bitops.h>
> +#include <mach/imx/errata.h>
>  #include <mach/imx/generic.h>
>  #include <mach/imx/imx7-regs.h>
>  #include <mach/imx/imx8mq-regs.h>
> @@ -75,17 +76,26 @@ void imx8mm_cpu_lowlevel_init(void)
>  	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_SCTR);
>  
>  	imx8m_cpu_lowlevel_init();
> +
> +	erratum_050350_imx8m();
>  }
>  
>  void imx8mn_cpu_lowlevel_init(void)
>  	__alias(imx8mm_cpu_lowlevel_init);
>  
>  void imx8mp_cpu_lowlevel_init(void)
> -	__alias(imx8mm_cpu_lowlevel_init);
> +{
> +	/* ungate system counter */
> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_SCTR);
> +
> +	imx8m_cpu_lowlevel_init();
> +}
>  
>  void imx8mq_cpu_lowlevel_init(void)
>  {
>  	imx8m_cpu_lowlevel_init();
> +
> +	erratum_050350_imx8m();
>  }
>  
>  #define CCM_AUTHEN_TZ_NS	BIT(9)
> diff --git a/arch/arm/mach-imx/errata.c b/arch/arm/mach-imx/errata.c
> new file mode 100644
> index 000000000000..ef8de91a9278
> --- /dev/null
> +++ b/arch/arm/mach-imx/errata.c
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <mach/imx/errata.h>
> +
> +#ifdef CONFIG_CPU_V8
> +
> +extern unsigned long early_imx8m_vectors;
> +
> +void erratum_050350_imx8m(void)
> +{
> +	if (current_el() != 3)
> +		return;
> +
> +	relocate_to_current_adr();
> +
> +	asm volatile("msr vbar_el3, %0" : : "r" (&early_imx8m_vectors) : "cc");
> +	asm volatile("msr daifclr, #4;isb");
> +}
> +
> +#endif /* CONFIG_CPU_V8 */
> diff --git a/arch/arm/mach-imx/imx8m_early_exceptions_64.S b/arch/arm/mach-imx/imx8m_early_exceptions_64.S
> new file mode 100644
> index 000000000000..cd91e1a07b9c
> --- /dev/null
> +++ b/arch/arm/mach-imx/imx8m_early_exceptions_64.S
> @@ -0,0 +1,42 @@
> +/*
> + * (C) Copyright 2013
> + * David Feng <fenghua@phytium.com.cn>
> + *
> + * SPDX-License-Identifier:	GPL-2.0+
> + */
> +
> +#include <linux/linkage.h>
> +
> +#ifdef CONFIG_CPU_V8
> +
> +/*
> + * Early exception vectors.
> + */
> +	.align	11
> +	.globl	early_imx8m_vectors
> +early_imx8m_vectors:
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +	.align	7
> +		eret
> +
> +#endif /* CONFIG_CPU_V8 */
> diff --git a/include/mach/imx/errata.h b/include/mach/imx/errata.h
> new file mode 100644
> index 000000000000..f63342d446fc
> --- /dev/null
> +++ b/include/mach/imx/errata.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __MACH_IMX_ERRATA_H
> +#define __MACH_IMX_ERRATA_H
> +
> +#ifdef CONFIG_CPU_V8

No need to ifdef function prototypes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


