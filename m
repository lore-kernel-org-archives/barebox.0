Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-f196.google.com ([209.85.216.196])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWsUZ-0003Fy-Kf
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 22:26:09 +0000
Received: by mail-qt0-f196.google.com with SMTP id n13so41764531qtc.0
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2017 14:25:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170124082624.6vodposrif7ehjar@pengutronix.de>
References: <20170123055735.1277-1-andrew.smirnov@gmail.com>
 <20170123055735.1277-2-andrew.smirnov@gmail.com>
 <20170124082624.6vodposrif7ehjar@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Jan 2017 14:24:44 -0800
Message-ID: <CAHQ1cqHe9YFtZ7Xh1ZRF6ARRyWKq+2hxZnm-H=1F3a00DyA9Eg@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] spi: i.MX: Add driver for DSPI
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 24, 2017 at 12:26 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 22, 2017 at 09:57:35PM -0800, Andrey Smirnov wrote:
>> Add driver for DSPI - SPI IP core found on various Freescale/NXP
>> products (including Vybrid/VF610).
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/spi/Kconfig    |   8 +
>>  drivers/spi/Makefile   |   1 +
>>  drivers/spi/dspi_spi.c | 413 +++++++++++++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 422 insertions(+)
>>  create mode 100644 drivers/spi/dspi_spi.c
>>
>> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
>> index 43ba8f4..dd1b214 100644
>> --- a/drivers/spi/Kconfig
>> +++ b/drivers/spi/Kconfig
>> @@ -54,6 +54,14 @@ config DRIVER_SPI_OMAP3
>>       bool "OMAP3 McSPI Master driver"
>>       depends on ARCH_OMAP3 || ARCH_AM33XX
>>
>> +config DRIVER_SPI_DSPI
>> +     tristate "Freescale DSPI SPI Master driver"
>> +     depends on ARCH_VF610
>> +     default y
>
> Please no default y for optional features.

OK, will fix in v2.

>
>> +     help
>> +       This enables support for the Freescale DSPI controller in master
>> +       mode. VF610 platform uses the controller.
>> +
>>  endif
>>
>>  endmenu
>
>> +static void hz_to_spi_baud(char *pbr, char *br, int speed_hz,
>> +                        unsigned long clkrate)
>> +{
>> +     /* Valid baud rate pre-scaler values */
>> +     int pbr_tbl[4] = {2, 3, 5, 7};
>> +     int brs[16] = { 2,      4,      6,      8,
>> +             16,     32,     64,     128,
>> +             256,    512,    1024,   2048,
>> +             4096,   8192,   16384,  32768 };
>> +     int scale_needed, scale, minscale = INT_MAX;
>> +     int i, j;
>> +
>> +     scale_needed = clkrate / speed_hz;
>> +     if (clkrate % speed_hz)
>> +             scale_needed++;
>> +
>> +     for (i = 0; i < ARRAY_SIZE(brs); i++)
>> +             for (j = 0; j < ARRAY_SIZE(pbr_tbl); j++) {
>> +                     scale = brs[i] * pbr_tbl[j];
>> +                     if (scale >= scale_needed) {
>> +                             if (scale < minscale) {
>> +                                     minscale = scale;
>> +                                     *br = i;
>> +                                     *pbr = j;
>> +                             }
>> +                             break;
>> +                     }
>> +             }
>> +
>> +     if (minscale == INT_MAX) {
>> +             pr_warn("Can not find valid baud rate,speed_hz is %d,"
>> +                     "clkrate is %ld, we use the max prescaler value.\n",
>> +                     speed_hz, clkrate);
>
> Use dev_* for drivers please.

WIll do in v2.

>
>> +             *pbr = ARRAY_SIZE(pbr_tbl) - 1;
>> +             *br =  ARRAY_SIZE(brs) - 1;
>> +     }
>> +}
>> +
>> +static void ns_delay_scale(char *psc, char *sc, int delay_ns,
>> +             unsigned long clkrate)
>> +{
>> +     int pscale_tbl[4] = {1, 3, 5, 7};
>> +     int scale_needed, scale, minscale = INT_MAX;
>> +     int i, j;
>> +     u32 remainder;
>> +
>> +     scale_needed = div_u64_rem((u64)delay_ns * clkrate, NSEC_PER_SEC,
>> +                     &remainder);
>> +     if (remainder)
>> +             scale_needed++;
>> +
>> +     for (i = 0; i < ARRAY_SIZE(pscale_tbl); i++)
>> +             for (j = 0; j <= SPI_CTAR_SCALE_BITS; j++) {
>> +                     scale = pscale_tbl[i] * (2 << j);
>> +                     if (scale >= scale_needed) {
>> +                             if (scale < minscale) {
>> +                                     minscale = scale;
>> +                                     *psc = i;
>> +                                     *sc = j;
>> +                             }
>> +                             break;
>> +                     }
>> +             }
>> +
>> +     if (minscale == INT_MAX) {
>> +             pr_warn("Cannot find correct scale values for %dns "
>> +                     "delay at clkrate %ld, using max prescaler value",
>> +                     delay_ns, clkrate);
>> +             *psc = ARRAY_SIZE(pscale_tbl) - 1;
>> +             *sc = SPI_CTAR_SCALE_BITS;
>> +     }
>> +}
>> +
>> +static u32 dspi_xchg_single(struct fsl_dspi *dspi, u32 in)
>> +{
>> +     const uint32_t sr_ready = (SPI_SR_EOQF | SPI_SR_RFDF);
>> +
>> +     writel(in, dspi->base + SPI_PUSHR);
>> +
>> +     while ((readl(dspi->base + SPI_SR) & sr_ready) != sr_ready)
>> +             ;
>> +
>> +     writel(sr_ready, dspi->base + SPI_SR);
>> +
>> +     return readl(dspi->base + SPI_POPR);
>> +}
>> +
>> +static const void *dspi_load_and_advance(const void *buffer,
>> +                                      size_t word_size, uint32_t *word)
>> +{
>> +     if (!buffer) {
>> +             *word = 0;
>> +             return NULL;
>> +     }
>> +
>> +     switch (word_size) {
>> +     case 2:
>> +             *word = *(const uint16_t *)buffer;
>> +             break;
>> +     case 1:
>> +             *word = *(const uint8_t *)buffer;
>> +             break;
>> +     }
>> +
>> +     return buffer + word_size;
>> +}
>> +
>> +static void *dspi_store_and_advance(void *buffer,
>> +                                 size_t word_size, uint32_t word)
>> +{
>> +     if (!buffer)
>> +             return NULL;
>> +
>> +     switch (word_size) {
>> +     case 2:
>> +             *(uint16_t *)buffer = word;
>> +             break;
>> +     case 1:
>> +             *(uint8_t *)buffer  = word;
>> +             break;
>> +     }
>> +
>> +     return buffer + word_size;
>> +}
>> +
>> +
>> +static void dspi_do_transfer(struct spi_device *spi,
>> +                          struct spi_transfer *transfer,
>> +                          bool last)
>> +{
>> +     size_t i;
>> +     void *rx;
>> +     const void *tx;
>> +     unsigned int flags;
>> +     struct fsl_dspi *dspi = to_dspi(spi->master);
>> +     const size_t word_size = spi->bits_per_word <= 8 ? 1 : 2;
>> +     const size_t count = transfer->len / word_size;
>> +
>> +     flags = SPI_PUSHR_PCS(spi->chip_select)
>> +             | SPI_PUSHR_CTAS(spi->chip_select)
>> +             | SPI_PUSHR_EOQ
>> +             | SPI_PUSHR_CONT;
>> +
>> +     tx = transfer->tx_buf;
>> +     rx = transfer->rx_buf;
>> +
>> +     for (i = 0; i < count; i++) {
>> +             uint32_t in, out;
>> +
>> +             if (i == count - 1 &&
>> +                 (last || transfer->cs_change))
>> +                     flags &= ~SPI_PUSHR_CONT;
>> +
>> +             tx = dspi_load_and_advance(tx, word_size, &out);
>> +             in = dspi_xchg_single(dspi, flags | out);
>> +             rx = dspi_store_and_advance(rx, word_size, in);
>> +     }
>> +}
>> +
>> +static int dspi_transfer(struct spi_device *spi,
>> +                      struct spi_message *message)
>> +{
>> +     struct spi_transfer *transfer;
>> +
>> +     message->actual_length = 0;
>> +
>> +     list_for_each_entry(transfer, &message->transfers, transfer_list) {
>> +
>> +             if (spi->bits_per_word > 8 &&
>> +                 transfer->len % 2)
>> +                     dev_err(spi->master->dev,
>> +                             "Transfer doesn't contain exact number of SPI "
>> +                             "words. Last partial word will be truncated");
>> +
>> +             dspi_do_transfer(spi, transfer,
>> +                              list_is_last(&transfer->transfer_list,
>> +                                           &message->transfers));
>> +             message->actual_length += transfer->len;
>> +     }
>> +
>> +     return 0;
>> +}
>> +
>> +static int dspi_setup(struct spi_device *spi)
>> +{
>> +     struct fsl_dspi *dspi = to_dspi(spi->master);
>> +     unsigned char br = 0, pbr = 0, pcssck = 0, cssck = 0;
>> +     unsigned char pasc = 0, asc = 0, fmsz = 0;
>> +     unsigned long clkrate;
>> +
>> +     if (4 <= spi->bits_per_word && spi->bits_per_word <= 16)
>> +             fmsz = spi->bits_per_word - 1;
>> +     else
>> +             return -ENODEV;
>> +
>> +     clkrate = clk_get_rate(dspi->clk);
>> +     hz_to_spi_baud(&pbr, &br, spi->max_speed_hz, clkrate);
>> +
>> +     /* Set PCS to SCK delay scale values */
>> +     ns_delay_scale(&pcssck, &cssck, dspi->cs_sck_delay, clkrate);
>> +
>> +     /* Set After SCK delay scale values */
>> +     ns_delay_scale(&pasc, &asc, dspi->sck_cs_delay, clkrate);
>> +
>> +     writel(SPI_CTAR_FMSZ(fmsz)
>> +            | SPI_CTAR_CPOL(spi->mode & SPI_CPOL ? 1 : 0)
>> +            | SPI_CTAR_CPHA(spi->mode & SPI_CPHA ? 1 : 0)
>> +            | SPI_CTAR_LSBFE(spi->mode & SPI_LSB_FIRST ? 1 : 0)
>> +            | SPI_CTAR_PCSSCK(pcssck)
>> +            | SPI_CTAR_CSSCK(cssck)
>> +            | SPI_CTAR_PASC(pasc)
>> +            | SPI_CTAR_ASC(asc)
>> +            | SPI_CTAR_PBR(pbr)
>> +            | SPI_CTAR_BR(br),
>> +            dspi->base + SPI_CTAR(spi->chip_select));
>> +
>> +     return 0;
>> +}
>> +
>> +static int dspi_probe(struct device_d *dev)
>> +{
>> +     struct resource *io;
>> +     struct fsl_dspi *dspi;
>> +     struct spi_master *master;
>> +     struct device_node *np = dev->device_node;
>> +
>> +     int ret = 0;
>> +     uint32_t bus_num = 0;
>> +     uint32_t cs_num;
>> +
>> +     dspi = xzalloc(sizeof(*dspi));
>> +
>> +     dspi->devtype_data = of_device_get_match_data(dev);
>> +     if (!dspi->devtype_data) {
>> +             dev_err(dev, "can't get devtype_data\n");
>> +             ret = -EFAULT;
>> +             goto free_memory;
>> +     }
>> +
>> +     master = &dspi->master;
>> +     master->dev = dev;
>> +     master->bus_num = dev->id;
>> +     master->setup = dspi_setup;
>> +     master->transfer = dspi_transfer;
>> +
>> +     ret = of_property_read_u32(np, "spi-num-chipselects", &cs_num);
>> +     if (ret < 0) {
>> +             dev_err(dev, "can't get spi-num-chipselects\n");
>> +             goto free_memory;
>> +     }
>> +     master->num_chipselect = cs_num;
>> +
>> +     ret = of_property_read_u32(np, "bus-num", &bus_num);
>> +     if (ret < 0) {
>> +             dev_err(dev, "can't get bus-num\n");
>> +             goto free_memory;
>> +     }
>> +     master->bus_num = bus_num;
>
> I don't think the presence of a bus-num property should be enforced. It
> seems nobody has reviewed the binding since normally such a property
> shouldn't even exist. You can honor it if it's present, but shouldn't
> enforce it.

Good point. Will fix in v2.

>
>> +
>> +     of_property_read_u32(dev->device_node, "fsl,spi-cs-sck-delay",
>> +                          &dspi->cs_sck_delay);
>> +     of_property_read_u32(dev->device_node, "fsl,spi-sck-cs-delay",
>> +                          &dspi->sck_cs_delay);
>> +
>> +     io = dev_request_mem_resource(dev, 0);
>> +     if (IS_ERR(io))
>> +             return PTR_ERR(io);
>
> I don't care much about cleaning up properly in the probe error pathes
> in barebox, but now that you started with "goto free_memory" in the
> driver, you can use it here aswell ;)

True :-) Will fix in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
