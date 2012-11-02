Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUD4E-0006K5-UJ
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 08:57:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TUD4D-00019O-8P
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:57:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TUD4D-0007k6-7R
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:57:29 +0100
Date: Fri, 2 Nov 2012 09:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102085729.GH1641@pengutronix.de>
References: <1351761415-3199-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351761415-3199-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] mtd: dataflash: fix spi_transfer init
To: barebox@lists.infradead.org

On Thu, Nov 01, 2012 at 10:16:55AM +0100,  wrote:
> From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> on some system as the spi_transfer is not set to 0 if the rx_buf or tx_buf
> are not used they are not set to NULL
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/devices/mtd_dataflash.c |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
> index cbed15b..3b7b9c6 100644
> --- a/drivers/mtd/devices/mtd_dataflash.c
> +++ b/drivers/mtd/devices/mtd_dataflash.c
> @@ -161,6 +161,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
>  
>  	spi_message_init(&msg);
>  
> +	memset(&x, 0, sizeof(x));
> +
>  	x.tx_buf = command = priv->command;
>  	x.len = 4;
>  	spi_message_add_tail(&x, &msg);
> @@ -246,6 +248,8 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
>  
>  	spi_message_init(&msg);
>  
> +	memset(&x[0], 0, sizeof(struct spi_transfer) * 2);
> +
>  	x[0].tx_buf = command;
>  	x[0].len = 8;
>  	spi_message_add_tail(&x[0], &msg);
> @@ -302,6 +306,8 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
>  
>  	spi_message_init(&msg);
>  
> +	memset(&x[0], 0, sizeof(struct spi_transfer) * 2);
> +
>  	x[0].tx_buf = command = priv->command;
>  	x[0].len = 4;
>  	spi_message_add_tail(&x[0], &msg);
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
