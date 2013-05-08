Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZyv5-0002uE-Lp
 for barebox@lists.infradead.org; Wed, 08 May 2013 07:36:16 +0000
Date: Wed, 8 May 2013 09:35:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508073549.GZ32299@pengutronix.de>
References: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] ARM: Make OMAP syslib.c functions available for
 other ARM targets
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, Apr 27, 2013 at 08:58:54PM +0400, Alexander Shiyan wrote:
> This patch moves OMAP syslib functions into common ARM location, so
> make these functions available to other ARM targets.
> 
> +/**
> + * @brief clear & set a value in a bit range for a 32 bit address
> + *
> + * @param[in] addr Address to set/read from
> + * @param[in] start_bit Where to put the value
> + * @param[in] num_bits number of bits the value should be set
> + * @param[in] value the value to set
> + *
> + * @return void
> + */
> +static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
> +{
> +	u32 tmp, msk = 0;
> +	msk = 1 << num_bits;
> +	--msk;
> +	tmp = readl(addr) & ~(msk << start_bit);
> +	tmp |=  value << start_bit;
> +	writel(tmp, addr);
> +}
> +
> +u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);

I'm still undecided on this. On one hand it's good to have common
functions for these jobs, but on the other hand I'm not sure these are
the versions we should use as the definite answer to the problem. I
don't know how many versions of read-modify-write functions are around,
but there are many.

> +void sdelay(unsigned long loops);

The sdelay change is a good one, though I think this should be a static
inline function.

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
