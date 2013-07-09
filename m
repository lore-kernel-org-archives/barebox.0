Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwbi0-0006CH-Ci
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 17:28:13 +0000
Date: Tue, 9 Jul 2013 19:27:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709172750.GU516@pengutronix.de>
References: <20130709104659.GA19197@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130709104659.GA19197@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/3] ARM: AT91: drop config.h when possible
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 09, 2013 at 12:46:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	This serie remove the config.h on all the at91 execpt the rm9200 where
> 	some work need to be done at init level
> 	where sam9 are already converted to C struct
> 
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       ARM: at91: move main clock define to C
>       ARM: at91 boards: remove empty config.h files
>       ARM: AT91: Turn most board directories into regular build directories

Applied, thanks

Sascha

> 
>  arch/arm/Makefile                         | 25 -------------------------
>  arch/arm/boards/Makefile                  | 25 +++++++++++++++++++++++++
>  arch/arm/boards/animeo_ip/config.h        |  6 ------
>  arch/arm/boards/animeo_ip/init.c          |  7 +++++++
>  arch/arm/boards/at91rm9200ek/config.h     |  2 --
>  arch/arm/boards/at91rm9200ek/init.c       |  7 +++++++
>  arch/arm/boards/at91sam9260ek/config.h    |  6 ------
>  arch/arm/boards/at91sam9260ek/init.c      |  7 +++++++
>  arch/arm/boards/at91sam9261ek/config.h    |  6 ------
>  arch/arm/boards/at91sam9261ek/init.c      |  7 +++++++
>  arch/arm/boards/at91sam9263ek/config.h    |  6 ------
>  arch/arm/boards/at91sam9263ek/init.c      |  7 +++++++
>  arch/arm/boards/at91sam9m10g45ek/config.h |  6 ------
>  arch/arm/boards/at91sam9m10g45ek/init.c   |  7 +++++++
>  arch/arm/boards/at91sam9m10ihd/config.h   |  6 ------
>  arch/arm/boards/at91sam9m10ihd/init.c     |  7 +++++++
>  arch/arm/boards/at91sam9n12ek/config.h    |  6 ------
>  arch/arm/boards/at91sam9n12ek/init.c      |  7 +++++++
>  arch/arm/boards/at91sam9x5ek/config.h     |  6 ------
>  arch/arm/boards/at91sam9x5ek/init.c       |  7 +++++++
>  arch/arm/boards/dss11/config.h            |  6 ------
>  arch/arm/boards/dss11/init.c              |  7 +++++++
>  arch/arm/boards/mmccpu/config.h           |  6 ------
>  arch/arm/boards/mmccpu/init.c             |  7 +++++++
>  arch/arm/boards/pm9261/config.h           |  6 ------
>  arch/arm/boards/pm9261/init.c             |  7 +++++++
>  arch/arm/boards/pm9263/config.h           |  6 ------
>  arch/arm/boards/pm9263/init.c             |  7 +++++++
>  arch/arm/boards/pm9g45/config.h           |  6 ------
>  arch/arm/boards/pm9g45/init.c             |  7 +++++++
>  arch/arm/boards/qil-a926x/config.h        |  6 ------
>  arch/arm/boards/qil-a926x/init.c          |  7 +++++++
>  arch/arm/boards/sama5d3xek/config.h       |  6 ------
>  arch/arm/boards/sama5d3xek/init.c         |  7 +++++++
>  arch/arm/boards/telit-evk-pro3/config.h   |  6 ------
>  arch/arm/boards/telit-evk-pro3/init.c     |  7 +++++++
>  arch/arm/boards/tny-a926x/config.h        |  6 ------
>  arch/arm/boards/tny-a926x/init.c          |  7 +++++++
>  arch/arm/boards/usb-a926x/config.h        |  6 ------
>  arch/arm/boards/usb-a926x/init.c          |  7 +++++++
>  arch/arm/mach-at91/at91rm9200.c           |  3 ---
>  arch/arm/mach-at91/at91sam9260.c          |  3 ---
>  arch/arm/mach-at91/at91sam9261.c          |  3 ---
>  arch/arm/mach-at91/at91sam9263.c          |  3 ---
>  arch/arm/mach-at91/at91sam9g45.c          |  3 ---
>  arch/arm/mach-at91/at91sam9n12.c          |  3 ---
>  arch/arm/mach-at91/at91sam9x5.c           |  3 ---
>  arch/arm/mach-at91/clock.c                | 11 +++++++++--
>  arch/arm/mach-at91/generic.h              |  2 +-
>  arch/arm/mach-at91/include/mach/board.h   |  2 ++
>  arch/arm/mach-at91/sama5d3.c              |  3 ---
>  arch/arm/mach-at91/setup.c                |  4 ++++
>  52 files changed, 174 insertions(+), 162 deletions(-)
>  delete mode 100644 arch/arm/boards/animeo_ip/config.h
>  delete mode 100644 arch/arm/boards/at91sam9260ek/config.h
>  delete mode 100644 arch/arm/boards/at91sam9261ek/config.h
>  delete mode 100644 arch/arm/boards/at91sam9263ek/config.h
>  delete mode 100644 arch/arm/boards/at91sam9m10g45ek/config.h
>  delete mode 100644 arch/arm/boards/at91sam9m10ihd/config.h
>  delete mode 100644 arch/arm/boards/at91sam9n12ek/config.h
>  delete mode 100644 arch/arm/boards/at91sam9x5ek/config.h
>  delete mode 100644 arch/arm/boards/dss11/config.h
>  delete mode 100644 arch/arm/boards/mmccpu/config.h
>  delete mode 100644 arch/arm/boards/pm9261/config.h
>  delete mode 100644 arch/arm/boards/pm9263/config.h
>  delete mode 100644 arch/arm/boards/pm9g45/config.h
>  delete mode 100644 arch/arm/boards/qil-a926x/config.h
>  delete mode 100644 arch/arm/boards/sama5d3xek/config.h
>  delete mode 100644 arch/arm/boards/telit-evk-pro3/config.h
>  delete mode 100644 arch/arm/boards/tny-a926x/config.h
>  delete mode 100644 arch/arm/boards/usb-a926x/config.h
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
