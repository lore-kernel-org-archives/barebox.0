Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cor26-00064G-IY
 for barebox@lists.infradead.org; Fri, 17 Mar 2017 12:31:05 +0000
Date: Fri, 17 Mar 2017 13:30:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170317123040.2jyk3gij2z4v2rgd@pengutronix.de>
References: <20170316053146.5954-1-o.rempel@pengutronix.de>
 <20170316053146.5954-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170316053146.5954-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] lib: random: get_random_bytes from HWRNG if present
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Thu, Mar 16, 2017 at 06:31:45AM +0100, Oleksij Rempel wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Instead of generating pseudo random numbers, get random bytes
> from an optional HW generator, if enabled and registered.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  lib/random.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/lib/random.c b/lib/random.c
> index 210fea994..42c0f83b7 100644
> --- a/lib/random.c
> +++ b/lib/random.c
> @@ -1,5 +1,6 @@
>  #include <common.h>
>  #include <stdlib.h>
> +#include <linux/hw_random.h>
>  
>  static unsigned int random_seed;
>  
> @@ -22,6 +23,24 @@ void get_random_bytes(void *_buf, int len)
>  {
>  	char *buf = _buf;
>  
> +	if (IS_ENABLED(CONFIG_HWRNG)) {
> +		struct hwrng *rng;
> +		int bytes;
> +
> +		rng = hwrng_get_first();
> +		if (!IS_ERR(rng)) {
> +			while (len) {
> +				bytes = hwrng_get_data(rng, _buf, len, 1);
> +				if (!bytes)
> +					goto sw_fallback;

hwrng_get_data() looks like it could return a negative error code.

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
