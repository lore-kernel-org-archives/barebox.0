Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMjE0-0005PR-3X
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 14:27:05 +0000
Date: Mon, 21 Dec 2009 15:26:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221142602.GK15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210901430.17057@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210901430.17057@localhost>
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
Subject: Re: [PATCH] Remove obsolete comment referring to CFG_CMD_JFFS2.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 09:04:04AM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   yes, it's a trivial patch, but i'm just trying to cut down on the
> amount of output i'm getting from my scan scripts.  and there's no
> such thing as CFG_CMD_JFFS2.

Ok, applied

Sascha

> 
> 
> diff --git a/lib/crc32.c b/lib/crc32.c
> index 2ed2df0..be35366 100644
> --- a/lib/crc32.c
> +++ b/lib/crc32.c
> @@ -9,7 +9,7 @@
>   */
> 
>  #ifdef __BAREBOX__	/* Shut down "ANSI does not permit..." warnings */
> -#include <common.h>	/* to get command definitions like CFG_CMD_JFFS2 */
> +#include <common.h>
>  #endif
> 
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
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
