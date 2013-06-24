Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur2xK-0002nd-5V
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 09:21:02 +0000
Date: Mon, 24 Jun 2013 11:20:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130624092038.GT32299@pengutronix.de>
References: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
 <1372017777-787-4-git-send-email-s.hauer@pengutronix.de>
 <20130624083908.GJ27130@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130624083908.GJ27130@game.jcrosoft.org>
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
Subject: Re: [PATCH 3/3] ARM: Turn most board directories into regular build
 directories
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 10:39:08AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:02 Sun 23 Jun     , Sascha Hauer wrote:
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Why you did not move all of them?

Because they have a board specific config.h file which is not
found when $(BOARD) is empty.

Quoting my introductory mail:

> Jean-Christophe, I'd like to get rid of the remaining config.h
> files. The bulk of the remaining ones are at91 and most of
> them contain a single define for AT91_MAIN_CLK. Could you work
> on this? I could do it myself but I'm sure you have your own
> idea how this should be accomplished.

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
