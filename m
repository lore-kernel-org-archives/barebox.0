Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVwYL-0006Eu-9P
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 07:29:37 +0000
Date: Wed, 17 Feb 2016 08:29:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217072914.GM19372@pengutronix.de>
References: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
 <1455648888-20678-3-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455648888-20678-3-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 3/4] fastboot: Fix usage of ubiformat for UBI image
 transfers
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2016 at 07:54:47PM +0100, Markus Pargmann wrote:
> Currently all fastboot flash commands with UBI images are handled by a
> final call to 'ubiformat'. This only makes sense for flash commands
> where the target file is a mtd device. If we just want to transfer a UBI
> image we would expect a simple copy to the correct location.
> 
> This patch checks if the destination file is a MTD device by opening it
> and calling an ioctl MEMGETINFO. Only for MTD devices, ubiformat is
> called.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/usb/gadget/f_fastboot.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> index bf28f7c22aaa..192c0d6eb7f4 100644
> --- a/drivers/usb/gadget/f_fastboot.c
> +++ b/drivers/usb/gadget/f_fastboot.c
> @@ -686,7 +686,21 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
>  	}
>  
>  	if (filetype == filetype_ubi) {
> -		char *cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);
> +		char *cmd;
> +		int fd;
> +		struct mtd_info_user meminfo;
> +
> +		fd = open(filename, O_RDONLY);
> +		if (!fd)
> +			goto copy;

0 is a valid file descriptor, though one that will never be returned by
open(). You want to check for fd < 0 here.

> +
> +		ret = ioctl(fd, MEMGETINFO, &meminfo);
> +		close(fd);
> +		/* Not a MTD device, ubiformat is not a valid operation */
> +		if (ret)
> +			goto copy;
> +
> +		cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);

Hm, ubiformat should get a C api.

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
