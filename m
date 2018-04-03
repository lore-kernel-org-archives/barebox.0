Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3G3n-0001kN-Et
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:08:52 +0000
Date: Tue, 3 Apr 2018 09:08:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180403070848.4cygxoaji652xa3k@pengutronix.de>
References: <20180326131445.11229-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180326131445.11229-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] aiodev: Constify 'unit' in 'struct aiodev'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2018 at 06:14:45AM -0700, Andrey Smirnov wrote:
> The way it is currently used, there's no reason for 'uint' field to be
> mutable, so constify it in order to allow 'aiodev' drivers to pass
> sting literals in that field.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/aiodev.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/aiodev.h b/include/aiodev.h
> index 0d4f7a294..5e38b4fab 100644
> --- a/include/aiodev.h
> +++ b/include/aiodev.h
> @@ -23,7 +23,7 @@
>  struct aiodevice;
>  struct aiochannel {
>  	int index;
> -	char *unit;
> +	const char *unit;
>  	struct aiodevice *aiodev;
>  
>  	int value;
> -- 
> 2.14.3
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
