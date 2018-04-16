Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7y8X-00081j-Sy
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 07:01:15 +0000
Date: Mon, 16 Apr 2018 09:00:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180416070059.zxdebttdji7yi6rr@pengutronix.de>
References: <20180412213317.13199-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180412213317.13199-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/5] Linux's serdev framwork port
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 12, 2018 at 02:33:12PM -0700, Andrey Smirnov wrote:
> Hi everyone:
> 
> In an effort to bring this kernel driver
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/mfd/rave-sp.c?h=v4.16-rc7
> to Barebox, I ended up creating a miniature and extremely simplified
> version of 'serdev' subsystem which is presented in this patchset.
> 
> Changes since [v1]:
> 
> 	- Blocking read function was added as example of API usage
> 
> 	- "serial: Check result of console_unregister()" was converted
>           to become "serial: Drop .remove functions from all drivers"
> 
> 	- Minor spelling fixes
> 
> 	- Original serdev framework patch modified to allow devices
>           that do not require polling (I don't have such a usecase,
>           but for the sake of being generic I added one line needed
>           for that)
> 
> 	- SERIAL_DEV_BUS Kconfig symbol moved into
>           drivers/serial/Kconfig (where it, IMHO, fits much better)
> 
> 	- Added a patch to dynamically adjust serdev's polling
>           interval via device paramter. This was warranted by the
>           problems that arose from real-life usage.
> 
> Feedback is wellcome!
> 
> Thanks,
> Andrey Smirnov
> 
> [v1] https://www.spinics.net/lists/u-boot-v2/msg32322.html

Applied, thanks

Sascha

> 
> Andrey Smirnov (5):
>   console: Introduce console_drain()
>   console: Add simplified 'serdev' framework from Linux kernel
>   serdev: Add trivial blocking read function
>   serial: Drop .remove functions from all drivers
>   serdev: Allow polling interval to be adjusted at runtime
> 
>  common/Makefile                  |   1 +
>  common/console.c                 |  24 ++++-
>  common/serdev.c                  | 208 +++++++++++++++++++++++++++++++++++++++
>  drivers/serial/Kconfig           |   6 ++
>  drivers/serial/serial_auart.c    |  11 ---
>  drivers/serial/serial_cadence.c  |   9 --
>  drivers/serial/serial_clps711x.c |  10 --
>  drivers/serial/serial_imx.c      |  10 --
>  drivers/serial/serial_lpuart.c   |  13 ---
>  drivers/serial/serial_pxa.c      |   9 --
>  drivers/serial/serial_s3c.c      |  10 --
>  drivers/serial/stm-serial.c      |  10 --
>  include/console.h                | 110 +++++++++++++++++++++
>  include/serdev.h                 |  44 +++++++++
>  lib/xymodem.c                    |  30 +-----
>  15 files changed, 395 insertions(+), 110 deletions(-)
>  create mode 100644 common/serdev.c
>  create mode 100644 include/serdev.h
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
