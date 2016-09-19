Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bm1Hy-00034B-Rm
 for barebox@lists.infradead.org; Mon, 19 Sep 2016 16:19:27 +0000
Date: Mon, 19 Sep 2016 18:19:04 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160919161904.c7rkwj5eejd64vha@pengutronix.de>
References: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
 <1474301029-22877-3-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474301029-22877-3-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH 2/2] fs: nfs: pick up network interface bootargs parameter
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Olbrich <m.olbrich@pengutronix.de>, Gavin Schenk <g.schenk@eckelmann.de>

On Mon, Sep 19, 2016 at 06:03:49PM +0200, Enrico Jorns wrote:
> This adds the linux.bootarg device parameter from the network device of
s/bootarg/bootargs/

> the current nfs connection and adds it to the nfs bootargs line.

s/and adds it//

> This allows booting from nfs without manually setting a ip=3Ddhcp or
> ip=3D<ipaddr> option.

Otherwise: \o/
(i.e.: Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> for
both patches)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
