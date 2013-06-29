Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UsqrH-00065v-Q7
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 08:50:16 +0000
Date: Sat, 29 Jun 2013 10:49:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130629084953.GN516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372443947-12599-3-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372443947-12599-3-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 2/6] clocksource: orion: add DT support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Fri, Jun 28, 2013 at 08:25:43PM +0200, Sebastian Hesselbarth wrote:
> This adds device tree support to orion timer and also converts clk_get
> to clk_lookup to find TCLK without device name reference.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: barebox@lists.infradead.org
> ---
>  drivers/clocksource/orion.c |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
> index e3db845..ed71fa4 100644
> --- a/drivers/clocksource/orion.c
> +++ b/drivers/clocksource/orion.c
> @@ -49,7 +49,7 @@ static int orion_timer_probe(struct device_d *dev)
>  	uint32_t val;
>  
>  	timer_base = dev_request_mem_region(dev, 0);
> -	tclk = clk_get(dev, "tclk");
> +	tclk = clk_lookup("tclk");

Please don't do this. I don't know how it is done in the kernel
for orion atm, but you could for example help yourself with
clkdev_add_physbase until the clocks can be properly looked up from
the devicetree.

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
