Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvjfo-0004tS-Uk
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 07:14:06 +0000
Date: Thu, 17 Jan 2013 08:14:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130117071400.GA1906@pengutronix.de>
References: <1358370395-9089-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358370395-9089-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] mtd-core: fix compiler warning
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 16, 2013 at 10:06:35PM +0100, Alexander Aring wrote:
> Got this compile warning if MTD_WRITE support isn't set.
> 
> drivers/mtd/core.c: In function 'mtd_ioctl':
> drivers/mtd/core.c:117:26: warning: unused variable 'ei' [-Wunused-variable]
> 
> Add a #ifdef to declaration of variable 'ei' to solve it.
> 
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/core.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index af6e195..070fda6 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -114,7 +114,9 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
>  	struct mtd_ecc_stats *ecc = buf;
>  #endif
>  	struct region_info_user *reg = buf;
> +#ifdef CONFIG_MTD_WRITE
>  	struct erase_info_user *ei = buf;
> +#endif
>  	loff_t *offset = buf;
>  
>  	switch (request) {
> -- 
> 1.8.1
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
