Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEsSL-0007R3-UY
 for barebox@lists.infradead.org; Tue, 14 Jul 2015 05:08:38 +0000
Date: Tue, 14 Jul 2015 07:08:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150714050815.GM18700@pengutronix.de>
References: <1436746187-8652-1-git-send-email-asmirnov@kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436746187-8652-1-git-send-email-asmirnov@kymetacorp.com>
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
Subject: Re: [PATCH] lib: libfile: Do not ignore errors in close()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 12, 2015 at 05:09:47PM -0700, Andrey Smirnov wrote:
> From: Andrey Smirnov <andrew.smirnov@gmail.com>
> 
> Some character devices may perform meaningful operations in their
> implementation of close() -- a good example would be socfpga.c which
> checks if the FPGA was programmed succesfully in it's close() method
> -- so ignoring return value of this call may cause false positives in
> checking exit status for success.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  lib/libfile.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/lib/libfile.c b/lib/libfile.c
> index 8acff04..4f21e70 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -262,7 +262,7 @@ int copy_file(const char *src, const char *dst, int verbose)
>  	char *rw_buf = NULL;
>  	int srcfd = 0, dstfd = 0;
>  	int r, w;
> -	int ret = 1;
> +	int ret = 1, err1 = 0, err2 = 0;
>  	void *buf;
>  	int total = 0;
>  	struct stat statbuf;
> @@ -324,11 +324,11 @@ out:
>  
>  	free(rw_buf);
>  	if (srcfd > 0)
> -		close(srcfd);
> +		err1 = close(srcfd);
>  	if (dstfd > 0)
> -		close(dstfd);
> +		err2 = close(dstfd);

I agree that an error on closing the destination is an error for
copy_file, but is an error on closing the source file an error for
copy_file? We read everything from the source, so errors while closing
the file should not be relevant.

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
