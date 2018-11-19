Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOgRU-0000tH-O5
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 10:06:11 +0000
Date: Mon, 19 Nov 2018 11:05:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181119100556.xpliscvowx4oipfl@pengutronix.de>
References: <20181112162257.2209-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181112162257.2209-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/2] video: ipuv3: use closest fractional divider
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 12, 2018 at 05:22:56PM +0100, Lucas Stach wrote:
> Currently the divider is always rounded down, which may lead to a
> rather big overshoot of the display clock. Try to match the clock
> better by rounding to closest.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/imx-ipu-v3/ipu-di.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
> index b6e64fe16a85..5751c678b28e 100644
> --- a/drivers/video/imx-ipu-v3/ipu-di.c
> +++ b/drivers/video/imx-ipu-v3/ipu-di.c
> @@ -140,10 +140,7 @@ static int ipu_di_clk_calc_div(unsigned long inrate, unsigned long outrate)
>  	int div;
>  
>  	tmp *= 16;
> -
> -	do_div(tmp, outrate);
> -
> -	div = tmp;
> +	div = DIV_ROUND_CLOSEST(tmp, outrate);
>  

On ARM32 this fails with:

undefined reference to `__aeabi_uldivmod'

Fixed up like this:

----------------------------8<-------------------------

From 6b14328204f3978abeb91e8e779f6444c3c74df8 Mon Sep 17 00:00:00 2001
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Nov 2018 17:22:56 +0100
Subject: [PATCH] video: ipuv3: use closest fractional divider

Currently the divider is always rounded down, which may lead to a
rather big overshoot of the display clock. Try to match the clock
better by rounding to closest.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/ipu-di.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index b6e64fe16a..b4302412e0 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -140,6 +140,7 @@ static int ipu_di_clk_calc_div(unsigned long inrate, unsigned long outrate)
 	int div;
 
 	tmp *= 16;
+	tmp += outrate / 2;
 
 	do_div(tmp, outrate);
 
-- 
2.19.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
