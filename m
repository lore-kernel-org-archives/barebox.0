Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua8VV-0007kr-TN
 for barebox@lists.infradead.org; Wed, 08 May 2013 17:50:28 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 33854FF8D64
 for <barebox@lists.infradead.org>; Wed,  8 May 2013 19:50:03 +0200 (CEST)
Date: Wed, 8 May 2013 19:45:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130508174541.GA16240@game.jcrosoft.org>
References: <1368034748-15462-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368034748-15462-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v3] nand_base: sync flash detection functions with
 linux 3.9's code
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

one small issue

/opt/work/barebox/drivers/mtd/nand/nand_base.c: In function 'nand_get_flash=
_type':
/opt/work/barebox/drivers/mtd/nand/nand_base.c:1383:6: warning: unused vari=
able 'ret'

otherwise it work

barebox 2013.05.0-00117-g62ef1d9 #615 Thu May 9 01:46:46 CST 2013


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
nand: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), =
page size: 2048, OOB size: 64
atmel_nand atmel_nand0: Initialize PMECC params, cap: 2, sector: 512
mdio_bus: miibus0: probed
eth0: got preset MAC address: 76:6D:6C:A6:AB:AB
macb macb0: Cadence MACB at 0xf802c000
m25p80 m25p800: at25df321a (4096 Kbytes)
atmel_mci atmel_mci0: version: 0x504
atmel_mci atmel_mci0: registered as atmel_mci0
mci mci0: no card inserted
atmel-ehci atmel-ehci: USB EHCI 1.00
i2c-gpio i2c-gpio0: using pins 30 (SDA) and 31 (SCL)
malloc space: 0x26500000 -> 0x26efffff (size 10 MiB)
running /env/bin/init...

Hit any key to stop autoboot:  3
barebox@Atmel at91sam9x5-ek:/
#

Tested-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

On 19:39 Wed 08 May     , Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/mtd/nand/nand_base.c | 385 ++++++++++++++++++++++++++++++-------=
------
>  include/linux/mtd/bbm.h      |   2 +
>  2 files changed, 268 insertions(+), 119 deletions(-)
> =

> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index e8103cf..e601f84 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -1077,7 +1077,6 @@ static int nand_flash_detect_onfi(struct mtd_info *=
mtd, struct nand_chip *chip,
>  		chip->read_byte(mtd) !=3D 'F' || chip->read_byte(mtd) !=3D 'I')
>  		return 0;
>  =

> -	pr_info("ONFI flash detected ... ");
>  	chip->cmdfunc(mtd, NAND_CMD_PARAM, 0, -1);
>  	for (i =3D 0; i < 3; i++) {
>  		chip->read_buf(mtd, (uint8_t *)p, sizeof(*p));
> @@ -1088,10 +1087,8 @@ static int nand_flash_detect_onfi(struct mtd_info =
*mtd, struct nand_chip *chip,
>  		}
>  	}
>  =

> -	if (i =3D=3D 3) {
> -		pr_info("no valid ONFI param page found\n");
> +	if (i =3D=3D 3)
>  		return 0;
> -	}
>  =

>  	/* check version */
>  	val =3D le16_to_cpu(p->revision);
> @@ -1128,10 +1125,252 @@ static int nand_flash_detect_onfi(struct mtd_inf=
o *mtd, struct nand_chip *chip,
>  	chip->options &=3D ~NAND_CHIPOPTIONS_MSK;
>  	chip->options |=3D NAND_NO_READRDY & NAND_CHIPOPTIONS_MSK;
>  =

> +	pr_info("ONFI flash detected ... ");
> +	return 1;
> +}
> +
> +/*
> + * nand_id_has_period - Check if an ID string has a given wraparound per=
iod
> + * @id_data: the ID string
> + * @arrlen: the length of the @id_data array
> + * @period: the period of repitition
> + *
> + * Check if an ID string is repeated within a given sequence of bytes at
> + * specific repetition interval period (e.g., {0x20,0x01,0x7F,0x20} has a
> + * period of 3). This is a helper function for nand_id_len(). Returns no=
n-zero
> + * if the repetition has a period of @period; otherwise, returns zero.
> + */
> +static int nand_id_has_period(u8 *id_data, int arrlen, int period)
> +{
> +	int i, j;
> +	for (i =3D 0; i < period; i++)
> +		for (j =3D i + period; j < arrlen; j +=3D period)
> +			if (id_data[i] !=3D id_data[j])
> +				return 0;
>  	return 1;
>  }
>  =

>  /*
> + * nand_id_len - Get the length of an ID string returned by CMD_READID
> + * @id_data: the ID string
> + * @arrlen: the length of the @id_data array
> +
> + * Returns the length of the ID string, according to known wraparound/tr=
ailing
> + * zero patterns. If no pattern exists, returns the length of the array.
> + */
> +static int nand_id_len(u8 *id_data, int arrlen)
> +{
> +	int last_nonzero, period;
> +
> +	/* Find last non-zero byte */
> +	for (last_nonzero =3D arrlen - 1; last_nonzero >=3D 0; last_nonzero--)
> +		if (id_data[last_nonzero])
> +			break;
> +
> +	/* All zeros */
> +	if (last_nonzero < 0)
> +		return 0;
> +
> +	/* Calculate wraparound period */
> +	for (period =3D 1; period < arrlen; period++)
> +		if (nand_id_has_period(id_data, arrlen, period))
> +			break;
> +
> +	/* There's a repeated pattern */
> +	if (period < arrlen)
> +		return period;
> +
> +	/* There are trailing zeros */
> +	if (last_nonzero < arrlen - 1)
> +		return last_nonzero + 1;
> +
> +	/* No pattern detected */
> +	return arrlen;
> +}
> +
> +/*
> + * Many new NAND share similar device ID codes, which represent the size=
 of the
> + * chip. The rest of the parameters must be decoded according to generic=
 or
> + * manufacturer-specific "extended ID" decoding patterns.
> + */
> +static void nand_decode_ext_id(struct mtd_info *mtd, struct nand_chip *c=
hip,
> +				u8 id_data[8], int *busw)
> +{
> +	int extid, id_len;
> +	/* The 3rd id byte holds MLC / multichip data */
> +	chip->cellinfo =3D id_data[2];
> +	/* The 4th id byte is the important one */
> +	extid =3D id_data[3];
> +
> +	id_len =3D nand_id_len(id_data, 8);
> +
> +	/*
> +	 * Field definitions are in the following datasheets:
> +	 * Old style (4,5 byte ID): Samsung K9GAG08U0M (p.32)
> +	 * New Samsung (6 byte ID): Samsung K9GAG08U0F (p.44)
> +	 * Hynix MLC   (6 byte ID): Hynix H27UBG8T2B (p.22)
> +	 *
> +	 * Check for ID length, non-zero 6th byte, cell type, and Hynix/Samsung
> +	 * ID to decide what to do.
> +	 */
> +	if (id_len =3D=3D 6 && id_data[0] =3D=3D NAND_MFR_SAMSUNG &&
> +			(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
> +			id_data[5] !=3D 0x00) {
> +		/* Calc pagesize */
> +		mtd->writesize =3D 2048 << (extid & 0x03);
> +		extid >>=3D 2;
> +		/* Calc oobsize */
> +		switch (((extid >> 2) & 0x04) | (extid & 0x03)) {
> +		case 1:
> +			mtd->oobsize =3D 128;
> +			break;
> +		case 2:
> +			mtd->oobsize =3D 218;
> +			break;
> +		case 3:
> +			mtd->oobsize =3D 400;
> +			break;
> +		case 4:
> +			mtd->oobsize =3D 436;
> +			break;
> +		case 5:
> +			mtd->oobsize =3D 512;
> +			break;
> +		case 6:
> +		default: /* Other cases are "reserved" (unknown) */
> +			mtd->oobsize =3D 640;
> +			break;
> +		}
> +		extid >>=3D 2;
> +		/* Calc blocksize */
> +		mtd->erasesize =3D (128 * 1024) <<
> +			(((extid >> 1) & 0x04) | (extid & 0x03));
> +		*busw =3D 0;
> +	} else if (id_len =3D=3D 6 && id_data[0] =3D=3D NAND_MFR_HYNIX &&
> +			(chip->cellinfo & NAND_CI_CELLTYPE_MSK)) {
> +		unsigned int tmp;
> +
> +		/* Calc pagesize */
> +		mtd->writesize =3D 2048 << (extid & 0x03);
> +		extid >>=3D 2;
> +		/* Calc oobsize */
> +		switch (((extid >> 2) & 0x04) | (extid & 0x03)) {
> +		case 0:
> +			mtd->oobsize =3D 128;
> +			break;
> +		case 1:
> +			mtd->oobsize =3D 224;
> +			break;
> +		case 2:
> +			mtd->oobsize =3D 448;
> +			break;
> +		case 3:
> +			mtd->oobsize =3D 64;
> +			break;
> +		case 4:
> +			mtd->oobsize =3D 32;
> +			break;
> +		case 5:
> +			mtd->oobsize =3D 16;
> +			break;
> +		default:
> +			mtd->oobsize =3D 640;
> +			break;
> +		}
> +		extid >>=3D 2;
> +		/* Calc blocksize */
> +		tmp =3D ((extid >> 1) & 0x04) | (extid & 0x03);
> +		if (tmp < 0x03)
> +			mtd->erasesize =3D (128 * 1024) << tmp;
> +		else if (tmp =3D=3D 0x03)
> +			mtd->erasesize =3D 768 * 1024;
> +		else
> +			mtd->erasesize =3D (64 * 1024) << tmp;
> +		*busw =3D 0;
> +	} else {
> +		/* Calc pagesize */
> +		mtd->writesize =3D 1024 << (extid & 0x03);
> +		extid >>=3D 2;
> +		/* Calc oobsize */
> +		mtd->oobsize =3D (8 << (extid & 0x01)) *
> +			(mtd->writesize >> 9);
> +		extid >>=3D 2;
> +		/* Calc blocksize. Blocksize is multiples of 64KiB */
> +		mtd->erasesize =3D (64 * 1024) << (extid & 0x03);
> +		extid >>=3D 2;
> +		/* Get buswidth information */
> +		*busw =3D (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
> +	}
> +}
> +
> +/*
> + * Old devices have chip data hardcoded in the device ID table. nand_dec=
ode_id
> + * decodes a matching ID table entry and assigns the MTD size parameters=
 for
> + * the chip.
> + */
> +static void nand_decode_id(struct mtd_info *mtd, struct nand_chip *chip,
> +				struct nand_flash_dev *type, u8 id_data[8],
> +				int *busw)
> +{
> +	int maf_id =3D id_data[0];
> +
> +	mtd->erasesize =3D type->erasesize;
> +	mtd->writesize =3D type->pagesize;
> +	mtd->oobsize =3D mtd->writesize / 32;
> +	*busw =3D type->options & NAND_BUSWIDTH_16;
> +
> +	/*
> +	 * Check for Spansion/AMD ID + repeating 5th, 6th byte since
> +	 * some Spansion chips have erasesize that conflicts with size
> +	 * listed in nand_ids table.
> +	 * Data sheet (5 byte ID): Spansion S30ML-P ORNAND (p.39)
> +	 */
> +	if (maf_id =3D=3D NAND_MFR_AMD && id_data[4] !=3D 0x00 && id_data[5] =
=3D=3D 0x00
> +			&& id_data[6] =3D=3D 0x00 && id_data[7] =3D=3D 0x00
> +			&& mtd->writesize =3D=3D 512) {
> +		mtd->erasesize =3D 128 * 1024;
> +		mtd->erasesize <<=3D ((id_data[3] & 0x03) << 1);
> +	}
> +}
> +
> +/*
> + * Set the bad block marker/indicator (BBM/BBI) patterns according to so=
me
> + * heuristic patterns using various detected parameters (e.g., manufactu=
rer,
> + * page size, cell-type information).
> + */
> +static void nand_decode_bbm_options(struct mtd_info *mtd,
> +				    struct nand_chip *chip, u8 id_data[8])
> +{
> +	int maf_id =3D id_data[0];
> +
> +	/* Set the bad block position */
> +	if (mtd->writesize > 512 || (chip->options & NAND_BUSWIDTH_16))
> +		chip->badblockpos =3D NAND_LARGE_BADBLOCK_POS;
> +	else
> +		chip->badblockpos =3D NAND_SMALL_BADBLOCK_POS;
> +
> +	/*
> +	 * Bad block marker is stored in the last page of each block on Samsung
> +	 * and Hynix MLC devices; stored in first two pages of each block on
> +	 * Micron devices with 2KiB pages and on SLC Samsung, Hynix, Toshiba,
> +	 * AMD/Spansion, and Macronix.  All others scan only the first page.
> +	 */
> +	if ((chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
> +			(maf_id =3D=3D NAND_MFR_SAMSUNG ||
> +			 maf_id =3D=3D NAND_MFR_HYNIX))
> +		chip->bbt_options |=3D NAND_BBT_SCANLASTPAGE;
> +	else if ((!(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
> +				(maf_id =3D=3D NAND_MFR_SAMSUNG ||
> +				 maf_id =3D=3D NAND_MFR_HYNIX ||
> +				 maf_id =3D=3D NAND_MFR_TOSHIBA ||
> +				 maf_id =3D=3D NAND_MFR_AMD ||
> +				 maf_id =3D=3D NAND_MFR_MACRONIX)) ||
> +			(mtd->writesize =3D=3D 2048 &&
> +			 maf_id =3D=3D NAND_MFR_MICRON))
> +		chip->bbt_options |=3D NAND_BBT_SCAN2NDPAGE;
> +}
> +
> +/*
>   * Get the flash and manufacturer id and lookup if the type is supported
>   */
>  static struct nand_flash_dev *nand_get_flash_type(struct mtd_info *mtd,
> @@ -1140,7 +1379,7 @@ static struct nand_flash_dev *nand_get_flash_type(s=
truct mtd_info *mtd,
>  {
>  	struct nand_flash_dev *type =3D NULL;
>  	int i, dev_id, maf_idx;
> -	int id_data[8];
> +	u8 id_data[8];
>  	int ret;
>  =

>  	/* Select the device */
> @@ -1167,10 +1406,9 @@ static struct nand_flash_dev *nand_get_flash_type(=
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
> @@ -1189,124 +1427,33 @@ static struct nand_flash_dev *nand_get_flash_typ=
e(struct mtd_info *mtd,
>  	chip->onfi_version =3D 0;
>  	if (!type->name || !type->pagesize) {
>  		/* Check is chip is ONFI compliant */
> -		ret =3D nand_flash_detect_onfi(mtd, chip, &busw);
> -		if (ret)
> +		if (nand_flash_detect_onfi(mtd, chip, &busw))
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
>  =

> -	chip->chipsize =3D type->chipsize << 20;
> +	chip->chipsize =3D (uint64_t)type->chipsize << 20;
>  =

>  	if (!type->pagesize) {
> -		int extid;
> -		/* The 3rd id byte holds MLC / multichip data */
> -		chip->cellinfo =3D id_data[2];
> -		/* The 4th id byte is the important one */
> -		extid =3D id_data[3];
> -
> -		/*
> -		 * Field definitions are in the following datasheets:
> -		 * Old style (4,5 byte ID): Samsung K9GAG08U0M (p.32)
> -		 * New style   (6 byte ID): Samsung K9GBG08U0M (p.40)
> -		 *
> -		 * Check for wraparound + Samsung ID + nonzero 6th byte
> -		 * to decide what to do.
> -		 */
> -		if (id_data[0] =3D=3D id_data[6] && id_data[1] =3D=3D id_data[7] &&
> -				id_data[0] =3D=3D NAND_MFR_SAMSUNG &&
> -				(chip->cellinfo & NAND_CI_CELLTYPE_MSK) &&
> -				id_data[5] !=3D 0x00) {
> -			/* Calc pagesize */
> -			mtd->writesize =3D 2048 << (extid & 0x03);
> -			extid >>=3D 2;
> -			/* Calc oobsize */
> -			switch (extid & 0x03) {
> -			case 1:
> -				mtd->oobsize =3D 128;
> -				break;
> -			case 2:
> -				mtd->oobsize =3D 218;
> -				break;
> -			case 3:
> -				mtd->oobsize =3D 400;
> -				break;
> -			default:
> -				mtd->oobsize =3D 436;
> -				break;
> -			}
> -			extid >>=3D 2;
> -			/* Calc blocksize */
> -			mtd->erasesize =3D (128 * 1024) <<
> -				(((extid >> 1) & 0x04) | (extid & 0x03));
> -			busw =3D 0;
> -		} else {
> -			/* Calc pagesize */
> -			mtd->writesize =3D 1024 << (extid & 0x03);
> -			extid >>=3D 2;
> -			/* Calc oobsize */
> -			mtd->oobsize =3D (8 << (extid & 0x01)) *
> -				(mtd->writesize >> 9);
> -			extid >>=3D 2;
> -			/* Calc blocksize. Blocksize is multiples of 64KiB */
> -			mtd->erasesize =3D (64 * 1024) << (extid & 0x03);
> -			extid >>=3D 2;
> -			/* Get buswidth information */
> -			busw =3D (extid & 0x01) ? NAND_BUSWIDTH_16 : 0;
> -		}
> -
> -
> +		/* Decode parameters from extended ID */
> +		nand_decode_ext_id(mtd, chip, id_data, &busw);
>  	} else {
> -		/*
> -		 * Old devices have chip data hardcoded in the device id table
> -		 */
> -		mtd->erasesize =3D type->erasesize;
> -		mtd->writesize =3D type->pagesize;
> -		mtd->oobsize =3D mtd->writesize / 32;
> -		busw =3D type->options & NAND_BUSWIDTH_16;
> -
> -		/*
> -		 * Check for Spansion/AMD ID + repeating 5th, 6th byte since
> -		 * some Spansion chips have erasesize that conflicts with size
> -		 * listed in nand_ids table
> -		 * Data sheet (5 byte ID): Spansion S30ML-P ORNAND (p.39)
> -		 */
> -		if (*maf_id =3D=3D NAND_MFR_AMD && id_data[4] !=3D 0x00 &&
> -				id_data[5] =3D=3D 0x00 && id_data[6] =3D=3D 0x00 &&
> -				id_data[7] =3D=3D 0x00 && mtd->writesize =3D=3D 512) {
> -			mtd->erasesize =3D 128 * 1024;
> -			mtd->erasesize <<=3D ((id_data[3] & 0x03) << 1);
> -		}
> +		nand_decode_id(mtd, chip, type, id_data, &busw);
>  	}
> +	/* Get chip options */
> +	chip->options |=3D type->options;
>  =

> -	/* Try to identify manufacturer */
> -	for (maf_idx =3D 0; nand_manuf_ids[maf_idx].id !=3D 0x0; maf_idx++) {
> -		if (nand_manuf_ids[maf_idx].id =3D=3D *maf_id)
> -			break;
> -	}
> -
> -	/* Get chip options, preserve non chip based options */
> -	chip->options &=3D ~NAND_CHIPOPTIONS_MSK;
> -	chip->options |=3D type->options & NAND_CHIPOPTIONS_MSK;
> -
> -	/* Check if chip is a not a samsung device. Do not clear the
> -	 * options for chips which are not having an extended id.
> +	/*
> +	 * Check if chip is not a Samsung device. Do not clear the
> +	 * options for chips which do not have an extended id.
>  	 */
>  	if (*maf_id !=3D NAND_MFR_SAMSUNG && !type->pagesize)
>  		chip->options &=3D ~NAND_SAMSUNG_LP_OPTIONS;
> -
>  ident_done:
>  	/*
>  	 * Set chip as a default. Board drivers can override it, if necessary
> @@ -1324,13 +1471,11 @@ ident_done:
>  		nand_set_defaults(chip, busw);
>  		if (chip->set_buswidth)
>  			chip->set_buswidth(mtd, chip, busw);
> -	}
> -
> -	/*
> -	 * Check, if buswidth is correct. Hardware drivers should set
> -	 * chip correct !
> -	 */
> -	if (busw !=3D (chip->options & NAND_BUSWIDTH_16)) {
> +	} else 	if (busw !=3D (chip->options & NAND_BUSWIDTH_16)) {
> +		/*
> +		 * Check, if buswidth is correct. Hardware drivers should set
> +		 * chip correct !
> +		 */
>  		pr_info("NAND device: Manufacturer ID:"
>  			" 0x%02x, Chip ID: 0x%02x (%s %s)\n", *maf_id,
>  			dev_id, nand_manuf_ids[maf_idx].name, mtd->name);
> @@ -1340,6 +1485,8 @@ ident_done:
>  		return ERR_PTR(-EINVAL);
>  	}
>  =

> +	nand_decode_bbm_options(mtd, chip, id_data);
> +
>  	/* Calculate the address shift from the page size */
>  	chip->page_shift =3D ffs(mtd->writesize) - 1;
>  	/* Convert chipsize to number of pages per chip -1. */
> diff --git a/include/linux/mtd/bbm.h b/include/linux/mtd/bbm.h
> index d546f40..50bc4d9 100644
> --- a/include/linux/mtd/bbm.h
> +++ b/include/linux/mtd/bbm.h
> @@ -79,6 +79,8 @@ struct nand_bbt_descr {
>  #define NAND_BBT_SAVECONTENT	0x00002000
>  /* Search good / bad pattern on the first and the second page */
>  #define NAND_BBT_SCAN2NDPAGE	0x00004000
> +/* Search good / bad pattern on the last page of the eraseblock */
> +#define NAND_BBT_SCANLASTPAGE	0x00010000
>  =

>  /*
>   * Use a flash based bad block table. By default, OOB identifier is save=
d in
> -- =

> 1.8.1.4
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
