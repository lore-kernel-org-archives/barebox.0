Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ezg88-0003xq-La
 for barebox@lists.infradead.org; Sat, 24 Mar 2018 10:10:34 +0000
Date: Sat, 24 Mar 2018 11:10:19 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180324101019.GB3784@ravnborg.org>
References: <20180323231422.21137-1-l.stach@pengutronix.de>
 <20180323231422.21137-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180323231422.21137-4-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v2 04/10] ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Mar 24, 2018 at 12:14:16AM +0100, Lucas Stach wrote:
> This adds routines to add hyp mode vectors and switch back to HYP
> mode from SVC. This is needed in both the PBL and Barebox proper.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/cpu/Makefile         |   4 ++
>  arch/arm/cpu/hyp.S            | 115 ++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/sm_as.S          |  11 ----
>  arch/arm/include/asm/secure.h |   8 +++
>  4 files changed, 127 insertions(+), 11 deletions(-)
>  create mode 100644 arch/arm/cpu/hyp.S
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 13fe12c31f6f..f86dff975bb4 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -9,6 +9,10 @@ obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
>  obj-$(CONFIG_MMU) += mmu.o mmu-early.o
>  pbl-$(CONFIG_MMU) += mmu-early.o
>  lwl-y += lowlevel.o
> +obj-y += hyp.o
> +AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
> +pbl-y += hyp.o
> +AFLAGS_pbl-hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  endif
>  
>  obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
> diff --git a/arch/arm/cpu/hyp.S b/arch/arm/cpu/hyp.S
> new file mode 100644
> index 000000000000..435d416f980a
> --- /dev/null
> +++ b/arch/arm/cpu/hyp.S
> @@ -0,0 +1,115 @@
> +#include <linux/linkage.h>
> +#include <asm/system.h>
> +#include <asm/opcodes-virt.h>
> +
> +.arch_extension sec
> +.arch_extension virt
> +
> +.section ".text_bare_init_","ax"
Here you could use __BARE_INIT - from init.h

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
