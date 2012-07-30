Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svqx6-0008HC-6Y
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 14:28:08 +0000
Received: by qcsu28 with SMTP id u28so2882493qcs.36
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2012 07:28:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <OFAAB844D8.44E75B11-ONC1257A4B.004C6D46-C1257A4B.004CCCC5@o0802.rafi.inhouse>
References: <OFEAC6280E.37553221-ONC1257A46.004F6310-C1257A46.004FD422@o0802.rafi.inhouse>
 <CAJfOKBzrkLQBtFWFJ7AbVgiud_EwMA+XEY8BWRgV73iAkOZH-Q@mail.gmail.com>
 <OF4FD5BF60.200AA89F-ONC1257A4B.002BAA8E-C1257A4B.002C07FC@o0802.rafi.inhouse>
 <CAJfOKBxTC9xYq4q1dnoXaZG-46ZmT=BaJtvEQTtWFtYhQ9qZMw@mail.gmail.com>
 <OF74138D54.DAC25BC1-ONC1257A4B.002D3B44-C1257A4B.002D6334@o0802.rafi.inhouse>
 <CAJfOKBzv+2ky0xcD_La=g4F8Zq9nFsSZQ6JEZ5506Zw5Sp0w3w@mail.gmail.com>
 <OFAAB844D8.44E75B11-ONC1257A4B.004C6D46-C1257A4B.004CCCC5@o0802.rafi.inhouse>
Date: Mon, 30 Jul 2012 16:28:05 +0200
Message-ID: <CAJfOKBxJYVp2YBVQhvECFVag60fm4wXDO87Bk3jb=VYdqMuW3A@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: Re: Re: Re: nor flash board init code
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

2012/7/30  <christian.buettner@rafi.de>:
> i always get the response:
>
> m25p@m25p0: unrecognized JEDEC id ffffff
>
> SPI Flah:MX25L8005MC-15G
> CPU: imx53
>
> Here is my board init code:
>
> //SPI + FLASH structs
> const struct flash_platform_data tx53_flash = {
>     .type       = "mx25l8005",
>     .name       = "spi_flash",
> };
>
>
> //MX25L8005MC-15G
> static const struct spi_board_info mx53_spi_board_info[] = {
>         {
>                 .name = "m25p",
>                 .max_speed_hz = 30000000,
>                 .bus_num = 0,
>                 .chip_select = 0,
>                 .bits_per_word = 8,
>                 .mode = SPI_MODE_0,
>                 .platform_data = &tx53_flash,
>         },
> };
>
> static struct spi_imx_master tx53_spi = {
>                 .num_chipselect = 1,
> };
>

I'm not familiar with the IMX spi but in the tx51 or ccxmx51 board
file one can read:

static struct spi_imx_master tx51_spi_0_data = {
	.chipselect = spi_0_cs,
	.num_chipselect = ARRAY_SIZE(spi_0_cs),
};

#define CCXMX51_ECSPI1_CS0	IMX_GPIO_NR(4, 24)
#define CCXMX51_ECSPI1_CS1	IMX_GPIO_NR(4, 25)

static int ecspi_0_cs[] = { CCXMX51_ECSPI1_CS0, CCXMX51_ECSPI1_CS1, };

static struct spi_imx_master ecspi_0_data = {
	.chipselect	= ecspi_0_cs,
	.num_chipselect	= ARRAY_SIZE(ecspi_0_cs),
};

Don't you need to set .chipselect ?


>
>
> //PIN MUX:
> MX53_PAD_EIM_D17__ECSPI1_MISO, //SPI MISO - EEPROM SO
> MX53_PAD_EIM_D18__ECSPI1_MOSI, //SPI MOSI - EEPROM SI
> MX53_PAD_EIM_D16__ECSPI1_SCLK, //SPI SCLK - EEPROM SCK
> MX53_PAD_EIM_EB2__ECSPI1_SS0,  //SPI SS1 - EEPROM CS
>
>
> //device init code:
>  spi_register_board_info(mx53_spi_board_info,
>                     ARRAY_SIZE(mx53_spi_board_info));
>
> imx53_add_spi0(&tx53_spi);
>
>
> Any ideas, whats wrong?
>
> christian
>
>
> Von:        Franck Jullien <franck.jullien@gmail.com>
> An:        christian.buettner@rafi.de,
> Kopie:        barebox@lists.infradead.org
> Datum:        30.07.2012 10:33
> Betreff:        Re: Re: Re: nor flash board init code
> ________________________________
>
>
>
> 2012/7/30  <christian.buettner@rafi.de>:
>> Whooosch and it worked!
>>
>> devinfo
>> devices:
>> ...
>> `---- mem1
>>      `---- 0x00000000-0xfffffffe: /dev/mem
>> `---- i2c-imx2
>> `---- imx_spi0
>>      `---- m25p0
>> `---- fec_imx0
>>      `---- miidev0
>> ...
>>
>> barebox:/ devinfo m25p0
>> resources:
>> driver: none
>>
>> no parameters available
>> barebox:/
>>
>> But why is driver in devinfo = none?
>>
>
> It used to work. You need to find why it doesn't work anymore ;)
>
>> christian
>>
>>
>> Von:        Franck Jullien <franck.jullien@gmail.com>
>> An:        christian.buettner@rafi.de,
>> Kopie:        barebox@lists.infradead.org
>> Datum:        30.07.2012 10:07
>> Betreff:        Re: Re: nor flash board init code
>> ________________________________
>>
>>
>>
>> Hi,
>>
>> 2012/7/30 <christian.buettner@rafi.de>
>>>
>>> Thanks for the code!
>>>
>>> Here is my approach:
>>>
>>> const struct flash_platform_data tx53_flash = {
>>>     .type       = "mx25l8005",
>>>     .name       = "spi_flash",
>>> };
>>>
>>>
>>> //MX25L8005MC-15G
>>> static const struct spi_board_info mx53_spi_board_info[] = {
>>>         {
>>>                 .name = "mx25l8005",
>>
>>
>> Here sould be the driver name: .name = "m25p",
>>
>>>
>>>                 .max_speed_hz = 70000000,
>>>                 .bus_num = 0,
>>>                 .chip_select = 0,
>>>                 .bits_per_word = 8,
>>>                 .mode = SPI_MODE_0,
>>>                 .platform_data = &tx53_flash,
>>>         },
>>> };
>>>
>>> static struct spi_imx_master tx53_spi = {
>>>                 .num_chipselect = 1,
>>> };
>>>
>>>
>>> init_devices {
>>>
>>> ...
>>>     spi_register_board_info(mx53_spi_board_info,
>>>                     ARRAY_SIZE(mx53_spi_board_info));
>>>
>>>     add_generic_device("m25p",-1,"m25p",MX53_ECSPI1_BASE_ADDR,64 *
>>> 1024,IORESOURCE_MEM,&mx53_spi_board_info);
>>
>> You have to add the SPI master device here. The m25p device will be
>> probed automagically (AFAIR).
>>
>>
>>>
>>> ...
>>> }
>>>
>>>
>>> When the m25p80.c driver probes i get no spi instance:
>>>
>>> static int m25p_probe(struct device_d *dev) {
>>>         struct spi_device *spi = (struct spi_device *)dev->type_data;
>>>         const struct spi_device_id        *id = NULL;
>>> ...
>>> }
>>>
>>> struct spi_device *spi is always null
>>>
>>> Whats wrong here?
>>>
>>> christian
>>>
>>>
>>>
>>> Von:        Franck Jullien <franck.jullien@gmail.com>
>>> An:        christian.buettner@rafi.de,
>>> Kopie:        barebox@lists.infradead.org
>>> Datum:        27.07.2012 13:33
>>> Betreff:        Re: nor flash board init code
>>> ________________________________
>>>
>>>
>>>
>>> 2012/7/25 <christian.buettner@rafi.de>
>>> >
>>> > hi all,
>>> > is there any example board init code to load the mx25l8005 spi
>>> > nor-flash
>>> > through the imx53 (TX53 from KARO)?
>>> > I want to use the m25p80 driver to read and write.
>>> >
>>> > christian
>>> > _______________________________________________
>>> > barebox mailing list
>>> > barebox@lists.infradead.org
>>> > http://lists.infradead.org/mailman/listinfo/barebox
>>> >
>>>
>>> Hi Christian,
>>>
>>> This is what I use with the Altera SPI controller + an SPI flash device:
>>>
>>>
>>>
>>> http://www.elec4fun.fr/index.php?option=com_content&view=article&id=10&Itemid=153
>>>
>>> static struct spi_altera_master altera_spi_0_data = {
>>>      .num_chipselect = 1,
>>>      .spi_mode = 0,      /* SPI mode of the EPCS flash controller */
>>>      .databits = 8,      /* Data length of the EPCS flash controller */
>>>      .speed = 20000000,  /* EPCS flash controller speed */
>>> };
>>>
>>>
>>> static struct flash_platform_data epcs_flash = {
>>>      .name = "epcs",    /* Cdev name, optional */
>>>      .type = "m25p40",  /* Device type, required for non JEDEC chips */
>>> };
>>>
>>> static struct spi_board_info generic_spi_board_info[] = {
>>>      {
>>>            .name = "m25p",
>>>            .max_speed_hz = 20000000,
>>>            .bus_num = 0,
>>>            .chip_select = 0,
>>>            .bits_per_word = 8,
>>>            .mode = SPI_MODE_0,
>>>            .platform_data = &epcs_flash,
>>>      }
>>> };
>>>
>>> static int myboard_devices_init(void) {
>>>
>>> ...
>>>
>>> spi_register_board_info(myboard_spi_board_info,
>>> ARRAY_SIZE(myboard_spi_board_info));
>>>
>>> add_generic_device("altera_spi", -1, NULL, NIOS_SOPC_EPCS_BASE, 0x18,
>>>                    IORESOURCE_MEM, &altera_spi_0_data);
>>>
>>> ...
>>>
>>> Franck.
>>>
>>
>> Franck.
>>
>

Do you have a scope ? This is the easiest way to debug SPI ;)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
