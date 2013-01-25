Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TynCM-000202-Uw
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 17:36:19 +0000
Date: Fri, 25 Jan 2013 18:36:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130125173617.GM1906@pengutronix.de>
References: <20130123204916.GS26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130123204916.GS26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] tny-a9263: add spi + bootstrap support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 23, 2013 at 09:49:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	depends on console none
> 
> The following changes since commit e75f727c6e048c9978cb47cb8af92488a8251569:
> 
>   introduce console none support (2013-01-19 11:51:53 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/tny_a9263

Applied, thanks

Sascha

> 
> for you to fetch changes up to 5b41b075420e3547a9dfa7ef1bc0ba015af9db98:
> 
>   tny_a9263: add bootstrop support (2013-01-19 14:41:24 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       tny-a9263: add dataflash support
>       tny_a9263: add bootstrop support
> 
>  arch/arm/boards/tny-a926x/Makefile                  |    9 +++++++++
>  arch/arm/boards/tny-a926x/init.c                    |   43 ++++++++++++++++++++++++++++++-------------
>  arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c     |   16 ++++++++++++++++
>  arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c |  107 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/configs/tny_a9263_bootstrap_defconfig      |   26 ++++++++++++++++++++++++++
>  arch/arm/configs/tny_a9263_defconfig                |    1 +
>  arch/arm/mach-at91/Kconfig                          |    1 +
>  7 files changed, 190 insertions(+), 13 deletions(-)
>  create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
>  create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
>  create mode 100644 arch/arm/configs/tny_a9263_bootstrap_defconfig
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
