Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqaFU-0000mV-7o
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 07:00:02 +0000
Date: Wed, 22 Mar 2017 07:59:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170322065938.sjpdwjgmyoimblll@pengutronix.de>
References: <20170320130708.15741-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320130708.15741-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: add AFLAGS for secure monitor files
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 20, 2017 at 02:07:06PM +0100, Lucas Stach wrote:
> The instructions used in those files are only supported on ARMv7.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/cpu/Makefile | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 13b4f9590d21..13fe12c31f6f 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -36,7 +36,9 @@ endif
>  
>  obj-$(CONFIG_ARM_PSCI) += psci.o
>  obj-$(CONFIG_ARM_SECURE_MONITOR) += smccc-call.o
> +AFLAGS_smccc-call.o	:=-Wa,-march=armv7-a
>  obj-$(CONFIG_ARM_SECURE_MONITOR) += sm.o sm_as.o
> +AFLAGS_sm_as.o		:=-Wa,-march=armv7-a
>  
>  obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
>  pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
