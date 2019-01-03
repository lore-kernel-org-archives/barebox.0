Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1geyBm-0003eh-FT
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 08:17:16 +0000
Date: Thu, 3 Jan 2019 09:17:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103081712.xnrzycfnvjrix34q@pengutronix.de>
References: <20190102133547.16106-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190102133547.16106-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] mci: skip of_partitions_register_fixup for boot partitions
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 02, 2019 at 02:35:48PM +0100, Ahmad Fatoum wrote:
> The bootN-partitions binding is barebox-specific, so it shouldn't
> be fixed up into the kernel device tree.
> 
> Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/mci-core.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c8d1d5e16474..62378913c2e5 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1628,7 +1628,12 @@ static int mci_register_partition(struct mci_part *part)
>  
>  	if (np) {
>  		of_parse_partitions(&part->blk.cdev, np);
> -		of_partitions_register_fixup(&part->blk.cdev);
> +
> +		/* bootN-partitions binding barebox-specific, so don't register
> +		 * for fixup into kernel device tree
> +		 */
> +		if (part->area_type != MMC_BLK_DATA_AREA_BOOT)
> +			of_partitions_register_fixup(&part->blk.cdev);
>  	}
>  
>  	return 0;
> -- 
> 2.19.1
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
