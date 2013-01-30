Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0fI0-0006ge-As
 for barebox@lists.infradead.org; Wed, 30 Jan 2013 21:33:52 +0000
Date: Wed, 30 Jan 2013 22:33:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130130213349.GD1906@pengutronix.de>
References: <20130128092320.GQ26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130128092320.GQ26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] pbl: factorise decompress code and add none compress
 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 10:23:20AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> The following changes since commit cd1c289b2a4949e8acb235d4847419bde784a9d6:
> 
>   Merge branch 'for-next/misc' into next (2013-01-25 19:51:11 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/pbl

Applied, thanks

Sascha

> 
> for you to fetch changes up to c71c520fe4fc180c4546a37105ce2ed4fc674383:
> 
>   pbl: add none compression support (2013-01-24 06:30:57 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       pbl: move configs to pbl/Kconfig
>       pbl: factorise decompressor
>       pbl: add none compression support
> 
>  arch/arm/cpu/start-pbl.c        |   21 ++-------------------
>  arch/arm/pbl/Makefile           |    3 ++-
>  arch/arm/pbl/piggy.shipped.S    |    6 ++++++
>  arch/mips/boot/main_entry-pbl.c |   23 +----------------------
>  arch/mips/pbl/Makefile          |    3 ++-
>  arch/mips/pbl/piggy.shipped.S   |    6 ++++++
>  common/Kconfig                  |   42 +-----------------------------------------
>  include/pbl.h                   |   15 +++++++++++++++
>  pbl/Kconfig                     |   46 ++++++++++++++++++++++++++++++++++++++++++++++
>  pbl/Makefile                    |    1 +
>  pbl/decomp.c                    |   44 ++++++++++++++++++++++++++++++++++++++++++++
>  11 files changed, 126 insertions(+), 84 deletions(-)
>  create mode 100644 arch/arm/pbl/piggy.shipped.S
>  create mode 100644 arch/mips/pbl/piggy.shipped.S
>  create mode 100644 include/pbl.h
>  create mode 100644 pbl/Kconfig
>  create mode 100644 pbl/decomp.c
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
