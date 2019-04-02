Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBNA4-0002LG-Qe
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 17:25:26 +0000
Date: Tue, 2 Apr 2019 19:25:21 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402172521.GA18142@ravnborg.org>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 04/15] ARM: at91: replace at91sam9_ddrsdr.h with
 at91bootstrap's at91_ddrsdrc.h
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Mon, Apr 01, 2019 at 12:18:12PM +0200, Ahmad Fatoum wrote:
> Instead of adding missing definitions to the existing at91sam9_ddrsdr.h
> and adapting the incoming DDRAM initialization code from at91bootstrap,
> just replace the lightly used existing header with:
> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/include/arch/at91_ddrsdrc.h
> 
> For easier comprehension, the replacement is done in three steps:
> This last step copies the memory size querying functions from at91sam9_ddrsdr.h
> to at91_ddrsdrc.h, then deletes it and fixes all references.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---


> diff --git a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> index 57d0d8f489c4..7e68e7dd63eb 100644
> --- a/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> +++ b/arch/arm/mach-at91/include/mach/at91_ddrsdrc.h
> @@ -285,4 +285,48 @@
>  #define AT91C_DDRC2_WPVS	(0x1UL << 0)
>  #define AT91C_DDRC2_WPSRC	(0xFFFFUL << 8)
>  
> +#ifndef __ASSEMBLY__
> +#include <common.h>
> +#include <io.h>
> +
> +static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
> +{

I should have brought this up in the previous patch-set, but it continue to itch me.
So you get the feedback here....

We have at91_get_ddram_size(IOMEM(xxx), {true or false})

If we introduced the following small helpers we could simplify the call sites
to just use at91_get_ddram_size(AT91SAM9G45_BASE_DDRSDRC0) and similar.

static inline u32 at91_get_ddram_size(void __force __iomem * addr)
{
	return __at91_get_ddram_size(IOMEM(addr), true);
}

static inline u32 at91sam9g45_get_ddram_size(void __force __iomem * addr)
{
	return __at91_get_ddram_size(IOMEM(addr), false);
}

But then for the few call sites it is not really worth it anyway.
Anyway, just a small itch. Just ignore it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
