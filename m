Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eebqY-0002fr-E2
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:21:20 +0000
Date: Thu, 25 Jan 2018 08:21:04 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20180125072104.u4nhlvk25zov6yqt@pengutronix.de>
References: <20180124113216.16950-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180124113216.16950-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] net/e1000: use correct bit to check for flash presence
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 24, 2018 at 12:32:14PM +0100, Lucas Stach wrote:
> This code path was checking the same bit (E1000_EECD_EE_PRES) twice,
> which doesn't look right. Use the correct bit to check for flash
> presence.
> =

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/net/e1000/e1000.h  | 1 -
>  drivers/net/e1000/eeprom.c | 2 +-
>  2 files changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index 1558b3c7f5c7..0c83a47e9aab 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -794,7 +794,6 @@ struct e1000_eeprom_info {
>  #ifndef E1000_EEPROM_GRANT_ATTEMPTS
>  #define E1000_EEPROM_GRANT_ATTEMPTS 1000 /* EEPROM # attempts to gain gr=
ant */
>  #endif
> -#define E1000_EECD_FLASH_IN_USE     0x00000100  /* Flash is present with=
 a valid signature */

I think the right fix here is:

-#define E1000_EECD_FLASH_IN_USE     0x00000100  /* Flash is present with a=
 valid signature */
+#define E1000_EECD_FLASH_IN_USE     0x00000040  /* Flash is present with a=
 valid signature */

Fixes commit 95c346ccaa6da2257f605d18ac7595b99f628419.

>  #define E1000_EECD_EE_PRES          0x00000100
>  #define E1000_EECD_AUTO_RD          0x00000200  /* EEPROM Auto Read done=
 */
>  #define E1000_EECD_SIZE_EX_MASK     0x00007800  /* EEprom Size */
> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 748d8afe7922..ee4f768bb4cd 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -1569,7 +1569,7 @@ int e1000_register_eeprom(struct e1000_hw *hw)
>  =

>  		if (eecd & E1000_EECD_AUTO_RD) {
>  			if (eecd & E1000_EECD_EE_PRES) {
> -				if (eecd & E1000_EECD_FLASH_IN_USE) {
> +				if (eecd & E1000_EECD_I210_FLASH_DETECTED) {
>  					uint32_t fla =3D e1000_read_reg(hw, E1000_FLA);
>  					dev_info(hw->dev,
>  						 "Hardware programmed from flash (%ssecure)\n",
> -- =

> 2.15.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
