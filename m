Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAWsb-0006gR-2o
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 07:59:07 +0000
Date: Fri, 3 Nov 2017 08:58:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103075842.rfdcw55f23rnyv54@pengutronix.de>
References: <20171101182345.1495-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171101182345.1495-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] uimage: fix: broken uimage_open on tftp since forward
 lseek works
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 01, 2017 at 07:23:45PM +0100, Michael Grzeschik wrote:
> Since commit ce0cc7fe we support forward seek on tftpfs. This feature
> breaks the condition to check rather we open an uimage over tftp. Since
> random seeking is the problem here, we check in both directions.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  common/uimage.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/common/uimage.c b/common/uimage.c
> index 28a25bba2d..b07c6ff279 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -113,7 +113,8 @@ again:
>  	 * this cannot be implemented in tftp fs, so we detect this
>  	 * by doing a test lseek and copy the file to ram if it fails
>  	 */
> -	if (IS_BUILTIN(CONFIG_FS_TFTP) && lseek(fd, 0, SEEK_SET)) {
> +	if (IS_BUILTIN(CONFIG_FS_TFTP) &&
> +			(lseek(fd, 4, SEEK_SET) && lseek(fd, 0, SEEK_SET))) {

lseek returns a negative error code or the position in the file, so
seeking to position 4 always returns a true value. Ok, the way the patch
works you do not care about the return value of the first lseek and all
you care about is that you can lseek backwards. From reading the code it
is unnecessarily hard to understand. Better create a
can_lseek_backward() function and write a clear comment above it what
the function does and why it is needed.

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
