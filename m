Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gURyJ-00045y-BJ
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 07:51:53 +0000
Date: Wed, 5 Dec 2018 08:51:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181205075139.d65356mmag2iiyqw@pengutronix.de>
References: <1543914747-37917-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543914747-37917-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] nvmem: ocotp: Add support for second mac address fuses
 on imx6ul
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2018 at 10:12:27AM +0100, Stefan Riedmueller wrote:
> From: Christian Hemp <c.hemp@phytec.de>
> 
> The i.MX 6UL/ULL has fuses for two MAC addresses. Both MAC addresses
> share the fuse address 0x23.
> 
> 		-----------------------------
> 	0x22	| MAC0 | MAC0 | MAC0 | MAC0 |
> 		-----------------------------
> 	0x23	| MAC0 | MAC0 | MAC1 | MAC1 |
> 		-----------------------------
> 	0x24	| MAC1 | MAC1 | MAC1 | MAC1 |
> 		-----------------------------
> 
> So to read the second MAC address the first two bytes of 0x23 need to be
> skipped.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---

Applied, thanks

Sascha

>  drivers/nvmem/ocotp.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index e689559ee362..e0cf35f0b73c 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -70,6 +70,7 @@
>  #define IMX6_OTP_DATA_ERROR_VAL		0xBADABADA
>  #define DEF_RELAX			20
>  #define MAC_OFFSET_0			(0x22 * 4)
> +#define IMX6UL_MAC_OFFSET_1		(0x23 * 4)
>  #define MAC_OFFSET_1			(0x24 * 4)
>  #define MAX_MAC_OFFSETS			2
>  #define MAC_BYTES			8
> @@ -421,10 +422,14 @@ static int imx_ocotp_read_mac(const struct imx_ocotp_data *data,
>  	int ret;
>  
>  	ret = regmap_bulk_read(map, offset, buf, MAC_BYTES);
> +
>  	if (ret < 0)
>  		return ret;
>  
> -	data->format_mac(mac, buf, OCOTP_HW_TO_MAC);
> +	if (offset != IMX6UL_MAC_OFFSET_1)
> +		data->format_mac(mac, buf, OCOTP_HW_TO_MAC);
> +	else
> +		data->format_mac(mac, buf + 2, OCOTP_HW_TO_MAC);
>  
>  	return 0;
>  }
> @@ -639,6 +644,14 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
>  	.format_mac = imx_ocotp_format_mac,
>  };
>  
> +static struct imx_ocotp_data imx6ul_ocotp_data = {
> +	.num_regs = 512,
> +	.addr_to_offset = imx6q_addr_to_offset,
> +	.mac_offsets_num = 2,
> +	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
> +	.format_mac = imx_ocotp_format_mac,
> +};
> +
>  static struct imx_ocotp_data vf610_ocotp_data = {
>  	.num_regs = 512,
>  	.addr_to_offset = vf610_addr_to_offset,
> @@ -667,7 +680,7 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
>  		.data = &imx6sl_ocotp_data,
>  	}, {
>  		.compatible = "fsl,imx6ul-ocotp",
> -		.data = &imx6q_ocotp_data,
> +		.data = &imx6ul_ocotp_data,
>  	}, {
>  		.compatible = "fsl,imx8mq-ocotp",
>  		.data = &imx8mq_ocotp_data,
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
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
