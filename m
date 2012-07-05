Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmrK6-0000ws-QO
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:02:43 +0000
Date: Thu, 5 Jul 2012 21:02:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120705190240.GY30009@pengutronix.de>
References: <1341483767-20487-1-git-send-email-eric@eukrea.com>
 <1341483767-20487-2-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341483767-20487-2-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] nand_base: add ONFI flash detection
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 05, 2012 at 12:22:46PM +0200, Eric B=E9nard wrote:
> the code is taken from linux & u-boot implementations
> Validated on an i.MX53 which gives the following log :
> ONFI flash detected ... ONFI param page 0 valid
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0x38 (Micron MT29F8G08ABABAW=
P), page size: 4096, OOB size: 224
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/mtd/nand/nand_base.c |  174 ++++++++++++++++++++++++++++++++++++=
------
>  include/linux/mtd/mtd-abi.h  |    7 +-
>  include/linux/mtd/nand.h     |   74 ++++++++++++++++++-
>  3 files changed, 226 insertions(+), 29 deletions(-)
> =

> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
>  #ifdef CONFIG_MTD_WRITE
>  	/* Check for AND chips with 4 page planes */
>  	if (chip->options & NAND_4PAGE_ARRAY)
> @@ -1179,9 +1301,11 @@ static struct nand_flash_dev *nand_get_flash_type(=
struct mtd_info *mtd,
>  	if (mtd->writesize > 512 && chip->cmdfunc =3D=3D nand_command)
>  		chip->cmdfunc =3D nand_command_lp;
>  =

> -	printk(KERN_INFO "NAND device: Manufacturer ID:"
> -	       " 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id, dev_id,
> -	       nand_manuf_ids[maf_idx].name, type->name);
> +	printk("NAND device: Manufacturer ID: 0x%02x, Chip ID: 0x%02x (%s %s),"
> +		" page size: %d, OOB size: %d\n",
> +		*maf_id, dev_id, nand_manuf_ids[maf_idx].name,
> +		chip->onfi_version ? chip->onfi_params.model : type->name,
> +		mtd->writesize, mtd->oobsize);

Do we need to output writesize and oobsize here? 'devinfo nand0' will
give the same information.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
