Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViKtX-0005Xy-5a
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 09:13:24 +0000
Date: Mon, 18 Nov 2013 10:12:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131118091255.GW24559@pengutronix.de>
References: <1384692670-24375-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384692670-24375-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] mmci: remove include of mmci.h header
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Nov 17, 2013 at 01:51:10PM +0100, Alexander Aring wrote:
> We need #include "mmci.h" only and not #include <mmci.h>
> which don't exists.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/mci/mmci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
> index 66ca450..d93b3cb 100644
> --- a/drivers/mci/mmci.c
> +++ b/drivers/mci/mmci.c
> @@ -31,7 +31,6 @@
>  #include <linux/clk.h>
>  #include <errno.h>
>  #include <malloc.h>
> -#include <mmci.h>
>  #include <linux/amba/bus.h>
>  #include <linux/amba/mmci.h>
>  
> -- 
> 1.8.4.2
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
