Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvQIs-0006O3-UW
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 10:00:51 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 299EBFF8FC3
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 12:06:35 +0200 (CEST)
Date: Sun, 29 Jul 2012 12:00:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120729100036.GD26655@game.jcrosoft.org>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-7-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-7-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 6/7] nand: Prevent drivers setting NAND_USE_FLASH_BBT
 if BBT config not enabled.
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On 17:41 Sun 29 Jul     , Marc Reilly wrote:
> This prevents drivers from setting the options flags to use the flash
> bab block table when the BBT is not enabled in config.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/mtd/nand/atmel_nand.c   |    2 +-
>  drivers/mtd/nand/nand_imx.c     |    2 +-
>  drivers/mtd/nand/nand_s3c24xx.c |    2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 96624a1..cc62df9 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -407,7 +407,7 @@ static int __init atmel_nand_probe(struct device_d *dev)
>  		}
>  	}
>  
> -	if (host->board->on_flash_bbt) {
> +	if (IS_ENABLED(CONFIG_NAND_BBT) && host->board->on_flash_bbt) {
>  		printk(KERN_INFO "atmel_nand: Use On Flash BBT\n");
>  		nand_chip->options |= NAND_USE_FLASH_BBT;
driver pass this info to the nand framework which is supposed to handle this
by itself

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
