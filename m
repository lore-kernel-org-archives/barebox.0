Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluGB-0002qU-Mw
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:44:36 +0000
Date: Tue, 13 Oct 2015 09:44:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013074411.GB7858@pengutronix.de>
References: <1444655717-10885-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444655717-10885-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH v1] fixup! detect_fs: use device instead of file
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Peter,

I was about to apply this one, but there are two problems with it.
First I cannot apply this as a fixup patch since the patch breaking it
is already in master which I do not rebase. So we need a patch with a
proper commit message. I would add that myself, but I noticed that your
patch misses a proper signed-off-by. Could you add that and resend?

Sascha

On Mon, Oct 12, 2015 at 04:15:17PM +0300, Peter Mamonov wrote:
> ---
>  fs/fs.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index c041e41..c2a20e1 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1201,10 +1201,14 @@ EXPORT_SYMBOL(register_fs_driver);
>  
>  static const char *detect_fs(const char *filename)
>  {
> -	enum filetype type = cdev_detect_type(filename);
> +	enum filetype type;
>  	struct driver_d *drv;
>  	struct fs_driver_d *fdrv;
>  
> +	if (!strncmp(filename, "/dev/", 5))
> +		filename += 5;
> +	type = cdev_detect_type(filename);
> +
>  	if (type == filetype_unknown)
>  		return NULL;
>  
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
