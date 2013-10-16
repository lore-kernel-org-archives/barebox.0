Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWLvm-0000zs-FA
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 07:54:11 +0000
Date: Wed, 16 Oct 2013 09:53:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131016075348.GP30088@pengutronix.de>
References: <1381858703-27993-1-git-send-email-a.heider@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381858703-27993-1-git-send-email-a.heider@gmail.com>
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
Subject: Re: [PATCH] ARM: rpi: fix tty device name in bootargs-base
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2013 at 07:38:22PM +0200, Andre Heider wrote:
> Signed-off-by: Andre Heider <a.heider@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/raspberry-pi/env/init/bootargs-base | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
> index d869754..4dda550 100644
> --- a/arch/arm/boards/raspberry-pi/env/init/bootargs-base
> +++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
> @@ -5,4 +5,4 @@ if [ "$1" = menu ]; then
>  	exit
>  fi
>  
> -global.linux.bootargs.base="console=ttymxc0,115200"
> +global.linux.bootargs.base="console=ttyAMA0,115200"
> -- 
> 1.8.3.2
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
