Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPT1y-000255-CS
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:31:51 +0000
Date: Tue, 9 Apr 2013 09:31:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409073148.GE1906@pengutronix.de>
References: <1365324537-23090-1-git-send-email-shc_work@mail.ru>
 <1365324537-23090-2-git-send-email-shc_work@mail.ru>
 <20130409064908.GX1906@pengutronix.de>
 <1365490336.8263645@f289.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365490336.8263645@f289.mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM: i.MX: Update MX51 iomux definitions
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Apr 09, 2013 at 10:52:16AM +0400, Alexander Shiyan wrote:
> > On Sun, Apr 07, 2013 at 12:48:57PM +0400, Alexander Shiyan wrote:
> > > The patch updates MX51 iomux definitions from kernel.
> > > =

> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > =

> > This patch effectively reverts:
> > =

> > commit 298d15571da8d1cb71e7fd87cc53cad3b2bf1d12
> > Author: Eric B=E9nard <eric@eukrea.com>
> > Date:   Thu Sep 6 21:39:30 2012 +0200
> > =

> >     i.MX51: unbreak FEC iomux
> >     =

> >     in commit 2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6 the iomux was sy=
nced
> >     with the kernel but this leads to some changes in the PAD_CTRL of s=
ome
> >     FEC pins leading to a non working FEC on our cpuimx51 board.
> >     =

> >     This patch set back the PAD_CTRL of the missing pins to the initial
> >     value.
> >     =

> >     Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > =

> > You shouldn't do this.
> =

> What about write a patch for the kernel for this?

By the time I applied Erics patch I considered the days of the
traditional iomux support in the kernel counted. From that day on
we have to maintain our own versions anyway.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
