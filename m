Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDO8N-0007aC-1X
 for barebox@lists.infradead.org; Wed, 24 May 2017 04:42:56 +0000
Received: by mail-pg0-x242.google.com with SMTP id s62so15675876pgc.0
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 21:42:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170523130937.24433-1-s.hauer@pengutronix.de>
References: <20170523130937.24433-1-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 21:42:33 -0700
Message-ID: <CAHQ1cqE445BUz9y8_rmBENYD5nxhYU9AeJhPv5O7GGQcgq5-ww@mail.gmail.com>
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
Subject: Re: [PATCH] usb: imx: Only use clock when it exists
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, jbe@pengutronix.de

On Tue, May 23, 2017 at 6:09 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Fixes: bbe0df90b8e2463dd8db651e9f1dd57702985d2d
>
> I assumed all chipidea devices actually have a clock. This is true
> when looking at the device tree, but in barebox not all i.MX SoCs
> use the clocks provided by the device tree. Most instead use
> clkdev_add_physbase() to attach a clocks to devices. For these the
> chipidea device does not have a clock.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Just tried on a custom i.MX51 based board I wrote my USB clock patch
from earlier for. Seems to work with said patch dropped from the tree,
so:

Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>

> ---
>  drivers/usb/imx/chipidea-imx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 67d01d3de5..39593c40fb 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -276,10 +276,8 @@ static int imx_chipidea_probe(struct device_d *dev)
>          * devices which have only one.
>          */
>         ci->clk = clk_get(dev, NULL);
> -       if (IS_ERR(ci->clk))
> -               return PTR_ERR(ci->clk);
> -
> -       clk_enable(ci->clk);
> +       if (!IS_ERR(ci->clk))
> +               clk_enable(ci->clk);
>
>         if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
>                 ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
> --
> 2.11.0
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
