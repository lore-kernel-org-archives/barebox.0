Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaHfF-0007F0-4W
 for barebox@lists.infradead.org; Mon, 29 Feb 2016 06:50:41 +0000
Date: Mon, 29 Feb 2016 07:50:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160229065019.GC9224@pengutronix.de>
References: <1456416080-486-1-git-send-email-ledphilippe@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456416080-486-1-git-send-email-ledphilippe@gmail.com>
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
Subject: Re: [RFC 1/1] i.MX: IPUv3: Add parallel display support
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

Hi Philippe,

Looks good overall, some small points.

On Thu, Feb 25, 2016 at 05:01:20PM +0100, Philippe Leduc wrote:
> Add a driver compatible with "fsl,imx-parallel-display" in order
> to enable parallel display with the i.MX IPUv3.
> 
> Signed-off-by: Philippe Leduc<ledphilippe@gmail.com>
> --
> +struct imx_pd {
> +	struct device_d *dev;
> +	struct display_timings *timings;
> +	u32 interface_pix_fmt;
> +	struct vpl vpl;
> +};
> +
> +
> +

Plese drop multiple blank lines here.

> +static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
> +		unsigned int cmd, void *data)
> +{
> +	struct imx_pd *imx_pd = container_of(vpl, struct imx_pd, vpl);
> +	struct ipu_di_mode *mode;
> +	struct display_timings *timings;
> +
> +	switch (cmd) {
> +	case IMX_IPU_VPL_DI_MODE:
> +		mode = data;
> +
> +		mode->di_clkflags = IPU_DI_CLKMODE_SYNC;
> +		mode->interface_pix_fmt = imx_pd->interface_pix_fmt;
> +		return 0;
> +
> +	case VPL_GET_VIDEOMODES:
> +		timings = data;
> +
> +		timings->num_modes   = imx_pd->timings->num_modes;
> +		timings->native_mode = imx_pd->timings->native_mode;
> +		timings->modes       = imx_pd->timings->modes;
> +		timings->edid        = NULL;
> +		return 0;
> +	}
> +
> +	return 0;
> +}
> +
> +static int imx_pd_probe(struct device_d *dev)
> +{
> +	struct device_node *node = dev->device_node;
> +	struct imx_pd *imx_pd;
> +	const char *fmt;
> +	int ret;
> +
> +	imx_pd = xzalloc(sizeof(*imx_pd));
> +	imx_pd->dev = dev;
> +
> +	ret = of_property_read_string(node, "interface-pix-fmt", &fmt);
> +	if (!ret) {
> +		if (!strcmp(fmt, "rgb24"))
> +			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
> +		else if (!strcmp(fmt, "rgb565"))
> +			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB565;
> +		else if (!strcmp(fmt, "bgr666"))
> +			imx_pd->interface_pix_fmt = V4L2_PIX_FMT_BGR666;

else? You should probably bail out with an error here.

> +	}
> +
> +	imx_pd->timings = of_get_display_timings(node);

You should check the result. If no display timing is found then barebox
will crash in the ioctl function.

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
