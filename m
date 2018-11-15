Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNCba-0003K8-Uj
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 08:02:28 +0000
Date: Thu, 15 Nov 2018 09:02:14 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20181115080214.4iyo6jojt6oclxhb@pengutronix.de>
References: <20181114110427.10433-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181114110427.10433-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand: fix nand_lock/unlock() function
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2018 at 12:04:27PM +0100, Marc Kleine-Budde wrote:
> From: White Ding <bpqw@micron.com>
> 
> Do nand reset before write protect check.
> 
> If we want to check the WP# low or high through STATUS READ and check bit 7,
> we must reset the device, other operation (eg.erase/program a locked block) can
> also clear the bit 7 of status register.
> 
> As we know the status register can be refreshed, if we do some operation to trigger it,
> for example if we do erase/program operation to one block that is locked, then READ STATUS,
> the bit 7 of READ STATUS will be 0 indicate the device in write protect, then if we do
> erase/program operation to another block that is unlocked, the bit 7 of READ STATUS will
> be 1 indicate the device is not write protect.
> Suppose we checked the bit 7 of READ STATUS is 0 then judge the WP# is low (write protect),
> but in this case the WP# maybe high if we do erase/program operation to a locked block,
> so we must reset the device if we want to check the WP# low or high through STATUS READ and
> check bit 7.

Have you observed a failure this patch fixes or what is your motivation
to send this patch?

Sascha

> 
> Signed-off-by: White Ding <bpqw@micron.com>
> Signed-off-by: Brian Norris <computersforpeace@gmail.com>
> [Cherry-picked from linux: 57d3a9a89a06 mtd: nand: fix nand_lock/unlock() function]
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_base.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index ccf96150429a..128802fa5c20 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -852,6 +852,15 @@ int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  
>  	chip->select_chip(mtd, chipnr);
>  
> +	/*
> +	 * Reset the chip.
> +	 * If we want to check the WP through READ STATUS and check the bit 7
> +	 * we must reset the chip
> +	 * some operation can also clear the bit 7 of status register
> +	 * eg. erase/program a locked block
> +	 */
> +	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
> +
>  	/* Check, if it is write protected */
>  	if (nand_check_wp(mtd)) {
>  		pr_debug("%s: device is write protected!\n",
> @@ -902,6 +911,15 @@ int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
>  
>  	chip->select_chip(mtd, chipnr);
>  
> +	/*
> +	 * Reset the chip.
> +	 * If we want to check the WP through READ STATUS and check the bit 7
> +	 * we must reset the chip
> +	 * some operation can also clear the bit 7 of status register
> +	 * eg. erase/program a locked block
> +	 */
> +	chip->cmdfunc(mtd, NAND_CMD_RESET, -1, -1);
> +
>  	/* Check, if it is write protected */
>  	if (nand_check_wp(mtd)) {
>  		pr_debug("%s: device is write protected!\n",
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
