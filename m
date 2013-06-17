Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoTei-0006pT-Tg
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 07:15:19 +0000
Date: Mon, 17 Jun 2013 09:14:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617071451.GH32299@pengutronix.de>
References: <1369741903-24988-2-git-send-email-j.weitzel@phytec.de>
 <20130608131315.GC26150@pengutronix.de>
 <1371021279.4131.1.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371021279.4131.1.camel@lws-weitzel>
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
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 12, 2013 at 09:14:39AM +0200, Jan Weitzel wrote:
> Am Samstag, den 08.06.2013, 15:13 +0200 schrieb Sascha Hauer:
> > On Tue, May 28, 2013 at 01:51:40PM +0200, Jan Weitzel wrote:
> > > In omap4_enable_all_clocks we not only enable the mcbsp clocks, but also
> > > change the source from ABE_24M_FCLK to 24M_FCLK. Revert this and default
> > > to the reset state.
> > > 
> > > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > 
> > Applied, thanks
> Didn't find it on next or master branch. Is rework needed?

Look again, it should be there now.

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
