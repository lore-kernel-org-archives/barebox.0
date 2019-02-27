Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gytlg-00071k-1T
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 07:36:41 +0000
Date: Wed, 27 Feb 2019 08:36:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190227073638.iiw4aqukpjccqmbu@pengutronix.de>
References: <20190226200657.2722-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190226200657.2722-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] include: Drop mem_memmap()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 26, 2019 at 12:06:57PM -0800, Andrey Smirnov wrote:
> Drop what looks like a leftover function prototype.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  include/driver.h | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/driver.h b/include/driver.h
> index 731116d8f..0ed830d29 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -352,7 +352,6 @@ struct cdev;
>  /* These are used by drivers which work with direct memory accesses */
>  ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
>  ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
> -int mem_memmap(struct cdev *cdev, void **map, int flags);
>  
>  /* Use this if you have nothing to do in your drivers probe function */
>  int dummy_probe(struct device_d *);
> -- 
> 2.20.1
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
