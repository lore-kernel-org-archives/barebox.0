Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f43.google.com ([209.85.210.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnYDv-0004JG-Bn
	for barebox@lists.infradead.org; Sun, 31 Jul 2011 15:46:43 +0000
Received: by pzk1 with SMTP id 1so9816727pzk.16
	for <barebox@lists.infradead.org>; Sun, 31 Jul 2011 08:46:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1312057472-31809-1-git-send-email-franck.jullien@gmail.com>
References: <1312057472-31809-1-git-send-email-franck.jullien@gmail.com>
Date: Sun, 31 Jul 2011 17:46:34 +0200
Message-ID: <CAFfN3gUyF-ptBO7y4P2pufYoVrF=eArZaQT5JFEgC3S3Otjw=Q@mail.gmail.com>
From: Hubert Feurstein <h.feurstein@gmail.com>
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
Subject: Re: [PATCH] [RFC] nor: Add SPI flash chips driver
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

please fix the errors reported by ./scripts/checkpatch.pl.

Regards
Hubert

2011/7/30  <franck.jullien@gmail.com>:
> From: Franck Jullien <franck.jullien@gmail.com>
>
> This patch adds the m25p80 driver. It has been ported from
> Linux. MTD code has been removed. It has been tested with
> a m25p40 chip and the Altera SPI master driver.
>
> This driver has been placed in drivers/nor and CFI config
> has been moved to a submenu in Kconfig. Should I create a CFI
> folder in drivers/nor ?
>
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
> =A0drivers/nor/Kconfig =A0| =A0 41 +++-
> =A0drivers/nor/Makefile | =A0 =A01 +
> =A0drivers/nor/m25p80.c | =A0829 ++++++++++++++++++++++++++++++++++++++++=
++++++++++
> =A0drivers/nor/m25p80.h | =A0 90 ++++++
> =A0include/spi/flash.h =A0| =A0 30 ++
> =A05 files changed, 986 insertions(+), 5 deletions(-)
> =A0create mode 100644 drivers/nor/m25p80.c
> =A0create mode 100644 drivers/nor/m25p80.h
> =A0create mode 100644 include/spi/flash.h
>
> diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
> index 43a6b84..84ce0d0 100644
> --- a/drivers/nor/Kconfig
> +++ b/drivers/nor/Kconfig
> @@ -1,14 +1,16 @@
> =A0menu "flash drivers =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 "
>
> -config HAS_CFI
> - =A0 =A0 =A0 bool
> -
> -config DRIVER_CFI
> - =A0 =A0 =A0 bool "cfi flash driver"
> +menuconfig DRIVER_CFI
> + =A0 =A0 =A0 bool "CFI =A0 =A0 =A0 =A0 =A0 =A0"
> =A0 =A0 =A0 =A0help
> =A0 =A0 =A0 =A0 =A0If you have NOR Flash devices connected to your system=
 and wish
> =A0 =A0 =A0 =A0 =A0to use them say yes here.
>
> +if DRIVER_CFI
> +
> +config HAS_CFI
> + =A0 =A0 =A0 bool
> +
> =A0config DRIVER_CFI_INTEL
> =A0 =A0 =A0 =A0default y
> =A0 =A0 =A0 =A0depends on DRIVER_CFI
> @@ -55,4 +57,33 @@ config CFI_BUFFER_WRITE
> =A0 =A0 =A0 =A0bool "use cfi driver with buffer write"
> =A0 =A0 =A0 =A0depends on DRIVER_CFI || DRIVER_CFI
>
> +endif
> +
> +config MTD_M25P80
> + =A0 =A0 =A0 tristate "SPI Flash chips (AT26DF, M25P, W25X, ...)"
> + =A0 =A0 =A0 depends on SPI
> + =A0 =A0 =A0 help
> + =A0 =A0 =A0 =A0 This enables access to most modern SPI flash chips, use=
d for
> + =A0 =A0 =A0 =A0 program and data storage. =A0 Series supported include =
Atmel AT26DF,
> + =A0 =A0 =A0 =A0 Spansion S25SL, SST 25VF, ST M25P, and Winbond W25X. =
=A0Other chips
> + =A0 =A0 =A0 =A0 are supported as well. =A0See the driver source for the=
 current list,
> + =A0 =A0 =A0 =A0 or to add other chips.
> +
> + =A0 =A0 =A0 =A0 Note that the original DataFlash chips (AT45 series, no=
t AT26DF),
> + =A0 =A0 =A0 =A0 need an entirely different driver.
> +
> + =A0 =A0 =A0 =A0 Set up your spi devices with the right board-specific p=
latform data,
> + =A0 =A0 =A0 =A0 if you want to specify device partitioning or to use a =
device which
> + =A0 =A0 =A0 =A0 doesn't support the JEDEC ID instruction.
> +
> +config MTD_SST25L
> + =A0 =A0 =A0 tristate "Support SST25L (non JEDEC) SPI Flash chips"
> + =A0 =A0 =A0 depends on MTD_M25P80
> + =A0 =A0 =A0 help
> + =A0 =A0 =A0 =A0 This enables access to the non JEDEC SST25L SPI flash c=
hips, used
> + =A0 =A0 =A0 =A0 for program and data storage.
> +
> + =A0 =A0 =A0 =A0 Set up your spi devices with the right board-specific p=
latform data,
> + =A0 =A0 =A0 =A0 if you want to specify device partitioning.
> +
> =A0endmenu
> diff --git a/drivers/nor/Makefile b/drivers/nor/Makefile
> index d255043..d676c55 100644
> --- a/drivers/nor/Makefile
> +++ b/drivers/nor/Makefile
> @@ -1,4 +1,5 @@
> =A0obj-$(CONFIG_DRIVER_CFI) +=3D cfi_flash.o
> =A0obj-$(CONFIG_DRIVER_CFI_INTEL) +=3D cfi_flash_intel.o
> =A0obj-$(CONFIG_DRIVER_CFI_AMD) +=3D cfi_flash_amd.o
> +obj-$(CONFIG_MTD_M25P80) +=3D m25p80.o
>
> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> new file mode 100644
> index 0000000..9c57f16
> --- /dev/null
> +++ b/drivers/nor/m25p80.c
> @@ -0,0 +1,829 @@
> +/*
> + * MTD SPI driver for ST M25Pxx (and similar) serial flash chips
> + *
> + * Author: Mike Lavender, mike@steroidmicros.com
> + * Adapted to barebox : =A0Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * Copyright (c) 2005, Intec Automation Inc.
> + *
> + * Some parts are based on lart.c by Abraham Van Der Merwe
> + *
> + * Cleaned up and generalized based on mtd_dataflash.c
> + *
> + * This code is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <spi/spi.h>
> +#include <spi/flash.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <linux/err.h>
> +#include <clock.h>
> +#include <linux/mtd/mtd.h>
> +#include <progress.h>
> +#include "m25p80.h"
> +
> +/***********************************************************************=
*****/
> +
> +/*
> + * Internal helper functions
> + */
> +
> +/*
> + * Read the status register, returning its value in the location
> + * Return the status register value.
> + * Returns negative if error occurred.
> + */
> +static int read_sr(struct m25p *flash)
> +{
> + =A0 =A0 =A0 ssize_t retval;
> + =A0 =A0 =A0 u8 code =3D OPCODE_RDSR;
> + =A0 =A0 =A0 u8 val;
> +
> + =A0 =A0 =A0 retval =3D spi_write_then_read(flash->spi, &code, 1, &val, =
1);
> +
> + =A0 =A0 =A0 if (retval < 0) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_err(&flash->spi->dev, "error %d reading=
 SR\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (int) retva=
l);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return retval;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return val;
> +}
> +
> +/*
> + * Write status register 1 byte
> + * Returns negative if error occurred.
> + */
> +static int write_sr(struct m25p *flash, u8 val)
> +{
> + =A0 =A0 =A0 flash->command[0] =3D OPCODE_WRSR;
> + =A0 =A0 =A0 flash->command[1] =3D val;
> +
> + =A0 =A0 =A0 return spi_write(flash->spi, flash->command, 2);
> +}
> +
> +/*
> + * Set write enable latch with Write Enable command.
> + * Returns negative if error occurred.
> + */
> +static inline int write_enable(struct m25p *flash)
> +{
> + =A0 =A0 =A0 u8 =A0 =A0 =A0code =3D OPCODE_WREN;
> +
> + =A0 =A0 =A0 return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Send write disble instruction to the chip.
> + */
> +static inline int write_disable(struct m25p *flash)
> +{
> + =A0 =A0 =A0 u8 =A0 =A0 =A0code =3D OPCODE_WRDI;
> +
> + =A0 =A0 =A0 return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Enable/disable 4-byte addressing mode.
> + */
> +static inline int set_4byte(struct m25p *flash, int enable)
> +{
> + =A0 =A0 =A0 u8 =A0 =A0 =A0code =3D enable ? OPCODE_EN4B : OPCODE_EX4B;
> +
> + =A0 =A0 =A0 return spi_write_then_read(flash->spi, &code, 1, NULL, 0);
> +}
> +
> +/*
> + * Service routine to read status register until ready, or timeout occur=
s.
> + * Returns non-zero if error.
> + */
> +static int wait_till_ready(struct m25p *flash)
> +{
> + =A0 =A0 =A0 int sr;
> + =A0 =A0 =A0 uint64_t timer_start;
> +
> + =A0 =A0 =A0 timer_start =3D get_time_ns();
> +
> + =A0 =A0 =A0 do {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if ((sr =3D read_sr(flash)) < 0)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 else if (!(sr & SR_WIP))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;
> +
> + =A0 =A0 =A0 } while (!(is_timeout(timer_start, MAX_READY_WAIT * SECOND)=
));
> +
> + =A0 =A0 =A0 return 1;
> +}
> +
> +/*
> + * Erase the whole flash memory
> + *
> + * Returns 0 if successful, non-zero otherwise.
> + */
> +static int erase_chip(struct m25p *flash)
> +{
> + =A0 =A0 =A0 debug("%s: %s %lldKiB\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_name(&flash->spi->dev), __func__,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 (long long)(flash->size >> 10));
> +
> + =A0 =A0 =A0 /* Wait until finished previous write command. */
> + =A0 =A0 =A0 if (wait_till_ready(flash))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 1;
> +
> + =A0 =A0 =A0 /* Send write enable, then erase commands. */
> + =A0 =A0 =A0 write_enable(flash);
> +
> + =A0 =A0 =A0 /* Set up command buffer. */
> + =A0 =A0 =A0 flash->command[0] =3D OPCODE_CHIP_ERASE;
> +
> + =A0 =A0 =A0 spi_write(flash->spi, flash->command, 1);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static void m25p_addr2cmd(struct m25p *flash, unsigned int addr, u8 *cmd)
> +{
> + =A0 =A0 =A0 /* opcode is in cmd[0] */
> + =A0 =A0 =A0 cmd[1] =3D addr >> (flash->addr_width * 8 - =A08);
> + =A0 =A0 =A0 cmd[2] =3D addr >> (flash->addr_width * 8 - 16);
> + =A0 =A0 =A0 cmd[3] =3D addr >> (flash->addr_width * 8 - 24);
> + =A0 =A0 =A0 cmd[4] =3D addr >> (flash->addr_width * 8 - 32);
> +}
> +
> +static int m25p_cmdsz(struct m25p *flash)
> +{
> + =A0 =A0 =A0 return 1 + flash->addr_width;
> +}
> +
> +/*
> + * Erase one sector of flash memory at offset ``offset'' which is any
> + * address within the sector which should be erased.
> + *
> + * Returns 0 if successful, non-zero otherwise.
> + */
> +static int erase_sector(struct m25p *flash, u32 offset)
> +{
> + =A0 =A0 =A0 debug("%s: %s %dKiB at 0x%08x\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_name(&flash->spi->dev), __func__,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->erasesize / 1024, offset);
> +
> + =A0 =A0 =A0 /* Wait until finished previous write command. */
> + =A0 =A0 =A0 if (wait_till_ready(flash))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 1;
> +
> + =A0 =A0 =A0 /* Send write enable, then erase commands. */
> + =A0 =A0 =A0 write_enable(flash);
> +
> + =A0 =A0 =A0 /* Set up command buffer. */
> + =A0 =A0 =A0 flash->command[0] =3D flash->erase_opcode;
> + =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command);
> +
> + =A0 =A0 =A0 spi_write(flash->spi, flash->command, m25p_cmdsz(flash));
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +/*
> + * Erase an address range on the flash chip. =A0The address range may ex=
tend
> + * one or more erase sectors. =A0Return an error is there is a problem e=
rasing.
> + */
> +static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned lo=
ng offset)
> +{
> + =A0 =A0 =A0 struct m25p *flash =3D cdev->priv;
> + =A0 =A0 =A0 u32 addr, len;
> + =A0 =A0 =A0 u32 start_sector;
> + =A0 =A0 =A0 u32 end_sector;
> + =A0 =A0 =A0 u32 progress =3D 0;
> +
> + =A0 =A0 =A0 debug("%s: %s %s 0x%llx, len %lld\n",
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_name(&flash->spi->dev), __func__, "at",
> + =A0 =A0 =A0 =A0 =A0 =A0 (long long)offset, (long long)count);
> +
> + =A0 =A0 =A0 /* sanity checks */
> + =A0 =A0 =A0 if (offset + count > flash->size)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> +
> + =A0 =A0 =A0 addr =3D offset;
> + =A0 =A0 =A0 len =3D count;
> +
> + =A0 =A0 =A0 start_sector =3D offset / flash->erasesize;
> + =A0 =A0 =A0 end_sector =3D (offset + count - 1) / flash->erasesize;
> + =A0 =A0 =A0 init_progression_bar(end_sector - start_sector);
> +
> + =A0 =A0 =A0 /* whole-chip erase? */
> + =A0 =A0 =A0 if (len =3D=3D flash->size) {
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 show_progress(start_sector);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (erase_chip(flash))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 show_progress(end_sector);
> +
> + =A0 =A0 =A0 /* REVISIT in some cases we could speed up erasing large re=
gions
> + =A0 =A0 =A0 =A0* by using OPCODE_SE instead of OPCODE_BE_4K. =A0We may =
have set up
> + =A0 =A0 =A0 =A0* to use "small sector erase", but that's not always opt=
imal.
> + =A0 =A0 =A0 =A0*/
> +
> + =A0 =A0 =A0 /* "sector"-at-a-time erase */
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 while (len) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (erase_sector(flash, add=
r))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EIO;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addr +=3D flash->erasesize;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 len -=3D flash->erasesize;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 show_progress(progress++);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 printf("\n");
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +ssize_t m25p80_read(struct cdev *cdev, void *buf, size_t count, ulong of=
fset, ulong flags)
> +{
> + =A0 =A0 =A0 struct m25p *flash =3D cdev->priv;
> + =A0 =A0 =A0 struct spi_transfer t[2];
> + =A0 =A0 =A0 struct spi_message m;
> + =A0 =A0 =A0 ssize_t retlen;
> +
> + =A0 =A0 =A0 /* sanity checks */
> + =A0 =A0 =A0 if (!count)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;
> +
> + =A0 =A0 =A0 if (offset + count > flash->size)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> +
> + =A0 =A0 =A0 spi_message_init(&m);
> + =A0 =A0 =A0 memset(t, 0, (sizeof t));
> +
> + =A0 =A0 =A0 /* NOTE:
> + =A0 =A0 =A0 =A0* OPCODE_FAST_READ (if available) is faster.
> + =A0 =A0 =A0 =A0* Should add 1 byte DUMMY_BYTE.
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 t[0].tx_buf =3D flash->command;
> + =A0 =A0 =A0 t[0].len =3D m25p_cmdsz(flash) + FAST_READ_DUMMY_BYTE;
> + =A0 =A0 =A0 spi_message_add_tail(&t[0], &m);
> +
> + =A0 =A0 =A0 t[1].rx_buf =3D buf;
> + =A0 =A0 =A0 t[1].len =3D count;
> + =A0 =A0 =A0 spi_message_add_tail(&t[1], &m);
> +
> + =A0 =A0 =A0 /* Byte count starts at zero. */
> + =A0 =A0 =A0 retlen =3D 0;
> +
> + =A0 =A0 =A0 /* Wait till previous write/erase is done. */
> + =A0 =A0 =A0 if (wait_till_ready(flash))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ETIME;
> +
> + =A0 =A0 =A0 /* FIXME switch to OPCODE_FAST_READ. =A0It's required for h=
igher
> + =A0 =A0 =A0 =A0* clocks; and at this writing, every chip this driver ha=
ndles
> + =A0 =A0 =A0 =A0* supports that opcode.
> + =A0 =A0 =A0 =A0*/
> +
> + =A0 =A0 =A0 /* Set up the write data buffer. */
> + =A0 =A0 =A0 flash->command[0] =3D OPCODE_READ;
> + =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command);
> +
> + =A0 =A0 =A0 spi_sync(flash->spi, &m);
> +
> + =A0 =A0 =A0 retlen =3D m.actual_length - m25p_cmdsz(flash) - FAST_READ_=
DUMMY_BYTE;
> +
> + =A0 =A0 =A0 return retlen;
> +}
> +
> +ssize_t m25p80_write(struct cdev *cdev, const void *buf, size_t count, u=
long offset, ulong flags)
> +{
> + =A0 =A0 =A0 struct m25p *flash =3D cdev->priv;
> + =A0 =A0 =A0 struct spi_transfer t[2];
> + =A0 =A0 =A0 struct spi_message m;
> + =A0 =A0 =A0 ssize_t retlen =3D 0;
> + =A0 =A0 =A0 u32 page_offset, page_size;
> +
> + =A0 =A0 =A0 debug("m25p80_write %ld bytes at 0x%08lX\n", (unsigned long=
)count, offset);
> +
> + =A0 =A0 =A0 if (offset + count > flash->size)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> +
> + =A0 =A0 =A0 spi_message_init(&m);
> + =A0 =A0 =A0 memset(t, 0, (sizeof t));
> +
> + =A0 =A0 =A0 t[0].tx_buf =3D flash->command;
> + =A0 =A0 =A0 t[0].len =3D m25p_cmdsz(flash);
> + =A0 =A0 =A0 spi_message_add_tail(&t[0], &m);
> +
> + =A0 =A0 =A0 t[1].tx_buf =3D buf;
> + =A0 =A0 =A0 spi_message_add_tail(&t[1], &m);
> +
> + =A0 =A0 =A0 /* Wait until finished previous write command. */
> + =A0 =A0 =A0 if (wait_till_ready(flash))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ETIME;
> +
> + =A0 =A0 =A0 write_enable(flash);
> +
> + =A0 =A0 =A0 /* Set up the opcode in the write buffer. */
> + =A0 =A0 =A0 flash->command[0] =3D OPCODE_PP;
> + =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command);
> +
> + =A0 =A0 =A0 page_offset =3D offset & (flash->page_size - 1);
> +
> + =A0 =A0 =A0 /* do all the bytes fit onto one page? */
> + =A0 =A0 =A0 if (page_offset + count <=3D flash->page_size) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D count;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen =3D m.actual_length - m25p_cmdsz(fla=
sh);
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 u32 i;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* the size of data remaining on the first =
page */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 page_size =3D flash->page_size - page_offse=
t;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D page_size;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen =3D m.actual_length - m25p_cmdsz(fla=
sh);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* write everything in flash->page_size chu=
nks */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 for (i =3D page_size; i < count; i +=3D pag=
e_size) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 page_size =3D count - i;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (page_size > flash->page=
_size)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 page_size =
=3D flash->page_size;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* write the next page to f=
lash */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 m25p_addr2cmd(flash, offset=
 + i, flash->command);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].tx_buf =3D buf + i;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D page_size;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 wait_till_ready(flash);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 write_enable(flash);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen +=3D m.actual_length=
 - m25p_cmdsz(flash);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 return retlen;
> +}
> +#ifdef CONFIG_MTD_SST25L
> +ssize_t sst_write(struct cdev *cdev, const void *buf, size_t count, ulon=
g offset, ulong flags)
> +{
> + =A0 =A0 =A0 struct m25p *flash =3D cdev->priv;
> + =A0 =A0 =A0 struct spi_transfer t[2];
> + =A0 =A0 =A0 struct spi_message m;
> + =A0 =A0 =A0 size_t actual;
> + =A0 =A0 =A0 ssize_t retlen;
> + =A0 =A0 =A0 int cmd_sz, ret;
> +
> + =A0 =A0 =A0 debug("sst_write %ld bytes at 0x%08lX\n", (unsigned long)co=
unt, offset);
> +
> + =A0 =A0 =A0 retlen =3D 0;
> +
> + =A0 =A0 =A0 /* sanity checks */
> + =A0 =A0 =A0 if (!count)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;
> +
> + =A0 =A0 =A0 if (offset + count > flash->size)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -EINVAL;
> +
> + =A0 =A0 =A0 spi_message_init(&m);
> + =A0 =A0 =A0 memset(t, 0, (sizeof t));
> +
> + =A0 =A0 =A0 t[0].tx_buf =3D flash->command;
> + =A0 =A0 =A0 t[0].len =3D m25p_cmdsz(flash);
> + =A0 =A0 =A0 spi_message_add_tail(&t[0], &m);
> +
> + =A0 =A0 =A0 t[1].tx_buf =3D buf;
> + =A0 =A0 =A0 spi_message_add_tail(&t[1], &m);
> +
> + =A0 =A0 =A0 /* Wait until finished previous write command. */
> + =A0 =A0 =A0 ret =3D wait_till_ready(flash);
> + =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto time_out;
> +
> + =A0 =A0 =A0 write_enable(flash);
> +
> + =A0 =A0 =A0 actual =3D offset % 2;
> + =A0 =A0 =A0 /* Start write from odd address. */
> + =A0 =A0 =A0 if (actual) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->command[0] =3D OPCODE_BP;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command=
);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* write one byte. */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D 1;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D wait_till_ready(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto time_out;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen +=3D m.actual_length - m25p_cmdsz(fl=
ash);
> + =A0 =A0 =A0 }
> + =A0 =A0 =A0 offset +=3D actual;
> +
> + =A0 =A0 =A0 flash->command[0] =3D OPCODE_AAI_WP;
> + =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command);
> +
> + =A0 =A0 =A0 /* Write out most of the data here. */
> + =A0 =A0 =A0 cmd_sz =3D m25p_cmdsz(flash);
> + =A0 =A0 =A0 for (; actual < count - 1; actual +=3D 2) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[0].len =3D cmd_sz;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* write two bytes. */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D 2;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].tx_buf =3D buf + actual;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D wait_till_ready(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto time_out;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen +=3D m.actual_length - cmd_sz;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 cmd_sz =3D 1;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 offset +=3D 2;
> + =A0 =A0 =A0 }
> + =A0 =A0 =A0 write_disable(flash);
> + =A0 =A0 =A0 ret =3D wait_till_ready(flash);
> + =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto time_out;
> +
> + =A0 =A0 =A0 /* Write out trailing byte if it exists. */
> + =A0 =A0 =A0 if (actual !=3D count) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 write_enable(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->command[0] =3D OPCODE_BP;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 m25p_addr2cmd(flash, offset, flash->command=
);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[0].len =3D m25p_cmdsz(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].len =3D 1;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 t[1].tx_buf =3D buf + actual;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 spi_sync(flash->spi, &m);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 ret =3D wait_till_ready(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (ret)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 goto time_out;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 retlen +=3D m.actual_length - m25p_cmdsz(fl=
ash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 write_disable(flash);
> + =A0 =A0 =A0 }
> +
> +time_out:
> + =A0 =A0 =A0 return retlen;
> +}
> +#endif
> +
> +static void m25p80_info(struct device_d *dev)
> +{
> + =A0 =A0 =A0 struct m25p =A0 =A0 =A0 =A0 =A0 =A0 *flash =3D dev->priv;
> + =A0 =A0 =A0 struct flash_info =A0 =A0 =A0 *info =3D flash->info;
> +
> + =A0 =A0 =A0 printf("Flash type =A0 =A0 =A0 =A0: %s\n", flash->name);
> + =A0 =A0 =A0 printf("Size =A0 =A0 =A0 =A0 =A0 =A0 =A0: %lldKiB\n", (long=
 long)flash->size / 1024);
> + =A0 =A0 =A0 printf("Number of sectors : %d\n", info->n_sectors);
> + =A0 =A0 =A0 printf("Sector size =A0 =A0 =A0 : %dKiB\n", info->sector_si=
ze / 1024);
> + =A0 =A0 =A0 printf("\n");
> +}
> +
> +
> +/***********************************************************************=
*****/
> +
> +/*
> + * SPI device driver setup and teardown
> + */
> +
> +#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags) =A0 =
=A0 \
> + =A0 =A0 =A0 ((unsigned long)&(struct flash_info) { =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .jedec_id =3D (_jedec_id), =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .ext_id =3D (_ext_id), =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .sector_size =3D (_sector_size), =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .n_sectors =3D (_n_sectors), =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .page_size =3D 256, =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .flags =3D (_flags), =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 })
> +
> +#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width) =
=A0\
> + =A0 =A0 =A0 ((unsigned long)&(struct flash_info) { =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .sector_size =3D (_sector_size), =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .n_sectors =3D (_n_sectors), =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .page_size =3D (_page_size), =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .addr_width =3D (_addr_width), =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 .flags =3D M25P_NO_ERASE, =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 \
> + =A0 =A0 =A0 })
> +
> +/* NOTE: double check command sets and memory organization when you add
> + * more flash chips. =A0This current list focusses on newer chips, which
> + * have been converging on command sets which including JEDEC ID.
> + */
> +static const struct spi_device_id m25p_ids[] =3D {
> + =A0 =A0 =A0 /* Atmel -- some are (confusingly) marketed as "DataFlash" =
*/
> + =A0 =A0 =A0 { "at25fs010", =A0INFO(0x1f6601, 0, 32 * 1024, =A0 4, SECT_=
4K) },
> + =A0 =A0 =A0 { "at25fs040", =A0INFO(0x1f6604, 0, 64 * 1024, =A0 8, SECT_=
4K) },
> +
> + =A0 =A0 =A0 { "at25df041a", INFO(0x1f4401, 0, 64 * 1024, =A0 8, SECT_4K=
) },
> + =A0 =A0 =A0 { "at25df641", =A0INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K=
) },
> +
> + =A0 =A0 =A0 { "at26f004", =A0 INFO(0x1f0400, 0, 64 * 1024, =A08, SECT_4=
K) },
> + =A0 =A0 =A0 { "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
> + =A0 =A0 =A0 { "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
> + =A0 =A0 =A0 { "at26df321", =A0INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K)=
 },
> +
> + =A0 =A0 =A0 /* EON -- en25xxx */
> + =A0 =A0 =A0 { "en25f32", INFO(0x1c3116, 0, 64 * 1024, =A064, SECT_4K) },
> + =A0 =A0 =A0 { "en25p32", INFO(0x1c2016, 0, 64 * 1024, =A064, 0) },
> + =A0 =A0 =A0 { "en25p64", INFO(0x1c2017, 0, 64 * 1024, 128, 0) },
> +
> + =A0 =A0 =A0 /* Intel/Numonyx -- xxxs33b */
> + =A0 =A0 =A0 { "160s33b", =A0INFO(0x898911, 0, 64 * 1024, =A032, 0) },
> + =A0 =A0 =A0 { "320s33b", =A0INFO(0x898912, 0, 64 * 1024, =A064, 0) },
> + =A0 =A0 =A0 { "640s33b", =A0INFO(0x898913, 0, 64 * 1024, 128, 0) },
> +
> + =A0 =A0 =A0 /* Macronix */
> + =A0 =A0 =A0 { "mx25l4005a", =A0INFO(0xc22013, 0, 64 * 1024, =A0 8, SECT=
_4K) },
> + =A0 =A0 =A0 { "mx25l8005", =A0 INFO(0xc22014, 0, 64 * 1024, =A016, 0) },
> + =A0 =A0 =A0 { "mx25l3205d", =A0INFO(0xc22016, 0, 64 * 1024, =A064, 0) },
> + =A0 =A0 =A0 { "mx25l6405d", =A0INFO(0xc22017, 0, 64 * 1024, 128, 0) },
> + =A0 =A0 =A0 { "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
> + =A0 =A0 =A0 { "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
> + =A0 =A0 =A0 { "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, 0) },
> + =A0 =A0 =A0 { "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
> +
> + =A0 =A0 =A0 /* Spansion -- single (large) sector size only, at least
> + =A0 =A0 =A0 =A0* for the chips listed here (without boot sectors).
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 { "s25sl004a", =A0INFO(0x010212, =A0 =A0 =A00, =A064 * 1024=
, =A0 8, 0) },
> + =A0 =A0 =A0 { "s25sl008a", =A0INFO(0x010213, =A0 =A0 =A00, =A064 * 1024=
, =A016, 0) },
> + =A0 =A0 =A0 { "s25sl016a", =A0INFO(0x010214, =A0 =A0 =A00, =A064 * 1024=
, =A032, 0) },
> + =A0 =A0 =A0 { "s25sl032a", =A0INFO(0x010215, =A0 =A0 =A00, =A064 * 1024=
, =A064, 0) },
> + =A0 =A0 =A0 { "s25sl032p", =A0INFO(0x010215, 0x4d00, =A064 * 1024, =A06=
4, SECT_4K) },
> + =A0 =A0 =A0 { "s25sl064a", =A0INFO(0x010216, =A0 =A0 =A00, =A064 * 1024=
, 128, 0) },
> + =A0 =A0 =A0 { "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024, =A064, 0=
) },
> + =A0 =A0 =A0 { "s25sl12801", INFO(0x012018, 0x0301, =A064 * 1024, 256, 0=
) },
> + =A0 =A0 =A0 { "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024, =A064, 0=
) },
> + =A0 =A0 =A0 { "s25fl129p1", INFO(0x012018, 0x4d01, =A064 * 1024, 256, 0=
) },
> + =A0 =A0 =A0 { "s25fl016k", =A0INFO(0xef4015, =A0 =A0 =A00, =A064 * 1024=
, =A032, SECT_4K) },
> + =A0 =A0 =A0 { "s25fl064k", =A0INFO(0xef4017, =A0 =A0 =A00, =A064 * 1024=
, 128, SECT_4K) },
> +
> + =A0 =A0 =A0 /* SST -- large erase sizes are "overlays", "sectors" are 4=
K */
> + =A0 =A0 =A0 { "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024, =A08, SECT_4K=
) },
> + =A0 =A0 =A0 { "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K) =
},
> + =A0 =A0 =A0 { "sst25vf016b", INFO(0xbf2541, 0, 64 * 1024, 32, SECT_4K) =
},
> + =A0 =A0 =A0 { "sst25vf032b", INFO(0xbf254a, 0, 64 * 1024, 64, SECT_4K) =
},
> + =A0 =A0 =A0 { "sst25wf512", =A0INFO(0xbf2501, 0, 64 * 1024, =A01, SECT_=
4K) },
> + =A0 =A0 =A0 { "sst25wf010", =A0INFO(0xbf2502, 0, 64 * 1024, =A02, SECT_=
4K) },
> + =A0 =A0 =A0 { "sst25wf020", =A0INFO(0xbf2503, 0, 64 * 1024, =A04, SECT_=
4K) },
> + =A0 =A0 =A0 { "sst25wf040", =A0INFO(0xbf2504, 0, 64 * 1024, =A08, SECT_=
4K) },
> +
> + =A0 =A0 =A0 /* ST Microelectronics -- newer production may have feature=
 updates */
> + =A0 =A0 =A0 { "m25p05", =A0INFO(0x202010, =A00, =A032 * 1024, =A0 2, 0)=
 },
> + =A0 =A0 =A0 { "m25p10", =A0INFO(0x202011, =A00, =A032 * 1024, =A0 4, 0)=
 },
> + =A0 =A0 =A0 { "m25p20", =A0INFO(0x202012, =A00, =A064 * 1024, =A0 4, 0)=
 },
> + =A0 =A0 =A0 { "m25p40", =A0INFO(0x202013, =A00, =A064 * 1024, =A0 8, 0)=
 },
> + =A0 =A0 =A0 { "m25p80", =A0INFO(0x202014, =A00, =A064 * 1024, =A016, 0)=
 },
> + =A0 =A0 =A0 { "m25p16", =A0INFO(0x202015, =A00, =A064 * 1024, =A032, 0)=
 },
> + =A0 =A0 =A0 { "m25p32", =A0INFO(0x202016, =A00, =A064 * 1024, =A064, 0)=
 },
> + =A0 =A0 =A0 { "m25p64", =A0INFO(0x202017, =A00, =A064 * 1024, 128, 0) },
> + =A0 =A0 =A0 { "m25p128", INFO(0x202018, =A00, 256 * 1024, =A064, 0) },
> +
> + =A0 =A0 =A0 { "m25p05-nonjedec", =A0INFO(0, 0, =A032 * 1024, =A0 2, 0) =
},
> + =A0 =A0 =A0 { "m25p10-nonjedec", =A0INFO(0, 0, =A032 * 1024, =A0 4, 0) =
},
> + =A0 =A0 =A0 { "m25p20-nonjedec", =A0INFO(0, 0, =A064 * 1024, =A0 4, 0) =
},
> + =A0 =A0 =A0 { "m25p40-nonjedec", =A0INFO(0, 0, =A064 * 1024, =A0 8, 0) =
},
> + =A0 =A0 =A0 { "m25p80-nonjedec", =A0INFO(0, 0, =A064 * 1024, =A016, 0) =
},
> + =A0 =A0 =A0 { "m25p16-nonjedec", =A0INFO(0, 0, =A064 * 1024, =A032, 0) =
},
> + =A0 =A0 =A0 { "m25p32-nonjedec", =A0INFO(0, 0, =A064 * 1024, =A064, 0) =
},
> + =A0 =A0 =A0 { "m25p64-nonjedec", =A0INFO(0, 0, =A064 * 1024, 128, 0) },
> + =A0 =A0 =A0 { "m25p128-nonjedec", INFO(0, 0, 256 * 1024, =A064, 0) },
> +
> + =A0 =A0 =A0 { "m45pe10", INFO(0x204011, =A00, 64 * 1024, =A0 =A02, 0) },
> + =A0 =A0 =A0 { "m45pe80", INFO(0x204014, =A00, 64 * 1024, =A0 16, 0) },
> + =A0 =A0 =A0 { "m45pe16", INFO(0x204015, =A00, 64 * 1024, =A0 32, 0) },
> +
> + =A0 =A0 =A0 { "m25pe80", INFO(0x208014, =A00, 64 * 1024, 16, =A0 =A0 =
=A0 0) },
> + =A0 =A0 =A0 { "m25pe16", INFO(0x208015, =A00, 64 * 1024, 32, SECT_4K) },
> +
> + =A0 =A0 =A0 { "m25px64", INFO(0x207117, =A00, 64 * 1024, 128, 0) },
> +
> + =A0 =A0 =A0 /* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
> + =A0 =A0 =A0 { "w25x10", INFO(0xef3011, 0, 64 * 1024, =A02, =A0SECT_4K) =
},
> + =A0 =A0 =A0 { "w25x20", INFO(0xef3012, 0, 64 * 1024, =A04, =A0SECT_4K) =
},
> + =A0 =A0 =A0 { "w25x40", INFO(0xef3013, 0, 64 * 1024, =A08, =A0SECT_4K) =
},
> + =A0 =A0 =A0 { "w25x80", INFO(0xef3014, 0, 64 * 1024, =A016, SECT_4K) },
> + =A0 =A0 =A0 { "w25x16", INFO(0xef3015, 0, 64 * 1024, =A032, SECT_4K) },
> + =A0 =A0 =A0 { "w25x32", INFO(0xef3016, 0, 64 * 1024, =A064, SECT_4K) },
> + =A0 =A0 =A0 { "w25q32", INFO(0xef4016, 0, 64 * 1024, =A064, SECT_4K) },
> + =A0 =A0 =A0 { "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
> + =A0 =A0 =A0 { "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
> +
> + =A0 =A0 =A0 /* Catalyst / On Semiconductor -- non-JEDEC */
> + =A0 =A0 =A0 { "cat25c11", CAT25_INFO( =A016, 8, 16, 1) },
> + =A0 =A0 =A0 { "cat25c03", CAT25_INFO( =A032, 8, 16, 2) },
> + =A0 =A0 =A0 { "cat25c09", CAT25_INFO( 128, 8, 32, 2) },
> + =A0 =A0 =A0 { "cat25c17", CAT25_INFO( 256, 8, 32, 2) },
> + =A0 =A0 =A0 { "cat25128", CAT25_INFO(2048, 8, 64, 2) },
> + =A0 =A0 =A0 { },
> +};
> +
> +static const struct spi_device_id *jedec_probe(struct spi_device *spi)
> +{
> + =A0 =A0 =A0 int =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 tmp;
> + =A0 =A0 =A0 u8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0code =3D OPCO=
DE_RDID;
> + =A0 =A0 =A0 u8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0id[5];
> + =A0 =A0 =A0 u32 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 jedec;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ext_jedec;
> + =A0 =A0 =A0 struct flash_info =A0 =A0 =A0 *info;
> +
> + =A0 =A0 =A0 /* JEDEC also defines an optional "extended device informat=
ion"
> + =A0 =A0 =A0 =A0* string for after vendor-specific data, after the three=
 bytes
> + =A0 =A0 =A0 =A0* we use here. =A0Supporting some chips might require us=
ing it.
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 spi_write_then_read(spi, &code, 1, id, 5);
> +
> + =A0 =A0 =A0 jedec =3D id[0];
> + =A0 =A0 =A0 jedec =3D jedec << 8;
> + =A0 =A0 =A0 jedec |=3D id[1];
> + =A0 =A0 =A0 jedec =3D jedec << 8;
> + =A0 =A0 =A0 jedec |=3D id[2];
> +
> + =A0 =A0 =A0 ext_jedec =3D id[3] << 8 | id[4];
> +
> + =A0 =A0 =A0 for (tmp =3D 0; tmp < ARRAY_SIZE(m25p_ids) - 1; tmp++) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 info =3D (void *)m25p_ids[tmp].driver_data;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (info->jedec_id =3D=3D jedec) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (info->ext_id !=3D 0 && =
info->ext_id !=3D ext_jedec)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return &m25p_ids[tmp];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 }
> + =A0 =A0 =A0 debug("unrecognized JEDEC id %06x\n", jedec);
> +
> + =A0 =A0 =A0 return NULL;
> +}
> +
> +
> +static struct file_operations m25p80_ops =3D {
> + =A0 =A0 =A0 .read =A0 =3D m25p80_read,
> + =A0 =A0 =A0 .write =A0=3D m25p80_write,
> + =A0 =A0 =A0 .erase =A0=3D m25p80_erase,
> + =A0 =A0 =A0 .lseek =A0=3D dev_lseek_default,
> +};
> +
> +/*
> + * board specific setup should have ensured the SPI clock used here
> + * matches what the READ command supports, at least until this driver
> + * understands FAST_READ (for clocks over 25 MHz).
> + */
> +static int m25p_probe(struct device_d *dev)
> +{
> + =A0 =A0 =A0 struct spi_device *spi =3D (struct spi_device *)dev->type_d=
ata;
> + =A0 =A0 =A0 const struct spi_device_id =A0 =A0 =A0*id =3D NULL;
> + =A0 =A0 =A0 struct flash_info =A0 =A0 =A0 =A0 =A0 =A0 =A0 *info =3D NUL=
L;
> + =A0 =A0 =A0 struct flash_platform_data =A0 =A0 =A0*data;
> + =A0 =A0 =A0 struct m25p =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 *flash;
> + =A0 =A0 =A0 unsigned =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0i;
> + =A0 =A0 =A0 unsigned =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0do_=
jdec_probe =3D 1;
> +
> + =A0 =A0 =A0 /* Platform data helps sort out which chip type we have, as
> + =A0 =A0 =A0 =A0* well as how this board partitions it. =A0If we don't h=
ave
> + =A0 =A0 =A0 =A0* a chip ID, try the JEDEC id commands; they'll work for=
 most
> + =A0 =A0 =A0 =A0* newer chips, even if we don't recognize the particular=
 chip.
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 data =3D dev->platform_data;
> +
> + =A0 =A0 =A0 if (data && data->type) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const struct spi_device_id *plat_id;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 for (i =3D 0; i < ARRAY_SIZE(m25p_ids) - 1;=
 i++) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 plat_id =3D &m25p_ids[i];
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (strcmp(data->type, plat=
_id->name))
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (i < ARRAY_SIZE(m25p_ids) - 1) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 id =3D plat_id;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info =3D (void *)id->driver=
_data;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* If flash type is provide=
d but the memory is not
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* JEDEC compliant, don't=
 try to probe the JEDEC id */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!info->jedec_id)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 do_jdec_pro=
be =3D 0;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 } else
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dev_warn(&spi->dev, "unreco=
gnized id %s\n", data->type);
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 if (do_jdec_probe) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 const struct spi_device_id *jid;
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 jid =3D jedec_probe(spi);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (!jid) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ENODEV;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 } else if (jid !=3D id) {
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* JEDEC knows better, so=
 overwrite platform ID. We
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* can't trust partitions=
 any longer, but we'll let
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* mtd apply them anyway,=
 since some partitions may be
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* marked read-only, and =
we don't want to lose that
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* information, even if i=
t's not 100% accurate.
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (id)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf("%s:=
 found %s, expected %s\n", dev->name,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0jid->name, id->name);
> +
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 id =3D jid;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 info =3D (void *)jid->drive=
r_data;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 flash =3D xzalloc(sizeof *flash);
> + =A0 =A0 =A0 if (!flash)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ENOMEM;
> +
> + =A0 =A0 =A0 flash->command =3D xmalloc(MAX_CMD_SIZE + FAST_READ_DUMMY_B=
YTE);
> + =A0 =A0 =A0 if (!flash->command) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 free(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ENOMEM;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 flash->spi =3D spi;
> + =A0 =A0 =A0 dev->priv =3D (void *)flash;
> + =A0 =A0 =A0 /*
> + =A0 =A0 =A0 =A0* Atmel, SST and Intel/Numonyx serial flash tend to power
> + =A0 =A0 =A0 =A0* up with the software protection bits set
> + =A0 =A0 =A0 =A0*/
> +
> + =A0 =A0 =A0 if (info->jedec_id >> 16 =3D=3D 0x1f ||
> + =A0 =A0 =A0 =A0 =A0 info->jedec_id >> 16 =3D=3D 0x89 ||
> + =A0 =A0 =A0 =A0 =A0 info->jedec_id >> 16 =3D=3D 0xbf) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 write_enable(flash);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 write_sr(flash, 0);
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 flash->name =3D (char *)id->name;
> + =A0 =A0 =A0 flash->info =3D info;
> + =A0 =A0 =A0 flash->size =3D info->sector_size * info->n_sectors;
> + =A0 =A0 =A0 flash->erasesize =3D info->sector_size;
> + =A0 =A0 =A0 flash->cdev.size =3D info->sector_size * info->n_sectors;
> + =A0 =A0 =A0 flash->cdev.dev =3D dev;
> + =A0 =A0 =A0 flash->cdev.ops =3D &m25p80_ops;
> + =A0 =A0 =A0 flash->cdev.priv =3D flash;
> +
> + =A0 =A0 =A0 if (data && data->name)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->cdev.name =3D asprintf("%s%d", data-=
>name, dev->id);
> + =A0 =A0 =A0 else
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->cdev.name =3D asprintf("%s", (char *=
)dev_name(&spi->dev));
> +
> +#ifdef CONFIG_MTD_SST25L
> + =A0 =A0 =A0 /* sst flash chips use AAI word program */
> + =A0 =A0 =A0 if (info->jedec_id >> 16 =3D=3D 0xbf)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 m25p80_ops.write =3D sst_write;
> + =A0 =A0 =A0 else
> +#endif
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 m25p80_ops.write =3D m25p80_write;
> +
> + =A0 =A0 =A0 /* prefer "small sector" erase if possible */
> + =A0 =A0 =A0 if (info->flags & SECT_4K)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->erase_opcode =3D OPCODE_BE_4K;
> + =A0 =A0 =A0 else
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->erase_opcode =3D OPCODE_SE;
> +
> + =A0 =A0 =A0 flash->page_size =3D info->page_size;
> +
> + =A0 =A0 =A0 if (info->addr_width)
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->addr_width =3D info->addr_width;
> + =A0 =A0 =A0 else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* enable 4-byte addressing if the device e=
xceeds 16MiB */
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (flash->size > 0x1000000) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->addr_width =3D 4;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 set_4byte(flash, 1);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 } else
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 flash->addr_width =3D 3;
> + =A0 =A0 =A0 }
> +
> + =A0 =A0 =A0 printf("%s: %s (%lld Kbytes)\n", flash->cdev.name, id->name,
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (long long)flash->size >> 1=
0);
> +
> + =A0 =A0 =A0 devfs_create(&flash->cdev);
> +
> + =A0 =A0 =A0 return 0;
> +}
> +
> +static struct driver_d epcs_flash_driver =3D {
> + =A0 =A0 =A0 .name =A0=3D "m25p",
> + =A0 =A0 =A0 .probe =3D m25p_probe,
> + =A0 =A0 =A0 .info =3D m25p80_info,
> +};
> +
> +static int epcs_init(void)
> +{
> + =A0 =A0 =A0 register_driver(&epcs_flash_driver);
> + =A0 =A0 =A0 return 0;
> +}
> +
> +device_initcall(epcs_init);
> +
> diff --git a/drivers/nor/m25p80.h b/drivers/nor/m25p80.h
> new file mode 100644
> index 0000000..3f9dd9c
> --- /dev/null
> +++ b/drivers/nor/m25p80.h
> @@ -0,0 +1,90 @@
> +#ifndef _M25P80_H_
> +#define _M25P80_H_
> +
> +/* Flash opcodes. */
> +#define =A0 =A0 =A0 =A0OPCODE_WREN =A0 =A0 =A0 =A0 =A0 =A0 0x06 =A0 =A0/=
* Write enable */
> +#define =A0 =A0 =A0 =A0OPCODE_RDSR =A0 =A0 =A0 =A0 =A0 =A0 0x05 =A0 =A0/=
* Read status register */
> +#define =A0 =A0 =A0 =A0OPCODE_WRSR =A0 =A0 =A0 =A0 =A0 =A0 0x01 =A0 =A0/=
* Write status register 1 byte */
> +#define =A0 =A0 =A0 =A0OPCODE_NORM_READ =A0 =A0 =A0 =A00x03 =A0 =A0/* Re=
ad data bytes (low frequency) */
> +#define =A0 =A0 =A0 =A0OPCODE_FAST_READ =A0 =A0 =A0 =A00x0b =A0 =A0/* Re=
ad data bytes (high frequency) */
> +#define =A0 =A0 =A0 =A0OPCODE_PP =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x02 =A0 =
=A0/* Page program (up to 256 bytes) */
> +#define =A0 =A0 =A0 =A0OPCODE_BE_4K =A0 =A0 =A0 =A0 =A0 =A00x20 =A0 =A0/=
* Erase 4KiB block */
> +#define =A0 =A0 =A0 =A0OPCODE_BE_32K =A0 =A0 =A0 =A0 =A0 0x52 =A0 =A0/* =
Erase 32KiB block */
> +#define =A0 =A0 =A0 =A0OPCODE_CHIP_ERASE =A0 =A0 =A0 0xc7 =A0 =A0/* Eras=
e whole flash chip */
> +#define =A0 =A0 =A0 =A0OPCODE_SE =A0 =A0 =A0 =A0 =A0 =A0 =A0 0xd8 =A0 =
=A0/* Sector erase (usually 64KiB) */
> +#define =A0 =A0 =A0 =A0OPCODE_RDID =A0 =A0 =A0 =A0 =A0 =A0 0x9f =A0 =A0/=
* Read JEDEC ID */
> +
> +/* Used for SST flashes only. */
> +#define =A0 =A0 =A0 =A0OPCODE_BP =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x02 =A0 =
=A0/* Byte program */
> +#define =A0 =A0 =A0 =A0OPCODE_WRDI =A0 =A0 =A0 =A0 =A0 =A0 0x04 =A0 =A0/=
* Write disable */
> +#define =A0 =A0 =A0 =A0OPCODE_AAI_WP =A0 =A0 =A0 =A0 =A0 0xad =A0 =A0/* =
Auto address increment word program */
> +
> +/* Used for Macronix flashes only. */
> +#define =A0 =A0 =A0 =A0OPCODE_EN4B =A0 =A0 =A0 =A0 =A0 =A0 0xb7 =A0 =A0/=
* Enter 4-byte mode */
> +#define =A0 =A0 =A0 =A0OPCODE_EX4B =A0 =A0 =A0 =A0 =A0 =A0 0xe9 =A0 =A0/=
* Exit 4-byte mode */
> +
> +/* Status Register bits. */
> +#define =A0 =A0 =A0 =A0SR_WIP =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A01 =A0 =
=A0 =A0 /* Write in progress */
> +#define =A0 =A0 =A0 =A0SR_WEL =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A02 =A0 =
=A0 =A0 /* Write enable latch */
> +/* meaning of other SR_* bits may differ between vendors */
> +#define =A0 =A0 =A0 =A0SR_BP0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A04 =A0 =
=A0 =A0 /* Block protect 0 */
> +#define =A0 =A0 =A0 =A0SR_BP1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A08 =A0 =
=A0 =A0 /* Block protect 1 */
> +#define =A0 =A0 =A0 =A0SR_BP2 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A00x10 =
=A0 =A0/* Block protect 2 */
> +#define =A0 =A0 =A0 =A0SR_SRWD =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x80 =A0 =
=A0/* SR write protect */
> +
> +/* Define max times to check status register before we give up. */
> +#define =A0 =A0 =A0 =A0MAX_READY_WAIT =A0 =A0 =A0 =A0 =A040 =A0 =A0 =A0/=
* M25P16 specs 40s max chip erase */
> +#define MAX_CMD_SIZE =A0 =A0 =A0 =A0 =A0 5
> +
> +#ifdef CONFIG_M25PXX_USE_FAST_READ
> +#define OPCODE_READ =A0 =A0 =A0 =A0 =A0 =A0OPCODE_FAST_READ
> +#define FAST_READ_DUMMY_BYTE =A0 1
> +#else
> +#define OPCODE_READ =A0 =A0 =A0 =A0 =A0 =A0OPCODE_NORM_READ
> +#define FAST_READ_DUMMY_BYTE =A0 0
> +#endif
> +
> +#define SPI_NAME_SIZE =A0 32
> +
> +struct spi_device_id {
> + =A0 =A0 =A0 char name[SPI_NAME_SIZE];
> + =A0 =A0 =A0 unsigned long driver_data;
> +};
> +
> +struct m25p {
> + =A0 =A0 =A0 struct spi_device =A0 =A0 =A0 *spi;
> + =A0 =A0 =A0 struct flash_info =A0 =A0 =A0 *info;
> + =A0 =A0 =A0 struct mtd_info mtd;
> + =A0 =A0 =A0 struct cdev =A0 =A0 =A0 =A0 =A0 =A0 cdev;
> + =A0 =A0 =A0 char =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*name;
> + =A0 =A0 =A0 u32 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 erasesize;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 page_size;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 addr_width;
> + =A0 =A0 =A0 u8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0erase_opcode;
> + =A0 =A0 =A0 u8 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*command;
> + =A0 =A0 =A0 u32 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 size;
> +};
> +
> +struct flash_info {
> + =A0 =A0 =A0 /* JEDEC id zero means "no ID" (most older chips); otherwis=
e it has
> + =A0 =A0 =A0 =A0* a high byte of zero plus three data bytes: the manufac=
turer id,
> + =A0 =A0 =A0 =A0* then a two byte device id.
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 u32 =A0 =A0 =A0 =A0 =A0 =A0 jedec_id;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 ext_id;
> +
> + =A0 =A0 =A0 /* The size listed here is what works with OPCODE_SE, which=
 isn't
> + =A0 =A0 =A0 =A0* necessarily called a "sector" by the vendor.
> + =A0 =A0 =A0 =A0*/
> + =A0 =A0 =A0 unsigned =A0 =A0 =A0 =A0sector_size;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 n_sectors;
> +
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 page_size;
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 addr_width;
> +
> + =A0 =A0 =A0 u16 =A0 =A0 =A0 =A0 =A0 =A0 flags;
> +#define =A0 =A0 =A0 =A0SECT_4K =A0 =A0 =A0 =A0 0x01 =A0 =A0 =A0 =A0 =A0 =
=A0/* OPCODE_BE_4K works uniformly */
> +#define =A0 =A0 =A0 =A0M25P_NO_ERASE =A0 0x02 =A0 =A0 =A0 =A0 =A0 =A0/* =
No erase command needed */
> +};
> +
> +#endif
> diff --git a/include/spi/flash.h b/include/spi/flash.h
> new file mode 100644
> index 0000000..cbd0203
> --- /dev/null
> +++ b/include/spi/flash.h
> @@ -0,0 +1,30 @@
> +#ifndef LINUX_SPI_FLASH_H
> +#define LINUX_SPI_FLASH_H
> +
> +struct mtd_partition;
> +
> +/**
> + * struct flash_platform_data: board-specific flash data
> + * @name: optional flash device name (eg, as used with mtdparts=3D)
> + * @parts: optional array of mtd_partitions for static partitioning
> + * @nr_parts: number of mtd_partitions for static partitoning
> + * @type: optional flash device type (e.g. m25p80 vs m25p64), for use
> + * =A0 =A0 with chips that can't be queried for JEDEC or other IDs
> + *
> + * Board init code (in arch/.../mach-xxx/board-yyy.c files) can
> + * provide information about SPI flash parts (such as DataFlash) to
> + * help set up the device and its appropriate default partitioning.
> + *
> + * Note that for DataFlash, sizes for pages, blocks, and sectors are
> + * rarely powers of two; and partitions should be sector-aligned.
> + */
> +struct flash_platform_data {
> + =A0 =A0 =A0 char =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*name;
> + =A0 =A0 =A0 struct mtd_partition =A0 =A0*parts;
> + =A0 =A0 =A0 unsigned int =A0 =A0 =A0 =A0 =A0 =A0nr_parts;
> + =A0 =A0 =A0 char =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*type;
> +
> + =A0 =A0 =A0 /* we'll likely add more ... use JEDEC IDs, etc */
> +};
> +
> +#endif
> --
> 1.7.6
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
