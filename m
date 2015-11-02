Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zt9Cy-0005nl-Pt
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 07:07:13 +0000
Date: Mon, 2 Nov 2015 08:06:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151102070650.GE25308@pengutronix.de>
References: <1446209700-21282-1-git-send-email-tritel59@gmail.com>
 <20151101091258.42b5fa76f90ea1e9dee76ffe@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151101091258.42b5fa76f90ea1e9dee76ffe@gmail.com>
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
Subject: Re: [PATCH] login: make some locally used functions static
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Sergey Koshechkin <tritel59@gmail.com>

On Sun, Nov 01, 2015 at 09:12:58AM +0300, Antony Pavlov wrote:
> On Fri, 30 Oct 2015 15:55:00 +0300
> Sergey Koshechkin <tritel59@gmail.com> wrote:
> 
> > This patch continues cleanup password code from
> > 
> >   commit 40596b856f61c281fb34f804bf42550c099f26c3
> >   Author: Sascha Hauer <s.hauer@pengutronix.de>
> >   Date:   Thu Aug 27 15:58:50 2015 +0200
> > 
> >       login: cleanup password code
> 
> 
> ... and this patch fixes some 'no previous prototype' warnings:

Which by the way are only enabled on Mips. The other architectueres do
not enable -Wmissing-prototypes. I just tried setting this on Arm and
got many warnings. Maybe we should set this everywhere (in the toplevel
Makefile?). That would help fixing these earlier.

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
