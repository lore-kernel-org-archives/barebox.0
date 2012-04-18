Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKZqD-0007ad-5t
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 18:43:02 +0000
Date: Wed, 18 Apr 2012 20:42:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418184241.GW3852@pengutronix.de>
References: <20120418120230.GC1980@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120418120230.GC1980@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/5 v2] introduce binfmt support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 18, 2012 at 02:02:30PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,i
> 
> 	the following patch series
> 
> 	Introduce binfmt support
> 
> 	This will allow to execute any file and detect it's type to handle it.
> 	This will allow to use shell for bootp bootfile or dfu.
> 
> v2:
> 
> fix simple conole support
> rebase against next
> 
> The following changes since commit a2d2e8868fe3c963ebac634b695ae18bb4b411ca:
> 
>   config: switch machine to hostname (2012-04-18 12:03:58 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git binfmt

Pulled, thanks.

Sascha

> 
> for you to fetch changes up to 2b26b148f4c8633a19bca0cbb96d4393ece8f54e:
> 
>   defaultenv: add binfmt support (2012-04-18 20:19:20 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (5):
>       filetype: add Bourne Shell support
>       Introduce binfmt support
>       bootm: add uimage binfmt support
>       arm: bootm: add barebox, zImage and aImage binfmt support
>       defaultenv: add binfmt support
> 
>  arch/arm/lib/bootm.c |   22 +++++++++++-
>  commands/bootm.c     |   12 ++++++
>  common/Kconfig       |    5 +++
>  common/Makefile      |    1 +
>  common/binfmt.c      |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  common/filetype.c    |    3 ++
>  common/hush.c        |   31 ++++++++++------
>  defaultenv/bin/boot  |    4 ++
>  include/binfmt.h     |   39 ++++++++++++++++++++
>  include/filetype.h   |    1 +
>  10 files changed, 200 insertions(+), 13 deletions(-)
>  create mode 100644 common/binfmt.c
>  create mode 100644 include/binfmt.h
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
