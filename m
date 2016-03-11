Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aeHAe-0004FD-T1
 for barebox@lists.infradead.org; Fri, 11 Mar 2016 07:07:37 +0000
Date: Fri, 11 Mar 2016 08:07:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160311070713.GC31470@pengutronix.de>
References: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
 <1455708500-980-4-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455708500-980-4-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2 4/4] fastboot: Add a ARM Barebox filetype handler
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 17, 2016 at 12:28:20PM +0100, Markus Pargmann wrote:
> +	if (filetype_is_barebox_image(filetype)) {
> +		struct bbu_data data = {
> +			.devicefile = filename,
> +			.imagefile = FASTBOOT_TMPFILE,
> +			.flags = BBU_FLAG_YES,
> +		};
> +
> +		if (!barebox_update_handler_exists(&data))
> +			goto copy;
> +
> +		fastboot_tx_print(f_fb, "INFOThis is an ARM Barebox image...");
> +
> +		data.image = read_file(data.imagefile, &data.len);
> +		if (!data.image) {
> +			fastboot_tx_print(f_fb, "FAILreading barebox");
> +			return;
> +		}
> +
> +		ret = barebox_update(&data);

data.image must be freed after use. Added this.

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
