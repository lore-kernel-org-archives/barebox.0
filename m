Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThIAU-0000cK-TD
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 11:02:04 +0000
Date: Sat, 8 Dec 2012 12:01:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121208110158.GE10369@pengutronix.de>
References: <1354792603-15915-1-git-send-email-fabio.porcedda@gmail.com>
 <20121207065249.GK8327@game.jcrosoft.org>
 <20121207083012.GB10369@pengutronix.de>
 <20121207200657.GM8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121207200657.GM8327@game.jcrosoft.org>
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
Subject: Re: [PATCH v2] at91: reorder BOARDINFO alphabetically
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 07, 2012 at 09:06:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:30 Fri 07 Dec     , Sascha Hauer wrote:
> > On Fri, Dec 07, 2012 at 07:52:49AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 12:16 Thu 06 Dec     , Fabio Porcedda wrote:
> > > > This is to have a nicely ordered list and to decrease the
> > > > likelihood of a conflict when adding a new board.
> > > > 
> > > > Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> > > > Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > > v2:
> > > NAK
> > > 
> > > I order them by Kconfig keepo  it that way
> > 
> > I'd say it makes more sense to keep them in the order the user actually
> > sees them, it makes it easier to find the entries. What's the value in
> > ordering them by Kconfig name?
> > If you order them by Kconfig name, the Calao boards end up in three
> > different places in the user visible view.
> 
> I do it the same we do on the kernel
> and I do want to keep that way the board are order by Kconfig

'keep' the way implies that they are ordered, they are not.

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
