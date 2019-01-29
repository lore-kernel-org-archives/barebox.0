Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goP5f-0005B0-8Z
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 08:49:57 +0000
Date: Tue, 29 Jan 2019 09:49:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190129084953.4a4fq3gppsfirrzd@pengutronix.de>
References: <20190128112955.28979-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190128112955.28979-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH] scripts: =?utf-8?Q?bareboxenv?=
 =?utf-8?B?LmM6IGZpeCB3YXJuaW5nOiDigJh4c3RyZHVw4oCZ?= defined but not used
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2019 at 12:29:55PM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  scripts/bareboxenv.c | 10 ----------
>  1 file changed, 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> index e95bdeaa5e..c512a105ef 100644
> --- a/scripts/bareboxenv.c
> +++ b/scripts/bareboxenv.c
> @@ -97,16 +97,6 @@ static char *concat_subpath_file(const char *path, const char *f)
>  	return concat_path_file(path, f);
>  }
>  
> -static char *xstrdup(const char *s)
> -{
> -	int len = strlen(s) + 1;
> -	char *d = xmalloc(len);
> -
> -	memcpy(d, s, len);
> -
> -	return d;
> -}
> -
>  #include <linux/list.h>
>  #include <linux/list_sort.h>
>  #include "../lib/list_sort.c"
> -- 
> 2.20.1
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
