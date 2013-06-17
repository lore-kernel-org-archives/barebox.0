Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoTzz-0007Lz-Vi
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 07:37:12 +0000
Date: Mon, 17 Jun 2013 09:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617073647.GJ32299@pengutronix.de>
References: <1365706897.4136.24.camel@mars> <1370207222.5021.0.camel@lovely>
 <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars>
 <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel>
 <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <1371222662.28854.15.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371222662.28854.15.camel@mars>
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
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

Some small comments, then we shoulf be good to go.

On Fri, Jun 14, 2013 at 05:11:02PM +0200, Christoph Fritz wrote:
> This patch adds omap4 display controller support.
> 
> index 94e42c6..e70ddbd 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
>  obj-$(CONFIG_SHELL_NONE) += xload.o
> +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4_fb.o

Please compile this in unconditionally. Otherwise board using this have
to add a dependency on CONFIG_DRIVER_VIDEO_OMAP4 aswell.

> +struct device_d *omap4_add_display(void *pdata)

Let this function take a struct omap4fb_platform_data *. This makes it
more clear how to call it.

> +static void omap4fb_enable(struct fb_info *info)
> +{
> +	struct omap4fb_device *fbi =
> +		container_of(info, struct omap4fb_device, info);

You could add a static inline to_omap4fb function. It's less error prone
and the above would fit into a single line.

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
