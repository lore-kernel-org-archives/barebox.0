Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TFjuw-00059q-IN
 for barebox@lists.infradead.org; Sun, 23 Sep 2012 11:00:07 +0000
Date: Sun, 23 Sep 2012 13:00:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120923110000.GJ1322@pengutronix.de>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] video: add atmel lcdc frambuffer support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Nicolas Ferre <nicolas.ferre@atmel.com>

On Sat, Sep 22, 2012 at 08:26:44PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This IP is present on the at91sam9 until the sam9g45, on the sam9x5 we use a
> new IP.
> 
> This driver is based on the linux one.
> 
> +
> +/* Way LCD wires are connected to the chip:
> + * Some Atmel chips use BGR color mode (instead of standard RGB)
> + * A swapped wiring onboard can bring to RGB mode.
> + */
> +#define ATMEL_LCDC_WIRING_BGR	0
> +#define ATMEL_LCDC_WIRING_RGB	1
> +#define ATMEL_LCDC_WIRING_RGB555	2
> +
> +
> + /* LCD Controller info data structure, stored in device platform_data */
> +struct atmel_lcdfb_info {
> +	struct fb_info		*info;
> +	void __iomem		*mmio;
> +	struct device_d		*device;
> +
> +	unsigned int		guard_time;
> +	unsigned int		smem_len;
> +	struct clk		*bus_clk;
> +	struct clk		*lcdc_clk;
> +
> +	bool			lcdcon_is_backlight;
> +	bool			lcdcon_pol_negative;
> +	u8			saved_lcdcon;
> +
> +	u8			default_bpp;
> +	u8			lcd_wiring_mode;
> +	unsigned int		default_lcdcon2;
> +	unsigned int		default_dmacon;
> +	void (*atmel_lcdfb_power_control)(int on);
> +	struct fb_videomode	*mode_list;
> +	unsigned		num_modes;
> +	u32			pseudo_palette[16];
> +};

Honestly, Passing in the driver internal data as platform_data is completely
rubbish. If you want to have it the-same-like-in-Linux, then fix it in Linux
first.

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
