Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcSZ-0005mq-J8
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:17:56 +0000
Date: Mon, 2 Apr 2012 10:17:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402081748.GK3852@pengutronix.de>
References: <20120330044138.GY444@game.jcrosoft.org>
 <1333082876-22403-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333082876-22403-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/6] cfi_flash: fix missing resource update when probing
 the cfi size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Patrice VILCHEZ <patrice.vilchez@atmel.com>, barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On Fri, Mar 30, 2012 at 06:47:51AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> introduce in commit 8262d20dae583a
> "cfi: convert to struct resource"
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/nor/cfi_flash.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
> index 654e647..267c95b 100644
> --- a/drivers/nor/cfi_flash.c
> +++ b/drivers/nor/cfi_flash.c
> @@ -989,6 +989,11 @@ static int cfi_probe (struct device_d *dev)
>  	info->base = dev_request_mem_region(dev, 0);
>  	info->size = flash_get_size(info);
>  
> +	if (dev->resource[0].size == 0) {
> +		printf("cfi_probe: size : 0x%08lx\n", info->size);
> +		dev->resource[0].size = info->size;
> +	}

Not good. If we don't know the actual flash size, dev->resource[0].size
should have the maximum size and not 0. We can't simply manipulate the
resource size after having requested it.

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
