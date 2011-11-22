Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSmVn-00061B-RW
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:19:32 +0000
Date: Tue, 22 Nov 2011 10:19:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111122091926.GE27267@pengutronix.de>
References: <1321882291-26290-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1321882291-26290-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] eeprom/at25: add erase support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 21, 2011 at 02:31:31PM +0100, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  drivers/eeprom/at25.c |   15 +++++++++++++++
>  1 files changed, 15 insertions(+), 0 deletions(-)

Do we need this? We normally only have erase functions for devices that
need it, namely flashes.

Sascha

> 
> diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
> index 8a979d5..39c5846 100644
> --- a/drivers/eeprom/at25.c
> +++ b/drivers/eeprom/at25.c
> @@ -237,10 +237,25 @@ static off_t at25_ee_lseek(struct cdev *cdev, off_t off)
>  	return off;
>  }
>  
> +static int at25_ee_erase(struct cdev *cdev, size_t count, unsigned long offset)
> +{
> +	int result;
> +	void *buf = xzalloc(count);
> +
> +	result = at25_ee_write(cdev, buf, count, offset, 0);
> +	free(buf);
> +
> +	if (result < 0)
> +		return result;
> +
> +	return 0;
> +}
> +
>  static struct file_operations at25_fops = {
>  	.read	= at25_ee_read,
>  	.write	= at25_ee_write,
>  	.lseek	= at25_ee_lseek,
> +	.erase	= at25_ee_erase,
>  };
>  
>  static int at25_probe(struct device_d *dev)
> -- 
> 1.7.4.1
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
