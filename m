Delivery-date: Wed, 05 Oct 2022 08:37:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofy2G-006T0m-7H
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 08:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofy2F-0005js-2S
	for lore@pengutronix.de; Wed, 05 Oct 2022 08:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3jkYm7Z0R5VR5R7yHT007R8N2T2Uhgbv6FdqD1aB4oo=; b=2DBI3NUmTDgVDHwdMdY5RBepJZ
	BwE7MOQY4T4giv5UrYMFDWq8ZLlhycAuJSmxk9guwV6FoHeP1f3be3nn52yvLECALgc2qnIVP+f8l
	tPmAYix6HjtrgrQV2fguIhkRosulaR4B8IJgLTjX9wgFjw6ejFLRfpxrpcFYv2emFSCtWvTzFfaTV
	AwGkIgHIEXuR6V1RcOHwKOYOuasSzOgjZ7yi7rx+1N9aC4tN0nps8grXzUEUgQ68JAgHWm2XIWKHs
	5CKsUi3J29dZduek0P6UVwCUfpnNJwkwLYDKyr3gSVnET11hSOvE3FEGu+txDsICb6WDhNIDUC0LB
	1VK9km2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofy0x-00CgJa-Rm; Wed, 05 Oct 2022 06:36:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofy0s-00CgJF-Lq
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 06:36:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofy0q-0005f2-Pj; Wed, 05 Oct 2022 08:36:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofy0q-0005Do-IN; Wed, 05 Oct 2022 08:36:12 +0200
Date: Wed, 5 Oct 2022 08:36:12 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221005063612.GP986@pengutronix.de>
References: <20221004154800.3457742-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221004154800.3457742-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_233614_750164_1FA9D54C 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: implement DEBUG_LL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 04, 2022 at 05:48:00PM +0200, Ahmad Fatoum wrote:
> We can't currently debug malloc() or early parts of the driver model on
> sandbox, because we require both to allocate the sandbox console device.
> 
> To make debugging such early startup easier in future, add some simple
> DEBUG_LL support.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/Kconfig                |  1 +
>  arch/sandbox/Makefile               |  3 ++-
>  arch/sandbox/include/asm/debug_ll.h | 16 ++++++++++++++++
>  3 files changed, 19 insertions(+), 1 deletion(-)
>  create mode 100644 arch/sandbox/include/asm/debug_ll.h

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
> index a8bca8757f28..d3889fcac03c 100644
> --- a/arch/sandbox/Kconfig
> +++ b/arch/sandbox/Kconfig
> @@ -16,6 +16,7 @@ config SANDBOX
>  	select ARCH_HAS_STACK_DUMP if ASAN
>  	select GENERIC_FIND_NEXT_BIT
>  	select HAS_ARCH_SJLJ
> +	select HAS_ASM_DEBUG_LL
>  	default y
>  
>  config ARCH_TEXT_BASE
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index aee6bccc9c14..d5ba05ba866f 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -30,7 +30,8 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
>  		-Dopendir=barebox_opendir -Dreaddir=barebox_readdir \
>  		-Dclosedir=barebox_closedir -Dreadlink=barebox_readlink \
>  		-Doptarg=barebox_optarg -Doptind=barebox_optind \
> -		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp
> +		-Dsetjmp=barebox_setjmp -Dlongjmp=barebox_longjmp \
> +		-Dputchar=barebox_putchar
>  
>  machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
>  
> diff --git a/arch/sandbox/include/asm/debug_ll.h b/arch/sandbox/include/asm/debug_ll.h
> new file mode 100644
> index 000000000000..7bef8710581e
> --- /dev/null
> +++ b/arch/sandbox/include/asm/debug_ll.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_DEBUG_LL__
> +#define __ASM_DEBUG_LL__
> +
> +#undef putchar
> +
> +static inline void PUTC_LL(char ch)
> +{
> +	int putchar(int c);
> +	putchar(ch);
> +}
> +
> +#define putchar barebox_putchar
> +
> +#endif /* __ASM_DEBUG_LL__ */
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


