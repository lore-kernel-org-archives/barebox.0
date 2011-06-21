Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYzYC-00042g-2Z
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 11:55:24 +0000
Date: Tue, 21 Jun 2011 13:55:22 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20110621115522.GW23771@pengutronix.de>
References: <1308652014-26792-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308652014-26792-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] Makefile: remove -Map option from global LDFLAGS
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 21, 2011 at 12:26:54PM +0200, Marc Kleine-Budde wrote:
> ... and re-add it to LDFLAGS_barebox.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Applied to -next.

Sascha

> ---
>  Makefile |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 1647ce9..8b3db44 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -298,7 +298,7 @@ CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>                     -fno-strict-aliasing -fno-common -Os -pipe
>  AFLAGS          := -D__ASSEMBLY__
>  
> -LDFLAGS		:= -Map barebox.map
> +LDFLAGS_barebox	:= -Map barebox.map
>  
>  # Read KERNELRELEASE from include/config/kernel.release (if it exists)
>  KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
> -- 
> 1.7.4.1
> 
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
