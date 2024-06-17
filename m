Delivery-date: Mon, 17 Jun 2024 08:50:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6CB-007RsV-1I
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 08:50:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6CA-0006xH-L9
	for lore@pengutronix.de; Mon, 17 Jun 2024 08:50:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PyMekFA+UT+RQofYup3Ygqt0rgDU86e8rH1MAyv0v90=; b=n9ArGVBVF/+dnefhNLz3/JCGtw
	qPMcUZeA8T3b+y4BlChWOBa8eoC3EMcDcdJ8wa/qDkDwFbQwnZRqquUb91/Yk2W0NXQsZ3RnDX9L9
	BZnAwGnxS5mp5m1XpSNmcxsjw88WdishmyBL/39VJ6EPbqdOEGj4PwRmIppVFVXsBFf6qQOnbOECT
	IkVAVC5DhWCNZVhh6H62vk1R7WNWPTE4Qf8rUmxA+454x4ypOILEXj9LSkY8WNEoFaD3sV6pQ1/qu
	GUU6BshNVp8z5x4FVy+rigLT03S8fCav/i/fqn27KrPdBGEHAQOzwMKGoxzvq7RKQz1aUUJA/3V/J
	V/aR2qzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6Bi-00000009UYM-1SuF;
	Mon, 17 Jun 2024 06:49:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6Be-00000009UXr-1vsI
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 06:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ6Bb-0006tp-P6; Mon, 17 Jun 2024 08:49:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ6Bb-002ui7-Ct; Mon, 17 Jun 2024 08:49:51 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sJ6Bb-00G2Bx-12;
	Mon, 17 Jun 2024 08:49:51 +0200
Date: Mon, 17 Jun 2024 08:49:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Zm_cj2rCcwPDDblA@pengutronix.de>
References: <20240613130659.165278-1-m.felsch@pengutronix.de>
 <20240613130659.165278-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240613130659.165278-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_234954_565558_8DC903B0 
X-CRM114-Status: GOOD (  31.16  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: i.MX8M: add support to handle ROM SError
 ERR050350
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 13, 2024 at 03:06:59PM +0200, Marco Felsch wrote:
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
> can handle it simpler by installing an dummy exception table to handle
> the pending exception. Later on the TF-A overrides the dummy table.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v2:
> - Adapt the Makefile
> - Drop the ifdef guard from the errata.h
> - Make use of runtime_address() to apply the erratum always during soc
>   lowlevel init.
> 
>  arch/arm/mach-imx/Makefile                 |  2 ++
>  arch/arm/mach-imx/cpu_init.c               | 12 ++++++-
>  arch/arm/mach-imx/errata.c                 | 24 +++++++++++++
>  arch/arm/mach-imx/imx8m_early_exceptions.S | 42 ++++++++++++++++++++++
>  include/mach/imx/errata.h                  |  8 +++++
>  5 files changed, 87 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-imx/errata.c
>  create mode 100644 arch/arm/mach-imx/imx8m_early_exceptions.S
>  create mode 100644 include/mach/imx/errata.h
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index cfd066c69de9..22ea48a83330 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -34,6 +34,8 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
>  pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
>  obj-$(CONFIG_RESET_IMX_SRC) += src.o
>  lwl-y += cpu_init.o
> +lwl-y += errata.o
> +lwl-$(CONFIG_ARCH_IMX8M) += imx8m_early_exceptions.o
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
> index 000000000000..afab08667879
> --- /dev/null
> +++ b/arch/arm/mach-imx/errata.c
> @@ -0,0 +1,24 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <mach/imx/errata.h>
> +
> +#ifdef CONFIG_CPU_V8
> +
> +extern char early_imx8m_vectors[];
> +
> +void erratum_050350_imx8m(void)
> +{
> +	void *addr;
> +
> +	if (current_el() != 3)
> +		return;
> +
> +	addr = runtime_address(early_imx8m_vectors);
> +
> +	asm volatile("msr vbar_el3, %0" : : "r" (addr) : "cc");
> +	asm volatile("msr daifclr, #4;isb");
> +}
> +
> +#endif /* CONFIG_CPU_V8 */
> diff --git a/arch/arm/mach-imx/imx8m_early_exceptions.S b/arch/arm/mach-imx/imx8m_early_exceptions.S
> new file mode 100644
> index 000000000000..cd91e1a07b9c
> --- /dev/null
> +++ b/arch/arm/mach-imx/imx8m_early_exceptions.S
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

This file is compiled only when CONFIG_ARCH_IMX8M is enabled. This
options selects CONFIG_CPU_V8 which makes this #ifdef unnecessary.

Dropped while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


