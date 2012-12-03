Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfSrU-00023F-2J
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:02:52 +0000
Date: Mon, 3 Dec 2012 11:02:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203100250.GP10369@pengutronix.de>
References: <1354513612-32271-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354513612-32271-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] at25: use dev_lseek_default as at24 does
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 03, 2012 at 09:46:52AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/eeprom/at25.c |    7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
> index 5578c78..9bd7748 100644
> --- a/drivers/eeprom/at25.c
> +++ b/drivers/eeprom/at25.c
> @@ -232,15 +232,10 @@ static ssize_t at25_ee_write(struct cdev *cdev,
>  	return written ? written : status;
>  }
>  
> -static loff_t at25_ee_lseek(struct cdev *cdev, loff_t off)
> -{
> -	return off;
> -}
> -
>  static struct file_operations at25_fops = {
>  	.read	= at25_ee_read,
>  	.write	= at25_ee_write,
> -	.lseek	= at25_ee_lseek,
> +	.lseek	= dev_lseek_default,
>  };
>  
>  static int at25_probe(struct device_d *dev)
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
