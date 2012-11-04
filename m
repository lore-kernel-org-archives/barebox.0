Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TV975-0002tK-K9
 for barebox@lists.infradead.org; Sun, 04 Nov 2012 22:56:20 +0000
Date: Sun, 4 Nov 2012 23:56:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121104225614.GU1641@pengutronix.de>
References: <87zk2xuuds.fsf@free.fr>
 <87vcdlurvc.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87vcdlurvc.fsf@free.fr>
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
Subject: Re: Ramfs and NULL pointer
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Sun, Nov 04, 2012 at 07:48:07PM +0100, Robert Jarzmik wrote:
> Robert Jarzmik <robert.jarzmik@free.fr> writes:
> 
> > Hi there,
> >
> > Lately, I see null pointer dereferences in barebox.
> > I traced the culprit to ramfs ...
> 
> Ah and if I take back v2012.09.0, the problem disappears. 
> I'm not fully in the mood for a bisection of 544 commits ... any idea ?

sha@dude:~/dude/barebox/barebox git lg v2012.09.0..origin/master fs/ramfs.c
77322aa Treewide: remove address of the Free Software Foundation
ad6c28a ramfs: add symlink and readlink support

Both look harmless, so I don't think that the culprit is ramfs itself.

Sorry, no idea. The good news is that due to my compile tests all 544
commits at least should compile ;)

Do you have some specific command sequence to provoke this?

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
