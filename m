Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAbvY-00043g-Nh
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 07:59:49 +0000
Date: Wed, 27 Feb 2013 08:59:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130227075947.GF1906@pengutronix.de>
References: <1361897473-3325-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361897473-3325-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH] log2: Fix declaration of __roundup_pow_of_two
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2013 at 05:51:13PM +0100, Maxime Ripard wrote:
> The roundup_pow_of_two function is making use of __roundup_pow_of_two
> when the call to __builtin_constant_p fails, which is not implemented in
> barebox.
> 
> Copied the code from Linux log2.h header.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>

Applied, thanks

Sascha

> ---
>  include/linux/log2.h |    9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/include/linux/log2.h b/include/linux/log2.h
> index 389043a..d9913f0 100644
> --- a/include/linux/log2.h
> +++ b/include/linux/log2.h
> @@ -54,6 +54,15 @@ bool is_power_of_2(unsigned long n)
>  	return (n != 0 && ((n & (n - 1)) == 0));
>  }
>  
> +/*
> + * round up to nearest power of two
> + */
> +static inline __attribute__((const))
> +unsigned long __roundup_pow_of_two(unsigned long n)
> +{
> +	return 1UL << fls(n - 1);
> +}
> +
>  /**
>   * ilog2 - log of base 2 of 32-bit or a 64-bit unsigned value
>   * @n - parameter
> -- 
> 1.7.10.4
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
