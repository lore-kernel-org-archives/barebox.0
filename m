Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [209.85.216.177] (helo=mail-qc0-f177.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuioM-0003p4-R0
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 11:34:34 +0000
Received: by qcsu28 with SMTP id u28so1713842qcs.36
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 04:33:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <OFEAC6280E.37553221-ONC1257A46.004F6310-C1257A46.004FD422@o0802.rafi.inhouse>
References: <OFEAC6280E.37553221-ONC1257A46.004F6310-C1257A46.004FD422@o0802.rafi.inhouse>
Date: Fri, 27 Jul 2012 13:33:31 +0200
Message-ID: <CAJfOKBzrkLQBtFWFJ7AbVgiud_EwMA+XEY8BWRgV73iAkOZH-Q@mail.gmail.com>
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
Subject: Re: nor flash board init code
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

2012/7/25 <christian.buettner@rafi.de>
>
> hi all,
> is there any example board init code to load the mx25l8005 spi nor-flash through the imx53 (TX53 from KARO)?
> I want to use the m25p80 driver to read and write.
>
> christian
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>

Hi Christian,

This is what I use with the Altera SPI controller + an SPI flash device:

http://www.elec4fun.fr/index.php?option=com_content&view=article&id=10&Itemid=153

static struct spi_altera_master altera_spi_0_data = {
      .num_chipselect = 1,
      .spi_mode = 0,      /* SPI mode of the EPCS flash controller */
      .databits = 8,      /* Data length of the EPCS flash controller */
      .speed = 20000000,  /* EPCS flash controller speed */
};


static struct flash_platform_data epcs_flash = {
      .name = "epcs",    /* Cdev name, optional */
      .type = "m25p40",  /* Device type, required for non JEDEC chips */
};

static struct spi_board_info generic_spi_board_info[] = {
      {
            .name = "m25p",
            .max_speed_hz = 20000000,
            .bus_num = 0,
            .chip_select = 0,
            .bits_per_word = 8,
            .mode = SPI_MODE_0,
            .platform_data = &epcs_flash,
      }
};

static int myboard_devices_init(void) {

...

spi_register_board_info(myboard_spi_board_info,
ARRAY_SIZE(myboard_spi_board_info));

add_generic_device("altera_spi", -1, NULL, NIOS_SOPC_EPCS_BASE, 0x18,
                    IORESOURCE_MEM, &altera_spi_0_data);

...

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
