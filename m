Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWaR-0004Pm-4n
 for barebox@lists.infradead.org; Wed, 01 Apr 2020 06:10:52 +0000
Date: Wed, 1 Apr 2020 08:10:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200401061049.GB27288@pengutronix.de>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/23] A number of ZII related fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 11:46:59AM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> Here's a patchset containing a number of ZII board related fixes I've
> had in my tree for a while. Hopefully none of them are controversial.
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (23):
>   ARM: zii-common: Gate rdu_i210_invm() call with CONFIG_PCI_IMX6
>   ARM: imx7d-zii-rpu2: Drop redundant chosen node
>   ARM: zii-imx7d-dev: Fix compatible name
>   ARM: zii-common: Check for I2C errors in do_rdu2_switch_reset()
>   i2c: Port of_find_i2c_device_by_node() from Linux
>   ARM: zii-common: Find switch watchdog via DT
>   ARM: zii-common: Support rave_switch_reset on ZII Ultra
>   ARM: zii-imx6q-rdu2: Differentiate between RDU2 and RDU2+
>   ARM: zii-imx7d-dev: Differentiate between RPU2 and RMU2
>   ARM: zii-imx8mq-dev: Differentiate between Zest and RMB3
>   ARM: zii-common: Add common environment directory
>   ARM: zii-imx6q-rdu2: Register SD card slot with BBU
>   ARM: zii-vf610-dev: Register SD card slot with BBU
>   ARM: zii-imx8mq-dev: Register SD card slot with BBU
>   ARM: zii-vf610-dev: Add newline to end of board.c
>   ARM: rdu2: Drop redundant USB GPIO hog nodes
>   ARM: imx8mq: Drop trailing whitespace
>   ARM: imx8mq: Drop redundant DT nodes
>   ARM: zii-imx8mq-dev: Add boot source info
>   ARM: zii-imx8mq-dev: Drop redundant "stdout-path"
>   ARM: zii-imx7d-dev: Drop redundant RMU2 .dtsi
>   ARM: zii-imx7d-rmu2: Add SPI NOR partition info
>   ARM: zii-imx7d-rmu2: Add boot source info

I applied all except the first patch with my comments addressed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
