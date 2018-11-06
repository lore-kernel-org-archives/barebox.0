Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJwuX-0008UW-S1
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:40:35 +0000
Date: Tue, 6 Nov 2018 09:40:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106084021.xhnucn5k2rvwcxnz@pengutronix.de>
References: <20181105153825.26450-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181105153825.26450-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] fixup! ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 05, 2018 at 04:38:24PM +0100, Lucas Stach wrote:
> ---
>  arch/arm/cpu/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 45de2728d01a..a35db435c1b9 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -4,7 +4,7 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
>  obj-$(CONFIG_MMU) += mmu$(S64).o
>  lwl-y += lowlevel$(S64).o
>  obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
> -obj-pbl-y += hyp.o
> +obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
>  AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all

Applied, thanks.

The series now compiles successfully \o/

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
