Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZO6-00010e-25
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:34:43 +0000
Date: Mon, 5 Aug 2019 11:34:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190805093440.kckx6nbmzogjdi6x@pengutronix.de>
References: <20190801091950.14606-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801091950.14606-1-bst@pengutronix.de>
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
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Thu, Aug 01, 2019 at 11:19:50AM +0200, Bastian Krause wrote:
> nor->write() simply adds the number of written bytes to the pointer
> given. Thus retval is incremented in each loop cycle for each
> spi_nor_write() call without ever resetting it. This leads to wrong page
> offset/remains calculations and an incorrect number of bytes written to
> retlen.
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

Applied, thanks

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
