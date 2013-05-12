Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbTS7-0001gH-9z
 for barebox@lists.infradead.org; Sun, 12 May 2013 10:24:28 +0000
Date: Sun, 12 May 2013 12:24:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130512102404.GV32299@pengutronix.de>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130512075644.GT20989@pengutronix.de>
 <20130512111246.72df8918@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130512111246.72df8918@skate>
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
Subject: Re: [PATCH v3 0/7] Basic support for Armada 370/XP SOCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Sun, May 12, 2013 at 11:12:46AM +0200, Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Sun, 12 May 2013 09:56:44 +0200, Sascha Hauer wrote:
> > There is a problem with this series: It doesn't build without the
> > addtional binary needed for the kwb tool. Can we make creating a kwb
> > image optional so that we are able to build the defconfigs without
> > additional dependencies?
> 
> Hum, right. So we should make the default build target to not build
> barebox.{kwb,kwbuart} and only make barebox.bin?
> 
> Or there should be a config option somewhere to say "I also want
> the .{kwb,kwbuart} images generated" ?
> 
> Neither of those are ideal, because most likely people will not notice
> the possibility of building the .{kwb,kwbuart} images, but I understand
> the concern of not being able to build defconfigs.
> 
> Tell me which solution you prefer, and I'll send a patch that
> implements it.

How about a warning like:

"Warning: 'plathome-openblocks-ax3-binary.0' does not exist. Not building barebox.kwb"

Also not an ideal solution, but I think there is no really good way to
solve this other than including the binary in the tree which probably
has some licensing issues.

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
