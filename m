Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YMMAy-0008Ax-BN
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 19:45:21 +0000
Date: Fri, 13 Feb 2015 20:44:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150213194458.GC12209@pengutronix.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
 <1423777200-22965-12-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423777200-22965-12-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH RFT 11/24] net: cpsw: convert to streaming DMA ops
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 12, 2015 at 10:39:47PM +0100, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/net/cpsw.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 799fac8..5c28aa4 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -21,6 +21,7 @@
>  #include <init.h>
>  
>  #include <command.h>
> +#include <dma.h

'>' missing here.

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
