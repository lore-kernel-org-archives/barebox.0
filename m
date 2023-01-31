Delivery-date: Tue, 31 Jan 2023 09:24:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMlwG-008chN-3g
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 09:24:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMlwD-0008FZ-G4
	for lore@pengutronix.de; Tue, 31 Jan 2023 09:24:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dFfI2r9fAS6gCV3mq3GLUh81ATPTCYN+/gs5Bad7+c=; b=BF7jly/6zocPCNq1xynjaDyjeo
	gGqbswDaKc2ADbAUBaLUn7cZQjyjUIs3VOHJaexeQiRaelKLpHTEfc54b/b1TJrFbL199QPKM9k3w
	2a7vS4hI8l212JYpTxffzLxOsF2y6PyEw54+eYAZGTCpmSfp0NlzMt/bXxla36XQnXOJ+pGYndQQg
	9PkCLDqPKoXZvByLwWFZ7Ljl9AuX9fjfnB/3ln+dEQWkvLapW1hjeXRpN+16nb9syHkggzyc9xRNu
	hIlG5rcGHugQZSBNY7hLZCeAYEGnI/vzM0l7xf6PWahv/pN1jQG97GjrAh1j3z46QZE7BiD5tKEQT
	q0esOIZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlv1-006h6j-Bk; Tue, 31 Jan 2023 08:23:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMlur-006h3k-Uq
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 08:22:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMluq-000852-9x; Tue, 31 Jan 2023 09:22:56 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pMluq-00072z-1M; Tue, 31 Jan 2023 09:22:56 +0100
Date: Tue, 31 Jan 2023 09:22:56 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230131082256.GC13319@pengutronix.de>
References: <20230130064510.2398689-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130064510.2398689-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_002258_039990_8F7B10E4 
X-CRM114-Status: GOOD (  25.35  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: add DEBUG_LL support for ARM64 QEMU Virt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 07:45:10AM +0100, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> We have DEBUG_LL for the PL011 on the ARM64 QEMU Virt,
> but it is unused. Wire it in.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/Kconfig                |  1 +
>  arch/arm/cpu/board-dt-2nd.c     |  2 ++
>  arch/arm/include/asm/debug_ll.h | 11 +++++++++++
>  common/Kconfig                  |  4 ++++
>  4 files changed, 18 insertions(+)
>  create mode 100644 arch/arm/include/asm/debug_ll.h

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 759b29ee77e1..8183f6d54686 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -292,6 +292,7 @@ config ARCH_ARM64_VIRT
>  	select ARM_AMBA
>  	select BOARD_ARM_VIRT
>  	select HW_HAS_PCI
> +	select HAS_ASM_DEBUG_LL
>  
>  endchoice
>  
> diff --git a/arch/arm/cpu/board-dt-2nd.c b/arch/arm/cpu/board-dt-2nd.c
> index 6f4a6f26a8c7..6f69a6dd27a2 100644
> --- a/arch/arm/cpu/board-dt-2nd.c
> +++ b/arch/arm/cpu/board-dt-2nd.c
> @@ -19,6 +19,8 @@ void dt_2nd_aarch64(void *fdt)
>  {
>  	unsigned long membase, memsize;
>  
> +	putc_ll('>');
> +
>  	/* entry point already set up stack */
>  
>  	arm_cpu_lowlevel_init();
> diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
> new file mode 100644
> index 000000000000..d7b25a7fcab9
> --- /dev/null
> +++ b/arch/arm/include/asm/debug_ll.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_DEBUG_LL_H__
> +#define __ASM_DEBUG_LL_H__
> +
> +#ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
> +#define DEBUG_LL_UART_ADDR		0x9000000
> +#include <debug_ll/pl011.h>
> +#endif
> +
> +#endif
> diff --git a/common/Kconfig b/common/Kconfig
> index 9e175d36c43e..d95797099341 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1479,6 +1479,10 @@ config DEBUG_SUN20I
>  	depends on SOC_ALLWINNER_SUN20I
>  	select DEBUG_LL_NS16550
>  
> +config DEBUG_QEMU_ARM64_VIRT
> +	bool "QEMU ARM64 Virt PL011 console"
> +	depends on ARCH_ARM64_VIRT
> +
>  endchoice
>  
>  config DEBUG_LL_NS16550
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


