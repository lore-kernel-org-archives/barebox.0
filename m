Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxCNR-0006Ut-92
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 08:05:10 +0000
Date: Mon, 21 Jan 2013 09:04:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130121080456.GT1906@pengutronix.de>
References: <1358581075-22223-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358581075-22223-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv-2: move ps1 to base/init/ps1
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 19, 2013 at 08:37:55AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can overwrite it
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  defaultenv-2/base/bin/init |    6 ------
>  defaultenv-2/base/init/ps1 |    9 +++++++++
>  2 files changed, 9 insertions(+), 6 deletions(-)
>  create mode 100644 defaultenv-2/base/init/ps1
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index bb4abcd..2a1f6a1 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -15,12 +15,6 @@ global editcmd=sedit
>  
>  /env/config
>  
> -if [ ${global.allow_color} = "true" ]; then
> -        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
> -else
> -        export PS1="barebox@\h:\w "
> -fi
> -
>  if [ -e /env/menu ]; then
>  	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
>  else
> diff --git a/defaultenv-2/base/init/ps1 b/defaultenv-2/base/init/ps1
> new file mode 100644
> index 0000000..fcbf4b6
> --- /dev/null
> +++ b/defaultenv-2/base/init/ps1
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +/env/config
> +
> +if [ ${global.allow_color} = "true" ]; then
> +        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
> +else
> +        export PS1="barebox@\h:\w "
> +fi
> -- 
> 1.7.10.4
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
