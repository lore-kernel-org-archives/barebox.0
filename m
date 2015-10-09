Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkRDy-0001e8-5m
 for barebox@lists.infradead.org; Fri, 09 Oct 2015 06:32:15 +0000
Date: Fri, 9 Oct 2015 08:31:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151009063149.GD7858@pengutronix.de>
References: <1444233177-21491-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444233177-21491-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH] fixup! detect_fs: use device instead of file
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org, vicencb@gmail.com

On Wed, Oct 07, 2015 at 06:52:57PM +0300, Peter Mamonov wrote:
> ---
>  fs/fs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index c041e41..6283cea 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1201,7 +1201,7 @@ EXPORT_SYMBOL(register_fs_driver);
>  
>  static const char *detect_fs(const char *filename)
>  {
> -	enum filetype type = cdev_detect_type(filename);
> +	enum filetype type = cdev_detect_type(basename(filename));

basename is not so nice since we do not know whether the the part of the
path we drop is really what we expect. Can we rather have a:

	if (!strncmp(filename, "/dev/", 5))
		filename += 5;

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
