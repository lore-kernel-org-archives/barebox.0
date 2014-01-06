Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W06Rq-0004x8-35
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 09:26:14 +0000
Date: Mon, 6 Jan 2014 10:20:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106092051.GE24559@pengutronix.de>
References: <20131225120233.367089bd40dc188f67cd58a6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131225120233.367089bd40dc188f67cd58a6@gmail.com>
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
Subject: Re: November spi changes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

> 
> If I rebase Atheros 933x over barebox-2013.12.0 then I get
> "Ooops" in get_param_by_name(dev=spi, name=size)
> 
> =========================================
> Board: TP Link WR720N
> m25p80 m25p800: s25sl032p (4096 Kbytes)
> register_device: already registered spi

This seems to be your problem,

> 
> Ooops, TLB miss on load or ifetch!

This probably results from add_mtd_device() failling to check the return
value of register_device() properly.

> =========================================================
> static struct flash_platform_data spi_boot_flash_data = {
> 	.name		= "spi",
> 	.type		= "s25sl032p",
> };
> =========================================================
> 
> to
> 
> =========================================================
> static struct flash_platform_data spi_boot_flash_data = {
> 	.name		= "spi0",
> 	.type		= "s25sl032p",
> };
> =========================================================

The .name field defines the device filename under /dev. I would use
something like "spiflash0" here. "spi" or "spi0" sounds more like a spi
bus and in fact the it's already used by the spi bus.

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
