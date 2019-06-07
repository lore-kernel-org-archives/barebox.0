Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8Yd-0006FH-Oq
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:41:03 +0000
Date: Fri, 7 Jun 2019 08:40:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607064057.f6m344eokgjovgdt@pengutronix.de>
References: <20190605064612.13693-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605064612.13693-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] filetype: fix typo
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 09:46:12AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/filetype.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/filetype.c b/common/filetype.c
> index e2d707b156..9675009eb0 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -37,7 +37,7 @@ struct filetype_str {
>  };
>  
>  static const struct filetype_str filetype_str[] = {
> -	[filetype_unknown] = { "unknown", "unkown" },
> +	[filetype_unknown] = { "unknown", "unknown" },
>  	[filetype_arm_zimage] = { "ARM Linux zImage", "arm-zimage" },
>  	[filetype_lzo_compressed] = { "LZO compressed", "lzo" },
>  	[filetype_lz4_compressed] = { "LZ4 compressed", "lz4" },
> -- 
> 2.20.1
> 
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
