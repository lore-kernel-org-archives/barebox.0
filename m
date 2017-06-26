Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPNTb-00055H-BQ
 for barebox@lists.infradead.org; Mon, 26 Jun 2017 06:26:25 +0000
Date: Mon, 26 Jun 2017 08:25:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170626062557.5kaeyculqgi3mske@pengutronix.de>
References: <1497361020-33828-1-git-send-email-d.schultz@phytec.de>
 <20170619073427.oja6l4ebvqjc3fp7@pengutronix.de>
 <661a7f8c-9ba8-bd25-7eb9-da77e6fb7ed4@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <661a7f8c-9ba8-bd25-7eb9-da77e6fb7ed4@phytec.de>
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
Subject: Re: [PATCH] defaultenv: bin: init: Add sourcing of config-expansions
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 20, 2017 at 05:50:56PM +0200, Daniel Schultz wrote:
> Hi,
> 
> Am 19.06.2017 um 09:34 schrieb Sascha Hauer:
> > On Tue, Jun 13, 2017 at 03:37:00PM +0200, Daniel Schultz wrote:
> > > This patch adds a further layer to the config hierarchy. It allows a
> > > dynamic configuration of expansions.
> > > 
> > > Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> > > ---
> > >   defaultenv/defaultenv-2-base/bin/init | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
> > > index 7af3c7d..a93ea58 100644
> > > --- a/defaultenv/defaultenv-2-base/bin/init
> > > +++ b/defaultenv/defaultenv-2-base/bin/init
> > > @@ -25,6 +25,7 @@ magicvar -a global.allow_color "Allow color on the console (boolean)"
> > >   [ -z "${global.editcmd}" ] && global.editcmd=sedit
> > >   [ -e /env/config-board ] && /env/config-board
> > > +[ -e /env/config-expansions ] && /env/config-expansions
> > 
> > I read the last thread again and I think my question remains
> > unanswered. Why can't you put the config-expansions to /env/init/ and
> > let it be executed automatically without changing /bin/init?
> > 
> I can change the path of the config-expanions file without problems, but I
> thought there could be more who need a config for expansions. So, they have
> config files with a same behavior in different dirs.

I think we are talking at cross-purposes. All files in /env/init/ are
executed by the init script, so adding stuff that shall be executed
during init to that directory would be the natural way to "expand the
config".

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
