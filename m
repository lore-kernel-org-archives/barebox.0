Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f171.google.com ([209.85.210.171])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrb2X-0004ic-VT
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 19:35:39 +0000
Received: by iyf13 with SMTP id 13so12437iyf.16
	for <barebox@lists.infradead.org>; Thu, 11 Aug 2011 12:35:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1312226629-12064-1-git-send-email-franck.jullien@gmail.com>
References: <1312226629-12064-1-git-send-email-franck.jullien@gmail.com>
Date: Thu, 11 Aug 2011 21:35:30 +0200
Message-ID: <CAJfOKBw4fhTJ4J4u4c9PrTQr3wk_7b28spGAvc3iA=D55OnVYA@mail.gmail.com>
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
Subject: Re: [PATCH][v2] nios2: Add Altera SPI master driver
To: barebox@lists.infradead.org

2011/8/1 Franck Jullien <franck.jullien@gmail.com>:
> From: Franck Jullien <franck.jullien@gmail.com>
>
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
> =A0arch/nios2/include/asm/spi.h | =A0 21 ++++
> =A0drivers/spi/Kconfig =A0 =A0 =A0 =A0 =A0| =A0 =A05 +
> =A0drivers/spi/Makefile =A0 =A0 =A0 =A0 | =A0 =A01 +
> =A0drivers/spi/altera_spi.c =A0 =A0 | =A0228 ++++++++++++++++++++++++++++=
++++++++++++++
> =A04 files changed, 255 insertions(+), 0 deletions(-)
> =A0create mode 100644 arch/nios2/include/asm/spi.h
> =A0create mode 100644 drivers/spi/altera_spi.c
>
> diff --git a/arch/nios2/include/asm/spi.h b/arch/nios2/include/asm/spi.h
> new file mode 100644
> index 0000000..4e576b9
> --- /dev/null
> +++ b/arch/nios2/include/asm/spi.h
> @@ -0,0 +1,21 @@
> +#ifndef __ALTERA_SPI_H_
> +#define __ALTERA_SPI_H_
> +
> +#include <spi/spi.h>
> +
> +struct spi_altera_master {
> + =A0 =A0 =A0 int =A0 =A0 num_chipselect;
> + =A0 =A0 =A0 int =A0 =A0 spi_mode;
> + =A0 =A0 =A0 int =A0 =A0 databits;
> + =A0 =A0 =A0 int =A0 =A0 speed;
> +};
> +
> +struct altera_spi {
> + =A0 =A0 =A0 struct spi_master =A0 =A0 =A0 master;
> + =A0 =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 databits;
> + =A0 =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 speed;
> + =A0 =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 mode;
> + =A0 =A0 =A0 void __iomem =A0 =A0 =A0 =A0 =A0 =A0*regs;
> +};
> +
> +#endif /*__ALTERA_SPI_H_*/
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 9ab03f6..c72493c 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -19,4 +19,9 @@ config DRIVER_SPI_IMX_2_3
> =A0 =A0 =A0 =A0depends on ARCH_IMX51 || ARCH_IMX53
> =A0 =A0 =A0 =A0default y
>
> +config DRIVER_SPI_ALTERA
> + =A0 =A0 =A0 bool "Altera SPI Master driver"
> + =A0 =A0 =A0 depends on NIOS2
> + =A0 =A0 =A0 depends on SPI
> +
> =A0endmenu
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index b2b2f67..90e141d 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -1,2 +1,3 @@
> =A0obj-$(CONFIG_SPI) +=3D spi.o
> =A0obj-$(CONFIG_DRIVER_SPI_IMX) +=3D imx_spi.o
> +obj-$(CONFIG_DRIVER_SPI_ALTERA) +=3D altera_spi.o
> diff --git a/drivers/spi/altera_spi.c b/drivers/spi/altera_spi.c
> new file mode 100644
> index 0000000..3ee6d00
> --- /dev/null
> +++ b/drivers/spi/altera_spi.c
> @@ -0,0 +1,228 @@
> +/*
> + * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
> + * Inspired from Thomas Chou Linux spi_altera.c driver
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <spi/spi.h>
> +#include <asm/io.h>
> +#include <asm/spi.h>
> +#include <asm/nios2-io.h>
> +
> +static int altera_spi_setup(struct spi_device *spi)
> +{
> + =A0 =A0 =A0 struct spi_master *master =3D spi->master;
> + =A0 =A0 =A0 struct device_d spi_dev =3D spi->dev;
> + =A0 =A0 =A0 struct altera_spi *altera_spi =3D container_of(master, stru=
ct altera_spi, master);
> +
> + =A0 =A0 =A0 if (spi->bits_per_word !=3D altera_spi->databits) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(master->dev, " master doesn't suppo=
rt %d bits per word requested by %s\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi->bits_per_word, spi_dev=
.name);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -1;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 if ((spi->mode & (SPI_CPHA | SPI_CPOL)) !=3D altera_spi->mo=
de) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(master->dev, " master doesn't suppo=
rt SPI_MODE%d requested by %s\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi->mode & (SPI_CPHA | SPI=
_CPOL), spi_dev.name);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -1;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 if (spi->max_speed_hz < altera_spi->speed) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(master->dev, " frequency is too hig=
h for %s\n", spi_dev.name);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -1;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 dev_dbg(master->dev, " mode 0x%08x, bits_per_word: %d, spee=
d: %d\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi->mode, spi->bits_per_word, altera_spi->=
speed);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +
> +static unsigned int altera_spi_xchg_single(struct altera_spi *altera_spi=
, unsigned int data)
> +{
> + =A0 =A0 =A0 struct nios_spi *nios_spi =3D altera_spi->regs;
> +
> + =A0 =A0 =A0 while (!(readl(&nios_spi->status) & NIOS_SPI_TRDY));
> + =A0 =A0 =A0 writel(data, &nios_spi->txdata);
> +
> + =A0 =A0 =A0 while (!(readl(&nios_spi->status) & NIOS_SPI_RRDY));
> +
> + =A0 =A0 =A0 return readl(&nios_spi->rxdata);
> +}
> +
> +/*
> + * When using SPI_CS_HIGH devices, only one device is allowed to be
> + * connected to the Altera SPI master. This limitation is due to the
> + * emulation of an active high CS by writing 0 to the slaveselect regist=
er
> + * (this produce a '1' to all CS pins).
> + */
> +
> +static void altera_spi_cs_active(struct spi_device *spi)
> +{
> + =A0 =A0 =A0 struct altera_spi *altera_spi =3D container_of(spi->master,=
 struct altera_spi, master);
> + =A0 =A0 =A0 struct nios_spi *nios_spi =3D altera_spi->regs;
> + =A0 =A0 =A0 uint32_t tmp;
> +
> + =A0 =A0 =A0 if (spi->mode & SPI_CS_HIGH) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 tmp =3D readw(&nios_spi->control);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writew(tmp & ~NIOS_SPI_SSO, &nios_spi->cont=
rol);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(0, &nios_spi->slaveselect);
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(1 << spi->chip_select, &nios_spi->sl=
aveselect);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 tmp =3D readl(&nios_spi->control);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(tmp | NIOS_SPI_SSO, &nios_spi->contr=
ol);
> + =A0 =A0 =A0 }
> +}
> +
> +static void altera_spi_cs_inactive(struct spi_device *spi)
> +{
> + =A0 =A0 =A0 struct altera_spi *altera_spi =3D container_of(spi->master,=
 struct altera_spi, master);
> + =A0 =A0 =A0 struct nios_spi *nios_spi =3D altera_spi->regs;
> + =A0 =A0 =A0 uint32_t tmp;
> +
> + =A0 =A0 =A0 if (spi->mode & SPI_CS_HIGH) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(1 << spi->chip_select, &nios_spi->sl=
aveselect);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 tmp =3D readl(&nios_spi->control);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(tmp | NIOS_SPI_SSO, &nios_spi->contr=
ol);
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 tmp =3D readw(&nios_spi->control);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 writew(tmp & ~NIOS_SPI_SSO, &nios_spi->cont=
rol);
> + =A0 =A0 =A0 }
> +}
> +
> +static unsigned altera_spi_do_xfer(struct spi_device *spi, struct spi_tr=
ansfer *t)
> +{
> + =A0 =A0 =A0 struct altera_spi *altera_spi =3D container_of(spi->master,=
 struct altera_spi, master);
> + =A0 =A0 =A0 int word_len =3D spi->bits_per_word;
> + =A0 =A0 =A0 unsigned retval =3D 0;
> + =A0 =A0 =A0 u32 txval;
> + =A0 =A0 =A0 u32 rxval;
> +
> + =A0 =A0 =A0 word_len =3D spi->bits_per_word;
> +
> + =A0 =A0 =A0 if (word_len <=3D 8) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const u8 *txbuf =3D t->tx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 u8 *rxbuf =3D t->rx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 int i =3D 0;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (i < t->len) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 txval =3D txbuf ? txbuf[i] =
: 0;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxval =3D altera_spi_xchg_s=
ingle(altera_spi, txval);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (rxbuf)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxbuf[i] =
=3D rxval;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 i++;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 retval++;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 } else if (word_len <=3D 16) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const u16 *txbuf =3D t->tx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 u16 *rxbuf =3D t->rx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 int i =3D 0;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (i < t->len >> 1) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 txval =3D txbuf ? txbuf[i] =
: 0;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxval =3D altera_spi_xchg_s=
ingle(altera_spi, txval);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (rxbuf)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxbuf[i] =
=3D rxval;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 i++;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 retval +=3D 2;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 } else if (word_len <=3D 32) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const u32 *txbuf =3D t->tx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 u32 *rxbuf =3D t->rx_buf;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 int i =3D 0;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (i < t->len >> 2) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 txval =3D txbuf ? txbuf[i] =
: 0;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxval =3D altera_spi_xchg_s=
ingle(altera_spi, txval);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (rxbuf)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rxbuf[i] =
=3D rxval;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 i++;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 retval +=3D 4;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return retval;
> +}
> +
> +static int altera_spi_transfer(struct spi_device *spi, struct spi_messag=
e *mesg)
> +{
> + =A0 =A0 =A0 struct altera_spi *altera_spi =3D container_of(spi->master,=
 struct altera_spi, master);
> + =A0 =A0 =A0 struct nios_spi *nios_spi =3D altera_spi->regs;
> + =A0 =A0 =A0 struct spi_transfer *t;
> +
> + =A0 =A0 =A0 altera_spi_cs_active(spi);
> +
> + =A0 =A0 =A0 mesg->actual_length =3D 0;
> +
> + =A0 =A0 =A0 list_for_each_entry(t, &mesg->transfers, transfer_list) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 mesg->actual_length +=3D altera_spi_do_xfer=
(spi, t);
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 /* Wait the end of any pending transfert */
> + =A0 =A0 =A0 while ((readl(&nios_spi->status) & NIOS_SPI_TMT) =3D=3D 0);
> +
> + =A0 =A0 =A0 altera_spi_cs_inactive(spi);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static int altera_spi_probe(struct device_d *dev)
> +{
> + =A0 =A0 =A0 struct spi_master *master;
> + =A0 =A0 =A0 struct altera_spi *altera_spi;
> + =A0 =A0 =A0 struct spi_altera_master *pdata =3D dev->platform_data;
> + =A0 =A0 =A0 struct nios_spi *nios_spi;
> +
> + =A0 =A0 =A0 altera_spi =3D xzalloc(sizeof(*altera_spi));
> +
> + =A0 =A0 =A0 master =3D &altera_spi->master;
> + =A0 =A0 =A0 master->dev =3D dev;
> +
> + =A0 =A0 =A0 master->setup =3D altera_spi_setup;
> + =A0 =A0 =A0 master->transfer =3D altera_spi_transfer;
> + =A0 =A0 =A0 master->num_chipselect =3D pdata->num_chipselect;
> +
> + =A0 =A0 =A0 altera_spi->regs =3D dev_request_mem_region(dev, 0);
> + =A0 =A0 =A0 altera_spi->databits =3D pdata->databits;
> + =A0 =A0 =A0 altera_spi->speed =3D pdata->speed;
> + =A0 =A0 =A0 altera_spi->mode =3D pdata->spi_mode;
> +
> + =A0 =A0 =A0 nios_spi =3D altera_spi->regs;
> + =A0 =A0 =A0 writel(0, &nios_spi->slaveselect);
> + =A0 =A0 =A0 writel(0, &nios_spi->control);
> +
> + =A0 =A0 =A0 spi_register_master(master);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static struct driver_d altera_spi_driver =3D {
> + =A0 =A0 =A0 .name =A0=3D "altera_spi",
> + =A0 =A0 =A0 .probe =3D altera_spi_probe,
> +};
> +
> +static int altera_spi_driver_init(void)
> +{
> + =A0 =A0 =A0 return register_driver(&altera_spi_driver);
> +}
> +
> +device_initcall(altera_spi_driver_init);
> --
> 1.7.6
>
>

Hello,

any chance to get this one in next ?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
