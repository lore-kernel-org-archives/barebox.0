Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l59Cp-0007RT-7E
 for barebox@lists.infradead.org; Thu, 28 Jan 2021 15:27:36 +0000
Date: Thu, 28 Jan 2021 16:27:33 +0100
Message-ID: <20210128152733.GD19583@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
 <20210127134423.31587-12-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127134423.31587-12-s.trumtrar@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 12/12] firmware: add support for compressed images
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 27, 2021 at 02:44:23PM +0100, Steffen Trumtrar wrote:
> At least bitstreams for FPGAs can consist of a lot of zeros depending on
> device utilization. These bitstreams can be compressed very effectively.
> 
> Let the firmware code accept these images and decompress them before
> handing it to the firmware-manager in question.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/firmware.c | 43 ++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 38 insertions(+), 5 deletions(-)
> 
> diff --git a/common/firmware.c b/common/firmware.c
> index 58509d5da615..c617ecc0f129 100644
> --- a/common/firmware.c
> +++ b/common/firmware.c
> @@ -14,6 +14,8 @@
>  #include <linux/list.h>
>  #include <linux/stat.h>
>  #include <linux/err.h>
> +#include <uncompress.h>
> +#include <filetype.h>
>  
>  #define BUFSIZ 4096
>  
> @@ -211,12 +213,43 @@ int firmwaremgr_register(struct firmware_handler *fh)
>   */
>  int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
>  {
> -	int ret;
> -	char *name = basprintf("/dev/%s", mgr->handler->id);
> -
> -	ret = copy_file(firmware, name, 0);
> +	char *dst;
> +	enum filetype type;
> +	int ret = -ENOENT;
> +	int srcfd = 0;
> +	int dstfd = 0;
> +
> +	if (mgr->handler->id) {
> +		dst = basprintf("/dev/%s", mgr->handler->id);
> +	} else {
> +		pr_err("id not defined for handler\n");
> +		return -ENODEV;
> +	}

I'd do the error handling for !mgr->handler->id first, then the dst =
basprintf(...) doesn't have to be done conditionally.

>  
> -	free(name);
> +	if (firmware) {

This function seems to do nothing when firmware is not given. Is this
the correct behaviour? If yes, then you could bail out early instead of
putting the rest of the function inside an if() {}

> +		type = file_name_detect_type(firmware);
> +		if (type == filetype_unknown) {
> +			ret = copy_file(firmware, dst, 0);

When going this way srcfd is closed below, but never opened.

> +		} else {
> +			srcfd = open(firmware, O_RDONLY);
> +			if (srcfd < 0)
> +				return srcfd;

'dst' is not freed here.

> +			dstfd = open(dst, O_WRONLY | O_CREAT);

You'll probably want to add a O_TRUNC here because otherwise if the file
existed before and was bigger than the data you gonna write to it you'll
have garbage at the end of the file.
OTOH I don't know what 'dst' is. When this could be a device file then
truncating it will fail.

> +
> +			if (dstfd < 0) {
> +				printf("could not open %s: %s\n", dst, errno_str());
> +				ret = dstfd;
> +				goto out;
> +			}
> +
> +			ret = uncompress_fd_to_fd(srcfd, dstfd, uncompress_err_stdout);
> +
> +			close(dstfd);
> +		}
> +	}
> +out:
> +	close(srcfd);
> +	free(dst);
>  
>  	return ret;
>  }

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
