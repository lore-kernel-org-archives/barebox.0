Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TENX3-00066u-OB
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 16:53:50 +0000
Date: Wed, 19 Sep 2012 18:53:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120919165343.GI6180@pengutronix.de>
References: <1348048235-14431-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348048235-14431-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv-2: execute init/* before timeout
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2012 at 11:50:35AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can have splah, usb serial, etc...
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  defaultenv-2/base/bin/init |    8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index 3cac41c..5524710 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -12,7 +12,9 @@ global linux.bootargs.dyn.ip
>  global linux.bootargs.dyn.root
>  global editcmd=sedit
>  
> -/env/init/general
> +for i in /env/init/*; do
> +	. $i
> +done
>  
>  if [ -e /env/menu ]; then
>  	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
> @@ -27,10 +29,6 @@ if [ "${key}" = "q" ]; then
>  	exit
>  fi
>  
> -for i in /env/init/*; do
> -	. $i
> -done
> -

This was intentionally done *after* waiting for user intervention to be
able to escape in case some init script crashes barebox.

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
