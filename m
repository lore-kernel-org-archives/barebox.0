Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU5Z8-0002wZ-C3
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 07:56:24 +0000
Date: Tue, 4 Dec 2018 08:56:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181204075609.tpjioghylxhkse2x@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-8-s.trumtrar@pengutronix.de>
 <20181203044952.GA29581@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181203044952.GA29581@ravnborg.org>
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
Subject: Re: [PATCH 07/15] Makefile: link of barebox moved to script
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Mon, Dec 03, 2018 at 05:49:52AM +0100, Sam Ravnborg wrote:
> Hi Steffen.
> 
> In general - nice patch series.
> 
> On Thu, Nov 29, 2018 at 12:30:40PM +0100, Steffen Trumtrar wrote:
> > Adoption of the linux v3.4 patch: 1f2bfbd00e466ff3489b2ca5cc75b1cccd14c123
> 
> It would be simpler if you just synchronized the current state of the
> link script - it has seen many improvements since the introduction.

The script differs from the Kernel version (s/linux/barebox/ for
example) in several ways, so I think a plain "move to script" makes
sense and then do the update to the recent kernel version as a separate
step.

I wouldn't care much if Steffen used the recent kernel version in the
first place, but now that he already made it this way already, we could
just add a "update to recent kernel version" patch as a followup.

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
