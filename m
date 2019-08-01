Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAwg-0002Px-HC
 for barebox@lists.infradead.org; Thu, 01 Aug 2019 13:16:40 +0000
References: <20190801091950.14606-1-bst@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <f92a884e-29e5-f957-fe85-1f3f826f5b8f@pengutronix.de>
Date: Thu, 1 Aug 2019 15:16:36 +0200
MIME-Version: 1.0
In-Reply-To: <20190801091950.14606-1-bst@pengutronix.de>
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
Subject: Re: [PATCH] mtd: spi-nor: fix page offset/remains calculation in
 spi_nor_write
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

On 8/1/19 11:19 AM, Bastian Krause wrote:
> nor->write() simply adds the number of written bytes to the pointer
> given. Thus retval is incremented in each loop cycle for each
> spi_nor_write() call without ever resetting it. This leads to wrong page
> offset/remains calculations and an incorrect number of bytes written to
> retlen.

Note: this happens only with the cadence-quadspi driver.

Bastian

> 
> This becomes apparant only if the calling function actually compares len
> and retlen (e.g. mtd_peb_write() ). Otherwise wrong data is written:
> 
>   $ memcpy -s /dev/prng -d prng_data 0 0 10k
>   $ erase /dev/mtd0.mypart
>   $ cp prng_data /dev/mtd0.mypart
>   $ memcmp -s prng_data -d /dev/mtd0.mypart 0 0
> 
> memcmp returned "files differ" before, with this patch it returns "OK".
> 
> Fixes: c8516869c4 ("spi: Extend the core to ease integration of SPI memory controllers")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index b2052ce0af..9dbc8302ed 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -972,6 +972,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
>  
>  	for (i = 0; i < len; ) {
>  		ssize_t written;
> +		retval = 0;
>  
>  		page_offset = (to + i) & (nor->page_size - 1);
>  		page_remain = min_t(size_t, nor->page_size - page_offset,
> 


-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
