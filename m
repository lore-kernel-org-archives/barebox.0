Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkvGk-0002mR-Tc
 for barebox@lists.infradead.org; Thu, 15 May 2014 13:00:19 +0000
Date: Thu, 15 May 2014 14:59:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515125957.GM5858@pengutronix.de>
References: <1400146868-17820-1-git-send-email-w.egorov@phytec.de>
 <1400146868-17820-2-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400146868-17820-2-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH v2 4/4] phycore-am335x: Added bbu nand xloadslots handler
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, May 15, 2014 at 11:41:08AM +0200, Wadim Egorov wrote:
> Added bbu nand xloadslots handler to phycore-am335x.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v2:
>   - changed method to pass device files
> ---
>  arch/arm/boards/phytec-phycore-am335x/board.c |    9 +++++++++
>  1 files changed, 9 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phycore-am335x/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
> index 59de42b..76782d4 100644
> --- a/arch/arm/boards/phytec-phycore-am335x/board.c
> +++ b/arch/arm/boards/phytec-phycore-am335x/board.c
> @@ -48,6 +48,13 @@ static struct omap_barebox_part pcm051_barebox_part = {
>  	.nor_size = SZ_512K,
>  };
>  
> +char *xloadslots[] = {
> +	"/dev/nand0.xload.bb",
> +	"/dev/nand0.xload_backup1.bb",
> +	"/dev/nand0.xload_backup2.bb",
> +	"/dev/nand0.xload_backup3.bb"
> +};
> +
>  static int pcm051_devices_init(void)
>  {
>  	if (!of_machine_is_compatible("phytec,pcm051"))
> @@ -69,6 +76,8 @@ static int pcm051_devices_init(void)
>  	armlinux_set_architecture(MACH_TYPE_PCM051);
>  
>  	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
> +	am33xx_bbu_nand_xloadslots_register_handler("xloadslots",
> +		xloadslots, ARRAY_SIZE(xloadslots));

Can you use a name with containing 'nand' in it? When one reads
'xloadslots' he probably hasn't got a clue which image is updated.

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
