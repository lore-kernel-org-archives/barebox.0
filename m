Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dadOQ-00005K-R5
 for barebox@lists.infradead.org; Thu, 27 Jul 2017 07:39:37 +0000
Date: Thu, 27 Jul 2017 09:39:06 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170727073906.GA12578@ravnborg.org>
References: <20170727055908.2715-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170727055908.2715-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] MIPS: add 74Kc info
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Oleksij.

Nitpick...
It would be nice to have the subject indicating this is a MIPS CPU.
There may be a few people that do not recognize that 74Kc is
a MIPS CPU (me at least).

	Sam

On Thu, Jul 27, 2017 at 07:59:08AM +0200, Oleksij Rempel wrote:
> This patch is preparation for SoC QCA AR9344
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/include/asm/cpu.h | 2 ++
>  arch/mips/lib/cpu-probe.c   | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
> index 572cabba34..e0bb78ea61 100644
> --- a/arch/mips/include/asm/cpu.h
> +++ b/arch/mips/include/asm/cpu.h
> @@ -51,6 +51,7 @@
>  
>  #define PRID_IMP_24K		0x9300
>  #define PRID_IMP_24KE		0x9600
> +#define PRID_IMP_74K		0x9700
>  
>  /*
>   * These are the PRID's for when 23:16 == PRID_COMP_BROADCOM
> @@ -105,6 +106,7 @@ enum cpu_type_enum {
>  	 * MIPS32 class processors
>  	 */
>  	CPU_24K,
> +	CPU_74K,
>  	CPU_BMIPS3300,
>  	CPU_JZRISC,
>  	CPU_LOONGSON1,
> diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
> index 71dbaf6382..b5d63db189 100644
> --- a/arch/mips/lib/cpu-probe.c
> +++ b/arch/mips/lib/cpu-probe.c
> @@ -106,6 +106,10 @@ static inline void cpu_probe_mips(struct cpuinfo_mips *c)
>  		c->cputype = CPU_24K;
>  		__cpu_name = "MIPS 24Kc";
>  		break;
> +	case PRID_IMP_74K:
> +		c->cputype = CPU_74K;
> +		__cpu_name = "MIPS 74Kc";
> +		break;
>  	}
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
