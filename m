Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT1mt-00016E-2o
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 07:33:08 +0000
Date: Mon, 16 Jan 2017 08:32:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170116073245.nnqeuqvtgpyw7q6i@pengutronix.de>
References: <1484298959-25635-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1484298959-25635-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] lib: libfile: Fix copying files to a non existing
 destination
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 13, 2017 at 10:15:59AM +0100, Teresa Remmet wrote:
> If the destination file does not exist the stat call to check the file
> type fails. Extend the check of the stat return value.
> To allow to copy files to a new destination.

Uh, I am glad this is not in a release yet.

> 
> Fixes commit 0ec6bd3e1be8 ("libfile: copy_file: Only open
> regular files with O_TRUNC")
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  lib/libfile.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 049ec32..3742314 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -276,14 +276,14 @@ int copy_file(const char *src, const char *dst, int verbose)
>  		goto out;
>  	}
>  
> -	ret = stat(dst, &dststat);
> -	if (ret)
> -		goto out;
> -
>  	mode = O_WRONLY | O_CREAT;
>  
> -	if (S_ISREG(dststat.st_mode))
> +	ret = stat(dst, &dststat);
> +	/* Set O_TRUNC only if file does not exist or is a regular file */
> +	if (ret == -ENOENT || (!ret && S_ISREG(dststat.st_mode)))
>  		mode |= O_TRUNC;
> +	else if (ret)
> +		goto out;

This is a bit hard to follow. When the destination file does not exist
then we do not need the O_TRUNC flag. How about:

	if (ret && ret != -ENOENT)
		goto out;
	if (!ret && S_ISREG(dststat.st_mode))
		mode |= O_TRUNC;

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
