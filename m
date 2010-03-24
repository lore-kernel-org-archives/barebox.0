Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NuMk3-00012F-BJ
	for barebox@lists.infradead.org; Wed, 24 Mar 2010 09:19:16 +0000
Received: by wwb18 with SMTP id 18so928095wwb.36
	for <barebox@lists.infradead.org>; Wed, 24 Mar 2010 02:19:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <ba216b431003240217k4348191fn5b651bb36c9dbf47@mail.gmail.com>
References: <ba216b431003220757q3cc1dc6s267c6e760bb7f313@mail.gmail.com>
	<20100323074840.GL2241@pengutronix.de>
	<ba216b431003240217k4348191fn5b651bb36c9dbf47@mail.gmail.com>
Date: Wed, 24 Mar 2010 10:19:07 +0100
Message-ID: <ba216b431003240219x5a3ecc8dx8ec0ff761d08a386@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MX21: Fix nand booting
To: barebox@lists.infradead.org

On Tue, Mar 23, 2010 at 8:48 AM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
[...]
> I wonder that this patch helps you. Does your NAND work properly after
> starting? I ask because in imxnd_probe() NFC_INT_MSK gets set again.

I agree that it's weird. =A0But it does help. =A0Apparantly, on i.MX21, NFC=
_INT_MSK
must not be set for the first (non-reset) command, otherwise NFC_INT in
NFC_CONFIG2 will never get set.

After booting, other NAND accesses do work, for instance the NAND
device ID readout and the scanning for bad blocks:

barebox 2010.03.0-00094-gc6f4ea0-dirty (Mar 22 2010 - 10:02:13)

Board: Freescale i.MX21 ADS
cfi_probe: cfi_flash base: 0xc8000000 size: 0x02000000
NAND device: Manufacturer ID: 0xec, Chip ID: 0x36 (Samsung NAND 64MiB
1,8V 8-bit)
Scanning device for bad blocks
Bad eraseblock 2133 at 0x02154000
Malloc space: 0xc0c00000 -> 0xc1000000 (size =A04 MB)
Stack space : 0xc0bf8000 -> 0xc0c00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
barebox:/

> I tested on i.MX27 that clearing this bit doesn't harm, so I think we do
> not need the ifdef but can clear it on every SoC, like this:
>
> diff --git a/drivers/nand/nand_imx.c b/drivers/nand/nand_imx.c
> index afd5637..5c910d8 100644
> --- a/drivers/nand/nand_imx.c
> +++ b/drivers/nand/nand_imx.c
> @@ -1085,11 +1085,11 @@ void __nand_boot_init imx_nand_load_image(void *d=
est, int size)
> =A0 =A0 =A0 =A0writew(0x4, host.regs + NFC_WRPROT);
>
> =A0 =A0 =A0 =A0tmp =3D readw(host.regs + NFC_CONFIG1);
> - =A0 =A0 =A0 tmp |=3D NFC_ECC_EN | NFC_INT_MSK;
> + =A0 =A0 =A0 tmp |=3D NFC_ECC_EN;
> =A0 =A0 =A0 =A0if (nfc_is_v21())
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* currently no support for 218 byte OOB w=
ith stronger ECC */
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0tmp |=3D NFC_ECC_MODE;
> - =A0 =A0 =A0 tmp &=3D ~NFC_SP_EN;
> + =A0 =A0 =A0 tmp &=3D ~(NFC_SP_EN | NFC_INT_MSK);
> =A0 =A0 =A0 =A0writew(tmp, host.regs + NFC_CONFIG1);
>
> =A0 =A0 =A0 =A0if (nfc_is_v21()) {
> --

Tested this patch on an MX21ADS, and this is sufficient.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
