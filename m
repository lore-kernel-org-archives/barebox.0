Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua7Vo-0006lq-HB
 for barebox@lists.infradead.org; Wed, 08 May 2013 16:46:41 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4AA9BFF8F61
 for <barebox@lists.infradead.org>; Wed,  8 May 2013 18:46:19 +0200 (CEST)
Date: Wed, 8 May 2013 18:41:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130508164158.GE1884@game.jcrosoft.org>
References: <1368030050-7989-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368030050-7989-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] nand_base: fix to test for JCPV problem
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 18:20 Wed 08 May     , Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

better but an other BUG

Board: Atmel at91sam9x5-ek
AT91: Detected soc type: at91sam9x5
AT91: Detected soc subtype: at91sam9x25
Clocks: CPU 400 MHz, master 133 MHz, main 12.000 MHz
netconsole: registered as cs2
CM: SAM9X25-CM [B2] from RONETIX
EK: SAM9x5-EK [B0] from FLEX
DM: SAM9x5-DM [B0] from FLEX
sn: 0x4010465, rev: 0x10421
atmel_nand: Use On Flash BBT
nand: ONFI flash detected ... nand: no valid ONFI param page found
nand: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), =
page size: 0, OOB size: 0
atmel_nand atmel_nand0: Initialize PMECC params, cap: 2, sector: 512
nand: No oob scheme defined for oobsize 0
BUG: failure at /opt/work/barebox/drivers/mtd/nand/nand_base.c:1483/nand_sc=
an_tail()!
BUG!
> ---
>  drivers/mtd/nand/nand_base.c | 20 +++++---------------
>  1 file changed, 5 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index e8103cf..d04e24b 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -1167,10 +1167,9 @@ static struct nand_flash_dev *nand_get_flash_type(=
struct mtd_info *mtd,
>  =

>  	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
>  =

> -	/* Read manufacturer and device IDs */
> -
> -	id_data[0] =3D chip->read_byte(mtd);
> -	id_data[1] =3D chip->read_byte(mtd);
> +	/* Read entire ID string */
> +	for (i =3D 0; i < 8; i++)
> +		id_data[i] =3D chip->read_byte(mtd);
>  =

>  	if (id_data[0] !=3D *maf_id || id_data[1] !=3D dev_id) {
>  		pr_err("%s: second ID read did not match "
> @@ -1190,20 +1189,11 @@ static struct nand_flash_dev *nand_get_flash_type=
(struct mtd_info *mtd,
>  	if (!type->name || !type->pagesize) {
>  		/* Check is chip is ONFI compliant */
>  		ret =3D nand_flash_detect_onfi(mtd, chip, &busw);
> -		if (ret)
>  			goto ident_done;
> -		else {
> -			pr_err("NAND type unknown: %02x,%02x\n", *maf_id, dev_id);
> -			return ERR_PTR(-ENODEV);
> -		}
>  	}
>  =

> -	chip->cmdfunc(mtd, NAND_CMD_READID, 0x00, -1);
> -
> -	/* Read entire ID string */
> -
> -	for (i =3D 0; i < 8; i++)
> -		id_data[i] =3D chip->read_byte(mtd);
> +	if (!type->name)
> +		return ERR_PTR(-ENODEV);
>  =

>  	if (!mtd->name)
>  		mtd->name =3D type->name;
> -- =

> 1.8.1.4
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
