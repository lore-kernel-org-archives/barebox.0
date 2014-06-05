Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WsdNT-0004I2-1l
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 19:31:08 +0000
Date: Thu, 5 Jun 2014 21:30:40 +0200
From: Robert Schwebel <robert@schwebel.de>
Message-ID: <20140605193040.GQ22169@pengutronix.de>
References: <CAGF38F=VxqD8L3EqZUneAvXHTtORDPXcOEynfbjaK_Zu2Zuh6w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGF38F=VxqD8L3EqZUneAvXHTtORDPXcOEynfbjaK_Zu2Zuh6w@mail.gmail.com>
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
Subject: Re: picoTCP, barebox, and licenses
To: Frederik Van Slycken <frederik.van.slycken@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jun 05, 2014 at 09:24:51PM +0200, Frederik Van Slycken wrote:
> I applaud that you're working on incorporating picoTCP into barebox -
> I work for the company that developed picoTCP, and so I am naturally
> enthusiastic about this. However, one small thing that should be taken
> into account, concerning licensing.
> 
> According to the wiki, barebox is licensed under "gplv2 or later",

Where is that in the wiki? IMHO it isn't correct, the toplevel COPYING
file says v2, which is also our intention.

> while picoTCP is licensed only under gplv2. I Am Not A Lawyer, but I
> think this means that, if your work would at some point make it into
> the master branch of barebox, the licensing notes may need to be
> changed to something like "either version 2 of the License, or (at
> your option) any later version (except for the picoTCP part, which is
> version 2 only)."

We do not intend to to to anything else than v2.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
