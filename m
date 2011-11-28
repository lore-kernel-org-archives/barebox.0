Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwrk-0001Wn-7d
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:47:08 +0000
Received: by qyk7 with SMTP id 7so863762qyk.36
 for <barebox@lists.infradead.org>; Mon, 28 Nov 2011 00:47:06 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1322469611-20173-3-git-send-email-s.hauer@pengutronix.de>
References: <1322469611-20173-1-git-send-email-s.hauer@pengutronix.de>
 <1322469611-20173-3-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:47:06 +0100
Message-ID: <CAJfOKBx_ej+YK0d37Ni_=6_Oa+SYOsri=Mwfa6u_06N5+pAh+w@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Re: [PATCH 2/2] mmc spi: compile fix
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox <barebox@lists.infradead.org>

2011/11/28 Sascha Hauer <s.hauer@pengutronix.de>:
> Without CRC support the mmc spi driver fails to compile with
> the following:
>
> drivers/mci/mci_spi.c:74:18: error: static declaration of 'crc7' follows =
non-static declaration
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> =A0drivers/mci/mci_spi.c | =A0 29 ++++++++++++-----------------
> =A01 files changed, 12 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
> index 124e49b..653910b 100644
> --- a/drivers/mci/mci_spi.c
> +++ b/drivers/mci/mci_spi.c
> @@ -64,23 +64,6 @@
> =A0#define RTOUT 3000000 /* 1 sec */
> =A0#define WTOUT 3000000 /* 1 sec */
>
> -#ifndef CONFIG_MMC_SPI_CRC_ON
> -/* Note that while the CRC, in general, is ignored in SPI mode, the very=
 first
> - * command must be followed by a valid CRC, since the card is not yet in=
 SPI mode.
> - * The CRC byte for a CMD0 command with a zero argument is a constant 0x=
4A. For
> - * simplicity, this CRC byte is always sent with every command.
> - */
> -
> -static inline u8 crc7(u8 crc, const u8 *buffer, size_t len)
> -{
> - =A0 =A0 =A0 /* This is the crc7 value for a CMD0 command with a zero ar=
gument.
> - =A0 =A0 =A0 =A0* It'll be left shifted and ored with '1' in mmc_spi_com=
mand_send
> - =A0 =A0 =A0 =A0* to give 0x95 (also known as the CMD0 constant CRC valu=
e...)
> - =A0 =A0 =A0 =A0*/
> - =A0 =A0 =A0 return 0x4A;
> -}
> -#endif
> -
> =A0struct mmc_spi_host {
> =A0 =A0 =A0 =A0struct mci_host mci;
> =A0 =A0 =A0 =A0struct spi_device =A0 =A0 =A0 *spi;
> @@ -141,6 +124,14 @@ mmc_spi_writebytes(struct mmc_spi_host *host, unsign=
ed len, void *data)
> =A0 =A0 =A0 =A0return status;
> =A0}
>
> +/*
> + * Note that while the CRC, in general, is ignored in SPI mode, the very=
 first
> + * command must be followed by a valid CRC, since the card is not yet in=
 SPI mode.
> + * The CRC byte for a CMD0 command with a zero argument is a constant 0x=
4A. For
> + * simplicity, this CRC byte is always sent with every command.
> + */
> +#define MMC_SPI_CMD0_CRC =A0 =A0 =A0 ((0x4a << 1) | 0x1)
> +
> =A0static int mmc_spi_command_send(struct mmc_spi_host *host, struct mci_=
cmd *cmd)
> =A0{
> =A0 =A0 =A0 =A0uint8_t r1;
> @@ -153,7 +144,11 @@ static int mmc_spi_command_send(struct mmc_spi_host =
*host, struct mci_cmd *cmd)
> =A0 =A0 =A0 =A0command[3] =3D cmd->cmdarg >> 16;
> =A0 =A0 =A0 =A0command[4] =3D cmd->cmdarg >> 8;
> =A0 =A0 =A0 =A0command[5] =3D cmd->cmdarg;
> +#ifdef CONFIG_MMC_SPI_CRC_ON
> =A0 =A0 =A0 =A0command[6] =3D (crc7(0, &command[1], 5) << 1) | 0x01;
> +#else
> + =A0 =A0 =A0 command[6] =3D MMC_SPI_CMD0_CRC;
> +#endif
>
> =A0 =A0 =A0 =A0mmc_spi_writebytes(host, 7, command);
>
> --
> 1.7.7.1
>

Sorry for that one. I did test it but should have missed something....

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
