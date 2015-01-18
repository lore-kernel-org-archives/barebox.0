Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCyB1-0000fq-65
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 22:18:36 +0000
Received: by mail-la0-f48.google.com with SMTP id gf13so25930819lab.7
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 14:18:12 -0800 (PST)
Date: Mon, 19 Jan 2015 02:20:49 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150119022049.b32c9eb741bc2eeec57c05ef@gmail.com>
In-Reply-To: <20150113063128.GC30554@ns203013.ovh.net>
References: <20150113063128.GC30554@ns203013.ovh.net>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6 v2] raspberry-pi: updates
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, 13 Jan 2015 07:31:28 +0100
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> Hi,
> =

> 	v2:
> =

> 		send correct leds patch


IMHO we have to enable LED stuff in rpi_defconfig.


> 	The following patch serie prepare the raspberry for USB support
> =

> The following changes since commit 9cd14d260aa22ae089f81a07be2c0e5dea2ffc=
94:
> =

>   Merge branch 'for-next/pbl-console' (2015-01-09 17:38:27 +0100)
> =

> are available in the git repository at:
> =

>   git://git.jcrosoft.org/barebox.git delivery/rpi
> =

> for you to fetch changes up to 70d2d564af770d99c0e8a4fbfa314e6d55d58629:
> =

>   regulator: add bcm2835 driver (2015-01-11 19:04:06 +0800)
> =

> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (6):
>       raspberry-pi: add board model detection
>       raspberry-pi: add leds support
>       amba: pl011: add support for regulator
>       driver: add postcore_platform_driver
>       regulator: allow to use it with non DT device
>       regulator: add bcm2835 driver
> =

>  arch/arm/boards/raspberry-pi/env/init/ps1 |   7 +++++++
>  arch/arm/boards/raspberry-pi/rpi.c        | 138 ++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++-
>  arch/arm/mach-bcm2835/include/mach/mbox.h |  83 ++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/regulator/Kconfig                 |   7 ++++++-
>  drivers/regulator/Makefile                |   1 +
>  drivers/regulator/bcm2835.c               | 149 ++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/regulator/core.c                  |  98 ++++++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
>  drivers/serial/amba-pl011.c               |  11 +++++++++++
>  include/driver.h                          |   2 ++
>  include/regulator.h                       |  10 ++++++++++
>  10 files changed, 488 insertions(+), 18 deletions(-)
>  create mode 100644 arch/arm/boards/raspberry-pi/env/init/ps1
>  create mode 100644 drivers/regulator/bcm2835.c
> =

> Best Regards,
> J.
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
