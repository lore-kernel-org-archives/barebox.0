Delivery-date: Fri, 07 May 2021 13:43:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leysm-0004Ot-Sz
	for lore@lore.pengutronix.de; Fri, 07 May 2021 13:43:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leysm-0001o3-0Y
	for lore@pengutronix.de; Fri, 07 May 2021 13:43:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GsibZrIUKxas2V8r+8DIG3gsJYf1ELprjmNJ+E7keZQ=; b=c7v+TEYjKk2DY1wATCC6GRxRG
	zmmrWtLOgbDmEr54vYdhsQe0E9YYzdEpUxAYVQaxmiIbIqkyIvIe4bzE+NmPRA+lsC5Py2JIzrM85
	yYoZ5WoB7TN1VXAQ8RFf2tdKL6ig4XMEuPmL0mkwXZrtz8CfuWmwvKdhKJqV6s5VwKgAOJkDI1VEC
	DJo+7MwbiY29vgkwnpj9VAUUFCUZXpmRLFpQn5Az/JhTGsaAqdKxY5pL+KwCXjfyYdpa8H5eTunVG
	vR3StY45ERCBLsd4LwtIzKUv14Ud/CFTr4pq/ygGEbajABNHpIKl6W7F/mREW3XbHydGFMGyUm7Do
	nPmlGKdBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leyry-006zi3-RA; Fri, 07 May 2021 11:42:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyrt-006zgY-4B
 for barebox@desiato.infradead.org; Fri, 07 May 2021 11:42:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=6ThPt5DHMeKhSXcKbCDAtq+b5yT2sGsiwSzYn1WISvQ=; b=xilJo0/iNJwicUALm5xfSYJNdl
 3PIvPiWgKVXSlxYLkB7nIT5rV1SFk68/xdGBHpPMsBCBlELwDG2jK+jjMTrRXIJJD9he6XN/qwBfI
 Ou0isGHoOZGYT2C4C1PNFjUC+vi2Gp1dQGgVyvbkRP56Aa59+nvF1KOcepVhLBXALmtv8TaqrcOPf
 9LAMyppOxxA2NdPS+PDZQ2IO7Z9/DLqxYcpQHfZZSA0fxii7iugdt2Ija8rOs/pEdrPINgSPQm2tC
 NhCoJJ7tzwiE/W4KQ4ShGoAm4BjFP2XPD66Zpf5o1cs9VuW3er7mf0cemTJEyOt6gEh4/0mK66ggr
 LBjq0QMw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyrq-006pFn-AX
 for barebox@lists.infradead.org; Fri, 07 May 2021 11:42:03 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leyro-0001do-OH; Fri, 07 May 2021 13:42:00 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-3-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c1791cb3-2837-eb3e-aa58-9d1eb2a3d7b5@pengutronix.de>
Date: Fri, 7 May 2021 13:42:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506220834.223350-3-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_044202_395858_531CC815 
X-CRM114-Status: GOOD (  23.75  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/11] RISC-V: make RISCV_SBI and RISCV_M_MODE
 explicitly mutually exclusive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 07.05.21 00:08, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/Kconfig                         | 22 ++++++++++++----------
>  arch/riscv/Kconfig.socs                    |  4 +++-
>  arch/riscv/configs/erizo_generic_defconfig |  1 +
>  3 files changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a4aa799acf..dcff00d63f 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -38,6 +38,18 @@ config ARCH_RV64I
>  
>  endchoice
>  
> +choice
> +	prompt "Privilege level"
> +	default RISCV_SBI
> +
> +config RISCV_SBI
> +	bool "S-mode (supervisor mode), use SBI calls"
> +
> +config RISCV_M_MODE
> +	bool "M-mode (machine mode)"
> +
> +endchoice

Hmm. I am wondering if we shouldn't just make both selectable
at the same time and fix code to call a function that determines
mode dynamically? e.g.

enum riscv_mode { RISCV_M_MODE = 1, RISCV_S_MODE = 2 };

static inline enum riscv_mode riscv_get_mode(void)
{
	if (IS_ENABLED(CONFIG_RISCV_M_MODE) && IS_ENABLED(CONFIG_RISCV_S_MODE)) {
		/* somehow determine it dynamically */
	}

	return IS_ENABLED(CONFIG_RISCV_M_MODE) ? RISCV_M_MODE : RISCV_S_MODE;
}

I would really like to have a riscv{32,64}_defconfig that can just build all boards
at once. Do you know if this could be dynamically determined?

> +
>  source "arch/riscv/Kconfig.socs"
>  
>  config CPU_SUPPORTS_32BIT_KERNEL
> @@ -97,14 +109,4 @@ config NMON_HELP
>  	  Say yes here to get the nmon commands message on
>  	  every nmon start.
>  
> -# set if we run in machine mode, cleared if we run in supervisor mode
> -config RISCV_M_MODE
> -	bool
> -
> -# set if we are running in S-mode and can use SBI calls
> -config RISCV_SBI
> -	bool
> -	depends on !RISCV_M_MODE
> -	default y
> -
>  endmenu
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index c6875738d0..f767942f34 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -3,10 +3,10 @@ menu "SoC selection"
>  config SOC_ERIZO
>  	bool "Erizo SoC"
>  	depends on ARCH_RV32I
> +	depends on RISCV_M_MODE
>  	select HAS_ASM_DEBUG_LL
>  	select HAS_NMON
>  	select USE_COMPRESSED_DTB
> -	select RISCV_M_MODE
>  	select RISCV_TIMER
>  
>  config BOARD_ERIZO_GENERIC
> @@ -15,6 +15,7 @@ config BOARD_ERIZO_GENERIC
>  
>  config SOC_VIRT
>  	bool "QEMU Virt Machine"
> +	depends on RISCV_SBI
>  	select BOARD_RISCV_GENERIC_DT
>  	select CLINT_TIMER
>  	help
> @@ -23,6 +24,7 @@ config SOC_VIRT
>  
>  config SOC_SIFIVE
>  	bool "SiFive SoCs"
> +	depends on RISCV_SBI
>  	select CLK_SIFIVE
>  	select CLK_SIFIVE_PRCI
>  	select RISCV_TIMER
> diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/configs/erizo_generic_defconfig
> index 247a179130..16168eef66 100644
> --- a/arch/riscv/configs/erizo_generic_defconfig
> +++ b/arch/riscv/configs/erizo_generic_defconfig
> @@ -1,3 +1,4 @@
> +CONFIG_RISCV_M_MODE=y
>  CONFIG_SOC_ERIZO=y
>  # CONFIG_GLOBALVAR is not set
>  CONFIG_STACK_SIZE=0x20000
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

