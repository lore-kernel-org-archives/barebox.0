Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMJP5-0002MV-Ir
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 13:34:08 +0000
Date: Mon, 23 Apr 2012 15:34:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120423133400.GF3852@pengutronix.de>
References: <20120423113434.GR20601@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120423113434.GR20601@game.jcrosoft.org>
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
Subject: Re: [PULL] fixes
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 23, 2012 at 01:34:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	please pull the following fixes
> 
> The following changes since commit a4e30cd9163ac4a44454ef2e43bf01c6439c08e0:
> 
>   netX: ignoring temporary netx build tool (2012-04-23 07:52:47 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git fixes

Pulled, thanks

Sascha

> 
> for you to fetch changes up to b108afa01ac0ceb72db750fefd32a67c0247c9ca:
> 
>   menu: fix menu alloc init (2012-04-23 19:51:06 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (4):
>       usb: fix driver name
>       menu: fix non command management support
>       menu: fix support for "\n", "\n\r" and "\r"
>       menu: fix menu alloc init
> 
>  commands/menu.c           |   17 +++++++++--------
>  common/menu.c             |    8 +++++++-
>  drivers/usb/core/usb.c    |    1 +
>  drivers/usb/storage/usb.c |    1 -
>  include/menu.h            |    1 +
>  5 files changed, 18 insertions(+), 10 deletions(-)
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
