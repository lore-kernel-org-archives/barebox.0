Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vr1sg-0005gX-KM
 for barebox@lists.infradead.org; Thu, 12 Dec 2013 08:44:27 +0000
Date: Thu, 12 Dec 2013 09:44:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131212084404.GI24559@pengutronix.de>
References: <1386786267-6462-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386786267-6462-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] nand_imx: fix read ONFI param on NFC v21
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 11, 2013 at 07:24:27PM +0100, Eric B=E9nard wrote:
> tested on an i.MX25 where we now get :
> nand: ONFI param page 0 valid
> nand: ONFI flash detected
> nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron MT29F2G08=
ABAEAWP), 256MiB, page size: 2048, OOB size: 64
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/nand/nand_imx.c | 25 +++++++++----------------
>  1 file changed, 9 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
> index 965b41e..fd57b4d 100644
> --- a/drivers/mtd/nand/nand_imx.c
> +++ b/drivers/mtd/nand/nand_imx.c
> @@ -403,12 +403,15 @@ static void send_read_id_v1_v2(struct imx_nand_host=
 *host)
>  	memcpy32(host->data_buf, host->main_area0, 16);
>  }
>  =

> -/* FIXME : to check on real HW */
>  static void send_read_param_v1_v2(struct imx_nand_host *host)
>  {
>  	struct nand_chip *this =3D &host->nand;
> +	u32 backup =3D readw(host->regs + NFC_V1_V2_CONFIG1);
>  =

> -	/* NANDFC buffer 0 is used for device ID output */
> +	/* Temporary disable ECC to be able to read param page */
> +	writew(backup & ~NFC_V1_V2_CONFIG1_ECC_EN, host->regs + NFC_V1_V2_CONFI=
G1);
> +
> +	/* NANDFC buffer 0 is used for param output */
>  	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
>  =

>  	writew(NFC_OUTPUT, host->regs + NFC_V1_V2_CONFIG2);
> @@ -416,20 +419,10 @@ static void send_read_param_v1_v2(struct imx_nand_h=
ost *host)
>  	/* Wait for operation to complete */
>  	wait_op_done(host);
>  =

> -	if (this->options & NAND_BUSWIDTH_16) {
> -		volatile u16 *mainbuf =3D host->main_area0;
> -
> -		/*
> -		 * Pack the every-other-byte result for 16-bit ID reads
> -		 * into every-byte as the generic code expects and various
> -		 * chips implement.
> -		 */
> -
> -		mainbuf[0] =3D (mainbuf[0] & 0xff) | ((mainbuf[1] & 0xff) << 8);
> -		mainbuf[1] =3D (mainbuf[2] & 0xff) | ((mainbuf[3] & 0xff) << 8);
> -		mainbuf[2] =3D (mainbuf[4] & 0xff) | ((mainbuf[5] & 0xff) << 8);
> -	}
>  	memcpy32(host->data_buf, host->main_area0, 1024);
> +
> +	/* Restore original CONFIG1 value */
> +	writew(backup, host->regs + NFC_V1_V2_CONFIG1);
>  }
>  /*
>   * This function requests the NANDFC to perform a read of the
> @@ -1147,7 +1140,7 @@ static int __init imxnd_probe(struct device_d *dev)
>  		host->send_addr =3D send_addr_v1_v2;
>  		host->send_page =3D send_page_v1_v2;
>  		host->send_read_id =3D send_read_id_v1_v2;
> -		host->send_read_param =3D send_read_param_v1_v2; /* FIXME : to check */
> +		host->send_read_param =3D send_read_param_v1_v2;
>  		host->get_dev_status =3D get_dev_status_v1_v2;
>  		host->check_int =3D check_int_v1_v2;
>  	}
> -- =

> 1.8.3.1
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
