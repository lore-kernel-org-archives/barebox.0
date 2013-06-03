Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjP8L-0007U1-Nl
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:24:50 +0000
Date: Mon, 3 Jun 2013 09:24:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603072427.GW32299@pengutronix.de>
References: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
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
Subject: Re: [PATCH 1/3] Remove unnesessory malloc.h inclusions.
To: Masaki Muranaka <monaka@monami-ya.jp>
Cc: barebox@lists.infradead.org

On Sun, Jun 02, 2013 at 11:53:47PM +0900, Masaki Muranaka wrote:
> ---
> diff --git a/common/resource.c b/common/resource.c
> index 5795e79..954357e 100644
> --- a/common/resource.c
> +++ b/common/resource.c
> @@ -16,7 +16,6 @@
>   * GNU General Public License for more details.
>   */
>  #include <common.h>
> -#include <malloc.h>
>  #include <errno.h>
>  #include <init.h>
>  #include <linux/ioport.h>

Applying this patch leads to several compiler warnings:

common/resource.c: In function 'release_region':
common/resource.c:105:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/readline.c: In function 'do_readline':
commands/readline.c:33:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/time.c: In function 'do_time':
commands/time.c:41:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/oftree.c: In function 'do_oftree':
commands/oftree.c:197:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/readlink.c: In function 'do_readlink':
commands/readlink.c:58:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]
commands/global.c: In function 'globalvar_set':
commands/global.c:34:3: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]

So indeed we do not use malloc in these files, but we still use free.
I think you would have to replace the includes with #include <stdlib.h>
rather than removing them completely.

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
