Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuBpw-0007qj-75
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:21:21 +0000
Date: Mon, 27 Aug 2018 09:21:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827072108.my36w3twftmuidlh@pengutronix.de>
References: <20180824032301.30467-1-andrew.smirnov@gmail.com>
 <20180824032301.30467-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824032301.30467-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: Add support for signed HDMI firmware
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 23, 2018 at 08:23:01PM -0700, Andrey Smirnov wrote:
> When booting images that have HDMI firmware embedded we need to skip
> the first v2 header we encounter and get all of the necessary data
> from the next one. Add code implementing that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/xload-esdhc.c | 43 +++++++++++++++++++++++++--------
>  1 file changed, 33 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
> index 55d6c6929..cab024cfe 100644
> --- a/arch/arm/mach-imx/xload-esdhc.c
> +++ b/arch/arm/mach-imx/xload-esdhc.c
> @@ -224,24 +224,47 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 o
>  {
>  
>  	void *buf = (void *)address;
> -	struct imx_flash_header_v2 *hdr = buf + offset + SZ_1K;
> +	struct imx_flash_header_v2 *hdr;
>  	int ret, len;
>  	void __noreturn (*bb)(void);
>  	unsigned int ofs;
> +	int i, header_count = 1;
>  
>  	len = imx_image_size();
>  	len = ALIGN(len, SECTOR_SIZE);
>  
> -	ret = esdhc_read_blocks(esdhc, buf, offset + SZ_1K + SECTOR_SIZE);
> -	if (ret)
> -		return ret;
> +	for (i = 0; i < header_count; i++) {
> +		ret = esdhc_read_blocks(esdhc, buf,
> +					offset + SZ_1K + SECTOR_SIZE);
> +		if (ret)
> +			return ret;
>  
> -	if (!is_imx_flash_header_v2(hdr)) {
> -		pr_debug("IVT header not found on SD card. "
> -			 "Found tag: 0x%02x length: 0x%04x version: %02x\n",
> -			 hdr->header.tag, hdr->header.length,
> -			 hdr->header.version);
> -		return -EINVAL;
> +		hdr = buf + offset + SZ_1K;
> +
> +		if (!is_imx_flash_header_v2(hdr)) {
> +			pr_debug("IVT header not found on SD card. "
> +				 "Found tag: 0x%02x length: 0x%04x "
> +				 "version: %02x\n",
> +				 hdr->header.tag, hdr->header.length,
> +				 hdr->header.version);
> +			return -EINVAL;
> +		}
> +
> +		if (IS_ENABLED(CONFIG_ARCH_IMX8MQ) &&
> +		    hdr->boot_data.plugin & PLUGIN_HDMI_IMAGE) {
> +			/*
> +			 * In images that include signed HDMI
> +			 * firmware, first v2 header would be
> +			 * dedicated to that and would not contain any
> +			 * useful for us information. In order for us
> +			 * to pull the rest of the bootloader image
> +			 * in, we need to re-read header from SD/MMC,
> +			 * this time skipping anything HDMI firmware
> +			 * related.
> +			 */
> +			offset += PLUGIN_HDMI_SIZE;
> +			header_count++;

Wouldn't it be better to get to the second image by reading the size to
skip from the first image rather than adding a fixed offset?

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
