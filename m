Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT19f-0001hd-Jf
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:29:25 +0000
Date: Wed, 13 Jun 2018 10:29:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613082912.toex3meeirdtpb7j@pengutronix.de>
References: <20180501064714.11780-1-andrew.smirnov@gmail.com>
 <20180502102703.r4vs4fyssdm2aaz6@pengutronix.de>
 <CAHQ1cqF5DjTa_MvFpNzAv0eaNuuhYCg2pA5pXWFbrDPootKC2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqF5DjTa_MvFpNzAv0eaNuuhYCg2pA5pXWFbrDPootKC2g@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM: VFxxx: Record cpu boot source as a part of startup
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 12, 2018 at 06:44:42AM -0700, Andrey Smirnov wrote:
> On Wed, May 2, 2018 at 3:27 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Mon, Apr 30, 2018 at 11:47:14PM -0700, Andrey Smirnov wrote:
> > > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > > ---
> > >
> > > Same as original patch, but with fixed subject line.
> > >
> > >  arch/arm/mach-imx/vf610.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> >
> > Applied, thanks
> >
> 
> Sascha, I can't seem to find that patch either 'next' of 'master'. Any
> chance this patch slipped through the cracks?

Indeed. Applied now

Sascha

> 
> Thanks,
> Andrey Smirnov
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
