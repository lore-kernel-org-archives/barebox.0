Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjCz2-00025n-4g
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:21:52 +0000
Date: Mon, 25 Jun 2012 19:21:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120625172150.GH14321@pengutronix.de>
References: <1340625960-18234-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340625960-18234-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] defaultenv/bin/init: skip autoboot if $autoboot_timeout
 is unset
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 25, 2012 at 02:06:00PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  defaultenv/bin/init |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/defaultenv/bin/init b/defaultenv/bin/init
> index 6e85a82..f535e37 100644
> --- a/defaultenv/bin/init
> +++ b/defaultenv/bin/init
> @@ -23,7 +23,7 @@ fi
>  
>  if [ -f /env/bin/boot_board ]; then
>  	. /env/bin/boot_board
> -else
> +elif [ -n $autoboot_timeout ]; then
>  	echo
>  	echo -n "Hit any key to stop autoboot: "
>  	timeout -a $autoboot_timeout
> -- 
> 1.7.10
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
