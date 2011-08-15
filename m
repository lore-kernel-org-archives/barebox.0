Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qsr68-0004zh-HG
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 06:56:33 +0000
Date: Mon, 15 Aug 2011 08:56:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110815065629.GS31404@pengutronix.de>
References: <1313155927-30300-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1313155927-30300-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/2] kconfig: sync with linux v3.1-rc1
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 12, 2011 at 03:32:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to use new introduce IS_BUILTIN, IS_ENABLE and IS_MODULE
> macro and drop as much as possible
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  Makefile                                 |    2 +-
>  scripts/kconfig/Makefile                 |   85 +++-----
>  scripts/kconfig/conf.c                   |   50 ++++-
>  scripts/kconfig/confdata.c               |  309 +++++++++++++++++++-----------
>  scripts/kconfig/expr.c                   |   13 +-
>  scripts/kconfig/expr.h                   |    7 -
>  scripts/kconfig/gconf.c                  |   50 +----
>  scripts/kconfig/kxgettext.c              |    1 -
>  scripts/kconfig/lkc.h                    |   18 +--
>  scripts/kconfig/lkc_proto.h              |    1 +
>  scripts/kconfig/lxdialog/BIG.FAT.WARNING |    2 +-
>  scripts/kconfig/mconf.c                  |    2 +-
>  scripts/kconfig/menu.c                   |    5 +-
>  scripts/kconfig/nconf.c                  |   44 ++---
>  scripts/kconfig/qconf.cc                 |   22 ++-
>  scripts/kconfig/qconf.h                  |    2 +-
>  scripts/kconfig/streamline_config.pl     |   16 +-
>  scripts/kconfig/symbol.c                 |   47 +++++-
>  scripts/kconfig/util.c                   |    2 +
>  scripts/kconfig/zconf.gperf              |    2 +-
>  scripts/kconfig/zconf.hash.c_shipped     |  273 +++++++++++++++-----------
>  scripts/kconfig/zconf.l                  |   44 +++--
>  scripts/kconfig/zconf.tab.c_shipped      |   71 ++++----
>  scripts/kconfig/zconf.y                  |   21 +--
>  24 files changed, 598 insertions(+), 491 deletions(-)

Did you forget to git add something?

  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/basic/docproc
make[1]: *** No rule to make target `scripts/kconfig/zconf.lex.c', needed by `scripts/kconfig/zconf.tab.o'.  Stop.
make[1]: *** Waiting for unfinished jobs....
  HOSTCC  scripts/kconfig/conf.o
make: *** [freescale_mx51_babbage_defconfig] Error 2

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
