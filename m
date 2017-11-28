Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJaoW-0000tE-Em
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 08:00:23 +0000
Date: Tue, 28 Nov 2017 08:59:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128075958.ldvyyw2x64d5gbxk@pengutronix.de>
References: <20171127213156.24187-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171127213156.24187-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] net/e1000: implement protect and unprotect for attached
 flash
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 27, 2017 at 10:31:56PM +0100, Uwe Kleine-K=F6nig wrote:
> Some supported flash devices (e.g. SST25VF040) are write protected after
> power up. If the device holds a valid firmware image the i210 can handle
> that just fine. If however there is no firmware programmed, a procedure
> is needed to remove this protection before an image can be flashed.
> =

> So implement the needed callbacks to make the commands protect and
> unprotect do the right thing.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
> Hello,
> =

> this is the last patch (for now at least) for my quest to improve flashin=
g a
> firmware image for i210. Up to today I was convinced I need to implement =
the
> spi bitbanging access mode for the flash. But after I got this implemente=
d up
> to a working prototype I noticed that the already used flash burst mode c=
an
> also access the status register which results in less and prettier code.
> =

> Best regards
> Uwe
>  =

>  drivers/net/e1000/e1000.h  |  2 ++
>  drivers/net/e1000/eeprom.c | 70 ++++++++++++++++++++++++++++++++++++++++=
++++++
>  2 files changed, 72 insertions(+)
> =

> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index b49e1198160a..50d49118f5e4 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -2110,6 +2110,8 @@ struct e1000_eeprom_info {
>  #define E1000_FLSWCTL_CMD_WRITE		0b0001
>  #define E1000_FLSWCTL_CMD_ERASE_SECTOR	0b0010
>  #define E1000_FLSWCTL_CMD_ERASE_DEVICE	0b0011
> +#define E1000_FLSWCTL_CMD_RDSR		0b0100
> +#define E1000_FLSWCTL_CMD_WRSR		0b0101
>  #define E1000_FLSWCTL_CMD(c)		((0b1111 & (c)) << 24)
>  =

>  #define E1000_FLSWCTL_CMD_ADDR_MASK	0x0FFFFFFF
> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 0f1305c8499b..eeae318dcdfa 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -3,6 +3,7 @@
>  #include <malloc.h>
>  #include <linux/math64.h>
>  #include <linux/sizes.h>
> +#include <linux/mtd/spi-nor.h>
>  =

>  #include "e1000.h"
>  =

> @@ -1410,6 +1411,73 @@ fail:
>  	return ret;
>  }
>  =

> +static int e1000_mtd_sr_rmw(struct mtd_info *mtd, u8 mask, u8 val)
> +{
> +	struct e1000_hw *hw =3D container_of(mtd, struct e1000_hw, mtd);
> +	uint32_t flswdata;
> +	int ret;
> +
> +	ret =3D e1000_flash_mode_wait_for_idle(hw);
> +	if (ret < 0)
> +		return ret;
> +
> +	e1000_write_reg(hw, E1000_FLSWCNT, 1);
> +	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_RDSR, 0);
> +
> +	ret =3D e1000_flash_mode_check_command_valid(hw);
> +	if (ret < 0)
> +		return -EIO;
> +
> +	ret =3D e1000_poll_reg(hw, E1000_FLSWCTL,
> +			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
> +			     SECOND);
> +	if (ret < 0) {
> +		dev_err(hw->dev,
> +			"Timeout waiting for FLSWCTL.DONE to be set (RDSR)\n");
> +		return ret;
> +	}
> +
> +	flswdata =3D e1000_read_reg(hw, E1000_FLSWDATA);
> +
> +	flswdata =3D (flswdata & ~mask) | val;
> +
> +	e1000_write_reg(hw, E1000_FLSWCNT, 1);
> +	e1000_flash_cmd(hw, E1000_FLSWCTL_CMD_WRSR, 0);
> +
> +	ret =3D e1000_flash_mode_check_command_valid(hw);
> +	if (ret < 0)
> +		return -EIO;
> +
> +	e1000_write_reg(hw, E1000_FLSWDATA, flswdata);
> +
> +	ret =3D e1000_poll_reg(hw, E1000_FLSWCTL,
> +			     E1000_FLSWCTL_DONE, E1000_FLSWCTL_DONE,
> +			     SECOND);
> +	if (ret < 0) {
> +		dev_err(hw->dev,
> +			"Timeout waiting for FLSWCTL.DONE to be set (WRSR)\n");
> +	}
> +
> +	return ret;
> +}
> +
> +/*
> + * The available spi nor devices are very different in how the block pro=
tection
> + * bits affect which sectors to be protected. So take the simple approac=
h and
> + * only use BP[012] =3D b000 (unprotected) and BP[012] =3D b111 (protect=
ed).
> + */
> +#define SR_BPALL (SR_BP0 | SR_BP1 | SR_BP2)
> +
> +static int e1000_mtd_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
> +{
> +	return e1000_mtd_sr_rmw(mtd, SR_BPALL, SR_BPALL);
> +}
> +
> +static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
> +{
> +	return e1000_mtd_sr_rmw(mtd, SR_BPALL, 0x0);
> +}
> +
>  int e1000_register_invm(struct e1000_hw *hw)
>  {
>  	int ret;
> @@ -1521,6 +1589,8 @@ int e1000_register_eeprom(struct e1000_hw *hw)
>  			hw->mtd.read =3D e1000_mtd_read;
>  			hw->mtd.write =3D e1000_mtd_write;
>  			hw->mtd.erase =3D e1000_mtd_erase;
> +			hw->mtd.lock =3D e1000_mtd_lock;
> +			hw->mtd.unlock =3D e1000_mtd_unlock;
>  			hw->mtd.size =3D eeprom->word_size * 2;
>  			hw->mtd.writesize =3D 1;
>  			hw->mtd.subpage_sft =3D 0;
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
