Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmTd-0005w8-6N
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 09:41:25 +0000
Date: Mon, 30 Jul 2012 11:41:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730094112.GT30009@pengutronix.de>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
 <1343547714-32740-4-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343547714-32740-4-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 3/7] i2c: add platform_data for i2c_board_info
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Sun, Jul 29, 2012 at 05:41:50PM +1000, Marc Reilly wrote:
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>

Applied this one aswell.

Sascha

> ---
>  drivers/i2c/i2c.c |    1 +
>  include/i2c/i2c.h |    1 +
>  2 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index 5df0d30..15f5507 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -250,6 +250,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
>  	client = xzalloc(sizeof *client);
>  	strcpy(client->dev.name, chip->type);
>  	client->dev.type_data = client;
> +	client->dev.platform_data = chip->platform_data;
>  	client->adapter = adapter;
>  	client->addr = chip->addr;
>  
> diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
> index ccbf518..c3e1763 100644
> --- a/include/i2c/i2c.h
> +++ b/include/i2c/i2c.h
> @@ -99,6 +99,7 @@ struct i2c_client {
>  struct i2c_board_info {
>  	char		type[I2C_NAME_SIZE];	/**< name of device */
>  	unsigned short	addr;			/**< stored in i2c_client.addr */
> +	void		*platform_data;		/**< platform data for device */
>  };
>  
>  /**
> -- 
> 1.7.7
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
