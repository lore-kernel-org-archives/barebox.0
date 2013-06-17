Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoUMz-0007o0-7H
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 08:00:59 +0000
Message-ID: <1371456029.5079.0.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Mon, 17 Jun 2013 10:00:29 +0200
In-Reply-To: <20130617071451.GH32299@pengutronix.de>
References: <1369741903-24988-2-git-send-email-j.weitzel@phytec.de>
 <20130608131315.GC26150@pengutronix.de>
 <1371021279.4131.1.camel@lws-weitzel>
 <20130617071451.GH32299@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH] OMAP4: Use default clock source for mcbsp
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 17.06.2013, 09:14 +0200 schrieb Sascha Hauer:
> On Wed, Jun 12, 2013 at 09:14:39AM +0200, Jan Weitzel wrote:
> > Am Samstag, den 08.06.2013, 15:13 +0200 schrieb Sascha Hauer:
> > > On Tue, May 28, 2013 at 01:51:40PM +0200, Jan Weitzel wrote:
> > > > In omap4_enable_all_clocks we not only enable the mcbsp clocks, but also
> > > > change the source from ABE_24M_FCLK to 24M_FCLK. Revert this and default
> > > > to the reset state.
> > > > 
> > > > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > > 
> > > Applied, thanks
> > Didn't find it on next or master branch. Is rework needed?
> 
> Look again, it should be there now.
Thanks :)
Jan

> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
