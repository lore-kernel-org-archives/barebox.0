Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGJev-0006kY-A1
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 06:32:39 +0000
Date: Thu, 1 Jun 2017 08:32:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170601063215.ene7lux2v6izb4xs@pengutronix.de>
References: <20170530140947.3988-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170530140947.3988-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH 1/5] cdev: make file operations const
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 30, 2017 at 04:09:43PM +0200, Philipp Zabel wrote:
> scripts/checkpatch.pl warns that struct file_operations should be const,
> but cdev->ops is not const, so without this patch we can choose between
> a warning from checkpatch and a warning from the compiler about
> discarding the const attribute when assigning the struct file_operations
> cdev->ops.
> 
> Since there is no reason to modify the contents of cdev->ops after
> probing, make it const.

Applied this one and the second patch.

Sascha

> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  include/driver.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index 52e06f7d62..086e44636b 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -440,7 +440,7 @@ struct file_operations {
>  #define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
>  
>  struct cdev {
> -	struct file_operations *ops;
> +	const struct file_operations *ops;
>  	void *priv;
>  	struct device_d *dev;
>  	struct device_node *device_node;
> -- 
> 2.11.0
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
