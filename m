Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knHsc-0003Ua-Hi
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 09:04:55 +0000
Date: Thu, 10 Dec 2020 10:04:51 +0100
Message-ID: <20201210090451.GR3977@pengutronix.de>
References: <20201209131454.5248-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209131454.5248-1-jmaselbas@kalray.eu>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] phy: usb-nop-xceiv: Make the clock always optional
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Jules,

On Wed, Dec 09, 2020 at 02:14:54PM +0100, Jules Maselbas wrote:
> The clock seems to be optional at probe time, if not found it's set
> to NULL. However this was not the case in the function nop_usbphy_init
> which exits with error if the clock cannot be enabled.
> 
> Make the clock optional also during the nop_usbphy_init by trying to
> do the clock init only if the clock has been found during probe.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/phy/usb-nop-xceiv.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
> index 7ea7d28a2..b549b564b 100644
> --- a/drivers/phy/usb-nop-xceiv.c
> +++ b/drivers/phy/usb-nop-xceiv.c
> @@ -46,9 +46,11 @@ static int nop_usbphy_init(struct phy *phy)
>  	int ret;
>  	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
>  
> -	ret = clk_enable(nopphy->clk);
> -	if (ret < 0)
> -		return ret;
> +	if (nopphy->clk) {
> +		ret = clk_enable(nopphy->clk);
> +		if (ret < 0)
> +			return ret;
> +	}

clk_enable(NULL) returns 0 on purpose, because NULL is handled as a
dummy clock. This change shouldn't be needed.

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
