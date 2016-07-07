Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3kK-0000kR-3e
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:29:16 +0000
Date: Thu, 7 Jul 2016 09:28:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707072853.GC20657@pengutronix.de>
References: <1467875706-10635-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467875706-10635-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] video: ipuv3: imx-pd: Fix crash if node does not contain
 "timings" property
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jul 07, 2016 at 10:15:06AM +0300, Alexander Shiyan wrote:
> This patch fix the system crash if DT node does not contain "timings" property.
> 
> software interrupt
> pc : [<97f31078>]    lr : [<97f3103c>]
> sp : 97fefed8  ip : 97fefed0  fp : 00000000
> r10: 00000000  r9 : 97fe4000  r8 : 95ff6b40
> r7 : 96038024  r6 : 67660005  r5 : 96034f64  r4 : 96038024
> r3 : 00000000  r2 : 00000020  r1 : 0000000a  r0 : 00000009
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> [<97f31078>] (imx_pd_ioctl+0x64/0xa0) from [<97f2dacc>] (vpl_ioctl+0xb0/0xf0)
> [<97f2dacc>] (vpl_ioctl+0xb0/0xf0) from [<97f3026c>] (ipufb_probe+0x230/0x2c8)
> [<97f3026c>] (ipufb_probe+0x230/0x2c8) from [<97f0d164>] (platform_probe+0x10/0x14)
> [<97f0d164>] (platform_probe+0x10/0x14) from [<97f0c9f4>] (device_probe+0x38/0xb0)
> [<97f0c9f4>] (device_probe+0x38/0xb0) from [<97f0cab0>] (match.part.1+0x44/0x50)
> [<97f0cab0>] (match.part.1+0x44/0x50) from [<97f0cd98>] (register_driver+0x90/0xc8)
> [<97f0cd98>] (register_driver+0x90/0xc8) from [<97f00d74>] (start_barebox+0x28/0xf0)
> [<97f00d74>] (start_barebox+0x28/0xf0) from [<97f664a0>] (barebox_non_pbl_start+0x12c/0x154)
> [<97f664a0>] (barebox_non_pbl_start+0x12c/0x154) from [<97f00004>] (__bare_init_start+0x0/0x10)
> 
> [<97f65cd0>] (unwind_backtrace+0x0/0x8c) from [<97f01190>] (panic+0x28/0x38)
> [<97f01190>] (panic+0x28/0x38) from [<97f661cc>] (do_exception+0x10/0x14)
> [<97f661cc>] (do_exception+0x10/0x14) from [<97f66204>] (do_software_interrupt+0
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/video/imx-ipu-v3/imx-pd.c | 3 +++
>  1 file changed, 3 insertions(+)

You can squash this into the patch adding parallel display support and
send it to the list. This file is not mainline ;)

Sascha

> 
> diff --git a/drivers/video/imx-ipu-v3/imx-pd.c b/drivers/video/imx-ipu-v3/imx-pd.c
> index 12cad8f..50f6de5 100644
> --- a/drivers/video/imx-ipu-v3/imx-pd.c
> +++ b/drivers/video/imx-ipu-v3/imx-pd.c
> @@ -49,6 +49,9 @@ static int imx_pd_ioctl(struct vpl *vpl, unsigned int port,
>  		return 0;
>  
>  	case VPL_GET_VIDEOMODES:
> +		if (!imx_pd->timings)
> +			return -ENODATA;
> +
>  		timings = data;
>  
>  		timings->num_modes   = imx_pd->timings->num_modes;
> -- 
> 2.4.9
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
