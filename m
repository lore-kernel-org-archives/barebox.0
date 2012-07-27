Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SufuI-0007eJ-QR
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 08:28:23 +0000
Date: Fri, 27 Jul 2012 10:28:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120727082820.GA30009@pengutronix.de>
References: <1342963280-4297-1-git-send-email-bernhard@bwalle.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342963280-4297-1-git-send-email-bernhard@bwalle.de>
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
Subject: Re: [PATCH] lib/Kconfig: Fix alignment of arrows in label
To: Bernhard Walle <bernhard@bwalle.de>
Cc: barebox@lists.infradead.org

On Sun, Jul 22, 2012 at 03:21:20PM +0200, Bernhard Walle wrote:
> Signed-off-by: Bernhard Walle <bernhard@bwalle.de>

Applied, thanks

Sascha

> ---
>  lib/Kconfig |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/Kconfig b/lib/Kconfig
> index 3bcde5c..32634df 100644
> --- a/lib/Kconfig
> +++ b/lib/Kconfig
> @@ -1,4 +1,4 @@
> -menu "Library routines"
> +menu "Library routines              "
>  config PARAMETER
>  	bool
>  
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
