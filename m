Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQXvP-0002uC-Eu
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 06:25:16 +0000
Date: Tue, 23 Oct 2012 08:25:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121023062511.GF27665@pengutronix.de>
References: <1350853147-9233-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350853147-9233-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] progressbar: use __stringify in format string
To: Alexander Aring <alex.aring@googlemail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 21, 2012 at 10:59:06PM +0200, Alexander Aring wrote:
> Use stringify in format string for HASH_PER_LINE.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks.

Sascha

> ---
>  lib/show_progress.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index d958a44..bc067ea 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -20,6 +20,7 @@
>  #include <common.h>
>  #include <progress.h>
>  #include <asm-generic/div64.h>
> +#include <linux/stringify.h>
>  
>  #define HASHES_PER_LINE	65
>  
> @@ -56,7 +57,7 @@ void init_progression_bar(int max)
>  	progress_max = max;
>  	spin = 0;
>  	if (progress_max)
> -		printf("\t[%65s]\r\t[", "");
> +		printf("\t[%"__stringify(HASHES_PER_LINE)"s]\r\t[", "");
>  	else
>  		printf("\t");
>  }
> -- 
> 1.7.12.4
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
