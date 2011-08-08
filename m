Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqKKP-0001Tz-6R
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 07:32:50 +0000
Date: Mon, 8 Aug 2011 09:32:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110808073247.GO31404@pengutronix.de>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
	<20110808070650.GA22017@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110808070650.GA22017@game.jcrosoft.org>
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
Subject: Re: ARM: use high vectors if possible
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Mon, Aug 08, 2011 at 09:06:50AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:46 Mon 08 Aug     , Sascha Hauer wrote:
> > Created this series to get high vector support. Using high vectors
> > at 0xffff0000 allow us to map in a faulting page at 0x0 with which
> > we can catch NULL pointer dereferences. The other patches are only
> > some cleanups around exceptions which I came along the way.
> be careful on ixp4xx (which I work on 0x0 is the nor flash address)

Well, we already map the vectors to 0x0 without this series, so ixp4xx
is broken anyway.
So we either have to add a flag somewhere to disable mapping anything
to 0x0 or we have to use the mmu to map the nor flash somewhere else.

I see this is a problem which must be solved, but this series does not
change the current situation in this regard.

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
