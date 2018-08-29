Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuvNQ-0006k6-U5
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:58:58 +0000
Date: Wed, 29 Aug 2018 09:58:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180829075844.xbolj65w3vksngvu@pengutronix.de>
References: <20180829072153.13428-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829072153.13428-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] bbu: Look for default handler in
 barebox_update_handler_exists()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 12:21:52AM -0700, Andrey Smirnov wrote:
> Convert barebox_update_handler_exists() to treat struct bbu_data with
> both "handler_name" and "devicefile" set to NULL as a specifier for
> default update handler in order to support such use-case for
> "barebox_update" and fix a recent regression.
> 
> This change shouldn't affect another user of
> barebox_update_handler_exists(), cb_flash() in
> drivers/usb/gadget/f_fastboot.c, since that function explicitly
> specifies "devicefile".
> 
> Fixes 0ac96ab6e ("bbu: command: Make sure specified update handler exists")
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/bbu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 3974bf672..ffe5e15a2 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -148,7 +148,7 @@ bool barebox_update_handler_exists(struct bbu_data *data)
>  	if (handler)
>  		return true;
>  
> -	if (!data->handler_name)
> +	if (!data->handler_name && data->devicefile)
>  		return false;
>  
>  	return bbu_find_handler(data->handler_name) != NULL;

This function is confusing. We should split this up into two functions:
barebox_update_handler_exists_for_name() and
barebox_update_handler_exists_for_devpath() *). Fastboot would only need
the latter and the barebox_update command would use both, possibly
barking when both a name and a device is given (as otherwise we would
have to check for name <-> devpath conflicts)

Sascha

*) I'm open for better names ;)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
