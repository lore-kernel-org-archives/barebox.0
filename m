Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHquk-00035Z-Tw
 for barebox@lists.infradead.org; Mon, 24 Feb 2014 08:29:27 +0000
Date: Mon, 24 Feb 2014 09:29:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140224082905.GR17250@pengutronix.de>
References: <1393054969-25221-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393054969-25221-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: clps711x: Remove SYSCON3 handling
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Feb 22, 2014 at 11:42:49AM +0400, Alexander Shiyan wrote:
> SYSCON3 register is not used in the barebox, so remove driver for
> this register entirely.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-clps711x/devices.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
> index c7a2fbd..e27476d 100644
> --- a/arch/arm/mach-clps711x/devices.c
> +++ b/arch/arm/mach-clps711x/devices.c
> @@ -124,9 +124,6 @@ static __init int clps711x_syscon_init(void)
>  	/* SYSCON2, SYSFLG2 */
>  	add_generic_device("syscon", 2, NULL, SYSCON2, SZ_128,
>  			   IORESOURCE_MEM, NULL);
> -	/* SYSCON3 */
> -	add_generic_device("syscon", 3, NULL, SYSCON3, SZ_64,
> -			   IORESOURCE_MEM, NULL);

Applied, thanks

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
