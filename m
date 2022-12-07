Delivery-date: Wed, 07 Dec 2022 07:58:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oNW-00DLH5-AK
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 07:58:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2oNV-0007iF-0Y
	for lore@pengutronix.de; Wed, 07 Dec 2022 07:58:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+cgggmoAFL1HLFyMoaUYVYXVm89RwTpnZxIs/c/iw4c=; b=DNVH0+MGvW5L715ekOGJ2C+R+D
	MUCfefyRXSRMJJQo1QLpGqIyPQJWgCnrQjIHWaDJbkrRmRJWetU+wZ4NWKIcJCCkjm70dg2VY81Rx
	0ZvkOMSIBlnfKwZO1IPKC0lEQ0j5OB7L1XCYBz8bm/lL3OgVh3mHYRM0LGItGwusjpPzKNbua0IaI
	ysB0TXVSSMIYDQsFTX7Oz/eheaG7hNrCwrGoqSAAtu+sDBttdhuFXfacUF50W99i9qGwqY4Pn5oUa
	IcjodfyOwFLjwOdbJ5ZFxf+dGgdZbmyJYW5S3iQzMkShTEb6mou5i6B4YD8y7rfJDNgx80eQ6AHrf
	eEcHwVQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oMJ-00DXaJ-KQ; Wed, 07 Dec 2022 06:56:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2oME-00DXPS-JX
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 06:56:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oMC-0007ct-SU; Wed, 07 Dec 2022 07:56:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p2oMC-0000Q3-LX; Wed, 07 Dec 2022 07:56:40 +0100
Date: Wed, 7 Dec 2022 07:56:40 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221207065640.GY29728@pengutronix.de>
References: <20221205133033.3008535-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221205133033.3008535-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_225642_663151_23D98652 
X-CRM114-Status: GOOD (  25.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] treewide: rename CONFIG_HAS_ARCH_SJLJ to
 CONFIG_ARCH_HAS_SJLJ
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 05, 2022 at 02:30:33PM +0100, Ahmad Fatoum wrote:
> We have 9 symbols beginning with ARCH_HAS, but only with HAS_ARCH.
> Change it over for symmetry. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/Kconfig        | 2 +-
>  arch/kvx/Kconfig        | 2 +-
>  arch/mips/Kconfig       | 2 +-
>  arch/mips/lib/Makefile  | 2 +-
>  arch/openrisc/Kconfig   | 2 +-
>  arch/powerpc/Kconfig    | 2 +-
>  arch/riscv/Kconfig      | 2 +-
>  arch/riscv/lib/Makefile | 2 +-
>  arch/sandbox/Kconfig    | 2 +-
>  arch/x86/Kconfig        | 4 ++--
>  common/Kconfig          | 4 ++--
>  11 files changed, 13 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 59fce0c601b4..759b29ee77e1 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -7,7 +7,7 @@ config ARM
>  	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
>  	select HAVE_IMAGE_COMPRESSION
>  	select HAVE_ARCH_KASAN
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
>  	default y
>  
> diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
> index 5e7ddeea1ce5..e18d02fffc11 100644
> --- a/arch/kvx/Kconfig
> +++ b/arch/kvx/Kconfig
> @@ -14,7 +14,7 @@ config KVX
>  	select FLEXIBLE_BOOTARGS
>  	select FITIMAGE
>  	select GENERIC_FIND_NEXT_BIT
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	select HAS_CACHE
>  	select HAS_DMA
>  	select LIBFDT
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index be5a4ff30de9..70d85690dab9 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -302,7 +302,7 @@ choice
>  config 32BIT
>  	bool "32-bit barebox"
>  	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	help
>  	  Select this option if you want to build a 32-bit barebox.
>  
> diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> index 1ef340202acf..00d72d0a1a0a 100644
> --- a/arch/mips/lib/Makefile
> +++ b/arch/mips/lib/Makefile
> @@ -10,7 +10,7 @@ obj-y += reloc.o
>  obj-y += sections.o
>  obj-y += shutdown.o
>  obj-y += dma-default.o
> -obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o
> +obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o
>  
>  obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memcpy.o
>  obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memset.o
> diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
> index 34b24bec0858..4ae03b748c79 100644
> --- a/arch/openrisc/Kconfig
> +++ b/arch/openrisc/Kconfig
> @@ -6,7 +6,7 @@ config OPENRISC
>  	select HAS_CACHE
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	select GENERIC_FIND_NEXT_BIT
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	default y
>  
>  # not used
> diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
> index 7525ecef4948..4ae6d423af15 100644
> --- a/arch/powerpc/Kconfig
> +++ b/arch/powerpc/Kconfig
> @@ -8,7 +8,7 @@ config PPC
>  	select HAS_CACHE
>  	select GENERIC_FIND_NEXT_BIT
>  	select OFTREE
> -	select HAS_ARCH_SJLJ
> +	select CONFIG_ARCH_HAS_SJLJ
>  	default y
>  
>  choice
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 1190cd42723f..cd7f4abf5694 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -13,7 +13,7 @@ config RISCV
>  	select HAVE_PBL_IMAGE
>  	select HAVE_PBL_MULTI_IMAGES
>  	select HAVE_IMAGE_COMPRESSION
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	select HAS_KALLSYMS
>  	select RISCV_TIMER if RISCV_SBI
>  	select HW_HAS_PCI
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index f3db5320f751..693248080070 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -4,7 +4,7 @@ extra-y += barebox.lds
>  
>  obj-y += dtb.o
>  obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
> -obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
> +obj-$(CONFIG_ARCH_HAS_SJLJ) += setjmp.o longjmp.o
>  obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
>  obj-$(CONFIG_RISCV_SBI) += sbi.o
>  obj-$(CONFIG_CMD_RISCV_CPUINFO) += cpuinfo.o
> diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
> index d3889fcac03c..366a1d0b5228 100644
> --- a/arch/sandbox/Kconfig
> +++ b/arch/sandbox/Kconfig
> @@ -15,7 +15,7 @@ config SANDBOX
>  	select PARTITION_DISK
>  	select ARCH_HAS_STACK_DUMP if ASAN
>  	select GENERIC_FIND_NEXT_BIT
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  	select HAS_ASM_DEBUG_LL
>  	default y
>  
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 5e2e26cd6e5b..bd6a94bd0b0e 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -26,12 +26,12 @@ config 64BIT
>  config X86_32
>  	def_bool y
>  	depends on !64BIT
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  
>  config X86_64
>  	def_bool y
>  	depends on 64BIT
> -	select HAS_ARCH_SJLJ
> +	select ARCH_HAS_SJLJ
>  
>  endmenu
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index fb2bf4968310..19cd79311016 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -27,7 +27,7 @@ config HAS_DMA
>  	  Drivers that depend on a DMA implementation can depend on this
>  	  config, so that you don't get a compilation error.
>  
> -config HAS_ARCH_SJLJ
> +config ARCH_HAS_SJLJ
>  	bool
>  	help
>  	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
> @@ -1004,7 +1004,7 @@ config POLLER
>  config BTHREAD
>  	bool "barebox co-operative (green) thread infrastructure"
>  	select HAS_SCHED
> -	depends on HAS_ARCH_SJLJ
> +	depends on ARCH_HAS_SJLJ
>  	help
>  	  barebox threads are lightweight cooperative (green) threads that are
>  	  scheduled within delay loops and the console idle to asynchronously
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


