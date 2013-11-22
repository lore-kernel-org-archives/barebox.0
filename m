Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjkmF-0007cq-RC
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 07:03:48 +0000
Date: Fri, 22 Nov 2013 08:03:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131122070318.GG24559@pengutronix.de>
References: <20131120122603.GD7965@ns203013.ovh.net>
 <1384951152-2902-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384951152-2902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] console: add is_ready callbback support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 20, 2013 at 01:39:11PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Some console such as net console need some parameter to work (IP & Port).
> So we can not enable them if not present.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/console.c  | 3 +++
>  include/console.h | 1 +
>  2 files changed, 4 insertions(+)
> 
> diff --git a/common/console.c b/common/console.c
> index 56bc864..32c5d38 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -62,6 +62,9 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
>  	char active[4];
>  	unsigned int flag = 0, i = 0;
>  
> +	if (cdev->is_ready && !cdev->is_ready(cdev))
> +		return -EIO;

Instead of asking whether a console is ready please add a ->set_active
callback and pass the CONSOLE_* flags.

Sascha

> +
>  	if (val) {
>  		if (strchr(val, 'i') && cdev->getc) {
>  			active[i++] = 'i';
> diff --git a/include/console.h b/include/console.h
> index 550b440..b4caf55 100644
> --- a/include/console.h
> +++ b/include/console.h
> @@ -37,6 +37,7 @@ struct console_device {
>  	struct device_d *dev;
>  	struct device_d class_dev;
>  
> +	int (*is_ready)(struct console_device *cdev);
>  	int (*tstc)(struct console_device *cdev);
>  	void (*putc)(struct console_device *cdev, char c);
>  	int  (*getc)(struct console_device *cdev);
> -- 
> 1.8.4.3
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
