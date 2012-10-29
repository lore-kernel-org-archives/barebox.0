Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TSxfI-0006RY-Cp
 for barebox@lists.infradead.org; Mon, 29 Oct 2012 22:18:37 +0000
Date: Mon, 29 Oct 2012 23:18:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121029221832.GC1641@pengutronix.de>
References: <20121029124609.GG28904@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121029124609.GG28904@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/5 v2] add 1-wire support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 29, 2012 at 01:46:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v2: use is_non_interruptible_timeout as name
> 	use is_non_interruptible_timeout for ndelay as we will never call poller_cal anyway
> 
> The following changes since commit 72703410feff9ed44779b54a41ff30312e781279:
> 
>   misc JTAG: include fixes (2012-10-26 09:08:51 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/w1
> 

Applied, thanks

Sascha

> for you to fetch changes up to acaa716bce8cd1373cb5dabff54332fb1da7355b:
> 
>   1-wire: add ds2433 support (2012-10-29 04:46:21 +0800)
> 
> ----------------------------------------------------------------
> add 1-wire support
> 
> export for each device via param
> the familly id (fid)
> the id
> the full reg_num
> 
> so for simple 64bit memory rom(ds2401/ds2411/ds1990*) no need driver.
> 
> with ds2431 and ds2433 eeprom support
> 
> Based on linux implementation, cleaned and re-implement the master/slave
> support to use the device/driver model correctly.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (5):
>       clock: introduce non interruptible timeout
>       add 1-wire support
>       1-wire: add gpio bus
>       1-wire: add ds2431 support
>       1-wire: add ds2433 support
> 
>  common/clock.c                |   16 ++-
>  drivers/Kconfig               |    1 +
>  drivers/Makefile              |    1 +
>  drivers/w1/Kconfig            |   14 +++
>  drivers/w1/Makefile           |    6 +
>  drivers/w1/masters/Kconfig    |   14 +++
>  drivers/w1/masters/Makefile   |    5 +
>  drivers/w1/masters/w1-gpio.c  |  116 ++++++++++++++++++++
>  drivers/w1/slaves/Kconfig     |   27 +++++
>  drivers/w1/slaves/Makefile    |    6 +
>  drivers/w1/slaves/w1_ds2431.c |  294 +++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/w1/slaves/w1_ds2433.c |  196 +++++++++++++++++++++++++++++++++
>  drivers/w1/w1.c               |  621 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/w1/w1.h               |  152 ++++++++++++++++++++++++++
>  include/clock.h               |    1 +
>  include/linux/w1-gpio.h       |   25 +++++
>  16 files changed, 1490 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/w1/Kconfig
>  create mode 100644 drivers/w1/Makefile
>  create mode 100644 drivers/w1/masters/Kconfig
>  create mode 100644 drivers/w1/masters/Makefile
>  create mode 100644 drivers/w1/masters/w1-gpio.c
>  create mode 100644 drivers/w1/slaves/Kconfig
>  create mode 100644 drivers/w1/slaves/Makefile
>  create mode 100644 drivers/w1/slaves/w1_ds2431.c
>  create mode 100644 drivers/w1/slaves/w1_ds2433.c
>  create mode 100644 drivers/w1/w1.c
>  create mode 100644 drivers/w1/w1.h
>  create mode 100644 include/linux/w1-gpio.h
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
