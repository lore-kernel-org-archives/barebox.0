Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-f177.google.com ([209.85.223.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Zaj-0002Pu-2J
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 10:45:46 +0000
Received: by ieje10 with SMTP id e10so2865803iej.36
 for <barebox@lists.infradead.org>; Thu, 06 Sep 2012 03:45:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120906090938.GC20330@game.jcrosoft.org>
References: <1346917995-28683-1-git-send-email-antonynpavlov@gmail.com>
 <20120906090938.GC20330@game.jcrosoft.org>
Date: Thu, 6 Sep 2012 14:45:43 +0400
Message-ID: <CAA4bVAGg=YAy23N=G=GUAFGoah=ALxvTRe_FZ-9UCEJerH8xHQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] spi: add demo bitbang driver based on code from linux
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 6 September 2012 13:09, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 11:53 Thu 06 Sep     , Antony Pavlov wrote:
>> It not the real driver but demonstration of the conception.
>> The code was tested on real hardware, but the code for
>> this hardware can't be published just now.
>>
>> Usage of bitbang framework is very easy.
>> You must declare the functions for setting CLK and MOSI signals,
>> and the function for reading MISO signal:
>>
>>  * void setsck(struct spi_device *, int is_on);
>>  * void setmosi(struct spi_device *, int is_on);
>>  * int getmiso(struct spi_device *);
>>
>> Next include the "spi-bitbang-txrx.h" header. The header
>> will give you the functions for reading/writing u32 words from/to spi.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> can you implement the gpio driver base on it
>
> so we can test it and ack it

Do you mean "to make spi-bitbang work over gpio driver"?

Just now I has no gpio driver for my hardware; first I must write a gpio driver.
I think I can do the work in a one or two weeks.
>
> and does this work owith mmc-spi?

I have not checked it.
I have a board with bitbang-capable SPI controller and MMC-card
connected to it, so I can make the checks in the near future.

>
> Best Regards,
> J.
>> ---
>>  arch/mips/boards/qemu-malta/init.c |   31 +++++++
>>  drivers/spi/Kconfig                |    4 +
>>  drivers/spi/Makefile               |    1 +
>>  drivers/spi/bitbang_demo_spi.c     |  176 ++++++++++++++++++++++++++++++++++++
>>  drivers/spi/spi-bitbang-txrx.h     |   93 +++++++++++++++++++
>>  5 files changed, 305 insertions(+)
>>  create mode 100644 drivers/spi/bitbang_demo_spi.c
>>  create mode 100644 drivers/spi/spi-bitbang-txrx.h
>>
>> diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
>> index 45f66f2..314ca88 100644
>> --- a/arch/mips/boards/qemu-malta/init.c
>> +++ b/arch/mips/boards/qemu-malta/init.c
>> @@ -30,6 +30,8 @@
>>  #include <partition.h>
>>  #include <sizes.h>
>>  #include <asm/common.h>
>> +#include <spi/spi.h>
>> +#include <spi/flash.h>
>>
>>  static int malta_mem_init(void)
>>  {
>> @@ -64,3 +66,32 @@ static int malta_console_init(void)
>>       return 0;
>>  }
>>  console_initcall(malta_console_init);
>> +
>> +static struct flash_platform_data malta_spi_demo_flash_data = {
>> +     .name           = "spi",
>> +     .type           = "s25sl004a",
>> +};
>> +
>> +static struct spi_board_info malta_spi_demo_devs[] __initdata = {
>> +     {
>> +             /* Spansion S25FL004A SPI flash */
>> +             .name           = "m25p",
>> +             .max_speed_hz   = 50000000,
>> +             .bus_num        = 0,
>> +             .chip_select    = 0,
>> +             .mode           = SPI_MODE_3,
>> +             .platform_data  = &malta_spi_demo_flash_data,
>> +     },
>> +};
>> +
>> +static int malta_spi_demo_init(void)
>> +{
>> +
>> +     spi_register_board_info(malta_spi_demo_devs,
>> +             ARRAY_SIZE(malta_spi_demo_devs));
>> +     add_generic_device("bitbang_demo_spi", -1, NULL,
>> +             0, 0, IORESOURCE_MEM, NULL);
>> +
>> +     return 0;
>> +}
>> +device_initcall(malta_spi_demo_init);
>> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
>> index b5c55a4..d883cd4 100644
>> --- a/drivers/spi/Kconfig
>> +++ b/drivers/spi/Kconfig
>> @@ -34,4 +34,8 @@ config DRIVER_SPI_ATMEL
>>       depends on ARCH_AT91
>>       depends on SPI
>>
>> +config DRIVER_SPI_BITBANG_DEMO
>> +     bool "BITBANG DEMO SPI controller"
>> +     depends on SPI
>> +
>>  endmenu
>> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
>> index 101652f..087a982 100644
>> --- a/drivers/spi/Makefile
>> +++ b/drivers/spi/Makefile
>> @@ -2,3 +2,4 @@ obj-$(CONFIG_SPI) += spi.o
>>  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
>>  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
>>  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
>> +obj-$(CONFIG_DRIVER_SPI_BITBANG_DEMO) += bitbang_demo_spi.o
>> diff --git a/drivers/spi/bitbang_demo_spi.c b/drivers/spi/bitbang_demo_spi.c
>> new file mode 100644
>> index 0000000..76abf98
>> --- /dev/null
>> +++ b/drivers/spi/bitbang_demo_spi.c
>> @@ -0,0 +1,176 @@
>> +/*
>> + * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
>> + *
>> + * This file is part of barebox.
>> + * See file CREDITS for list of people who contributed to this project.
>> + *
>> + * This program is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU General Public License as
>> + * published by the Free Software Foundation; either version 2 of
>> + * the License, or (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, write to the Free Software
>> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>> + * MA 02111-1307 USA
>> + *
>> + */
>> +
>> +#define DEBUG
>> +
>> +#include <common.h>
>> +#include <init.h>
>> +#include <driver.h>
>> +#include <spi/spi.h>
>> +#include <io.h>
>> +#include <clock.h>
>> +
>> +struct spi_bitbang_demo_master {
>> +     int     num_chipselect;
>> +     int     spi_mode;
>> +     int     databits;
>> +     int     speed;
>> +     int     bus_num;
>> +};
>> +
>> +struct bitbang_demo_spi {
>> +     struct spi_master       master;
>> +     int                     databits;
>> +     int                     speed;
>> +     int                     mode;
>> +};
>> +
>> +static inline void setsck(struct spi_device *spi, int on)
>> +{
>> +     struct bitbang_demo_spi *sc = container_of(spi->master, struct bitbang_demo_spi, master);
>> +
>> +     /* do something ... */
>> +     (void)sc;
>> +}
>> +
>> +static inline void setmosi(struct spi_device *spi, int on)
>> +{
>> +     struct bitbang_demo_spi *sc = container_of(spi->master, struct bitbang_demo_spi, master);
>> +
>> +     /* do something ... */
>> +     (void)sc;
>> +}
>> +
>> +static inline u32 getmiso(struct spi_device *spi)
>> +{
>> +     struct bitbang_demo_spi *sc = container_of(spi->master, struct bitbang_demo_spi, master);
>> +
>> +     /* do something ... */
>> +     (void)sc;
>> +
>> +     return 0;
>> +}
>> +
>> +#include "spi-bitbang-txrx.h"
>> +
>> +static int bitbang_demo_spi_setup(struct spi_device *spi)
>> +{
>> +     struct spi_master *master = spi->master;
>> +     struct bitbang_demo_spi *sc = container_of(master, struct bitbang_demo_spi, master);
>> +
>> +     dev_dbg(master->dev, "%s\n", __func__);
>> +     printf("%s chipsel %d mode 0x%08x bits_per_word: %d speed: %d\n",
>> +                     __FUNCTION__, spi->chip_select, spi->mode, spi->bits_per_word,
>> +                     spi->max_speed_hz);
>> +
>> +     /* do something ... */
>> +     (void) sc;
>> +
>> +     return 0;
>> +}
>> +
>> +static int bitbang_demo_read(struct spi_device *spi, void *buf, size_t nbyte)
>> +{
>> +     ssize_t cnt = 0;
>> +     volatile u8 *rxf_buf = buf;
>> +
>> +     /* SPI_MODE_3 only */
>> +     while (cnt < nbyte) {
>> +             *rxf_buf = bitbang_txrx_be_cpha1(spi, 1000, 1, 0, 8);
>> +             rxf_buf++;
>> +             cnt++;
>> +     }
>> +
>> +     return cnt;
>> +}
>> +
>> +static int bitbang_demo_write(struct spi_device *spi, const void *buf, size_t nbyte)
>> +{
>> +     ssize_t cnt = 0;
>> +     const u8 *txf_buf = buf;
>> +
>> +     /* SPI_MODE_3 only */
>> +     while (cnt < nbyte) {
>> +             bitbang_txrx_be_cpha1(spi, 1000, 1, (u32)*txf_buf, 8);
>> +             txf_buf++;
>> +             cnt++;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int bitbang_demo_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
>> +{
>> +     struct spi_master *master = spi->master;
>> +     struct spi_transfer *t;
>> +
>> +     dev_dbg(master->dev, "%s\n", __func__);
>> +
>> +     mesg->actual_length = 0;
>> +
>> +     /* chip select and mode select stuff skipped */
>> +
>> +     list_for_each_entry(t, &mesg->transfers, transfer_list) {
>> +
>> +             if (t->tx_buf)
>> +                     bitbang_demo_write(spi, t->tx_buf, t->len);
>> +
>> +             if (t->rx_buf)
>> +                     bitbang_demo_read(spi, t->rx_buf, t->len);
>> +
>> +             mesg->actual_length += t->len;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int bitbang_demo_spi_probe(struct device_d *dev)
>> +{
>> +     struct spi_master *master;
>> +     struct bitbang_demo_spi *bitbang_demo_spi;
>> +
>> +     bitbang_demo_spi = xzalloc(sizeof(*bitbang_demo_spi));
>> +
>> +     master = &bitbang_demo_spi->master;
>> +     master->dev = dev;
>> +
>> +     master->setup = bitbang_demo_spi_setup;
>> +     master->transfer = bitbang_demo_spi_transfer;
>> +     master->num_chipselect = 1;
>> +     master->bus_num = 0;
>> +
>> +     spi_register_master(master);
>> +
>> +     return 0;
>> +}
>> +
>> +static struct driver_d bitbang_demo_spi_driver = {
>> +     .name  = "bitbang_demo_spi",
>> +     .probe = bitbang_demo_spi_probe,
>> +};
>> +
>> +static int bitbang_demo_spi_driver_init(void)
>> +{
>> +     return register_driver(&bitbang_demo_spi_driver);
>> +}
>> +device_initcall(bitbang_demo_spi_driver_init);
>> diff --git a/drivers/spi/spi-bitbang-txrx.h b/drivers/spi/spi-bitbang-txrx.h
>> new file mode 100644
>> index 0000000..e86eec2
>> --- /dev/null
>> +++ b/drivers/spi/spi-bitbang-txrx.h
>> @@ -0,0 +1,93 @@
>> +/*
>> + * Mix this utility code with some glue code to get one of several types of
>> + * simple SPI master driver.  Two do polled word-at-a-time I/O:
>> + *
>> + *   -       GPIO/parport bitbangers.  Provide chipselect() and txrx_word[](),
>> + *   expanding the per-word routines from the inline templates below.
>> + *
>> + *   -       Drivers for controllers resembling bare shift registers.  Provide
>> + *   chipselect() and txrx_word[](), with custom setup()/cleanup() methods
>> + *   that use your controller's clock and chipselect registers.
>> + *
>> + * Some hardware works well with requests at spi_transfer scope:
>> + *
>> + *   -       Drivers leveraging smarter hardware, with fifos or DMA; or for half
>> + *   duplex (MicroWire) controllers.  Provide chipselect() and txrx_bufs(),
>> + *   and custom setup()/cleanup() methods.
>> + */
>> +
>> +/*
>> + * The code that knows what GPIO pins do what should have declared four
>> + * functions, ideally as inlines, before including this header:
>> + *
>> + *  void setsck(struct spi_device *, int is_on);
>> + *  void setmosi(struct spi_device *, int is_on);
>> + *  int getmiso(struct spi_device *);
>> + *  void spidelay(unsigned);
>> + *
>> + * setsck()'s is_on parameter is a zero/nonzero boolean.
>> + *
>> + * setmosi()'s is_on parameter is a zero/nonzero boolean.
>> + *
>> + * getmiso() is required to return 0 or 1 only. Any other value is invalid
>> + * and will result in improper operation.
>> + *
>> + * A non-inlined routine would call bitbang_txrx_*() routines.  The
>> + * main loop could easily compile down to a handful of instructions,
>> + * especially if the delay is a NOP (to run at peak speed).
>> + *
>> + * Since this is software, the timings may not be exactly what your board's
>> + * chips need ... there may be several reasons you'd need to tweak timings
>> + * in these routines, not just make to make it faster or slower to match a
>> + * particular CPU clock rate.
>> + */
>> +
>> +#define spidelay(nsecs) udelay(nsecs/1000)
>> +
>> +static inline u32
>> +bitbang_txrx_be_cpha0(struct spi_device *spi,
>> +             unsigned nsecs, unsigned cpol, u32 word, u8 bits)
>> +{
>> +     /* if (cpol == 0) this is SPI_MODE_0; else this is SPI_MODE_2 */
>> +
>> +     /* clock starts at inactive polarity */
>> +     for (word <<= (32 - bits); likely(bits); bits--) {
>> +
>> +             /* setup MSB (to slave) on trailing edge */
>> +             setmosi(spi, word & (1 << 31));
>> +             spidelay(nsecs);        /* T(setup) */
>> +
>> +             setsck(spi, !cpol);
>> +             spidelay(nsecs);
>> +
>> +             /* sample MSB (from slave) on leading edge */
>> +             word <<= 1;
>> +             word |= getmiso(spi);
>> +             setsck(spi, cpol);
>> +     }
>> +     return word;
>> +}
>> +
>> +static inline u32
>> +bitbang_txrx_be_cpha1(struct spi_device *spi, unsigned nsecs, unsigned cpol,
>> +             u32 word, u8 bits)
>> +{
>> +     /* if (cpol == 0) this is SPI_MODE_1; else this is SPI_MODE_3 */
>> +
>> +     /* clock starts at inactive polarity */
>> +     for (word <<= (32 - bits); likely(bits); bits--) {
>> +
>> +             /* setup MSB (to slave) on leading edge */
>> +             setsck(spi, !cpol);
>> +             setmosi(spi, word & (1 << 31));
>> +             spidelay(nsecs); /* T(setup) */
>> +
>> +             setsck(spi, cpol);
>> +             spidelay(nsecs);
>> +
>> +             /* sample MSB (from slave) on trailing edge */
>> +             word <<= 1;
>> +             word |= getmiso(spi);
>> +     }
>> +     return word;
>> +}
>> --
>> 1.7.10.4
>>



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
