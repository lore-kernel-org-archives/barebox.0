Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3zMD-0005w4-43
 for barebox@lists.infradead.org; Thu, 05 Apr 2018 07:30:55 +0000
Date: Thu, 5 Apr 2018 09:30:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180405073038.r2afhw3lhmkfq7jy@pengutronix.de>
References: <20180326192025.28809-1-l.stach@pengutronix.de>
 <20180326192025.28809-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326192025.28809-4-l.stach@pengutronix.de>
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
Subject: Re: [PATCH v3 04/10] ARM: add file for HYP mode related setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 09:20:19PM +0200, Lucas Stach wrote:
> This adds routines to add hyp mode vectors and switch back to HYP
> mode from SVC. This is needed in both the PBL and Barebox proper.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
> v3:
> - fix whitespace
> - use __BARE_INIT
> ---
>  arch/arm/cpu/Makefile         |   4 ++
>  arch/arm/cpu/hyp.S            | 116 ++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/sm_as.S          |  11 ----
>  arch/arm/include/asm/secure.h |   8 +++
>  4 files changed, 128 insertions(+), 11 deletions(-)
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

For building files regularly and pbl we have obj-pbl-y. Also I would
really prefer to depend that on CONFIG_CPU_32v7

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
