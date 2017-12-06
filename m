Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMb7t-0002IO-8U
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 14:57:11 +0000
Date: Wed, 6 Dec 2017 15:56:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171206145622.2ntqo6kjsbgavlwv@pengutronix.de>
References: <20171201111017.29098-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171201111017.29098-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net/e1000: indicate at boot time if flash is in secure
 mode
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 01, 2017 at 12:10:17PM +0100, Uwe Kleine-K=F6nig wrote:
> If the flash is in secure mode it is not possible to modify its
> contents. So log that useful information at probe time.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/net/e1000/e1000.h  |  1 +
>  drivers/net/e1000/eeprom.c | 10 +++++++---
>  2 files changed, 8 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index 50d49118f5e4..1558b3c7f5c7 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -2101,6 +2101,7 @@ struct e1000_eeprom_info {
>  							after IMS clear */
>  =

>  #define E1000_FLA			0x1201C
> +#define E1000_FLA_LOCKED		(1 << 6)
>  #define E1000_FLA_FL_SIZE_SHIFT		17
>  #define E1000_FLA_FL_SIZE_MASK		(0b111 << E1000_FLA_FL_SIZE_SHIFT) /* EE=
prom Size */
>  =

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 6251c6cecc94..51e0f28c7d44 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -1584,10 +1584,14 @@ int e1000_register_eeprom(struct e1000_hw *hw)
>  =

>  		if (eecd & E1000_EECD_AUTO_RD) {
>  			if (eecd & E1000_EECD_EE_PRES) {
> -				if (eecd & E1000_EECD_FLASH_IN_USE)
> -					dev_info(hw->dev, "Hardware programmed from flash\n");
> -				else
> +				if (eecd & E1000_EECD_FLASH_IN_USE) {
> +					uint32_t fla =3D e1000_read_reg(hw, E1000_FLA);
> +					dev_info(hw->dev,
> +						 "Hardware programmed from flash (%ssecure)\n",
> +						 fla & E1000_FLA_LOCKED ? "" : "un");
> +				} else {
>  					dev_info(hw->dev, "Hardware programmed from iNVM\n");
> +				}
>  			} else {
>  				dev_warn(hw->dev, "Shadow RAM invalid\n");
>  			}
> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
