Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaPjU-0002Ou-G6
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 10:37:13 +0000
Date: Tue, 13 Dec 2011 11:37:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213103707.GM27267@pengutronix.de>
References: <1323701217-26236-1-git-send-email-plagnioj@jcrosoft.com>
 <1323701217-26236-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323701217-26236-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/4] at91: add udc usb device controller support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 12, 2011 at 03:46:55PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/include/mach/board.h |   10 +
>  drivers/usb/gadget/Kconfig              |    7 +
>  drivers/usb/gadget/Makefile             |    1 +
>  drivers/usb/gadget/at91_udc.c           | 1513 +++++++++++++++++++++++++++++++
>  drivers/usb/gadget/at91_udc.h           |  167 ++++
>  5 files changed, 1698 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/usb/gadget/at91_udc.c
>  create mode 100644 drivers/usb/gadget/at91_udc.h
> 

[...]

> +
> +/*-------------------------------------------------------------------------*/
> +
> +#ifdef VERBOSE_DEBUG
> +#    define VDBG		DBG
> +#else
> +#    define VDBG(stuff...)	do{}while(0)
> +#endif
> +
> +#ifdef PACKET_TRACE
> +#    define PACKET		VDBG
> +#else
> +#    define PACKET(stuff...)	do{}while(0)
> +#endif
> +
> +#define ERR(stuff...)		pr_err("udc: " stuff)
> +#define WARNING(stuff...)	pr_warning("udc: " stuff)
> +#define INFO(stuff...)		pr_info("udc: " stuff)
> +#define DBG(stuff...)		pr_debug("udc: " stuff)

Please convert to dev_* functions.

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
