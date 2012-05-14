Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STqQ2-0004oe-Ps
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:14:15 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 10:13:05 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-4-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1336912806-4163-4-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141013.05760.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Alexey Galakhov wrote:
> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> ---
>  arch/arm/Kconfig                                   |    6 +
>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/tiny210/Makefile                   |    1 +
>  arch/arm/boards/tiny210/config.h                   |    1 +
>  arch/arm/boards/tiny210/lowlevel.c                 |   41 +
>  arch/arm/boards/tiny210/tiny210.c                  |  113 +++
>  arch/arm/mach-samsung/Kconfig                      |   24 +
>  arch/arm/mach-samsung/Makefile                     |    1 +
>  arch/arm/mach-samsung/clocks-s5pcxx.c              |   98 +++
>  arch/arm/mach-samsung/gpio-s5pcxx.c                |  123 +++
>  arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h |   55 ++
>  arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
>  arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h  |   49 ++
>  arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++++++++
>  arch/arm/mach-samsung/include/mach/s3c-clocks.h    |    3 +
>  arch/arm/mach-samsung/include/mach/s3c-iomap.h     |    3 +
>  16 files changed, 1320 insertions(+)
>  create mode 100644 arch/arm/boards/tiny210/Makefile
>  create mode 100644 arch/arm/boards/tiny210/config.h
>  create mode 100644 arch/arm/boards/tiny210/lowlevel.c
>  create mode 100644 arch/arm/boards/tiny210/tiny210.c
>  create mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
>  create mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
>  create mode 100644 arch/arm/mach-samsung/include/mach/clocks-s5pcxx.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/iomap-s5pcxx.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
> [...]

This patch series reflects your development steps (2nd stage first, then
native boot support). But this is not useful when including the results into
the Barebox repository.

For example you should add your new platform at the end of this patch series
after all the required preparations are done to make it work.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
