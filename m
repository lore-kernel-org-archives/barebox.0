Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clrls-0001kM-9G
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 06:41:59 +0000
Date: Thu, 9 Mar 2017 07:41:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170309064134.wxtqmwuc7btzj3xk@pengutronix.de>
References: <20170306130915.11253-1-o.rempel@pengutronix.de>
 <20170307075449.18967-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170307075449.18967-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2] scripts: imx imx-usb-loader: add support for imx23
 and imx28
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 07, 2017 at 08:54:49AM +0100, Oleksij Rempel wrote:
> This code was rewrtitten from mxs-usb-loader.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 85 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 84 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index b2c9f8f5a..c61ebaf2f 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -69,6 +69,9 @@ struct mach_id {
>  #define HDR_MX53	2
>  	unsigned char header_type;
>  	unsigned short max_transfer;
> +#define DEV_IMX		0
> +#define DEV_MXS		1
> +	unsigned char dev_type;
>  };
>  
>  struct usb_work {
> @@ -87,7 +90,9 @@ struct mach_id imx_ids[] = {
>  		.vid = 0x066f,
>  		.pid = 0x3780,
>  		.name = "i.MX23",
> -		.mode = MODE_BULK,
> +		.mode = MODE_HID,
> +		.max_transfer = 1024,
> +		.dev_type = DEV_MXS,
>  	}, {
>  		.vid = 0x15a2,
>  		.pid = 0x0030,
> @@ -120,6 +125,8 @@ struct mach_id imx_ids[] = {
>  		.vid = 0x15a2,
>  		.pid = 0x004f,
>  		.name = "i.MX28",
> +		.max_transfer = 1024,
> +		.dev_type = DEV_MXS,
>  	}, {
>  		.vid = 0x15a2,
>  		.pid = 0x0052,
> @@ -180,6 +187,17 @@ struct sdp_command  {
>  	uint8_t rsvd;
>  } __attribute__((packed));
>  
> +#define MXS_CMD_FW_DOWNLOAD	0x02
> +struct mxs_command {
> +	uint32_t	sign;		/* Signature */
> +	uint32_t	tag;		/* Tag */
> +	uint32_t	size;		/* Payload size */
> +	uint8_t		flags;		/* Flags (host to device) */
> +	uint8_t		rsvd[2];	/* Reserved */
> +	uint8_t		cmd;		/* Firmware download */
> +	uint32_t	dw_size;	/* Download size */
> +} __attribute__((packed));
> +
>  static struct mach_id *imx_device(unsigned short vid, unsigned short pid)
>  {
>  	int i;
> @@ -1343,6 +1361,66 @@ static int write_mem(const struct config_data *data, uint32_t addr,
>  	return modify_memory(addr, val, width, set_bits, clear_bits);
>  }
>  
> +/* MXS section */
> +static int mxs_load_file(libusb_device_handle *dev, uint8_t *data, int size)
> +{
> +	static struct mxs_command dl_command;
> +	int last_trans, err;
> +	void *p;
> +	int cnt;
> +
> +	dl_command.sign = htonl(0x424c5443); /* Signature: BLTC */
> +	dl_command.tag = htonl(0x1);
> +	dl_command.size = htonl(size);
> +	dl_command.flags = 0;
> +	dl_command.rsvd[0] = 0;
> +	dl_command.rsvd[1] = 0;
> +	dl_command.cmd = MXS_CMD_FW_DOWNLOAD;
> +	dl_command.dw_size = htonl(size);
> +
> +	err = transfer(1, (unsigned char *) &dl_command, 20, &last_trans);
> +	if (err) {
> +		printf("transfer error at init step: err=%i, last_trans=%i\n",
> +		       err, last_trans);
> +		return err;
> +	}
> +
> +	p = data;
> +	cnt = size;
> +
> +	while (1) {
> +		int now = get_min(cnt, usb_id->mach_id->max_transfer);
> +
> +		if (!now)
> +			break;
> +
> +		err = transfer(2, p, now, &now);
> +		if (err) {
> +			printf("dl_command err=%i, last_trans=%i\n", err, now);
> +			return err;
> +		}
> +
> +		p += now;
> +		cnt -= now;
> +	}
> +
> +	return err;
> +}
> +
> +static int mxs_work(struct usb_work *curr)
> +{
> +	unsigned fsize = 0;
> +	unsigned char *buf = NULL;
> +	int ret;
> +
> +	ret = read_file(curr->filename, &buf, &fsize);
> +	if (ret < 0)
> +		return ret;
> +
> +	return mxs_load_file(usb_dev_handle, buf, fsize);
> +}
> +/* end of mxs section */
> +
>  static int parse_initfile(const char *filename)
>  {
>  	struct config_data data = {
> @@ -1452,6 +1530,11 @@ int main(int argc, char *argv[])
>  
>  	usb_id->mach_id = mach;
>  
> +	if (mach->dev_type == DEV_MXS) {
> +		ret = mxs_work(&w);
> +		goto out;
> +	}
> +
>  	err = do_status();
>  	if (err) {
>  		printf("status failed\n");
> -- 
> 2.11.0
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
