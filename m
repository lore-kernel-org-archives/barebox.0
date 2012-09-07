Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9tuX-0006TM-AZ
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 08:27:34 +0000
Date: Fri, 7 Sep 2012 10:27:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907082730.GQ26594@pengutronix.de>
References: <1347003690-1786-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347003690-1786-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] fs/nfs: fix read when size < 1024
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 07, 2012 at 09:41:30AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Currently we always request 1024.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  fs/nfs.c |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/nfs.c b/fs/nfs.c
> index 4a880cd..797e3bd 100644
> --- a/fs/nfs.c
> +++ b/fs/nfs.c
> @@ -819,7 +819,11 @@ static int nfs_read(struct device_d *dev, FILE *file, void *buf, size_t insize)
>  		insize -= now;
>  
>  		if (insize) {
> -			now = 1024;
> +			/* do not use min as insize is a size_t */
> +			if (insize < 1024)
> +				now = insize;
> +			else
> +				now = 1024;
>  
>  			if (pos + now > file->size)
>  				now = file->size - pos;
> -- 
> 1.7.10.4
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
