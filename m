Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGJLp-0003db-A9
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 07:49:43 +0000
Date: Sat, 27 Oct 2018 09:47:18 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181027074718.GA28052@ravnborg.org>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
 <20181027013230.24387-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027013230.24387-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/6] drivers: base: Simplify generic_memmap_ro()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Fri, Oct 26, 2018 at 06:32:25PM -0700, Andrey Smirnov wrote:
> Simplify generic_memmap_ro() by re-implementing it using
> generic_memmap_rw().
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/base/driver.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 1941a972c..c74fee99f 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -440,29 +440,23 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
>  }
>  EXPORT_SYMBOL(dev_request_mem_region);
>  
> -int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
> +int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
>  {
>  	if (!cdev->dev)
>  		return -EINVAL;
>  
> -	if (flags & PROT_WRITE)
> -		return -EACCES;
>  	*map = dev_get_mem_region(cdev->dev, 0);


>  	if (IS_ERR(*map))
>  		return PTR_ERR(*map);
>  	return 0;

Use PTR_ERR_OR_ZERO()?
The same result, just a bit shorter.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
