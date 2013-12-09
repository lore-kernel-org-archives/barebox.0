Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq0z4-0005d9-3S
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:34:50 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 70EE7FF9E2C
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:34:28 +0100 (CET)
Date: Mon, 9 Dec 2013 14:34:36 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209133436.GL27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/7] atmel_nand: check gpio validity before using it
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> else we get : "invalid GPIO -22"
> (as enable_pin is EINVAL)
> =

> tested on SAMA5D35

Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/mtd/nand/atmel_nand.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index a0f0966..658ae52 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -107,7 +107,7 @@ static struct nand_ecclayout atmel_pmecc_oobinfo;
>   */
>  static void atmel_nand_enable(struct atmel_nand_host *host)
>  {
> -	if (host->board->enable_pin)
> +	if (gpio_is_valid(host->board->enable_pin))
>  		gpio_set_value(host->board->enable_pin, 0);
>  }
>  =

> @@ -116,7 +116,7 @@ static void atmel_nand_enable(struct atmel_nand_host =
*host)
>   */
>  static void atmel_nand_disable(struct atmel_nand_host *host)
>  {
> -	if (host->board->enable_pin)
> +	if (gpio_is_valid(host->board->enable_pin))
>  		gpio_set_value(host->board->enable_pin, 1);
>  }
>  =

> -- =

> 1.8.3.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
