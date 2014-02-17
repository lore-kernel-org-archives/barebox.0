Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFIKZ-0001R0-7P
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 07:09:31 +0000
Date: Mon, 17 Feb 2014 08:09:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140217070909.GK17250@pengutronix.de>
References: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/7] ARM: socfgpa: Remove redundant assignment
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Feb 16, 2014 at 08:40:44AM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied all except 6/7 which probably needs some adjustments.

Sascha

> ---
>  arch/arm/mach-socfpga/include/mach/sequencer.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/mach-socfpga/include/mach/sequencer.c b/arch/arm/mach-socfpga/include/mach/sequencer.c
> index fa955ce..6e69d1b 100644
> --- a/arch/arm/mach-socfpga/include/mach/sequencer.c
> +++ b/arch/arm/mach-socfpga/include/mach/sequencer.c
> @@ -3151,7 +3151,6 @@ static uint32_t rw_mgr_mem_calibrate_wlevel (uint32_t g, uint32_t test_bgn)
>  		tmp_delay += IO_DELAY_PER_DCHAIN_TAP;
>  	}
>  	dtaps_per_ptap--;
> -	tmp_delay = 0;
>  #endif
>  
>  	/* starting phases */
> -- 
> 1.8.3.2
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
