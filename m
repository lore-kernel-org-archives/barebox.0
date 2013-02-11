Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4oiy-0005Wk-NJ
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 08:27:18 +0000
Date: Mon, 11 Feb 2013 09:26:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211082650.GJ1906@pengutronix.de>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
 <1360317743-25975-8-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360317743-25975-8-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 08/11] ARM: mmu: Clear unpredictable bits for translation
 table
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Feb 08, 2013 at 02:02:20PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied this one for master.

Sascha

> ---
>  arch/arm/cpu/mmu.c |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 73dd0d3..99f12b5 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -279,6 +279,9 @@ static int mmu_init(void)
>  	if (get_cr() & CR_M) {
>  		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
>  
> +		/* Clear unpredictable bits [13:0] */
> +		ttb = (unsigned long *)((unsigned long)ttb & ~0x3fff);
> +
>  		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
>  			pr_err("Error: Can't request SDRAM region for ttb\n");
>  	} else {
> -- 
> 1.7.3.4
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
