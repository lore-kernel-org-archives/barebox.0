Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyxDg-0004Ad-4T
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 07:31:56 +0000
Date: Wed, 18 Nov 2015 08:31:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151118073134.GT8526@pengutronix.de>
References: <1447762497-13485-1-git-send-email-serge.koshechkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447762497-13485-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: Re: [PATCH 2/3] make_directory: fix warning: no previous prototype
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 17, 2015 at 03:14:57PM +0300, Sergey Koshechkin wrote:
> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> ---
>  lib/make_directory.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/make_directory.c b/lib/make_directory.c
> index c14c86d..7432efc 100644
> --- a/lib/make_directory.c
> +++ b/lib/make_directory.c
> @@ -5,9 +5,12 @@
>  #include <fs.h>
>  #include <malloc.h>
>  #include <common.h>
> +#define STATIC
> +#else
> +#define STATIC static inline
>  #endif
>  
> -int make_directory(const char *dir)
> +STATIC int make_directory(const char *dir)
>  {
>  	char *s = strdup(dir);
>  	char *path = s;
> -- 
> 2.6.2
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
