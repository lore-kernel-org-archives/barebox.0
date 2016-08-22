Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbiGW-0007tz-3A
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:59:21 +0000
Date: Mon, 22 Aug 2016 07:58:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822055858.GZ20657@pengutronix.de>
References: <1471809246-1126-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471809246-1126-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] scripts: imx-usb-loader: do DCD only once, cleanup
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 21, 2016 at 09:54:06PM +0200, Alexander Kurz wrote:
> Only the first encountered DCD block should be processed, optional DCD
> processing may be switched off by command option.
> Clean up the corresponding logic.

Yes, right. An image could contain multiple DCD blocks, for example for
NOR and for NAND flash and only one should be processed.

> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>

Applied, thanks

Sascha

> ---
>  scripts/imx/imx-usb-loader.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 1732497..f8306f8 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -45,7 +45,6 @@
>  #define FT_LOAD_ONLY	0x00
>  
>  int verbose;
> -static int skip_image_dcd;
>  static struct libusb_device_handle *usb_dev_handle;
>  static struct usb_id *usb_id;
>  
> @@ -67,7 +66,7 @@ struct mach_id {
>  
>  struct usb_work {
>  	char filename[256];
> -	unsigned char dcd;
> +	unsigned char do_dcd_once;
>  	unsigned char plug;
>  };
>  
> @@ -980,9 +979,6 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
>  	struct imx_flash_header_v2 *hdr = (struct imx_flash_header_v2 *)p;
>  	int ret = 0;
>  
> -	if (skip_image_dcd)
> -		return 0;
> -
>  	switch (usb_id->mach_id->header_type) {
>  	case HDR_MX51:
>  		ret = write_dcd_table_old(ohdr, file_start, cnt);
> @@ -1066,13 +1062,13 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
>  			return ret;
>  		}
>  
> -		if (curr->dcd) {
> +		if (curr->do_dcd_once) {
>  			ret = perform_dcd(p, buf, cnt);
>  			if (ret < 0) {
>  				printf("!!perform_dcd returned %i\n", ret);
>  				return ret;
>  			}
> -			curr->dcd = 0;
> +			curr->do_dcd_once = 0;
>  		}
>  
>  		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
> @@ -1264,6 +1260,8 @@ int main(int argc, char *argv[])
>  	int opt;
>  	char *initfile = NULL;
>  
> +	w.do_dcd_once = 1;
> +
>  	while ((opt = getopt(argc, argv, "cvhi:s")) != -1) {
>  		switch (opt) {
>  		case 'c':
> @@ -1278,7 +1276,7 @@ int main(int argc, char *argv[])
>  			initfile = optarg;
>  			break;
>  		case 's':
> -			skip_image_dcd = 1;
> +			w.do_dcd_once = 0;
>  			break;
>  		default:
>  			exit(1);
> @@ -1292,7 +1290,6 @@ int main(int argc, char *argv[])
>  	}
>  
>  	w.plug = 1;
> -	w.dcd = 1;
>  	strncpy(w.filename, argv[optind], sizeof(w.filename) - 1);
>  
>  	r = libusb_init(NULL);
> -- 
> 2.1.4
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
