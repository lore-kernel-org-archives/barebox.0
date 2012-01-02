Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rhg7C-0000zt-Tb
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:31:43 +0000
Date: Mon, 2 Jan 2012 12:31:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120102113137.GK27267@pengutronix.de>
References: <1325157211-3986-1-git-send-email-renaud.barbier@ge.com>
 <1325157211-3986-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325157211-3986-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/2] Make clock shift and mask configurable based on the
 processor type.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 29, 2011 at 11:13:31AM +0000, Renaud Barbier wrote:
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/lib/time.c |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time.c
> index 04c71df..accc548 100644
> --- a/arch/ppc/lib/time.c
> +++ b/arch/ppc/lib/time.c
> @@ -55,9 +55,9 @@ uint64_t ppc_clocksource_read(void)
>  }
>  
>  static struct clocksource cs = {
> -	.read	= ppc_clocksource_read,
> -	.mask	= CLOCKSOURCE_MASK(32),
> -	.shift	= 15,
> +	.read = ppc_clocksource_read,
> +	.mask = CLOCKSOURCE_MASK(CONFIG_CLOCKSOURCE_MASK),
> +	.shift = CONFIG_CLOCKSOURCE_SHIFT,

We have clocks_calc_mult_shift to calculate both mult and shift. This
is currently unused, but it might be the moment to start using it.

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
