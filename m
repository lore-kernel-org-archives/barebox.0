Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUsh4-0000O6-1R
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 05:56:38 +0000
Date: Wed, 24 Apr 2013 07:56:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130424055636.GY32299@pengutronix.de>
References: <1366218852-30912-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366218852-30912-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] defaultenv-2: init: display prompt after running
 /env/init/*
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 17, 2013 at 07:14:12PM +0200, Jan Luebbe wrote:
> This allows init scripts to print messages to the console without messing
> up the timeout prompt.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  defaultenv-2/base/bin/init |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> index 6a658d1..ca02ba6 100644
> --- a/defaultenv-2/base/bin/init
> +++ b/defaultenv-2/base/bin/init
> @@ -16,12 +16,6 @@ global editcmd=sedit
>  [ -e /env/config-board ] && /env/config-board
>  /env/config
>  
> -if [ -e /env/menu ]; then
> -	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
> -else
> -	echo -e -n "\nHit any key to stop autoboot: "
> -fi
> -
>  # allow to stop the boot before execute the /env/init/*
>  # but without waiting
>  timeout -s -a -v key 0
> @@ -34,6 +28,12 @@ for i in /env/init/*; do
>  	. $i
>  done
>  
> +if [ -e /env/menu ]; then
> +	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
> +else
> +	echo -e -n "\nHit any key to stop autoboot: "
> +fi
> +
>  timeout -a $global.autoboot_timeout -v key
>  autoboot="$?"
>  
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
