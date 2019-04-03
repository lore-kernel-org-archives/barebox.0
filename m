Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBa9t-0005AY-7Q
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 07:18:10 +0000
Date: Wed, 3 Apr 2019 09:18:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190403071800.dczv5jnlqbg5qodz@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
 <20190401093106.4595-7-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401093106.4595-7-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 06/10] ARM: at91: remove at91sam9g45_get_ddram_size
 helper
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Mon, Apr 01, 2019 at 11:31:02AM +0200, Ahmad Fatoum wrote:
> Substitute the current #ifdefery in at91sam9_ddrsdr.h by
> open-coding at91sam9g45_get_ddram_size wherever it was called.
> 
> Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> -#ifdef CONFIG_SOC_AT91SAM9G45
> -#include <mach/at91sam9g45.h>
> -static inline u32 at91sam9g45_get_ddram_size(int bank)
> -{
> -	switch (bank) {
> -	case 0:
> -		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC0), false);
> -	case 1:
> -		return at91_get_ddram_size(IOMEM(AT91SAM9G45_BASE_DDRSDRC1), false);
> -	default:
> -		return 0;
> -	}
> -}
> -#else
> -static inline u32 at91sam9g45_get_ddram_size(int bank)
> -{
> -	return 0;
> -}
> -#endif

Indeed you can remove the #ifdefs, but wouldn't it look nicer just to
keep at91sam9g45_get_ddram_size() and friends?

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
