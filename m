Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpKJ6-0002v5-MS
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 21:23:22 +0000
Date: Mon, 13 Aug 2018 23:23:05 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20180813212305.r6wnpieo3j554xqd@pengutronix.de>
References: <20180810185033.7019-1-andrew.smirnov@gmail.com>
 <20180813063405.4jszcah25tsy6abn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180813063405.4jszcah25tsy6abn@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Mon, Aug 13, 2018 at 08:34:05AM +0200, Sascha Hauer wrote:
> On Fri, Aug 10, 2018 at 11:50:33AM -0700, Andrey Smirnov wrote:
> > Declare ar8031_phy_fixup as static since it is not being exported to
> > any other users.
> > ---
> >  arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Applied, thanks

Signed-off is missing.

rsc
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
