Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWLek-0000OF-He
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 07:36:35 +0000
Message-ID: <1381908729.4093.12.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 16 Oct 2013 09:32:09 +0200
In-Reply-To: <1381858703-27993-2-git-send-email-a.heider@gmail.com>
References: <1381858703-27993-2-git-send-email-a.heider@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: rpi: fix reading of the EMMC clock for CONFIG_MMU
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 15.10.2013, 19:38 +0200 schrieb Andre Heider:
> Add explicit flushing to prevent the 50MHz fallback.
> 
Uh, this is pretty ugly. We certainly don't want all those explicit
invalidates/flushes in the driver code. Isn't it possible to push this
into some helper functions, that do the right thing when communicating
with the mailboxes?

> Signed-off-by: Andre Heider <a.heider@gmail.com>
> ---
>  drivers/mci/mci-bcm2835.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
> index a0c364d..2ffdeec 100644
> --- a/drivers/mci/mci-bcm2835.c
> +++ b/drivers/mci/mci-bcm2835.c
> @@ -28,6 +28,7 @@
>   * Author: Wilhelm Lundgren <wilhelm.lundgren@cybercom.com>
>   */
>  
> +#include <asm/mmu.h>
>  #include <common.h>
>  #include <init.h>
>  #include <mci.h>
> @@ -471,7 +472,7 @@ int bcm2835_mci_reset(struct mci_host *mci, struct device_d *mci_dev)
>  static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
>  {
>  	u32 val;
> -	struct bcm2835_mbox_regs *regs =
> +	struct bcm2835_mbox_regs __iomem *regs =
>  			(struct bcm2835_mbox_regs *) BCM2835_MBOX_PHYSADDR;
>  
>  	/*Read out old msg*/
> @@ -489,6 +490,7 @@ static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
>  			break;
>  	}
>  	val = BCM2835_MBOX_PROP_CHAN + ((u32) &clk_data->hdr);
> +	dma_flush_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
>  	writel(val, &regs->write);
>  
>  	while (true) {
> @@ -504,6 +506,9 @@ static u32 bcm2835_mci_get_emmc_clock(struct msg_get_clock_rate *clk_data)
>  		if ((val & 0x0F) == BCM2835_MBOX_PROP_CHAN)
>  			break;
>  	}
> +
> +	dma_inv_range((u32)clk_data, (u32)clk_data + sizeof(*clk_data));
> +
>  	if ((val & ~0x0F) == ((u32) &clk_data->hdr))
>  		if (clk_data->get_clock_rate.tag_hdr.val_len
>  				& BCM2835_MBOX_TAG_VAL_LEN_RESPONSE)

-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
