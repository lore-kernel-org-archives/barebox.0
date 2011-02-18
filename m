Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PqPkq-00044q-1n
	for barebox@lists.infradead.org; Fri, 18 Feb 2011 12:48:12 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 18 Feb 2011 13:48:07 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0099F@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: SPI devices
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

My i.MX27PDK board has the PHY chip on CSPI2 and the LCD on CSPI1. The PHY uses SS0 of CSPI2, the LCD uses SS2 of CSPI1.
I'm not sure if I'm doing it right when I implement it like this :

static int imx27pdk_spi_phy_cs[] = {GPIO_PORTD + 21};

static struct spi_imx_master imx27pdk_spi_1_data = {
    .chipselect = imx27pdk_spi_phy_cs,
    .num_chipselect = ARRAY_SIZE(imx27pdk_spi_phy_cs),
};

static int imx27pdk_spi_lcd_cs[] = {GPIO_PORTD + 26};

static struct spi_imx_master imx27pdk_spi_0_data = {
    .chipselect = imx27pdk_spi_lcd_cs,
    .num_chipselect = ARRAY_SIZE(imx27pdk_spi_lcd_cs),
};

static struct spi_board_info imx27pdk_spi_board_info[] = {
    {
      .name = "LCD",
      .max_speed_hz = 3000000,
      .bus_num = 0,
      .chip_select = 2,
    },
    {
      .name = "mc13783",
      .max_speed_hz = 3000000,
      .bus_num = 1,
      .chip_select = 0,
    },
};

spi_register_board_info(imx27pdk_spi_board_info, ARRAY_SIZE(imx27pdk_spi_board_info));
imx27_add_spi0(&imx27pdk_spi_0_data);
imx27_add_spi1(&imx27pdk_spi_1_data);


Is this OK ? I.e. I'm not sure how to use bus_num and chip_select


Filip 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
