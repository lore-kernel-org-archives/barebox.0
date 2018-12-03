Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gTjV2-0006Ad-LB
 for barebox@lists.infradead.org; Mon, 03 Dec 2018 08:22:42 +0000
Date: Mon, 3 Dec 2018 09:22:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181203082228.ivp37yikyugkyksf@pengutronix.de>
References: <20181130131303.2934-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/6] ARM: mmu64: include dma.h
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 30, 2018 at 02:12:58PM +0100, Lucas Stach wrote:
> dma.h provides the prototypes for the different dma_alloc_* functions,
> so we should include it to make sure the prototypes are consistent.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 69d1b20718f7..99ddd5a441b9 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -19,6 +19,7 @@
>  #define pr_fmt(fmt)	"mmu: " fmt
>  
>  #include <common.h>
> +#include <dma.h>
>  #include <dma-dir.h>
>  #include <init.h>
>  #include <mmu.h>
> -- 
> 2.19.1
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
