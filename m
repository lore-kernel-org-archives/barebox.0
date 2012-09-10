Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAz0M-0006pq-L4
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 08:06:03 +0000
Date: Mon, 10 Sep 2012 10:05:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120910080558.GY18243@pengutronix.de>
References: <1346857185-30532-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346857185-30532-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] uncompress: drop wrong BUG(uncompress_size)
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 04:59:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> As uncompress_size is a static and will set if call uncompress_size multiple
> time.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  lib/uncompress.c |    2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/lib/uncompress.c b/lib/uncompress.c
> index cdfebe9..3cf98dd 100644
> --- a/lib/uncompress.c
> +++ b/lib/uncompress.c
> @@ -80,8 +80,6 @@ int uncompress(unsigned char *inbuf, int len,
>  	int ret;
>  	char *err;
>  
> -	BUG_ON(uncompress_size);
> -
>  	if (inbuf) {
>  		ft = file_detect_type(inbuf);
>  		uncompress_buf = NULL;
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
