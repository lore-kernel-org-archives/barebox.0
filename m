Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5R4-00070A-KA
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:16:03 +0000
Date: Sun, 5 Jul 2020 16:16:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705141601.GS15485@pengutronix.de>
References: <20200702141747.7556-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702141747.7556-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] mci: dw_mmc: remove unused local variable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 02, 2020 at 04:17:47PM +0200, Ahmad Fatoum wrote:
> data_start is assigned once and never used. Drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/dw_mmc.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
> index ab8270814b86..0ada65e90eea 100644
> --- a/drivers/mci/dw_mmc.c
> +++ b/drivers/mci/dw_mmc.c
> @@ -124,7 +124,7 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
>  {
>  	unsigned long ctrl;
>  	unsigned int i = 0, flags, cnt, blk_cnt;
> -	unsigned long data_start, start_addr;
> +	unsigned start_addr;
>  	struct dwmci_idmac *desc = host->idmac;
>  
>  	blk_cnt = data->blocks;
> @@ -134,7 +134,6 @@ static int dwmci_prepare_data_dma(struct dwmci_host *host,
>  
>  	dwmci_wait_reset(host, DWMCI_CTRL_FIFO_RESET);
>  
> -	data_start = (uint32_t)desc;
>  	dwmci_writel(host, DWMCI_DBADDR, (uint32_t)desc);
>  
>  	if (data->flags & MMC_DATA_READ)
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
