Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggtLu-0008OL-0E
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 15:31:39 +0000
Date: Tue, 8 Jan 2019 16:31:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190108153136.4zajgi4q4oomrsj5@pengutronix.de>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
 <CAHQ1cqE4Yw42KROoddZ_1OabhwN7jrutbA_u3LDGkgJrz1X=DA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE4Yw42KROoddZ_1OabhwN7jrutbA_u3LDGkgJrz1X=DA@mail.gmail.com>
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
Subject: Re: [PATCH v2 00/65] PCI i.MX6/DesignWare sync up with 4.20-rc1
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 07, 2019 at 02:55:56PM -0800, Andrey Smirnov wrote:
> On Sun, Dec 16, 2018 at 9:19 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> >
> > Everyone:
> >
> > As a part of working on adding support for PCI on i.MX7D/8MQ, I spent
> > some time looking through Linux commit history of pci-imx6.c and
> > pcie-designware*.c and porting various patches to minimize the
> > differences between the two codebases. This series is the result of
> > that effort. All of the patches are either fixes for missed corner
> > cases or code simplifications/improvements, so no functonal changes
> > are expected.
> >
> > Tested on ZII RDU2 i.MX6Q board with i210 Ethernet card by booting
> > 4.20-rc1 via TFTP (via PCI/i210). Also tested as a part of adding on
> > i.MX7D/i.MX8MQ suport on i.MX7D SabreSD and i.MX8MQ RDU3 boards.
> >
> > Feedback is welcome!
> >
> > Changes since v1:
> >
> >   - Fixed incorrect check/bug in "PCI: designware: Keep viewport fixed
> >     for IO transaction if num_viewport > 2"
> >
> >   - Added patches containing code to support iATU unroll in order to
> >     support i.MX8MQ
> >
> > Thanks,
> > Andrey Smirnov
> 
> Sascha:
> 
> Just to make sure, this series is in you review queue and it didn't
> get lost, correct?

Hm, yes of course :)

I applied this series without looking at it. I hope nobody else realizes
he just has to send that many patches to bypass any review :/

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
