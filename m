Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fETDk-0005wZ-TW
 for barebox@lists.infradead.org; Fri, 04 May 2018 05:25:31 +0000
Date: Fri, 4 May 2018 07:25:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180504052510.pry7ny534dhnk6gr@pengutronix.de>
References: <20180502193653.12960-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180502193653.12960-1-andrew.smirnov@gmail.com>
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
Subject: Re: [RESEND PATCH v2 0/2] Initial RAVE SP Linux driver port
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 02, 2018 at 12:36:51PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> These two patches are first results of an effort to port RAVE SP
> (Supervisory Processor) MFD and it's children drivers from Linux
> kernel to Barebox. Patch 1/2 brings MFD driver with its core API and
> patch 2/2 adds support for watchdog "cell" of the RAVE SP device.
> 
> With a very few exceptions, the code of the drivers is identical to
> the code of their Linux counterparts.
> 
> These drivers are also first users of "serdev" API work that was
> recently merged and should server as a reasonable example of its
> usage.
> 
> Feedback is wellcome!
> 
> Changes since [v1]:
> 
>  - rave_sp_wdt_set_timeout fixed to correctly handle timeout of zero
>    (as pointed out by Sascha)
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-April/032725.html
> 
> Andrey Smirnov (2):
>   mfd: Port RAVE SP driver from Linux kernel
>   watchdog: Port RAVE SP watchdog driver from Linux kernel
> 
>  drivers/mfd/Kconfig            |   8 +
>  drivers/mfd/Makefile           |   1 +
>  drivers/mfd/rave-sp.c          | 758 +++++++++++++++++++++++++++++++++++++++++
>  drivers/watchdog/Kconfig       |   5 +
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/rave-sp-wdt.c | 426 +++++++++++++++++++++++
>  include/linux/mfd/rave-sp.h    |  78 +++++
>  7 files changed, 1277 insertions(+)
>  create mode 100644 drivers/mfd/rave-sp.c
>  create mode 100644 drivers/watchdog/rave-sp-wdt.c
>  create mode 100644 include/linux/mfd/rave-sp.h
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
