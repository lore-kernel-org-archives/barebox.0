Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvd4k-0003Ej-6j
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 06:38:36 +0000
Date: Fri, 31 Aug 2018 08:38:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180831063822.6kkhl7ed6duy4qsn@pengutronix.de>
References: <20180830050117.12620-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180830050117.12620-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] scripts: imx: Add support for signed HDMI firmware
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 10:01:16PM -0700, Andrey Smirnov wrote:
> Boot header on i.MX8MQ SoC allows embedding signed HDMI firmware
> images that are used by mask ROM code during the very early stages of
> boot. Since providing that firmware appear to be necessary to enable
> SoC's HDMI/DP functionality extend imx-image tool to support this
> feature. To do that add code implementing "signed_hdmi_firmware"
> keyword, which allows users to specify a path to a binary blob
> containing all of the necessary headers and footers as well firmware
> data and code sections (this is how such images are provieded by NXP)
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

> 
> Changes since [v1]:
> 
>     - None
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-August/034406.html
> 
>  arch/arm/mach-imx/include/mach/imx-header.h |  9 +++++
>  scripts/imx/imx-image.c                     | 36 ++++++++++++++++---
>  scripts/imx/imx.c                           | 38 +++++++++++++++++++++
>  3 files changed, 78 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
> index c9b2a5881..d9c093321 100644
> --- a/arch/arm/mach-imx/include/mach/imx-header.h
> +++ b/arch/arm/mach-imx/include/mach/imx-header.h
> @@ -47,6 +47,14 @@ struct imx_dcd_rec_v1 {
>  #define PARAMETER_FLAG_MASK	(1 << 3)
>  #define PARAMETER_FLAG_SET	(1 << 4)
>  
> +#define PLUGIN_HDMI_IMAGE	0x0002
> +
> +/*
> + * As per Table 6-22 "eMMC/SD BOOT layout", in Normal Boot layout HDMI
> + * firmware image starts at LBA# 64 and ends at LBA# 271
> + */
> +#define PLUGIN_HDMI_SIZE	((271 - 64 + 1) * 512)
> +
>  struct imx_ivt_header {
>  	uint8_t tag;
>  	uint16_t length;
> @@ -94,6 +102,7 @@ struct config_data {
>  	int (*nop)(const struct config_data *data);
>  	int csf_space;
>  	char *csf;
> +	char *signed_hdmi_firmware_file;
>  };
>  
>  #define MAX_RECORDS_DCD_V2 1024
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 452a544bc..558dacfbb 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -695,7 +695,7 @@ int main(int argc, char *argv[])
>  	int sign_image = 0;
>  	int i, header_copies;
>  	int add_barebox_header;
> -	uint32_t barebox_image_size;
> +	uint32_t barebox_image_size = 0;
>  	struct config_data data = {
>  		.image_dcd_offset = 0xffffffff,
>  		.write_mem = write_mem,
> @@ -704,6 +704,8 @@ int main(int argc, char *argv[])
>  	};
>  	uint32_t *bb_header;
>  	size_t sizeof_bb_header;
> +	size_t header_len = HEADER_LEN;
> +	size_t signed_hdmi_firmware_size = 0;
>  
>  	prgname = argv[0];
>  
> @@ -770,7 +772,7 @@ int main(int argc, char *argv[])
>  	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
>  	 *   in ver funy ways when the image size is not 4 byte aligned
>  	 */
> -	data.load_size = roundup(data.image_size + HEADER_LEN, 0x1000);
> +	data.load_size = roundup(data.image_size + header_len, 0x1000);
>  
>  	ret = parse_config(&data, configfile);
>  	if (ret)
> @@ -804,7 +806,7 @@ int main(int argc, char *argv[])
>  		exit(0);
>  	}
>  
> -	buf = calloc(1, HEADER_LEN);
> +	buf = calloc(1, header_len);
>  	if (!buf)
>  		exit(1);
>  
> @@ -825,7 +827,31 @@ int main(int argc, char *argv[])
>  			exit(1);
>  		}
>  
> -		barebox_image_size = add_header_v2(&data, buf);
> +		if (data.signed_hdmi_firmware_file) {
> +			free(buf);
> +			buf = read_file(data.signed_hdmi_firmware_file,
> +					&signed_hdmi_firmware_size);
> +			if (!buf) {
> +				perror("read_file");
> +				exit(1);
> +			}
> +
> +			signed_hdmi_firmware_size =
> +				roundup(signed_hdmi_firmware_size,
> +					PLUGIN_HDMI_SIZE);
> +
> +			header_len += signed_hdmi_firmware_size;
> +			barebox_image_size += signed_hdmi_firmware_size;
> +
> +			buf = realloc(buf, header_len);
> +			if (!buf) {
> +				perror("realloc");
> +				exit(1);
> +			}
> +		}
> +
> +		barebox_image_size += add_header_v2(&data, buf +
> +						    signed_hdmi_firmware_size);
>  		break;
>  	default:
>  		fprintf(stderr, "Congratulations! You're welcome to implement header version %d\n",
> @@ -870,7 +896,7 @@ int main(int argc, char *argv[])
>  		}
>  
>  		ret = xwrite(outfd, buf + sizeof_bb_header,
> -			     HEADER_LEN - sizeof_bb_header);
> +			     header_len - sizeof_bb_header);
>  		if (ret < 0) {
>  			perror("write");
>  			exit(1);
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index d3786b6e1..7d2a5c5b8 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -368,6 +368,41 @@ static int do_super_root_key(struct config_data *data, int argc, char *argv[])
>  	return 0;
>  }
>  
> +static int
> +do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
> +{
> +	const char *file;
> +	int len;
> +
> +
> +	if (argc != 2) {
> +		fprintf(stderr, "usage: signed_hdmi_firmware <file>\n");
> +		return -EINVAL;
> +	}
> +
> +	if (data->cpu_type != IMX_CPU_IMX8MQ) {
> +		fprintf(stderr,
> +			"Warning: The signed_hdmi_firmware command is "
> +			"only supported i.MX8MQ SoCs\n");
> +		return 0;
> +	}
> +
> +	file = argv[1];
> +
> +	if (*file == '"')
> +		file++;
> +
> +	data->signed_hdmi_firmware_file = strdup(file);
> +	if (!data->signed_hdmi_firmware_file)
> +		return -ENOMEM;
> +
> +	len = strlen(data->signed_hdmi_firmware_file);
> +	if (data->signed_hdmi_firmware_file[len - 1] == '"')
> +		data->signed_hdmi_firmware_file[len - 1] = 0;
> +
> +	return 0;
> +}
> +
>  struct command cmds[] = {
>  	{
>  		.name = "wm",
> @@ -402,6 +437,9 @@ struct command cmds[] = {
>  	}, {
>  		.name = "super_root_key",
>  		.parse = do_super_root_key,
> +	}, {
> +		.name = "signed_hdmi_firmware",
> +		.parse = do_signed_hdmi_firmware,
>  	},
>  };
>  
> -- 
> 2.17.1
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
