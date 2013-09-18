Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBXf-00015d-Rn
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 06:47:16 +0000
Date: Wed, 18 Sep 2013 08:46:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918064653.GF30088@pengutronix.de>
References: <1379404064-6100-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404064-6100-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] Fix lseek on fat filesystems.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Fargier Sylvain <sylvain.fargier@somfy.com>

On Tue, Sep 17, 2013 at 09:47:44AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> From: Fargier Sylvain <sylvain.fargier@somfy.com>
> 
> FILE object was not updated properly when seeking.
> 
> Signed-off-by: Fargier Sylvain <sylvain.fargier@somfy.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  fs/fat/fat.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/fs/fat/fat.c b/fs/fat/fat.c
> index 871fe4b..15879c4 100644
> --- a/fs/fat/fat.c
> +++ b/fs/fat/fat.c
> @@ -277,6 +277,7 @@ static loff_t fat_lseek(struct device_d *dev, FILE *f, loff_t pos)
>  	if (ret)
>  		return ret;
>  
> +	f->pos = pos;
>  	return pos;
>  }
>  
> -- 
> 1.8.4.rc1
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
