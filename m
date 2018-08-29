Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuv6t-0008Tm-GE
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:42:06 +0000
Date: Wed, 29 Aug 2018 09:41:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180829074139.iyoxmrx6fbxiw2cd@pengutronix.de>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
 <20180827074939.wx7vzos7qg7o23hb@pengutronix.de>
 <CAHQ1cqGKKAvs25KOCD9nznQ2bXgqMtQ4L9zeyyDPQ=3j_bDYew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGKKAvs25KOCD9nznQ2bXgqMtQ4L9zeyyDPQ=3j_bDYew@mail.gmail.com>
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
Subject: Re: [PATCH 0/6] i.MX51 RDU1 and Babbage USB fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Aug 28, 2018 at 08:03:18PM -0700, Andrey Smirnov wrote:
> On Mon, Aug 27, 2018 at 12:49 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On Sat, Aug 25, 2018 at 02:03:09PM -0700, Andrey Smirnov wrote:
> > > Everyone:
> > >
> > > These patches are a number of fixes I came up with while looking into
> > > USB related problems on Babbage board.
> > >
> > > Feedback is welcome!
> > >
> > > Thanks,
> > > Andrey Smirnov
> > >
> > > Andrey Smirnov (6):
> > >   clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
> > >   ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
> > >   ARM: freescale-mx51-babbage: Swtich to using Linux clock tree
> > >   ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
> > >   dts: imx51-babbage: Add USBH1 iomux configuration
> > >   ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration
> >
> > do 4/6 - 6/6 depend on the first three? If not I would apply them
> > independently.
> 
> I don't believe they are. Should be safe to apply independently.

Ok, just did that.

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
