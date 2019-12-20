Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJzF-0007f7-K7
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 15:14:43 +0000
Date: Fri, 20 Dec 2019 16:14:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191220151440.d5tpdnyoqfwl3iwy@pengutronix.de>
References: <20191219091310.27421-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219091310.27421-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 0/3] ARM64 early cache fixes
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 19, 2019 at 10:13:07AM +0100, Lucas Stach wrote:
> This is a resend of the 2 ARM64 early cache fixes by Ahmad. They were
> not applied at the time, as there was a report of them breaking Barebox
> on i.MX8M. I finally had time to look into that, the first patch by
> me cleans the stage, so the cache fixes no longer break anything.
> 
> At least the icache invalidation patch fixes an issue I hit on one
> system, were minimal (harmless) changes to the Barebox code would
> break execution.
> 
> Regards,
> Lucas
> 
> Ahmad Fatoum (2):
>   ARM: cache_64: invalidate dcache in arm_early_mmu_cache_invalidate
>   ARM: cache_64: invalidate icache in arm_early_mmu_cache_flush
> 
> Lucas Stach (1):
>   ARM64: entry: save/restore potentially clobbered registers
> 
>  arch/arm/cpu/cache_64.c    |  2 ++
>  arch/arm/cpu/entry_ll_64.S | 12 +++++++-----
>  2 files changed, 9 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
