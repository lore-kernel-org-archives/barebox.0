Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZZOC-00012H-Ei
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 07:01:53 +0000
Date: Wed, 9 Sep 2015 09:01:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150909070130.GI18700@pengutronix.de>
References: <1441619994-22444-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441619994-22444-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v2 1/2] ARM: am33xx: Add barebox_update eMMC option
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 07, 2015 at 11:59:53AM +0200, Daniel Schultz wrote:
> +static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
> +{
> +	int ret = 0;
> +	int i = 0;
> +	int fd;
> +	const void *image = data->image;
> +	size_t size = data->len;
> +	u8 *part_table = 0;
> +
> +	if (file_detect_type(image, size) != filetype_ch_image) {
> +		pr_err("%s is not a valid ch-image\n", data->imagefile);
> +		return -EINVAL;
> +	}
> +	ret = bbu_confirm(data);
> +	if (ret != 0)
> +		return ret;
> +
> +	fd = open(handler->devicefile, O_WRONLY);
> +	if (fd < 0) {
> +		pr_err("could not open %s: %s\n", handler->devicefile,
> +			errno_str());
> +		return fd;
> +	}
> +
> +	/* save the partition table */
> +	part_table = xmalloc(PART_TABLE_SIZE);

You forgot to free part_table later. I replaced part_table with a static
array while applying.

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
