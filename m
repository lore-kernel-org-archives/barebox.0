Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQhZ-0002d3-Ao
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 11:45:50 +0000
Date: Fri, 18 Oct 2019 13:45:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018114546.dbalujyk2x6oyqyi@pengutronix.de>
References: <1571155150-124984-1-git-send-email-r.karszniewicz@phytec.de>
 <1571225166-309934-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571225166-309934-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: Re: [PATCH v2] libfile: copy_file: prevent spurious error message
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Robert,

On Wed, Oct 16, 2019 at 01:26:06PM +0200, Robert Karszniewicz wrote:
> Before this, if the function bails out somewhere at a later point, this
> return value will be outdated and will produce a misleading error
> message down the line.
> 
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
> Changes from v1:
> - commit message
> 
>  lib/libfile.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 3f3ec21..319e66b 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -349,6 +349,7 @@ int copy_file(const char *src, const char *dst, int verbose)
>  	ret = stat(dst, &dststat);
>  	if (ret && ret != -ENOENT)
>  		goto out;
> +	ret = 0;

Setting ret = 0 here is wrong as we test for ret one line further:

>  
>  	/* Set O_TRUNC only if file exist and is a regular file */
>  	if (!ret && S_ISREG(dststat.st_mode))

Anyway, it seems the error handling in copy_file is broken since
0ec6bd3e1b ("libfile: copy_file: Only open regular files with O_TRUNC").
Before that 'ret' was initialized to 1 and only when all was done it
was set to 0 and returned. After this commit 'ret' was set to the return
value of the stat() call and accidently returned after each 'goto out'.
'ret' should be set explicitly to the desired return value right before
each 'goto out'.

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
