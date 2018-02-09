Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek46D-0007eJ-B7
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 08:32:03 +0000
Date: Fri, 9 Feb 2018 09:31:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180209083149.luvp4odgc6rtxyqh@pengutronix.de>
References: <20180208073145.2644-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180208073145.2644-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] i2c: i2c_master_send(): don't leave flags uninitialized
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 08, 2018 at 10:31:45AM +0300, Antony Pavlov wrote:
> Leaving the flags field unitialized can lead to performing
> read operation instead of write operation.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/i2c/i2c.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks

Sascha

> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index e9e7575585..608f8289bf 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -117,6 +117,7 @@ int i2c_master_send(struct i2c_client *client, const char *buf, int count)
>  	int ret;
>  
>  	msg.addr = client->addr;
> +	msg.flags = 0;
>  	msg.len = count;
>  	msg.buf = (char *)buf;
>  
> -- 
> 2.15.1
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
