Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afOBF-0000iM-UY
 for barebox@lists.infradead.org; Mon, 14 Mar 2016 08:48:51 +0000
Received: by mail-wm0-x236.google.com with SMTP id l68so92335353wml.1
 for <barebox@lists.infradead.org>; Mon, 14 Mar 2016 01:48:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160229065019.GC9224@pengutronix.de>
References: <1456416080-486-1-git-send-email-ledphilippe@gmail.com>
 <20160229065019.GC9224@pengutronix.de>
Date: Mon, 14 Mar 2016 09:48:27 +0100
Message-ID: <CABQt-U=YhwADLM2Ldaz8oznSHVWNQxgdme325=9h4Qe1OTg=2w@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Thanks for the feedback, I'll fix that ASAP.

Regards,

--
Philippe LEDUC
ledphilippe@gmail.com


2016-02-29 7:50 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Philippe,
>
> Looks good overall, some small points.
>
> On Thu, Feb 25, 2016 at 05:01:20PM +0100, Philippe Leduc wrote:
>> Add a driver compatible with "fsl,imx-parallel-display" in order
>> to enable parallel display with the i.MX IPUv3.
>>
>> Signed-off-by: Philippe Leduc<ledphilippe@gmail.com>
>> --
>> +struct imx_pd {
>> +     struct device_d *dev;
>> +     struct display_timings *timings;
>> +     u32 interface_pix_fmt;
>> +     struct vpl vpl;
>> +};
>> +
>> +
>> +
>
> Plese drop multiple blank lines here.
>
>> +static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
>> +             unsigned int cmd, void *data)
>> +{
>> +     struct imx_pd *imx_pd = container_of(vpl, struct imx_pd, vpl);
>> +     struct ipu_di_mode *mode;
>> +     struct display_timings *timings;
>> +
>> +     switch (cmd) {
>> +     case IMX_IPU_VPL_DI_MODE:
>> +             mode = data;
>> +
>> +             mode->di_clkflags = IPU_DI_CLKMODE_SYNC;
>> +             mode->interface_pix_fmt = imx_pd->interface_pix_fmt;
>> +             return 0;
>> +
>> +     case VPL_GET_VIDEOMODES:
>> +             timings = data;
>> +
>> +             timings->num_modes   = imx_pd->timings->num_modes;
>> +             timings->native_mode = imx_pd->timings->native_mode;
>> +             timings->modes       = imx_pd->timings->modes;
>> +             timings->edid        = NULL;
>> +             return 0;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int imx_pd_probe(struct device_d *dev)
>> +{
>> +     struct device_node *node = dev->device_node;
>> +     struct imx_pd *imx_pd;
>> +     const char *fmt;
>> +     int ret;
>> +
>> +     imx_pd = xzalloc(sizeof(*imx_pd));
>> +     imx_pd->dev = dev;
>> +
>> +     ret = of_property_read_string(node, "interface-pix-fmt", &fmt);
>> +     if (!ret) {
>> +             if (!strcmp(fmt, "rgb24"))
>> +                     imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB24;
>> +             else if (!strcmp(fmt, "rgb565"))
>> +                     imx_pd->interface_pix_fmt = V4L2_PIX_FMT_RGB565;
>> +             else if (!strcmp(fmt, "bgr666"))
>> +                     imx_pd->interface_pix_fmt = V4L2_PIX_FMT_BGR666;
>
> else? You should probably bail out with an error here.
>
>> +     }
>> +
>> +     imx_pd->timings = of_get_display_timings(node);
>
> You should check the result. If no display timing is found then barebox
> will crash in the ioctl function.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
