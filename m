Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiK8y-0002Ua-9k
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 15:24:45 +0000
Date: Fri, 20 Dec 2019 16:24:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191220152441.thp3kn2wfnw76xgl@pengutronix.de>
References: <1576673837-71180-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576673837-71180-1-git-send-email-m.otto@phytec.de>
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
Subject: Re: [PATCH v2] habv4: imx change signing area from full to the
 executed image
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org, Marcin Niestroj <m.niestroj@grinn-global.com>


On Wed, Dec 18, 2019 at 01:57:17PM +0100, Maik Otto wrote:
> the whole barebox with mbr and partition table were be signed by default.
> change the signing to the executed image without signing the mbr,
> partition table and header_gap by imx8mq
> additional delete option full, from-dcdofs and skip-mbr
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---
> Changes in v2:
>     - change subject from habv4: add the possibility to changing the signing
>       area from Kconfig to 
>     - delete KConfig entries
>     - delete changes habv4-imx6-gencsf.h
>     - delete full, from-dcdofs and skip-mbr options
> ---
>  scripts/imx/imx.c | 33 +++++++++------------------------
>  1 file changed, 9 insertions(+), 24 deletions(-)

Applied, thanks.

@Marcin, as you introduced the "from-dcdofs" and "full" options, are you
happy with this patch? It removes the options, but should default to
what you originally wanted to archieve, right?

Regards
 Sascha

> 
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index b3e8d62..b2dd25c 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -338,16 +338,13 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  	char *str;
>  	int ret;
>  	uint32_t signed_size = data->load_size;
> -	uint32_t offset = 0;
> +	uint32_t offset_load_address = 0x400; //skip MBR and Partition Table
> +	uint32_t offset_size = offset_load_address;
> +	uint32_t offset = offset_load_address;
>  
>  	if (!data->csf)
>  		return -EINVAL;
>  
> -	if (argc < 2)
> -		type = "full";
> -	else
> -		type = argv[1];
> -
>  	/*
>  	 * In case of encrypted image we reduce signed area to beginning
>  	 * of encrypted area.
> @@ -359,31 +356,19 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
>  	 * Ensure we only sign the PBL for i.MX8MQ
>  	 */
>  	if (data->pbl_code_size && data->cpu_type == IMX_CPU_IMX8MQ) {
> -		offset = data->header_gap;
> +		offset += data->header_gap;
>  		signed_size = roundup(data->pbl_code_size + HEADER_LEN, 0x1000);
>  		if (data->signed_hdmi_firmware_file)
>  			offset += PLUGIN_HDMI_SIZE;
>  	}
>  
> -	if (!strcmp(type, "full")) {
> +	if (signed_size > 0) {
>  		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"\n",
> -			       data->image_load_addr, offset, signed_size,
> -			       data->outfile);
> -	} else if (!strcmp(type, "from-dcdofs")) {
> -		ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
> -			       data->image_load_addr + data->image_dcd_offset,
> -			       data->image_dcd_offset,
> -			       signed_size - data->image_dcd_offset,
> -			       data->outfile);
> -	} else if (!strcmp(type, "skip-mbr")) {
> -		ret = asprintf(&str,
> -			       "Blocks = 0x%08x 0 440 \"%s\", \\\n"
> -			       "         0x%08x 512 %d \"%s\"\n",
> -			       data->image_load_addr, data->outfile,
> -			       data->image_load_addr + 512,
> -			       signed_size - 512, data->outfile);
> +			data->image_load_addr + offset_load_address, offset,
> +			signed_size - offset_size, data->outfile);
>  	} else {
> -		fprintf(stderr, "Invalid hab_blocks option: %s\n", type);
> +		fprintf(stderr, "Invalid signed size area 0x%08x\n",
> +			signed_size);
>  		return -EINVAL;
>  	}
>  
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
