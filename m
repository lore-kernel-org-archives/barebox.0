Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc1wv-0002xD-Js
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 07:50:50 +0000
Date: Mon, 9 Nov 2020 08:50:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109075048.GE29830@pengutronix.de>
References: <20201104035928.20519-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104035928.20519-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] i2c_probe: Use "read_byte" command for probing
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Nov 04, 2020 at 06:59:28AM +0300, Alexander Shiyan wrote:
> Some I2C adapters do not allow zero length data transfers, such as the AM335X.
> To use the i2c_probe command, let's use byte reading for this purpose.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  commands/i2c.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index 53f36dfaa..997d49a94 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -16,10 +16,12 @@ static void i2c_probe_range(struct i2c_adapter *adapter, int startaddr, int stop
>  
>  	printf("probing i2c%d range 0x%02x-0x%02x: ", adapter->nr, startaddr, stopaddr);
>  	for (addr = startaddr; addr <= stopaddr && !ctrlc(); addr++) {
> +		u8 buf[1];
>  		struct i2c_msg msg = {
>  			.addr = addr,
> -			.buf = NULL,
> -			.len = 0,
> +			.buf = buf,
> +			.len = sizeof(buf),
> +			.flags = I2C_M_RD,
>  		};
>  		int ret = i2c_transfer(adapter, &msg, 1);
>  		if (ret == 1)
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
