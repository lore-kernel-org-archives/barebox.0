Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYURI-0004Cq-G5
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 08:04:54 +0000
Date: Wed, 24 Feb 2016 09:04:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160224080428.GD4207@pengutronix.de>
References: <1456077990-15003-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456077990-15003-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/3] EP93xx eth: allow passing of phy config via platform
 data
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Feb 21, 2016 at 07:06:28PM +0100, Alexander Kurz wrote:
> Passing phy configuration to the ep93xx_eth driver was not supported yet
> and will be added with this patch. When no pdata is passed, the probably
> broken default of phy_addr = 0 will be used to maintain compatibility
> with the previous implementation.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/net/ep93xx.c | 14 ++++++++++++--
>  drivers/net/ep93xx.h |  2 ++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ep93xx.c b/drivers/net/ep93xx.c
> index 90c12fc..d2458eb 100644
> --- a/drivers/net/ep93xx.c
> +++ b/drivers/net/ep93xx.c
> @@ -38,6 +38,7 @@
>  #include <linux/types.h>
>  #include <mach/ep93xx-regs.h>
>  #include <linux/phy.h>
> +#include <ep93xx_eth.h>

This file is missing. Forgot to git add it?
While at it, could you move it to include/net/ please?

Thanks
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
