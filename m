Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUjB7-0001u5-8u
 for barebox@lists.infradead.org; Wed, 16 May 2012 18:42:30 +0000
Date: Wed, 16 May 2012 20:42:26 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120516184226.GO22395@pengutronix.de>
References: <20120515192934.GM30400@pengutronix.de>
 <1337148616-13639-1-git-send-email-j.weitzel@phytec.de>
 <20120516112025.GR30400@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120516112025.GR30400@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ramfs: rember last accessed chunk
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2012 at 01:20:25PM +0200, Sascha Hauer wrote:
> On Wed, May 16, 2012 at 08:10:16AM +0200, Jan Weitzel wrote:
> > Writing big files takes longer and longer because of the chunk list
> > By storing a pointer of the recent used chunk in the inode, access time=
s are
> > improved.
> > Testet on with tftp 10M:
> > OMAP4 chunk size 4096: 12244ms 8192: 4239ms
> > 	patched        2647ms        2785ms
> > i.MX35 chunk size 8192: 7225ms
> > 	patched		2691ms
> > =

> > No impact on much smaller files seen
> > =

> > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> =

> Applied, thanks
Don't know if it's already too late:

	$Subject ~=3D s/rember/remember/

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
