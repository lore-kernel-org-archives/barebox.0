Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqamO-0002KQ-BA
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 07:34:02 +0000
Date: Wed, 22 Mar 2017 08:33:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170322073337.htisik3gw54cnce7@pengutronix.de>
References: <20170321140025.25784-1-o.rempel@pengutronix.de>
 <20170321140025.25784-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170321140025.25784-4-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v6 3/8] lib: random: add get_crypto_bytes interface and
 use HWRNG if posssible
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 21, 2017 at 03:00:20PM +0100, Oleksij Rempel wrote:
> For crypto applications we need to use some thing else as PRNG.
> So provide get_crypto_bytes() and use HWRNG as main source.
> PRNG is allowed as fallback if user decided to configure it so.
> 
>  static unsigned int random_seed;
>  
> @@ -18,6 +19,11 @@ void srand(unsigned int seed)
>  	random_seed = seed;
>  }
>  
> +/**
> + * get_random_bytes - get pseudo random numbers.
> + * This interface can be good enough to generate MAC address
> + * or use for NAND test.
> + */
>  void get_random_bytes(void *_buf, int len)
>  {
>  	char *buf = _buf;
> @@ -25,3 +31,53 @@ void get_random_bytes(void *_buf, int len)
>  	while (len--)
>  		*buf++ = rand() % 256;
>  }
> +
> +/**
> + * get_crypto_bytes - get random numbers suitable for cryptographic needs.
> + */
> +static int _get_crypto_bytes(void *_buf, int len)
> +{
> +	struct hwrng *rng;
> +	u8 *buf = _buf;

This extra u8 buffer pointer seems unnecessary. Why not use the input
void * throughout the function?

> +
> +	if (!IS_ENABLED(CONFIG_HWRNG))
> +		return -ENOENT;
> +
> +	rng = hwrng_get_first();

Instead of having to test for CONFIG_HWRNG in the users
hwrng_get_first() could be a static inline function when CONFIG_HWRNG is
disabled.

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
