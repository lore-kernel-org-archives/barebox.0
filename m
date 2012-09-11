Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBQuX-0001EY-Jh
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 13:53:55 +0000
Date: Tue, 11 Sep 2012 15:53:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120911135351.GA6180@pengutronix.de>
References: <20120911044733.GD31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911044733.GD31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3 v2] AMBA Bus support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 11, 2012 at 06:47:33AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	v2: upadte comment
> 
> 	this first patch series add the AMBA Bus support and is a preperation
> 	for the adding of the ST-E ux500 support
> 
> please pull
> The following changes since commit 298d15571da8d1cb71e7fd87cc53cad3b2bf1d12:
> 
>   i.MX51: unbreak FEC iomux (2012-09-07 10:28:17 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git tags/amba_bus

Pulled, thanks

Sascha

> 
> for you to fetch changes up to 75a0136ccae3899aee91f1d8d38274c426f99175:
> 
>   amba-pl011: add st specific init (2012-09-11 12:48:34 +0800)
> 
> ----------------------------------------------------------------
> arm: Introduce ARM AMBA bus
> 
> This allow to detect the amba device and use the right driver for it at
> runtime.
> 
> With pl011 amba support (ARM & ST Variant)
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       Introduce ARM AMBA bus
>       amba-pl011: switch to amba bus
>       amba-pl011: add st specific init
> 
>  arch/arm/mach-nomadik/8815.c   |    9 +++----
>  arch/arm/mach-versatile/core.c |    7 ++++--
>  drivers/Makefile               |    1 +
>  drivers/amba/Makefile          |    2 ++
>  drivers/amba/bus.c             |  210 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/serial/amba-pl011.c    |   74 +++++++++++++++++++++++++++++++++++++++++++++++----------
>  include/linux/amba/bus.h       |  153 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/amba/serial.h    |   29 +++++++++++++++++++++++
>  8 files changed, 467 insertions(+), 18 deletions(-)
>  create mode 100644 drivers/amba/Makefile
>  create mode 100644 drivers/amba/bus.c
>  create mode 100644 include/linux/amba/bus.h
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
