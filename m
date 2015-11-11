Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwPxg-0005Xg-4B
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:36:56 +0000
Date: Wed, 11 Nov 2015 08:36:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151111073634.GK8526@pengutronix.de>
References: <1447063593-23825-1-git-send-email-serge.koshechkin@gmail.com>
 <20151110074043.GC8526@pengutronix.de>
 <CAJgjPtDfO=59Q=nxBd6uKyy-hujyz9CBWg4HsQ22teksTfyMdw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJgjPtDfO=59Q=nxBd6uKyy-hujyz9CBWg4HsQ22teksTfyMdw@mail.gmail.com>
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
Subject: Re: [PATCH] docproc: sync with linux-4.3 kernel
To: Sergey Koshechkin <serge.koshechkin@gmail.com>
Cc: barebox@lists.infradead.org, "Antony N. Pavlov" <antony@niisi.msk.ru>

On Tue, Nov 10, 2015 at 11:04:46PM +0300, Sergey Koshechkin wrote:
> Hi Sascha,
> 
> On Tue, Nov 10, 2015 at 10:40 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Sergey,
> >
> > On Mon, Nov 09, 2015 at 01:06:33PM +0300, Sergey Koshechkin wrote:
> >> Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
> >> ---
> >>  scripts/basic/docproc.c | 334 +++++++++++++++++++++++++++++++++++++-----------
> >>  1 file changed, 256 insertions(+), 78 deletions(-)
> >
> > What's the motivation for updating this file? Is it even used in
> > barebox?
> 
> The motivation was to defeat "missing prototypes".
> But It seems you are right. I tryied to compile docs without docproc.c
> and everything looks fine.
> Can we drop it then?

Yes, docproc.c should be removed.

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
