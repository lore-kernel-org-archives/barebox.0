Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7GPn-0008JT-W0
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 06:43:20 +0000
Date: Thu, 17 Nov 2016 07:42:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161117064258.az5i2jlw5g4hv4wj@pengutronix.de>
References: <1479221187-13482-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1479221187-13482-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] commands: i2c: Listen for CTRL-C when probing
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 15, 2016 at 06:46:27AM -0800, Andrey Smirnov wrote:
> Allow I2C bus probing to be interrupted early by sending CTRL-C. This is
> usefull when calling the tool without any arguments and one of the busses
> is misconfigured (waiting for 100+ failures is pretty inconvenient).
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/i2c.c b/commands/i2c.c
> index ae7f7fc..573032a 100644
> --- a/commands/i2c.c
> +++ b/commands/i2c.c
> @@ -32,7 +32,7 @@ static void i2c_probe_range(struct i2c_adapter *adapter, int startaddr, int stop
>  	client.adapter = adapter;
>  
>  	printf("probing i2c%d range 0x%02x-0x%02x: ", adapter->nr, startaddr, stopaddr);
> -	for (addr = startaddr; addr <= stopaddr; addr++) {
> +	for (addr = startaddr; addr <= stopaddr && !ctrlc(); addr++) {
>  		client.addr = addr;
>  		ret = i2c_write_reg(&client, 0x00, &reg, 0);
>  		if (ret == 0)
> -- 
> 2.5.5
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
