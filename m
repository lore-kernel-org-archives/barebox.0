Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zm0Gg-0007m6-EG
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 14:09:31 +0000
Date: Tue, 13 Oct 2015 16:09:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013140907.GM7858@pengutronix.de>
References: <20151013074411.GB7858@pengutronix.de>
 <1444735583-21222-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444735583-21222-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH v1 resend] fixup! detect_fs: use device instead of file
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 13, 2015 at 02:26:23PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  fs/fs.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

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

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
