Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aagW6-0006gc-ES
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 09:22:55 +0000
Date: Tue, 1 Mar 2016 10:22:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160301092232.GM9224@pengutronix.de>
References: <1456398922-8253-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456398922-8253-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] ARM: i.MX: bbu-internal: call detect for mmc devices
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Thu, Feb 25, 2016 at 12:15:22PM +0100, Stefan Christ wrote:
> For the MMC update_handler it makes sense to probe the device before
> writing to it. If the device is not probed yet, you get errors like
> 
>     $ barebox_update -y -t mmc0 /mnt/tftp/barebox.bin
>     barebox_update: Read-only file system
> 
> The code is nearly equivalent to
> 
>     $ detect mmc0
>     $ barebox_update -y -t mmc0 /mnt/tftp/barebox.bin
> 
> The function device_detect_by_name also handles device names with
> partition suffix like "/dev/mmc3.boot0".
> 
> While at it, use the macro BIT for the bit field.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> index ac90c53..1ecc0d7 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -34,9 +34,10 @@
>  
>  #define FLASH_HEADER_OFFSET_MMC		0x400
>  
> -#define IMX_INTERNAL_FLAG_NAND		(1 << 0)
> -#define IMX_INTERNAL_FLAG_KEEP_DOSPART	(1 << 1)
> -#define IMX_INTERNAL_FLAG_ERASE		(1 << 2)
> +#define IMX_INTERNAL_FLAG_NAND		BIT(0)
> +#define IMX_INTERNAL_FLAG_KEEP_DOSPART	BIT(1)
> +#define IMX_INTERNAL_FLAG_ERASE		BIT(2)
> +#define IMX_INTERNAL_FLAG_PROBE		BIT(3)
>  
>  struct imx_internal_bbu_handler {
>  	struct bbu_handler handler;
> @@ -52,8 +53,21 @@ struct imx_internal_bbu_handler {
>  static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
>  		struct bbu_data *data, void *buf, int image_len)
>  {
> +	const char *devname;
>  	int fd, ret;
>  
> +	if (imx_handler->flags & IMX_INTERNAL_FLAG_PROBE) {

device_detect_by_name() should be safe to call, I don't think we need
this additional flag. Just always call device_detect_by_name(). We have
to drop the return value checking though.

In fact we have the following patch in one of our internal customer
trees, this should be suitable for your issue, right?

Sascha

-------------------------------8<-----------------------------

From 5770640f4b06730bfd71eadce60bd411e437832b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jul 2013 12:41:55 +0200
Subject: [PATCH] ARM: i.MX: bbu-internal: detect device before writing to it

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index ac90c53..821ce66 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -132,6 +132,9 @@ static int imx_bbu_check_prereq(struct bbu_data *data)
 	if (ret)
 		return ret;
 
+	if (!strncmp(data->devicefile, "/dev/", 5))
+		device_detect_by_name(data->devicefile + 5);
+
 	return 0;
 }
 
-- 
2.7.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
