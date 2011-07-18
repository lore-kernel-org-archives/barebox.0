Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QihHZ-0002DX-Bg
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 06:26:25 +0000
Date: Mon, 18 Jul 2011 08:26:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718062619.GB20587@pengutronix.de>
References: <1310812921-3685-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1310812921-3685-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH] fix: commands/bootm.c:346:2: warning: statement with no
	effect
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 16, 2011 at 12:42:01PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> convert enable_interrupts() and disable_interrupts() to static inline
> if no IRQ supoprt enable

Applied to master

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/common.h |   10 ++++++++--
>  1 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/include/common.h b/include/common.h
> index 491bc98..f3353c8 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -116,8 +116,14 @@ void	irq_free_handler   (int);
>  void	enable_interrupts  (void);
>  int	disable_interrupts (void);
>  #else
> -#define enable_interrupts() do {} while (0)
> -#define disable_interrupts() 0
> +static inline void enable_interrupts(void)
> +{
> +}
> +
> +static inline int disable_interrupts(void)
> +{
> +	return 0;
> +}
>  #endif
>  
>  /* lib_$(ARCH)/time.c */
> -- 
> 1.7.5.4
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
