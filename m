Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHNT-00081L-UW
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 08:57:25 +0000
Date: Mon, 10 Dec 2018 09:57:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210085713.lcvaxveiqwgtt53v@pengutronix.de>
References: <20181207073218.3858-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207073218.3858-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] lib/parameter: Fix typecases to match corresponding
 PARAM_TYPE_*
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:32:18PM -0800, Andrey Smirnov wrote:
> This change should be a no-op in terms of behavior, but it makes code
> less confusing when PARAM_TYPE_* matches the type used in the type
> cast.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  lib/parameter.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index a21b8fa4a..00e9a9ff4 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -343,10 +343,10 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
>  		ret = strtobool(val, pi->value);
>  		break;
>  	case PARAM_TYPE_INT32:
> -		*(uint32_t *)pi->value = simple_strtol(val, NULL, 0);
> +		*(int32_t *)pi->value = simple_strtol(val, NULL, 0);
>  		break;
>  	case PARAM_TYPE_UINT32:
> -		*(int32_t *)pi->value = simple_strtoul(val, NULL, 0);
> +		*(uint32_t *)pi->value = simple_strtoul(val, NULL, 0);
>  		break;
>  	case PARAM_TYPE_INT64:
>  		*(int64_t *)pi->value = simple_strtoll(val, NULL, 0);
> -- 
> 2.19.1
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
