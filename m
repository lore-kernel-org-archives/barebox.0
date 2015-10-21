Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZomT3-00070u-J6
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 06:01:46 +0000
Date: Wed, 21 Oct 2015 08:01:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151021060123.GW14476@pengutronix.de>
References: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
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
Subject: Re: [PATCH] Make barebox flashable image link for "multi-image"
 targets
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Oct 20, 2015 at 09:47:30PM +0000, Trent Piepho wrote:
> For a target with multi-image support, no barebox-flash-image link is
> made pointing to the finished flashable image.  This makes it hard for
> buildroot to figure out which file is the barebox image.  And one has
> to assume this link is generally useful and convenient to users of
> barebox, or why would it have been created in the first place?

Creating the barebox-flash-image link predates the multiimage support,
so by the time it was introduced it was not clear to me that there will
be no single image later anymore.

> 
> This patch to the multi-image build will create that link.
> 
> It only works when a single image is made.  If one is making multiple
> images, then the concept of a single finished image no longer applies,
> and no link is made.

Can't you make the image a config option in buildroot? Depending on only
having a single image selected in barebox doesn't sound like a good
idea.

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
