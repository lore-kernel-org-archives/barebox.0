Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2zO-0008GG-N0
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 15:09:44 +0000
Date: Wed, 11 Mar 2020 16:09:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200311150940.GF3335@pengutronix.de>
References: <20200310104348.29155-1-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310104348.29155-1-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] scripts/bareboximd: add mode argument to open call
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

On Tue, Mar 10, 2020 at 11:43:48AM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Newer gcc complain about missing mode argument when a new file is
> created. This is an extract of man-pages:
> 
>  "The mode argument specifies the file mode bits be applied when
>  a new file is created.  This argument must be supplied when
>  O_CREAT or O_TMPFILE is specified in flags"

Does this warning only show up when compiling for the host or also when
compiling barebox itself?

Sascha

> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  scripts/bareboximd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index e5000e0ae..b332d435a 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -59,7 +59,7 @@ static int write_file(const char *filename, const void *buf, size_t size)
>  	int fd, ret;
>  	int now;
>  
> -	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT);
> +	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
>  	if (fd < 0)
>  		return fd;
>  
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
