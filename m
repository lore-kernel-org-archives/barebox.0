Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1dxu-0006J4-7n
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 15:57:59 +0000
Date: Mon, 30 Jun 2014 17:57:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630155736.GJ14257@pengutronix.de>
References: <alpine.LFD.2.11.1406300842390.3550@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406300842390.3550@localhost>
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
Subject: Re: [PATCH] sdma.h: Typo, "interupt" -> "interrupt"
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jun 30, 2014 at 08:43:39AM -0400, Robert P. J. Day wrote:
> 
> Fix only two "interupt" misspellings in entire barebox codebase.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/arch/ppc/mach-mpc5xxx/include/mach/sdma.h b/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
> index 5e7ff5f..6a25d79 100644
> --- a/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
> +++ b/arch/ppc/mach-mpc5xxx/include/mach/sdma.h
> @@ -82,11 +82,11 @@ ALL PARAMETERS ARE ALL LONGWORDS (FOUR BYTES EACH).
>      sdma->IntPend = (1 << tasknum);                    \
>  }
> 
> -/* get interupt pending bit of a task */
> +/* get interrupt pending bit of a task */
>  #define SDMA_GET_PENDINGBIT(tasknum)                   \
>  	((*(vu_long *)(MPC5XXX_SDMA + 0x14)) & (1<<(tasknum)))
> 
> -/* get interupt mask bit of a task */
> +/* get interrupt mask bit of a task */
>  #define SDMA_GET_MASKBIT(tasknum)                      \
>  	((*(vu_long *)(MPC5XXX_SDMA + 0x18)) & (1<<(tasknum)))
> 
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
