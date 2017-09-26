Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dwjgk-0005kw-IO
 for barebox@lists.infradead.org; Tue, 26 Sep 2017 06:49:52 +0000
Date: Tue, 26 Sep 2017 08:49:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170926064928.qpldxtcdqxkof22d@pengutronix.de>
References: <20170922135023.12255-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170922135023.12255-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] imx-bbu-nand-fcb: read_firmware_all(): Spell "Secondary
 firmware" with a capital "S"
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 22, 2017 at 03:50:23PM +0200, Marc Kleine-Budde wrote:
> "Primary firmware" is writte with a capital "P" so adjust "Secondary firmware"
> to use a capital "S".
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  common/imx-bbu-nand-fcb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
> index 7218c5e1ccda..89b404884ae8 100644
> --- a/common/imx-bbu-nand-fcb.c
> +++ b/common/imx-bbu-nand-fcb.c
> @@ -1126,7 +1126,7 @@ static void read_firmware_all(struct mtd_info *mtd, struct fcb_block *fcb, void
>  		fcb->Firmware1_startingPage + fcb->PagesInFirmware1, primary ? "" : "in",
>  		primary_refresh ? "needs cleanup" : "clean");
>  
> -	pr_info("secondary firmware is on pages %d-%d, %svalid, %s\n", fcb->Firmware2_startingPage,
> +	pr_info("Secondary firmware is on pages %d-%d, %svalid, %s\n", fcb->Firmware2_startingPage,
>  		fcb->Firmware2_startingPage + fcb->PagesInFirmware2, secondary ? "" : "in",
>  		secondary_refresh ? "needs cleanup" : "clean");
>  
> -- 
> 2.11.0
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
