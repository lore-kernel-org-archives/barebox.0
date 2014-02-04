Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAaKK-000622-14
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:21:48 +0000
Date: Tue, 4 Feb 2014 08:21:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140204072126.GQ16215@pengutronix.de>
References: <1391453450-20873-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391453450-20873-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/2] scripts/kwbimage: Fix resource leak in image_create()
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Feb 03, 2014 at 10:50:49PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied both, thanks

Sascha

> ---
>  scripts/kwbimage.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index cd87456..c085d4d 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -1343,6 +1343,7 @@ static int image_create(const char *input, const char *output,
>  	rewind(fcfg);
>  
>  	ret = image_create_config_parse(fcfg, image_cfg, &cfgn);
> +	fclose(fcfg);
>  	if (ret) {
>  		free(image_cfg);
>  		return -1;
> -- 
> 1.8.3.2
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
