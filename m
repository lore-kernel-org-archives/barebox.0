Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMb1K-0001yc-U4
 for barebox@lists.infradead.ORG; Wed, 06 Dec 2017 14:50:00 +0000
Date: Wed, 6 Dec 2017 15:49:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171206144937.i4r6bdnlk56l5ezf@pengutronix.de>
References: <20171204152718.10674-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171204152718.10674-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/6] MDIO bus multiplexer support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 04, 2017 at 07:27:12AM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> This is the second version of my original, with few modifications and
> fixes.
> 
> Changes since [v1]:
> 
>  - Addressed smalle issues pointed out by Sascha (leftover comment,
>    bad identation)
> 
>  - Added patch enabling MDIO GPIO mux driver for ZII VF610 boards
>    since the are the HW this patchset targets.
>    
> [v1] http://lists.infradead.org/pipermail/barebox/2017-November/031589.html
> 
> Andrey Smirnov (6):
>   ARM: vybrid: zii: Make use of DT code from Linux kernel
>   mdio_bus: Port of_mdio_find_bus() from Linux kernel
>   net: phy: Port MDIO bus miltiplexer framework from Linux kernel
>   net: phy: Port GPIO controlled MDIO multiplexer driver
>   net: mdio-mux: Avoid probing multiplexed busses
>   zii_vf610_dev_defconfig: Select MDIO bus GPIO multiplexer

Applied, thanks

Sascha


> 
>  arch/arm/configs/zii_vf610_dev_defconfig  |   1 +
>  arch/arm/dts/vf610-zii-cfu1-rev-a.dts     |   3 +-
>  arch/arm/dts/vf610-zii-dev-rev-b.dts      | 386 +----------------------------
>  arch/arm/dts/vf610-zii-dev-rev-c.dts      | 391 +-----------------------------
>  arch/arm/dts/vf610-zii-dev.dtsi           | 354 ---------------------------
>  arch/arm/dts/vf610-zii-scu4-aib-rev-c.dts |   2 +
>  arch/arm/dts/vf610-zii-spu3-rev-a.dts     |   4 +-
>  drivers/net/phy/Kconfig                   |  18 ++
>  drivers/net/phy/Makefile                  |   3 +
>  drivers/net/phy/mdio-mux-gpio.c           | 147 +++++++++++
>  drivers/net/phy/mdio-mux.c                | 143 +++++++++++
>  drivers/net/phy/mdio_bus.c                |  30 +++
>  include/linux/mdio-mux.h                  |  30 +++
>  include/linux/phy.h                       |   4 +
>  14 files changed, 385 insertions(+), 1131 deletions(-)
>  create mode 100644 drivers/net/phy/mdio-mux-gpio.c
>  create mode 100644 drivers/net/phy/mdio-mux.c
>  create mode 100644 include/linux/mdio-mux.h
> 
> -- 
> 2.14.3
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
