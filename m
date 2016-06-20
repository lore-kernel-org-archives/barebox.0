Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEsnN-0003wT-Ij
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 06:34:54 +0000
Date: Mon, 20 Jun 2016 08:34:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160620063431.GN9677@pengutronix.de>
References: <1466325070-20966-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466325070-20966-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: boards: variscite-mx6: Remove the excess assignment
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jun 19, 2016 at 11:31:10AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/variscite-mx6/board.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
> index 3585deb..267f68c 100644
> --- a/arch/arm/boards/variscite-mx6/board.c
> +++ b/arch/arm/boards/variscite-mx6/board.c
> @@ -47,24 +47,19 @@
>  static int setup_pmic_voltages(void)
>  {
>  	unsigned char value, rev_id = 0 ;
> -	struct i2c_adapter *adapter = NULL;
> +	struct i2c_adapter *adapter;
>  	struct i2c_client client;
> -	int addr = -1, bus = 0;
>  
>  	/* I2C2 bus (2-1 = 1 in barebox numbering) */
> -	bus = 1;
> -
> -	/* PFUZE100 device address is 0x08 */
> -	addr = 0x08;
> -
> -	adapter = i2c_get_adapter(bus);
> +	adapter = i2c_get_adapter(1);
>  	if (!adapter) {
> -		pr_err("i2c bus %d not found\n", bus);
> +		pr_err("i2c2 bus not found\n");
>  		return -ENODEV;
>  	}
>  
>  	client.adapter = adapter;
> -	client.addr = addr;
> +	/* PFUZE100 device address is 0x08 */
> +	client.addr = 0x08;
>  
>  	/* Attempt to locate the PFUZE100 chip. */
>  	if (i2c_read_reg(&client, 0x00, &value, 1) != 1) {
> -- 
> 2.4.9
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
