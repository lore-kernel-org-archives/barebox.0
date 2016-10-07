Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsR8A-0004CR-HU
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 09:07:51 +0000
Date: Fri, 7 Oct 2016 11:07:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161007090728.ns3hddrtmv6zfbc5@pengutronix.de>
References: <20161004191306.1838-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161004191306.1838-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: mvebu: add support for Netgear RN2120
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 04, 2016 at 09:13:05PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                    |  1 +
>  arch/arm/boards/netgear-rn2120/Makefile     |  2 +
>  arch/arm/boards/netgear-rn2120/board.c      | 88 +++++++++++++++++++++++=
++++++
>  arch/arm/boards/netgear-rn2120/kwbimage.cfg |  7 +++
>  arch/arm/boards/netgear-rn2120/lowlevel.c   | 41 ++++++++++++++
>  arch/arm/dts/Makefile                       |  1 +
>  arch/arm/dts/armada-xp-rn2120-bb.dts        | 11 ++++
>  arch/arm/mach-mvebu/Kconfig                 |  4 ++
>  images/Makefile.mvebu                       |  8 +++
>  9 files changed, 163 insertions(+)
>  create mode 100644 arch/arm/boards/netgear-rn2120/Makefile
>  create mode 100644 arch/arm/boards/netgear-rn2120/board.c
>  create mode 100644 arch/arm/boards/netgear-rn2120/kwbimage.cfg
>  create mode 100644 arch/arm/boards/netgear-rn2120/lowlevel.c
>  create mode 100644 arch/arm/dts/armada-xp-rn2120-bb.dts

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
