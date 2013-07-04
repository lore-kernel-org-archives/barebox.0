Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uue6a-0000fz-H8
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 07:37:29 +0000
Date: Thu, 4 Jul 2013 09:37:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130704073706.GV516@pengutronix.de>
References: <1372443947-12599-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372789849-12194-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372789849-12194-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 00/10] ARM: mvebu: DT support, SPI, GPIO driver, and
 Dove DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Jul 02, 2013 at 08:30:39PM +0200, Sebastian Hesselbarth wrote:
> This patch set is a first attempt to bring full DT support to Marvell
> MVEBU SoCs. It also introduces a driver for the SPI controller found
> on these SoCs with special treatment of additional functions for Dove
> and Armada 370/XP SoCs. Also a GPIO driver is added that I have written
> during OF patches.
> 
> First, current soc_init is moved from postcore initcall to core initcall,
> to allow clocks to be accessed early. Clock lookup for timers is converted
> to physbase instead of name-based lookup. Then DT support is added for both
> clocksource drivers found on Orion and Armada 370/XP SoCs, respectively.
> 
> Also, a DT-only SPI driver is added to allow access to SPI devices found
> on boards comprising Marvell SoCs. Then a DT-only GPIO driver compatible
> with MVEBU SoCs and device tree parsing for gpio-leds is added.
> 
> The last two patches extend SolidRun CuBox defconfig with a bunch of
> options for future drivers and debug commands and import DTS files from
> Linux with an additional node for the timer.
> 
> Sebastian Hesselbarth (10):
>   ARM: mvebu: move soc_init to core_initcall
>   clocksource: orion: lookup clock by physbase
>   clocksource: orion: add DT support
>   clocksource: mvebu: lookup clock by physbase
>   clocksource: mvebu: add DT support
>   spi: add Marvell MVEBU SoC SPI driver
>   GPIO: add Marvell Orion/MVEBU SoC GPIO driver
>   LED: add support for device tree parsing of gpio-leds
>   ARM: mvebu: add more options to SolidRun CuBox defconfig
>   ARM: mvebu: import DT files for Dove SoC and SolidRun CuBox

Applied this series except for the SPI driver.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
