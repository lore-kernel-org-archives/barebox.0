Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBhqC-0005c0-22
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 07:58:32 +0000
Date: Wed, 12 Sep 2012 09:57:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912075744.GL6180@pengutronix.de>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
 <1347127542-11981-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347127542-11981-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 02/11] bmp: split bmp rending in lib/bmp.c
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

In Subject: s/rending/rendering/

Or better: Move bmp rendering to lib/bmp.c

On Sat, Sep 08, 2012 at 08:05:33PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> @@ -34,3 +34,4 @@ obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
>  obj-$(CONFIG_BCH)	+= bch.o
>  obj-$(CONFIG_BITREV)	+= bitrev.o
>  obj-$(CONFIG_QSORT)	+= qsort.o
> +obj-$(CONFIG_BMP)	+= bmp.o
> diff --git a/lib/bmp.c b/lib/bmp.c
> new file mode 100644
> index 0000000..776d3b3
> --- /dev/null
> +++ b/lib/bmp.c
> @@ -0,0 +1,132 @@
> +#include <common.h>
> +#include <fs.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <fb.h>
> +#include <bmp_layout.h>
> +#include <asm/byteorder.h>
> +
> +static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)

This function is first moved from commands/bmp.c to lib/bmp.c, then
added as a static inline to include/image_renderer.h, then removed again
from lib/bmp.c, then removed from include/image_renderer.h, then
reintroduced as a different function in include/graphic_utils.h.

Can you please reorder your patch series to make it readable so that we
can see what actually happens?

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
