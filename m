Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI7GT-0000ol-GW
 for barebox@lists.infradead.org; Mon, 14 May 2018 06:47:23 +0000
Date: Mon, 14 May 2018 08:47:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180514064707.73mfuvjbhhgnlhmw@pengutronix.de>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
 <20180508212951.6446-8-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180508212951.6446-8-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 07/28] ARM: mmu: Separate index and address in
 create_sections()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Tue, May 08, 2018 at 02:29:30PM -0700, Andrey Smirnov wrote:
> Both TTB index and address used to fill that entry are derived from
> the same variable 'addr' which requires shifting right and left by 20
> and somewhat confusing.
> 
> Split the counter used to iterate over elements of  TTB into a
> separate variable to make this code a bit easier to read.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/mmu.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
> index 59f72049f..8b51e3f9f 100644
> --- a/arch/arm/cpu/mmu.h
> +++ b/arch/arm/cpu/mmu.h
> @@ -28,8 +28,12 @@ static inline void
>  create_sections(uint32_t *ttb, unsigned long addr,
>  		int size_m, unsigned int flags)
>  {
> -	for (addr >>= 20; addr < size_m; addr++)
> -		ttb[addr] = (addr << 20) | flags;
> +	unsigned long ttb_start = add >> 20;

This will break compilation. "addr" instead of "add".

Sascha

> +	unsigned long ttb_end   = ttb_start + size_m;
> +	unsigned int i;
> +
> +	for (i = ttb_start; i < ttb_end; i++, addr += SZ_1M)
> +		ttb[i] = addr | flags;
>  }
>  
>  
> -- 
> 2.17.0
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
