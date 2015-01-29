Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGk5e-0005rF-TJ
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 08:04:39 +0000
Date: Thu, 29 Jan 2015 09:04:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129080414.GS12209@pengutronix.de>
References: <1422497647-28863-1-git-send-email-yamada.m@jp.panasonic.com>
 <20150129125419.69CD.AA925319@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150129125419.69CD.AA925319@jp.panasonic.com>
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
Subject: Re: [PATCH 0/3] Slim down include/common.h more
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 12:54:20PM +0900, Masahiro Yamada wrote:
> 
> On Thu, 29 Jan 2015 11:14:04 +0900
> Masahiro Yamada <yamada.m@jp.panasonic.com> wrote:
> 
> > 
> > 
> > 
> > Masahiro Yamada (3):
> >   linux/bug.h: move BUILD_BUG_ON*() macros
> >   asm-generic/bug.h: move BUG(), BUG_ON(), WARN(), WARN_ON() macros
> >   linux/kernel.h: move some macros and prototypes
> > 
> >  include/asm-generic/bug.h |  37 ++++++++++++++++
> >  include/common.h          | 108 ----------------------------------------------
> >  include/linux/bug.h       |  30 +++++++++++++
> >  include/linux/kernel.h    |  61 ++++++++++++++++++++++++++
> >  4 files changed, 128 insertions(+), 108 deletions(-)
> >  create mode 100644 include/asm-generic/bug.h
> >  create mode 100644 include/linux/bug.h
> > 
> > -- 
> > 1.9.1
> 
> 
> Sascha,
> Please apply this series to for-next/minmax branch
> to avoid conflicts.

Did that, thanks

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
