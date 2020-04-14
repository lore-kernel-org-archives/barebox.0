Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHZf-00087W-0r
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:09:44 +0000
References: <20200414090711.10504-1-m.tretter@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c41fbe56-27fe-9ea4-6c26-c14e03c03ed1@pengutronix.de>
Date: Tue, 14 Apr 2020 11:09:41 +0200
MIME-Version: 1.0
In-Reply-To: <20200414090711.10504-1-m.tretter@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] mci: arasan: fix missing select on sdhci-helpers
To: Michael Tretter <m.tretter@pengutronix.de>, barebox@lists.infradead.org

Hello Michael,

On 4/14/20 11:07 AM, Michael Tretter wrote:
> The arasan driver uses the sdhci-helpers as well, but does not select
> the sdhci-helpers.
> 
> Add the missing select to fix the compilation of the arasan driver.

There is another series on the mailing list that Sascha just accepted, which
fixes this and some more issues. Look for add-MCI_SDHCI-dependency-to-Arasan-driver

Cheers,

> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/mci/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
> index 80b3a26002b4..9f56bed3abbc 100644
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
