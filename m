Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bUoyH-00082S-DF
 for barebox@lists.infradead.org; Wed, 03 Aug 2016 05:44:02 +0000
Date: Wed, 3 Aug 2016 07:43:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160803054337.GI20657@pengutronix.de>
References: <1469339909-3667-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1469339909-3667-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] defaultenv: Unblank cursor at startup
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jul 24, 2016 at 08:58:29AM +0300, Alexander Shiyan wrote:
> In some cases, the user program can disable the cursor,
> for example, Qt4 library do this, so the cursor remains invisible
> after the restart.
> The patch adds a command to activate the cursor,
> by sending DECTECM command to the terminal.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  defaultenv/defaultenv-1/bin/init      | 2 +-
>  defaultenv/defaultenv-2-base/bin/init | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/defaultenv/defaultenv-1/bin/init b/defaultenv/defaultenv-1/bin/init
> index 4781b5a..a55d293 100644
> --- a/defaultenv/defaultenv-1/bin/init
> +++ b/defaultenv/defaultenv-1/bin/init
> @@ -22,10 +22,10 @@ if [ -f /env/bin/init_board ]; then
>  	. /env/bin/init_board
>  fi
>  
> +echo -e "\e[?25h"
>  if [ -f /env/bin/boot_board ]; then
>  	. /env/bin/boot_board
>  elif [ -n $autoboot_timeout ]; then
> -	echo
>  	echo -n "Hit any key to stop autoboot: "
>  	timeout -a $autoboot_timeout
>  	if [ $? != 0 ]; then
> diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
> index 37ee365..7af3c7d 100644
> --- a/defaultenv/defaultenv-2-base/bin/init
> +++ b/defaultenv/defaultenv-2-base/bin/init
> @@ -32,6 +32,7 @@ magicvar -a global.allow_color "Allow color on the console (boolean)"
>  timeout -s -a -v key 0
>  autoboot="$?"
>  
> +echo -e -n "\e[?25h"
>  if [ "${key}" = "q" ]; then
>  	exit
>  fi
> -- 
> 2.7.3
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
