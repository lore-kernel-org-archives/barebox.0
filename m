Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOYYx-0006jM-Pv
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:23:12 +0000
Date: Thu, 19 Feb 2015 22:22:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150219212249.GG12209@pengutronix.de>
References: <1424378307-23907-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1424378307-23907-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] ARM i.MX: Add I2C EEPROM
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 19, 2015 at 09:38:27PM +0100, Michael Grzeschik wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/guf-vincell/board.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
> index bafde2c..515f178 100644
> --- a/arch/arm/boards/guf-vincell/board.c
> +++ b/arch/arm/boards/guf-vincell/board.c
> @@ -263,6 +263,9 @@ static struct i2c_board_info i2c_devices[] = {
>  	{
>  		I2C_BOARD_INFO("da9053", 0x48),
>  	},
> +	{
> +		I2C_BOARD_INFO("24c32", 0x50),
> +	},

Are you sure this REALLY works properly without converting the board to
device tree support? ;)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
