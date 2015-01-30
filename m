Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YH6Or-0005iM-U9
 for barebox@lists.infradead.org; Fri, 30 Jan 2015 07:53:58 +0000
Date: Fri, 30 Jan 2015 08:53:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150130075335.GS12209@pengutronix.de>
References: <1422546197-6163-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422546197-6163-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] mfd: da9053: add basic da9053 driver
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 04:43:17PM +0100, Michael Grzeschik wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  drivers/mfd/Kconfig  |   4 +
>  drivers/mfd/Makefile |   1 +
>  drivers/mfd/da9053.c | 360 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 365 insertions(+)
>  create mode 100644 drivers/mfd/da9053.c
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 3af904d..3d230f1 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -4,6 +4,10 @@ config MFD_ACT8846
>  	depends on I2C
>  	bool "ACT8846 driver"
>  
> +config MFD_DA9053
> +	depends on I2C
> +	bool "DA9053 PMIC driver"

You either need a "depends on WATCHDOG" or a if
(IS_ENABLED(CONFIG_WATCHDOG) in your code.

What do the "shutdown" and "faultlog" parameters do? At least a comment
in the code, better in the documentation would be good.

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
