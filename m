Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMuif-0000zX-M9
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 06:29:22 +0000
Date: Tue, 2 Apr 2013 08:29:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130402062916.GA1906@pengutronix.de>
References: <20130327083109.GP1906@pengutronix.de>
 <20130327130025.7FF1725817@kryptos.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130327130025.7FF1725817@kryptos.localdomain>
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
Subject: Re: [PATCH RESEND] parameter: fix build warning when !CONFIG_PARAMETER
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 10:22:48AM -0500, Josh Cartwright wrote:
> Commit 51f2ded17c35c146488f6f3b697764bb2953a156 ("param: make return
> value of param getter function const") made the parameter getter const,
> but neglected to change the dev_add_param() function prototype in the
> !CONFIG_PARAMETER case.
> 
> Fixes the following warning with CONFIG_NAND and !CONFIG_PARAMETER:
> 
> drivers/mtd/nand/nand_base.c: In function 'add_mtd_nand_device':
> drivers/mtd/nand/nand_base.c:1720:2: warning: passing argument 4 of 'dev_add_param' from incompatible pointer type [enabled by default]
> include/param.h:59:19: note: expected 'char * (*)(struct device_d *, struct param_d *)' but argument is of type 'const char * (*)(struct device_d *, struct param_d *)'
> 
> Signed-off-by: Josh Cartwright <joshc@eso.teric.us>

Applied, thanks

Sascha

> ---
> Sorry again for then noise!
> 
>  include/param.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/param.h b/include/param.h
> index 21f4f7d..3a585cd 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -58,7 +58,7 @@ static inline struct param_d *get_param_by_name(struct device_d *dev,
>  
>  static inline int dev_add_param(struct device_d *dev, char *name,
>  		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
> -		char *(*get)(struct device_d *, struct param_d *p),
> +		const char *(*get)(struct device_d *, struct param_d *p),
>  		unsigned long flags)
>  {
>  	return 0;
> -- 
> 1.8.1.5
> 
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
