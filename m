Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpB0P-0002bF-CM
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:41:34 +0000
Date: Mon, 4 May 2015 09:41:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504074110.GQ6325@pengutronix.de>
References: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430690125-2257-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/8] imx-image: Correctly fill image size in prepended
 header
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

It seems you only resent the patches from this series you actually
changed. Could you resent *all* patches again next time?

Sascha

On Sun, May 03, 2015 at 02:55:22PM -0700, Andrey Smirnov wrote:
> If called with '-b' option 'imx-image' tool prepends barebox header to
> the image, but the tool does not fill the data at image size offset
> correctly. Fix that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> This patch supercedes the one sent earlier titled:
>  "[PATCH 1/8] Makefile.lib: Fix i.MX image size after generation"
> 
>  scripts/imx/Makefile    |  2 ++
>  scripts/imx/imx-image.c | 12 ++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index be0b490..ee0acc1 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -6,5 +6,7 @@ always          := $(hostprogs-y)
>  HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
>  HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
> 
> +HOSTCFLAGS_imx-image.o = -I$(srctree)
> +
>  imx-usb-loader-objs := imx-usb-loader.o
>  imx-image-objs := imx-image.o
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 25ea4d8..c0181df 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -27,6 +27,8 @@
>  #include <fcntl.h>
>  #include <endian.h>
> 
> +#include <include/filetype.h>
> +
>  #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
>  #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
>  #define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
> @@ -92,8 +94,11 @@ static int add_header_v1(void *buf, int offset, uint32_t loadaddr, uint32_t imag
>  	struct imx_flash_header *hdr;
>  	int dcdsize = curdcd * sizeof(uint32_t);
> 
> -	if (add_barebox_header)
> +	if (add_barebox_header) {
> +		uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
>  		memcpy(buf, bb_header, sizeof(bb_header));
> +		*psize = imagesize;
> +	}
> 
>  	buf += offset;
>  	hdr = buf;
> @@ -178,8 +183,11 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
>  	struct imx_flash_header_v2 *hdr;
>  	int dcdsize = curdcd * sizeof(uint32_t);
> 
> -	if (add_barebox_header)
> +	if (add_barebox_header) {
> +		uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
>  		memcpy(buf, bb_header, sizeof(bb_header));
> +		*psize = imagesize;
> +	}
> 
>  	buf += offset;
>  	hdr = buf;
> --
> 2.1.4
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
