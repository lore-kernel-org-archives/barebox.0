Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Wk7-00028I-6j
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:03:24 +0000
Date: Thu, 21 Feb 2013 15:03:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221140321.GU1906@pengutronix.de>
References: <1361439184-14657-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361439184-14657-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH] defaultenv-2: fix base/init/ps1: don't reload /env/config
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 21, 2013 at 10:33:04AM +0100, Fabio Porcedda wrote:
> Remove the load of /env/config because is already done by /bin/init,
> so it doesn't overwrite any changes done by previous /init/* scripts that
> are loaded by /bin/init.
> 
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  defaultenv-2/base/init/ps1 | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/defaultenv-2/base/init/ps1 b/defaultenv-2/base/init/ps1
> index fcbf4b6..02d7b4b 100644
> --- a/defaultenv-2/base/init/ps1
> +++ b/defaultenv-2/base/init/ps1
> @@ -1,7 +1,5 @@
>  #!/bin/sh
>  
> -/env/config
> -
>  if [ ${global.allow_color} = "true" ]; then
>          export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
>  else
> -- 
> 1.8.1.1
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
