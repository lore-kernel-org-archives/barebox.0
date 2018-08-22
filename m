Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsMxK-0008RE-QH
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 06:49:28 +0000
Date: Wed, 22 Aug 2018 08:49:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822064909.7njvrsza274uewpd@pengutronix.de>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-5-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062603.17393-5-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 04/22] ARM: i.MX: bbu: Move inner-image type check
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:25:45PM -0700, Andrey Smirnov wrote:
> Since imx_bbu_check_prereq() already uses file_detect_type() and we've
> extended it to understand i.MX boot image file type, we can simplify a
> bunch of repetitive code as follows:
> 
>     1. Convert all checks from IVT_BARKER to filetype_imx_image_v2
>        check
> 
>     2. Move all of the checking to be a part of imx_bbu_check_prereq()
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 64 +++++++++++++++++-----------
>  1 file changed, 39 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> index 67ae2961c..ea57b2772 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -106,11 +106,39 @@ err_close:
>  	return ret;
>  }
>  
> -static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
> +static int imx_bbu_check_prereq(struct imx_internal_bbu_handler *imx_handler,
> +				const char *devicefile, struct bbu_data *data,
> +				enum filetype expected_type)
>  {
>  	int ret;
> -
> -	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
> +	const void *blob;
> +	size_t len;
> +	enum filetype type;
> +
> +	type = file_detect_type(data->image, data->len);
> +
> +	switch (type) {
> +	case filetype_arm_barebox:
> +		/*
> +		 * Specifying expected_type as unknow will disable the

s/unknow/unknown/

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
