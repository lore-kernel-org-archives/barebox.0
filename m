Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUETF-0005NT-UB
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 10:27:26 +0000
Date: Fri, 2 Nov 2012 11:27:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121102102724.GK1641@pengutronix.de>
References: <20121102092718.GO29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121102092718.GO29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4 v2] i2c: add algo-bit support with gpio and versatile
 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 02, 2012 at 10:27:18AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v2: keep return -EBUSY if the adapter is already present
> 
> 	the foloing patch series add the i2c algo bit support with 2 drivers
> 	that use it
> 
> 	 - gpio
> 	 - versatile
> 
> 	 thie also create a device for i2c bus itself
> 
> 	 all the pedending branch are rebased on it
> 
> The following changes since commit 2d1ceaff2f905f4a2bd7e6c539e7dd3d8d8e9bef:
> 
>   uimage: Fix deleting of temporary file (2012-10-30 18:39:38 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/i2c
> 
> for you to fetch changes up to 5c90416b6ffb8d4ca7c4bc6aff92578b555cb965:
> 

Applied, thanks

Sascha

>   i2c: add versatile support (2012-11-02 02:17:04 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (4):
>       i2c: adapter: register it's own device
>       i2c: add i2c algo bit support
>       i2c: add i2c-gpio support
>       i2c: add versatile support
> 
>  drivers/i2c/Kconfig                |    1 +
>  drivers/i2c/Makefile               |    2 +-
>  drivers/i2c/algos/Kconfig          |    6 +++
>  drivers/i2c/algos/Makefile         |    5 ++
>  drivers/i2c/algos/i2c-algo-bit.c   |  585 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/i2c/busses/Kconfig         |   16 +++++++
>  drivers/i2c/busses/Makefile        |    2 +
>  drivers/i2c/busses/i2c-gpio.c      |  177 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/i2c/busses/i2c-imx.c       |   20 ++++----
>  drivers/i2c/busses/i2c-omap.c      |   30 ++++++------
>  drivers/i2c/busses/i2c-versatile.c |  112 +++++++++++++++++++++++++++++++++++++++++++++
>  drivers/i2c/i2c.c                  |   17 ++++++-
>  include/i2c/i2c-algo-bit.h         |   55 ++++++++++++++++++++++
>  include/i2c/i2c-gpio.h             |   38 +++++++++++++++
>  include/i2c/i2c.h                  |    4 +-
>  15 files changed, 1042 insertions(+), 28 deletions(-)
>  create mode 100644 drivers/i2c/algos/Kconfig
>  create mode 100644 drivers/i2c/algos/Makefile
>  create mode 100644 drivers/i2c/algos/i2c-algo-bit.c
>  create mode 100644 drivers/i2c/busses/i2c-gpio.c
>  create mode 100644 drivers/i2c/busses/i2c-versatile.c
>  create mode 100644 include/i2c/i2c-algo-bit.h
>  create mode 100644 include/i2c/i2c-gpio.h
> 
> Best Regards,
> J.
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
