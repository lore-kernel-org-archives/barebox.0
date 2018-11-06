Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJx7L-000841-Ec
 for barebox@lists.infradead.org; Tue, 06 Nov 2018 08:53:49 +0000
Date: Tue, 6 Nov 2018 09:53:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181106085334.bmc2ddoglytubjwa@pengutronix.de>
References: <20181105183222.25637-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/4] RDU1 config blob loading
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 05, 2018 at 10:32:18AM -0800, Andrey Smirnov wrote:
> Everyone:
> 
> This is a small series adding patches necessary to load config blob on
> RDU1 boards, which, among other things, contains MAC address to be
> used for FEC. Hopefully all of the commits are self-explanatory.
> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (4):
>   lib: Port CRC8 implementation from Linux kernel
>   nvmem: Port Linux driver for Microwire 93XX46 EEPROM chips
>   ARM: rdu1: Add an alias for Microwire EEPROM
>   ARM: rdu1: Implement RDU1 config loading

Applied, thanks

Sascha

> 
>  arch/arm/boards/zii-imx51-rdu1/board.c | 179 ++++++++++
>  arch/arm/dts/imx51-zii-rdu1.dts        |  12 +
>  arch/arm/mach-imx/Kconfig              |   1 +
>  drivers/nvmem/Kconfig                  |   8 +
>  drivers/nvmem/Makefile                 |   5 +-
>  drivers/nvmem/eeprom_93xx46.c          | 446 +++++++++++++++++++++++++
>  include/linux/crc8.h                   | 101 ++++++
>  lib/Kconfig                            |   7 +
>  lib/Makefile                           |   1 +
>  lib/crc8.c                             |  82 +++++
>  10 files changed, 841 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/nvmem/eeprom_93xx46.c
>  create mode 100644 include/linux/crc8.h
>  create mode 100644 lib/crc8.c
> 
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
