Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLnmn-0007tB-PJ
 for barebox@lists.infradead.org; Thu, 24 May 2018 10:47:59 +0000
Date: Thu, 24 May 2018 12:47:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180524104745.3yk6uunekrjtl2cm@pengutronix.de>
References: <20180522153342.24933-1-pmamonov@gmail.com>
 <20180522153342.24933-3-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180522153342.24933-3-pmamonov@gmail.com>
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
Subject: Re: [PATCH v3 02/12] fs: fix memory access via /dev/mem for MIPS64
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 06:33:32PM +0300, Peter Mamonov wrote:
> lseek checks for non-negative in-memory offsets (addresses), failing otherwise.
> However negative address 0xffffffffXXXXXXXX is a valid MIPS64 virtual address.
> 
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  fs/fs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index b66cc9b17..4322d307d 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -962,7 +962,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
>  	case SEEK_SET:
>  		if (f->size != FILE_SIZE_STREAM && offset > f->size)
>  			goto out;
> -		if (offset < 0)
> +		if (IS_ERR(offset))

Dropped this patch. IS_ERR() takes a pointer, but offset is of type
loff_t, so gcc rightfully issues a warning.

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
