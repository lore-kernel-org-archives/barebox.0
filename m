Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcVVV-0001dX-7L
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 10:34:06 +0000
Date: Wed, 24 Aug 2016 12:33:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160824103343.GF20657@pengutronix.de>
References: <20160822054521.GU20657@pengutronix.de>
 <1471873534-17014-1-git-send-email-guille.rodriguez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471873534-17014-1-git-send-email-guille.rodriguez@gmail.com>
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
Subject: Re: [PATCH] Call boot_board from boot, not from init.
To: Guillermo Rodriguez <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 22, 2016 at 03:45:34PM +0200, Guillermo Rodriguez wrote:
> From: grodriguez <guille.rodriguez@gmail.com>
> 
> This ensures that any board-specific code that must be run at
> boot time will be run both when autobooting and when manually
> running the 'boot' command from the console.
> 
> Signed-off-by: Guillermo Rodriguez <guille.rodriguez@gmail.com>
> ---
>  defaultenv/defaultenv-1/bin/boot |    4 ++++
>  defaultenv/defaultenv-1/bin/init |    5 ++---
>  2 files changed, 6 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/defaultenv/defaultenv-1/bin/boot b/defaultenv/defaultenv-1/bin/boot
> index c17ccdb..a5d6596 100644
> --- a/defaultenv/defaultenv-1/bin/boot
> +++ b/defaultenv/defaultenv-1/bin/boot
> @@ -2,6 +2,10 @@
>  
>  . /env/config
>  
> +if [ -f /env/bin/boot_board ]; then
> +	. /env/bin/boot_board
> +fi
> +
>  if [ x$kernel_loc = xnet ]; then
>  	kernel_loc=tftp
>  fi
> diff --git a/defaultenv/defaultenv-1/bin/init b/defaultenv/defaultenv-1/bin/init
> index a55d293..2dcddbe 100644
> --- a/defaultenv/defaultenv-1/bin/init
> +++ b/defaultenv/defaultenv-1/bin/init
> @@ -23,9 +23,8 @@ if [ -f /env/bin/init_board ]; then
>  fi
>  
>  echo -e "\e[?25h"
> -if [ -f /env/bin/boot_board ]; then
> -	. /env/bin/boot_board
> -elif [ -n $autoboot_timeout ]; then
> +
> +if [ -n $autoboot_timeout ]; then
>  	echo -n "Hit any key to stop autoboot: "
>  	timeout -a $autoboot_timeout
>  	if [ $? != 0 ]; then
> -- 
> 1.7.9.5
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
