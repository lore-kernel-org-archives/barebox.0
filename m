Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqad-0003c9-Fu
 for barebox@lists.infradead.org; Tue, 05 May 2020 05:58:00 +0000
Date: Tue, 5 May 2020 07:57:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200505055757.GZ5877@pengutronix.de>
References: <20200504201217.18010-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504201217.18010-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm/boards: drop various empty board files
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 04, 2020 at 10:12:17PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/globalscale-guruplug/Makefile   |  1 -
>  arch/arm/boards/globalscale-guruplug/board.c    | 17 -----------------
>  arch/arm/boards/globalscale-mirabox/Makefile    |  1 -
>  arch/arm/boards/globalscale-mirabox/board.c     | 17 -----------------
>  arch/arm/boards/marvell-armada-xp-gp/Makefile   |  1 -
>  arch/arm/boards/marvell-armada-xp-gp/board.c    | 17 -----------------
>  arch/arm/boards/netgear-rn104/Makefile          |  1 -
>  arch/arm/boards/netgear-rn104/board.c           |  1 -
>  arch/arm/boards/plathome-openblocks-a6/Makefile |  1 -
>  arch/arm/boards/plathome-openblocks-a6/board.c  |  1 -
>  .../arm/boards/plathome-openblocks-ax3/Makefile |  1 -
>  arch/arm/boards/plathome-openblocks-ax3/board.c | 17 -----------------
>  arch/arm/boards/turris-omnia/Makefile           |  1 -
>  arch/arm/boards/turris-omnia/board.c            |  1 -
>  arch/arm/boards/usi-topkick/Makefile            |  1 -
>  arch/arm/boards/usi-topkick/board.c             | 17 -----------------
>  16 files changed, 96 deletions(-)
>  delete mode 100644 arch/arm/boards/globalscale-guruplug/board.c
>  delete mode 100644 arch/arm/boards/globalscale-mirabox/board.c
>  delete mode 100644 arch/arm/boards/marvell-armada-xp-gp/board.c
>  delete mode 100644 arch/arm/boards/netgear-rn104/board.c
>  delete mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
>  delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/board.c
>  delete mode 100644 arch/arm/boards/turris-omnia/board.c
>  delete mode 100644 arch/arm/boards/usi-topkick/board.c

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
