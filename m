Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIn8i-0000wz-0z
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 05:39:13 +0000
Date: Mon, 30 Mar 2020 07:39:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200330053909.GV27288@pengutronix.de>
References: <DB7PR02MB43329F5FA85160DA28F68030ABCC0@DB7PR02MB4332.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR02MB43329F5FA85160DA28F68030ABCC0@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: Re: [PATCH] some fixes for the zedboard build
To: Michael Graichen <michael.graichen@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Michael,

On Fri, Mar 27, 2020 at 09:57:11AM +0000, Michael Graichen wrote:
> Hey, 
> 
> i've attached some fixes for the zedboard build that worked, at least,
> for me.
> The MIO config in lowlevel.c seem to be very "hardware specific" but
> one can compare this to what Xilinx Vivado says.
> 
> When including the drivers for Networking, QSPI and SD one will run
> out of OCRAM very quickly that's why i commended out so much in the
> defconfig.
> 
> The changes to drivers/mci/Kconfig and drivers/mci/arasan-sdhci.c seem
> to be bug fixes.
> 
> Best regards and have a nice weekend 
> 
> Michael
> 

> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 80b3a2600..9f56bed3a 100644
> --- a/drivers/mci/Kconfig
> +++ b/drivers/mci/Kconfig
> @@ -141,6 +141,7 @@ config MCI_TEGRA
>  
>  config MCI_ARASAN
>  	bool "Arasan SDHCI Controller"
> +	select MCI_SDHCI
>  	help
>  	  Enable this to support SD and MMC card read/write on systems with
>  	  the Arasan SD3.0 / SDIO3.0 / eMMC4.51 host controller.

Can you make this a separate patch please?

> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index b43a4f8dd..0dd9382ae 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -278,7 +278,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  
>  	mask = SDHCI_INT_CMD_COMPLETE;
>  	if (data)
> -		mask |= SDHCI_INT_XFER_COMPLETE;
> +		mask |= SDHCI_INT_DATA_AVAIL;   

And this one as well. Please also add to the commit log what is going
wrong here.

I can't say much to the changes in the lowlevel code, but they should be
done as separate patches and with better commit messages.

Regards
 Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
