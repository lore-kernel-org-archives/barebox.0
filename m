Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG2j2-0007cF-MT
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 07:37:21 +0000
Date: Thu, 14 Mar 2013 08:37:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314073719.GD1906@pengutronix.de>
References: <51408197.6090407@til-technologies.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51408197.6090407@til-technologies.fr>
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
Subject: Re: [PATCH 1/5] at91: debug unit typo fix
To: Cerrato Renaud <r.cerrato@til-technologies.fr>
Cc: barebox@lists.infradead.org

On Wed, Mar 13, 2013 at 02:39:35PM +0100, Cerrato Renaud wrote:
> This patch fix the debug unit output by correcting a typo into an #ifdef statement.
> 
> Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
> ---
>  arch/arm/mach-at91/include/mach/debug_ll.h |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

This one is ok, but unfortunately also whitespace damaged.

Sascha

> 
> diff --git a/arch/arm/mach-at91/include/mach/debug_ll.h b/arch/arm/mach-at91/include/mach/debug_ll.h
> index 1a85ae4..42728a4 100644
> --- a/arch/arm/mach-at91/include/mach/debug_ll.h
> +++ b/arch/arm/mach-at91/include/mach/debug_ll.h
> @@ -11,7 +11,7 @@
>  #include <asm/io.h>
>  #include <mach/hardware.h>
>  
> -#ifdef COFNIG_HAVE_AT91_DBGU0
> +#ifdef CONFIG_HAVE_AT91_DBGU0
>  #define UART_BASE    AT91_BASE_DBGU0
>  #else
>  #define UART_BASE    AT91_BASE_DBGU1
> -- 
> 1.7.2.5
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
