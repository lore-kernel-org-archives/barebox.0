Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1chj9s-0006Dp-K1
 for barebox@lists.infradead.org; Sat, 25 Feb 2017 20:41:39 +0000
Date: Sat, 25 Feb 2017 21:41:14 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170225204114.dzrcbu2my6zhiqjj@pengutronix.de>
References: <20170222200618.5723-1-u.kleine-koenig@pengutronix.de>
 <20170224071225.xqzj5v75fgbnxweo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170224071225.xqzj5v75fgbnxweo@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mvebu: Fix fixup of mbus device-tree ranges
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hallo,

On Fri, Feb 24, 2017 at 08:12:25AM +0100, Sascha Hauer wrote:
> On Wed, Feb 22, 2017 at 09:06:18PM +0100, Uwe Kleine-K=F6nig wrote:
> > Commits "mvebu: {armada-370-xp,dove,kirkwood}: simplify soc init code
> > flow" simplified too much. The problem is that if the dtb used for
> > probing doesn't use the same mbus window address as barebox (i.e.
> > 0xf1000000) the fixup fails because above commits moved the information
> > about the real position to a postcore initcall which is too late because
> > the fixup happens in of_arm_init which runs as core initcall.
> =

> Said patches are currently in -next, so you could send a fixup patch
> instead or I could just remove the patches.

As the commit log isn't correct with this squashed in I sent a v2 and
not a fixup for them.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
