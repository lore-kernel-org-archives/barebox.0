Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYnLH-00006c-Lx
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 06:57:17 +0000
Date: Fri, 29 Jun 2018 08:57:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180629065702.ia6uues5eru62asv@pengutronix.de>
References: <20180628045436.16710-1-andrew.smirnov@gmail.com>
 <20180628045436.16710-11-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180628045436.16710-11-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v4 10/10] ARM: i.MX: Add support for ZII RDU1 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, barebox@lists.infradead.org

Hi Andrey,

On Wed, Jun 27, 2018 at 09:54:36PM -0700, Andrey Smirnov wrote:
> +#include <common.h>
> +#include <init.h>
> +#include <mach/bbu.h>
> +#include <libfile.h>
> +#include <mach/imx5.h>
> +
> +#define ZII_RDU1_DATAFLASH		"/dev/dataflash0"
> +#define ZII_RDU1_DATAFLASH_BAREBOX	ZII_RDU1_DATAFLASH ".barebox"
> +
> +/**
> + * zii_rdu1_bbu_spi_update - RDU1 specific BBU handler
> + *
> + * @handler:	BBU handler pointer passed down by BBU framework
> + * @data:	BBU data pointer passed down by BBU framework
> + *
> + * RDU1 design chose to use first page of the onboard dataflash to
> + * store vendor board-specific paramters, which means it needs to be
> + * left intact. However this is problematic because regular ARM
> + * barebox images contain a 1K preamble and are expected to be placed
> + * starting at offset zero.

Actually I think that this case is not that unusual. We already keep a
partition table in that area in case of MMC devices. This code will need
adjustments anyway when with i.MX8 we finally have enough space in the
beginning of the device to support GPTs. How about the patch I just sent
out which simply generalizes and exports the existing KEEP_DOSPART flag?

Sorry for not looking earlier at this issue.

I have merged the patch together with the RDU1 support into next. Please
let me know if ou are happy with that and if it works of course.

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
