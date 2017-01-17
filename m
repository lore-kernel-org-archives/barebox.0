Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTNiJ-0004sg-9s
 for barebox@lists.infradead.org; Tue, 17 Jan 2017 06:57:53 +0000
Date: Tue, 17 Jan 2017 07:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170117065729.lnrogq2eifoi5amd@pengutronix.de>
References: <1484557659-5056-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1484557659-5056-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2] lib: libfile: Fix copying files to a non existing
 destination
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 16, 2017 at 10:07:39AM +0100, Teresa Remmet wrote:
> If the destination file does not exist the stat call to check the file
> type fails. Extend the check of the stat return value.
> To allow to copy files to a new destination.
> 
> Fixes commit 0ec6bd3e1be8 ("libfile: copy_file: Only open
> regular files with O_TRUNC")
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  lib/libfile.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Applied (to master), thanks

Sascha

> 
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 049ec32..6b70306 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -276,13 +276,14 @@ int copy_file(const char *src, const char *dst, int verbose)
>  		goto out;
>  	}
>  
> +	mode = O_WRONLY | O_CREAT;
> +
>  	ret = stat(dst, &dststat);
> -	if (ret)
> +	if (ret && ret != -ENOENT)
>  		goto out;
>  
> -	mode = O_WRONLY | O_CREAT;
> -
> -	if (S_ISREG(dststat.st_mode))
> +	/* Set O_TRUNC only if file exist and is a regular file */
> +	if (!ret && S_ISREG(dststat.st_mode))
>  		mode |= O_TRUNC;
>  
>  	dstfd = open(dst, mode);
> -- 
> 1.9.1
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
