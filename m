Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2HL-0003wd-Br
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 14:48:37 +0000
References: <20190715135434.5666-1-s.hauer@pengutronix.de>
 <20190715135434.5666-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <661933fb-ad95-c96b-e9b0-da0464af9718@pengutronix.de>
Date: Mon, 15 Jul 2019 16:48:31 +0200
MIME-Version: 1.0
In-Reply-To: <20190715135434.5666-2-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/3] mtd: peb: Do not mark as bad in mtd_peb_torture()
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hello Sascha,

On 15/7/19 15:54, Sascha Hauer wrote:
> diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
> index 4676730d05..9c106b7b63 100644
> --- a/common/state/backend_bucket_circular.c
> +++ b/common/state/backend_bucket_circular.c
> @@ -95,6 +95,7 @@ static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ
>  	if (ret == -EBADMSG) {
>  		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
>  		if (ret == -EIO) {
> +			mtd_peb_mark_bad(mtd, circ->eraseblock);

There's no `mtd' in this scope. Do you mean `circ->mtd'?

>  			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
>  				circ->eraseblock);
>  			return -EIO;
> @@ -132,6 +133,7 @@ static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *cir
>  	if (ret == -EBADMSG) {
>  		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
>  		if (ret == -EIO) {
> +			mtd_peb_mark_bad(mtd, circ->eraseblock);

Likewise.

>  			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
>  				circ->eraseblock);
>  			return -EIO;

Thanks,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
