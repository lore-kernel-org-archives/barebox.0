Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T2f0d-0004xH-MH
 for barebox@lists.infradead.org; Sat, 18 Aug 2012 09:07:57 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 51DD01050E43
 for <barebox@lists.infradead.org>; Sat, 18 Aug 2012 11:12:41 +0200 (CEST)
Date: Sat, 18 Aug 2012 11:08:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120818090805.GU6271@game.jcrosoft.org>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556B@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB901B0B366556B@SRV-VS06.TELEVIC.COM>
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
Subject: Re: adding SPI port on i.MX27 board
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 14:41 Fri 17 Aug     , Vanalme Filip wrote:
>    Hi,
> 
>     
> 
>    Currently, CSPI2 of the i.MX27 is used to communicate with its companion
>    chip (MC13783). This works fine. The SPI parts of the board file look like
>    :
> 
>     
> 
>    static int imx27_interaxio_spi1_cs[] = {GPIO_PORTD + 21};
> 
>    static struct spi_imx_master imx27_interaxio_spi_1_data = {
> 
>        .chipselect = imx27_interaxio_spi1_cs,
> 
>        .num_chipselect = ARRAY_SIZE(imx27_interaxio_spi1_cs),
> 
>    };
> 
>     
> 
>    static struct spi_board_info imx27_interaxio_spi_board_info[] = {
> 
>        {
> 
>          .name = "mc13783",
> 
>          .max_speed_hz = 3000000,
> 
>          .bus_num = 0,
> 
>          .chip_select = 0, /* offset in the chip select array */
> 
>        },
> 
>    };
> 
>     
> 
>    [...]
> 
>     
> 
>    static int imx27_interaxio_devices_init(void)
> 
>    {
> 
>      [...]
> 
>      /* PMIC support */
> 
>      spi_register_board_info(imx27_interaxio_spi_board_info,
>    ARRAY_SIZE(imx27_interaxio_spi_board_info));
> 
>      imx27_add_spi1(&imx27_interaxio_spi_1_data);
> 
>    [...]
> 
>     
> 
>     
> 
>    Now, I would like to add another SPI port of the i.MX27, CSPI1, to control
>    an LCD. To do that, I taught I had to change the board file like this :
> 
>     
> 
>    static int imx27_interaxio_spi1_cs[] = {GPIO_PORTD + 21};
> 
>    static int imx27_interaxio_spi0_cs[] = {GPIO_PORTD + 28};
> 
>    static struct spi_imx_master imx27_interaxio_spi_1_data = {
> 
>        .chipselect = imx27_interaxio_spi1_cs,
> 
>        .num_chipselect = ARRAY_SIZE(imx27_interaxio_spi1_cs),
> 
>    };
> 
>    static struct spi_imx_master imx27_interaxio_spi_0_data = {
> 
>        .chipselect = imx27_interaxio_spi0_cs,
> 
>        .num_chipselect = ARRAY_SIZE(imx27_interaxio_spi0_cs),
> 
>    };
> 
>    static struct spi_board_info imx27_interaxio_spi_board_info[] = {
> 
>        {
> 
>          .name = "mc13783",
> 
>          .max_speed_hz = 3000000,
> 
>          .bus_num = 0,
> 
>          .chip_select = 0,
> 
>        },
> 
>        {
> 
>            .name = "LCD",
> 
>            .max_speed_hz = 2000000,
> 
>            .bus_num = 1,
> 
>            .chip_select = 0, 
> 
>        },
> 
>    };
> 
>     
> 
>    [...]
> 
>     
> 
>    static int imx27_interaxio_devices_init(void)
> 
>    {
> 
>      [...]
> 
>      /* PMIC support */
> 
>      spi_register_board_info(imx27_interaxio_spi_board_info,
>    ARRAY_SIZE(imx27_interaxio_spi_board_info));
> 
>      imx27_add_spi1(&imx27_interaxio_spi_1_data);
> 
>      imx27_add_spi0(&imx27_interaxio_spi_0_data);
> 
>    [...]
> 
>     
> 
>     
> 
>    However, I'm not sure I'm doing it right. E.g. for the bus_num element. As
>    it is another `master', I guess it should get another bus number. However,
>    when digging a little in the code, in imx_spi_probe (imx_spi.c), bus_num
>    of `master' is never initialized, so always 0. A little further, when
>    scanning for board info (scan_boardinfo in spi.c), bus_num of chip is
>    compared to bus_num of master, which is always 0. For the existing
>    implementation this was not a problem as the bus_num in the board info
>    struct was also 0. For the added bus, the bus_num is 1, so the compare
>    will validate to false and the device will not be created...
> 
>    This is how I'm think it's working. Am I correct ?
> 
>    Am I doing something wrong ? Should I also use bus_num 0 for my additional
>    SPI instead of 1 ?
I get the same issue on at91 recently I send a patch to detect this issue

here you have 2 choice use the dynamic bus num allocation or manual but all
the bus must have a different bus_num

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
