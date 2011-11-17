Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR4O6-0004ka-Jb
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 16:00:31 +0000
Date: Thu, 17 Nov 2011 17:00:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111117160020.GM27267@pengutronix.de>
References: <CAJfOKBx4y+6ViUTeZdktAcyYsNvTRaNxdLH3LcYjrE+qYfsGPw@mail.gmail.com>
 <1321397188-32451-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321397188-32451-1-git-send-email-franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fs/fat: Initialize local variable finfo
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

On Tue, Nov 15, 2011 at 11:46:28PM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> fat_stat in fs/fat.c declares finfo but doesn't initialize it.
> When get_fileinfo is called, fno->lfname and fno->lfsize are
> tested but haven't been zeroed...This can lead to a wrong
> behavior.

Applied to -master.

Thanks
 Sascha

> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  fs/fat/fat.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/fs/fat/fat.c b/fs/fat/fat.c
> index 4219801..8420f3a 100644
> --- a/fs/fat/fat.c
> +++ b/fs/fat/fat.c
> @@ -354,6 +354,8 @@ static int fat_stat(struct device_d *dev, const char *filename, struct stat *s)
>  	FILINFO finfo;
>  	int ret;
>  
> +	memset(&finfo, 0, sizeof(FILINFO));
> +
>  	ret = f_stat(&priv->fat, filename, &finfo);
>  	if (ret)
>  		return ret;
> -- 
> 1.7.7
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
