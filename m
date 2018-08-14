Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpTAb-00073a-HC
 for barebox@lists.infradead.org; Tue, 14 Aug 2018 06:51:11 +0000
Date: Tue, 14 Aug 2018 08:50:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180814065049.xvsthqksytvlhq4a@pengutronix.de>
References: <20180810185033.7019-1-andrew.smirnov@gmail.com>
 <20180813063405.4jszcah25tsy6abn@pengutronix.de>
 <20180813212305.r6wnpieo3j554xqd@pengutronix.de>
 <CAHQ1cqFLfhYuq065CQcTuBQ2TMr1==RRAKkzYk8EDmmSNapcqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFLfhYuq065CQcTuBQ2TMr1==RRAKkzYk8EDmmSNapcqQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: freescale-mx6sx-sabresdb: Make
 ar8031_phy_fixup static
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 13, 2018 at 04:20:48PM -0700, Andrey Smirnov wrote:
> On Mon, Aug 13, 2018 at 2:23 PM Robert Schwebel
> <r.schwebel@pengutronix.de> wrote:
> >
> > On Mon, Aug 13, 2018 at 08:34:05AM +0200, Sascha Hauer wrote:
> > > On Fri, Aug 10, 2018 at 11:50:33AM -0700, Andrey Smirnov wrote:
> > > > Declare ar8031_phy_fixup as static since it is not being exported to
> > > > any other users.
> > > > ---
> > > >  arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > Applied, thanks
> >
> > Signed-off is missing.
> >
> 
> Ugh, sorry about that. Sascha, let me know if I should submit v2 with
> my Signed-off added.

Hm, no. It's already in master so I think we have to live with it.

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
