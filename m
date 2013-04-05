Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO2UT-0005JV-US
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 08:59:23 +0000
Date: Fri, 5 Apr 2013 10:59:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130405085917.GK1906@pengutronix.de>
References: <1365057762.3836.18.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365057762.3836.18.camel@mars>
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
Subject: Re: [PATCH] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi Christoph,

mostly ok, some comments inline.

On Thu, Apr 04, 2013 at 08:42:42AM +0200, Christoph Fritz wrote:
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index 6d6b08f..15eaa2f 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -45,6 +45,14 @@ config DRIVER_VIDEO_S3C24XX
>  	help
>  	  Add support for the S3C244x LCD controller.
>  
> +config DRIVER_VIDEO_OMAP4
> +        bool "OMAP4 framebuffer driver"

\t please

> +	depends on ARCH_OMAP4
> +	help
> +	  Add support for the OMAP4 Display Controller.
> +	  DSI is unsupported, only DISPC parallel mode on LCD2
> +	  is supported.
> +
>  if DRIVER_VIDEO_S3C24XX
> +
> +struct omap4fb_colors {
> +	struct fb_bitfield	red;
> +	struct fb_bitfield	green;
> +	struct fb_bitfield	blue;
> +	struct fb_bitfield	transp;
> +};
> +
> +static struct omap4fb_colors const omap4FB_COLORS[] = {

lower case variable names please.

> +	[0] = {
> +		.red	= { .length = 0, .offset = 0 },
> +	},
> +	[1] = {
> +		.blue	= { .length = 8, .offset = 0 },
> +		.green	= { .length = 8, .offset = 8 },
> +		.red	= { .length = 8, .offset = 16 },
> +	},
> +	[2] = {
> +		.blue	= { .length = 8, .offset = 0 },
> +		.green	= { .length = 8, .offset = 8 },
> +		.red	= { .length = 8, .offset = 16 },
> +		.transp	= { .length = 8, .offset = 24 },
> +	},
> +};
> +
> +static void omap4fb_fill_bootenv(struct omap4fb_device *fbi,
> +				 size_t screen_size)
> +{
> +	char buf[sizeof("bootsplash=0x12345678+12345678910")];
> +	int rc;
> +
> +	snprintf(buf, sizeof buf, "bootsplash=0x%08lx+%zu",
> +		 (unsigned long)fbi->info.screen_base,
> +		 screen_size);
> +
> +	rc = dev_set_param(fbi->dev, "bootargs", buf);
> +	if (rc < 0) {
> +		dev_err(fbi->dev, "failed to set bootargs '%s': %d\n",
> +			buf, rc);
> +	}
> +}

Where is this used in the kernel? You should probably rather use the
simple fb driver Steven Warren suggested.

> +
> +	rc = register_framebuffer(info);
> +	if (rc < 0) {
> +		dev_err(dev, "failed to register framebuffer: %d\n", rc);
> +		goto out;
> +	}
> +
> +	rc = 0;
> +	dev_info(dev, "registered omap4 framebuffer\n");

The context is already in dev_info, so you can just do a

	dev_info(dev, "registered\n");

> +/* TRM: 10.2.7.3 Display Controller Registers */
> +struct omap4_regs_dispc {
> +	uint32_t const revision;
> +	OMAP4_RESERVED(0x04, 0x10);
> +	uint32_t sysconfig;
> +	uint32_t const sysstatus;
> +	uint32_t irqstatus;
> +	uint32_t irqenable;
> +	OMAP4_RESERVED(0x20, 0x40);
> +	uint32_t control1;
> +	uint32_t config1;
> +	OMAP4_RESERVED(0x48, 0x4C);
> +
> +	uint32_t default_color[2];
> +	uint32_t trans_color[2];
> +
> +	uint32_t const line_status;
> +	uint32_t line_number;
> +	uint32_t timing_h1;
> +	uint32_t timing_v1;
> +	uint32_t pol_freq1;
> +	uint32_t divisor1;
> +	uint32_t global_alpha;
> +	uint32_t size_tv;
> +	uint32_t size_lcd1;
> +
> +	struct {
> +		uint32_t ba[2];
> +		uint32_t position;
> +		uint32_t size;
> +		OMAP4_RESERVED(0x90, 0xA0);
> +		uint32_t attributes;
> +		uint32_t buf_threshold;
> +		uint32_t const buf_size_status;
> +		uint32_t row_inc;
> +		uint32_t pixel_inc;
> +		OMAP4_RESERVED(0xB4, 0xB8);
> +		uint32_t table_ba;
> +	} gfx;
> +
> +	struct omap4_regs_dispc_vid vid1;
> +	OMAP4_RESERVED(0x144, 0x14C);
> +	struct omap4_regs_dispc_vid vid2;
> +
> +	uint32_t data1_cycle[3];
> +
> +	uint32_t vid1_fir_coef_v[8];
> +	uint32_t vid2_fir_coef_v[8];
> +	uint32_t cpr1_coef_r;
> +	uint32_t cpr1_coef_g;
> +	uint32_t cpr1_coef_b;
> +	uint32_t gfx_preload;
> +	uint32_t vid_preload[2];
> +	uint32_t control2;
> +	OMAP4_RESERVED(0x23C, 0x300);
> +
> +	struct {
> +		uint32_t accu[2];
> +		uint32_t ba[2];
> +		struct {
> +			uint32_t h;
> +			uint32_t hv;
> +		} fir_coef[8];
> +		uint32_t fir_coef_v[8];
> +		uint32_t attributes;
> +		uint32_t conv_coef0;
> +		uint32_t conv_coef1;
> +		uint32_t conv_coef2;
> +		uint32_t conv_coef3;
> +		uint32_t conv_coef4;
> +		uint32_t const buf_size_status;
> +		uint32_t buf_threshold;
> +		uint32_t fir;
> +		uint32_t picture_size;
> +		uint32_t pixel_inc;
> +		uint32_t position;
> +		uint32_t preload;
> +		uint32_t row_inc;
> +		uint32_t size;
> +	} vid3;
> +
> +	uint32_t default_color2;
> +	uint32_t trans_color2;
> +	uint32_t cpr2_coef_b;
> +	uint32_t cpr2_coef_g;
> +	uint32_t cpr2_coef_r;
> +	uint32_t data2_cycle[3];
> +	uint32_t size_lcd2;
> +	OMAP4_RESERVED(0x3D0, 0x400);
> +	uint32_t timing_h2;
> +	uint32_t timing_v2;
> +	uint32_t pol_freq2;
> +	uint32_t divisor2;
> +	OMAP4_RESERVED(0x410, 0x500);
> +
> +	struct {
> +		uint32_t accu[2];
> +		uint32_t ba[2];
> +		struct {
> +			uint32_t h;
> +			uint32_t hv;
> +		} fir_coef[8];
> +		uint32_t fir_coef_v[8];
> +		uint32_t attributes;
> +		uint32_t conv_coef0;
> +		uint32_t conv_coef1;
> +		uint32_t conv_coef2;
> +		uint32_t conv_coef3;
> +		uint32_t conv_coef4;
> +		uint32_t const buf_size_status;
> +		uint32_t buf_threshold;
> +		uint32_t fir;
> +		uint32_t picture_size;
> +		uint32_t pixel_inc;
> +		OMAP4_RESERVED(0x59C, 0x5A4);
> +		uint32_t row_inc;
> +		uint32_t size;
> +	} wb;
> +
> +	OMAP4_RESERVED(0x5AC, 0x600);
> +	uint32_t vid1_ba_uv[2];
> +	uint32_t vid2_ba_uv[2];
> +	uint32_t vid3_ba_uv[2];
> +	uint32_t wb_ba_uv[2];
> +	uint32_t config2;
> +	uint32_t vid1_attributes2;
> +	uint32_t vid2_attributes2;
> +	uint32_t vid3_attributes2;
> +	uint32_t gamma_table0;
> +	uint32_t gamma_table1;
> +	uint32_t gamma_table2;
> +	uint32_t vid1_fir2;
> +	uint32_t vid1_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid1_fir_coef[8];
> +	uint32_t vid1_fir_coef_v2[8];
> +	uint32_t vid2_fir2;
> +	uint32_t vid2_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid2_fir_coef[8];
> +	uint32_t vid2_fir_coef_v2[8];
> +	OMAP4_RESERVED(0x714, 0x724);
> +	uint32_t vid3_fir2;
> +	uint32_t vid3_accu2[2];
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} vid3_fir_coef[8];
> +	uint32_t vid3_fir_coef_v2[8];
> +	uint32_t wb_fir2;
> +	uint32_t wb_accu2[2];
> +	OMAP4_RESERVED(0x79C, 0x7A0);
> +	struct {
> +		uint32_t h2;
> +		uint32_t hv2;
> +	} wb_fir_coef[8];
> +	uint32_t wb_fir_coef_v2[8];
> +	uint32_t global_buffer;
> +	uint32_t divisor;
> +	OMAP4_RESERVED(0x808, 0x810);
> +	uint32_t wb_attributes2;
> +};

This looks awful. I wonder who ever had the idea that placing structs
over registers is a good idea.

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
