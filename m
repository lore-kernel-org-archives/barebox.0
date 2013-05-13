Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubnyk-0007Jb-0p
 for barebox@lists.infradead.org; Mon, 13 May 2013 08:19:31 +0000
Date: Mon, 13 May 2013 10:19:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513081907.GJ32299@pengutronix.de>
References: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH] arm: mach-mvebu: drop useless clkdev.h
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 01:26:09PM +0200, Thomas Petazzoni wrote:
> As suggested by Antony Pavlov, get rid of the useless clkdev.h in
> arch/arm/mach-mvebu/.
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Folded this into the original patch adding it.

Sascha

> ---
>  arch/arm/mach-mvebu/include/mach/clkdev.h |    7 -------
>  1 file changed, 7 deletions(-)
>  delete mode 100644 arch/arm/mach-mvebu/include/mach/clkdev.h
> 
> diff --git a/arch/arm/mach-mvebu/include/mach/clkdev.h b/arch/arm/mach-mvebu/include/mach/clkdev.h
> deleted file mode 100644
> index 04b37a8..0000000
> --- a/arch/arm/mach-mvebu/include/mach/clkdev.h
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -#ifndef __ASM_MACH_CLKDEV_H
> -#define __ASM_MACH_CLKDEV_H
> -
> -#define __clk_get(clk) ({ 1; })
> -#define __clk_put(clk) do { } while (0)
> -
> -#endif
> -- 
> 1.7.9.5
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
