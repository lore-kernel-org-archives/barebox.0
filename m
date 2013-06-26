Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrjxJ-00054X-Fd
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 07:15:54 +0000
Received: from mail97.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 175A4104FADB
 for <barebox@lists.infradead.org>; Wed, 26 Jun 2013 09:15:28 +0200 (CEST)
Date: Wed, 26 Jun 2013 09:11:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130626071134.GK27130@game.jcrosoft.org>
References: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
 <1372017777-787-4-git-send-email-s.hauer@pengutronix.de>
 <20130624083908.GJ27130@game.jcrosoft.org>
 <20130624092038.GT32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130624092038.GT32299@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: Turn most board directories into regular
 build directories
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:20 Mon 24 Jun     , Sascha Hauer wrote:
> On Mon, Jun 24, 2013 at 10:39:08AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 22:02 Sun 23 Jun     , Sascha Hauer wrote:
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Why you did not move all of them?
> 
> Because they have a board specific config.h file which is not
> found when $(BOARD) is empty.
> 
> Quoting my introductory mail:
> 
> > Jean-Christophe, I'd like to get rid of the remaining config.h
> > files. The bulk of the remaining ones are at91 and most of
> > them contain a single define for AT91_MAIN_CLK. Could you work
> > on this? I could do it myself but I'm sure you have your own
> > idea how this should be accomplished.

ok was not yet fully recovered

I need to cleanup this I agree

will do so

Best Regards,
J.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
