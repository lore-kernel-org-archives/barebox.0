Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QAO-0002So-6j
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:15:43 +0000
Date: Mon, 14 Dec 2015 11:15:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151214101517.GY14356@pengutronix.de>
References: <1449777657.26955.70.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449777657.26955.70.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] bootstrap: Boot barebox with kernel calling convention
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 10, 2015 at 08:00:50PM +0000, Trent Piepho wrote:
> In commit 8e3ddc13eb8239177ed20f119e3a3d02518b941d the bootm code was
> changed to boot barebox using the same calling convention as the
> kernel.  Which on ARM is to pass three arguments which are zero, an
> architecture code, and a params pointer.
> 
> A 2nd stage barebox can be booted using lib/bootstrap, which is
> different code from bootm.  This code just leaves garbage in the first
> three parameters and so doesn't follow the convention.
> 
> Change it to be compatible with the ARM kernel booting convention.
> This just sends a zero for the architecture, since the code for
> architectures depends on boot[zmu] and something using bootstrap
> wouldn't have those too.  And it just passes NULL for the params since
> we don't have a way to pass a device tree from the preloader.
> 
> All users of bootstrap are ARM based, but the code is in lib so a
> non-ARM board might someday make use of it.  If the current code would
> work for them, then the change here will be ok too.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  include/bootstrap.h    | 3 ++-
>  lib/bootstrap/common.c | 4 ++--
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/include/bootstrap.h b/include/bootstrap.h
> index 28852c0..9863ff4 100644
> --- a/include/bootstrap.h
> +++ b/include/bootstrap.h
> @@ -11,7 +11,8 @@
>  
>  #define bootstrap_err(fmt, arg...) printf(fmt, ##arg)
>  
> -void bootstrap_boot(int (*func)(void), bool barebox);
> +typedef void (*kernel_entry_func)(int zero, int arch, void *params);
> +void bootstrap_boot(kernel_entry_func func, bool barebox);

This needs fixup in arch/arm/mach-at91/bootstrap.c. Added these.

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
