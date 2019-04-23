Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIqvK-0003xu-I1
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 08:37:08 +0000
Date: Tue, 23 Apr 2019 10:37:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190423083704.chanj6uqapx23nbr@pengutronix.de>
References: <20190412045711.13993-1-user@vserver64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412045711.13993-1-user@vserver64>
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
Subject: Re: [PATCH v2] mtd: spi-nor: add Winbond W25Q40BW
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 12, 2019 at 04:57:11AM +0000, Alexander Kurz wrote:
> From: Alexander Kurz <akurz@blala.de>
> 
> This 4MBit SPI chip can be found in Kindle Voyage devices
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)

Took this one instead of v1.

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
