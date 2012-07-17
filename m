Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrCnN-0007ir-C6
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 18:46:54 +0000
Date: Tue, 17 Jul 2012 20:46:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120717184641.GC30009@pengutronix.de>
References: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH 0/2] imx: add matrix keypad (kpp) input driver
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Mon, Jul 16, 2012 at 01:40:28PM +0200, Christian Kapeller wrote:
> This patchset adds support for the imx matrix keypad peripheral (kpp). I've
> fleshed out the linux keypad driver, and remodeled it after the gpio_keys
> driver.
> 
> Currently platform helper functions are only provided for the imx51.
> 

Applied, thanks

Sascha

> Christian Kapeller (2):
>   input: Add i.MX matrix keypad driver
>   input: add i.MX51 platform code for matrix keypad driver
> 
>  arch/arm/mach-imx/devices.c                    |    5 +
>  arch/arm/mach-imx/include/mach/devices-imx51.h |    4 +
>  arch/arm/mach-imx/include/mach/devices.h       |    2 +
>  drivers/input/Kconfig                          |   13 +
>  drivers/input/Makefile                         |    1 +
>  drivers/input/imx_keypad.c                     |  463 ++++++++++++++++++++++++
>  include/matrix_keypad.h                        |   59 +++
>  7 files changed, 547 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/input/imx_keypad.c
>  create mode 100644 include/matrix_keypad.h
> 
> -- 
> 1.7.5.4
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
