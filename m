Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo6.mail-out.ovh.net ([178.32.125.228])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj8Nv-0006Et-DR
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 17:49:57 +0000
Received: from player787.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id C8366B3C0B
 for <barebox@lists.infradead.org>; Wed,  1 Mar 2017 18:49:31 +0100 (CET)
Date: Wed, 1 Mar 2017 18:55:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170301175538.GC4120@mail.ovh.net>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
 <20170301142641.6596-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301142641.6596-2-l.stach@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM: correctly identify ARMv6 K/Z
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:26 Wed 01 Mar     , Lucas Stach wrote:
> The ARMv6 K/Z derivatives have a v7 compatible MMU, but all other parts
> (including the cache handling) is still at v6. As we don't make use of
> the more advanced features of the v7 MMU in Barebox, it's okay to just
> override this to properly identify the CPU as ARMv6.
evenif we do not use it now I do not liek the idea to report it as ARMv6

It will be better to report it correctly

Best Regards,
J.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c             | 8 ++++++++
>  arch/arm/include/asm/system_info.h | 8 ++++++++
>  2 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index 86e19d9780d5..175475b038dc 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -165,6 +165,14 @@ static int do_cpuinfo(int argc, char *argv[])
>  	} else
>  		cpu_arch = CPU_ARCH_UNKNOWN;
>  
> +	/*
> +	 * Special case for ARMv6 (K/Z) (has v7 compatible MMU, but is v6
> +	 * otherwise). The below check just matches all ARMv6, as done in the
> +	 * Linux kernel.
> +	 */
> +	if ((mainid & 0x7f000) == 0x7b000)
> +		cpu_arch = CPU_ARCH_ARMv6;
> +
>  	switch (cpu_arch) {
>  	case CPU_ARCH_ARMv3:
>  		architecture = "v3";
> diff --git a/arch/arm/include/asm/system_info.h b/arch/arm/include/asm/system_info.h
> index 25fffd268177..a27b79e6dd08 100644
> --- a/arch/arm/include/asm/system_info.h
> +++ b/arch/arm/include/asm/system_info.h
> @@ -188,6 +188,14 @@ static inline int arm_early_get_cpu_architecture(void)
>  		cpu_arch = CPU_ARCH_UNKNOWN;
>  #endif
>  
> +	/*
> +	 * Special case for ARMv6 (K/Z) (has v7 compatible MMU, but is v6
> +	 * otherwise). The below check just matches all ARMv6, as done in the
> +	 * Linux kernel.
> +	 */
> +	if ((read_cpuid_id() & 0x7f000) == 0x7b000)
> +		cpu_arch = CPU_ARCH_ARMv6;
> +
>  	return cpu_arch;
>  }
>  
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
