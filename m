Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJve-0003aa-4B
 for barebox@lists.infradead.org; Mon, 25 May 2020 20:42:35 +0000
Date: Mon, 25 May 2020 22:42:28 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200525204228.5rctxegzwvqajzja@pengutronix.de>
References: <20200428132405.3624-1-u.kleine-koenig@pengutronix.de>
 <20200523150007.erjwm3azjdyaywx4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523150007.erjwm3azjdyaywx4@pengutronix.de>
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
Subject: Re: [PATCH] arch/arm/boards: Replace license and copyright
 boilerplate by SPDX identfiers
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Sat, May 23, 2020 at 05:00:07PM +0200, Roland Hieber wrote:
> On Tue, Apr 28, 2020 at 03:24:05PM +0200, Uwe Kleine-K=F6nig wrote:
> > This adapts all files that were identifed by licensecheck
> > (https://salsa.debian.org/build-common-team/licensecheck.git) as
> > licensed under the GPL.
> > =

> > The advantage is that these specifiers are machine-parseable which helps
> > license conformance, e.g. for packaging barebox in Debian.
> > =

> > While touching these files also do some minor comment reformatting to
> > get some uniform layout.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> Hmmm, I don't see why you dropped the following files from your
> (implicit) v2:
> =

> arch/arm/boards/embedsky-e9/board.c
> arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
> arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> arch/arm/boards/freescale-mx21-ads/imx21ads.c
> arch/arm/boards/freescale-mx35-3ds/3stack.c
> arch/arm/boards/freescale-mx6-sabresd/board.c
> arch/arm/boards/friendlyarm-mini2440/mini2440.c
> arch/arm/boards/friendlyarm-tiny210/tiny210.c
> arch/arm/boards/globalscale-guruplug/board.c =

> arch/arm/boards/globalscale-mirabox/board.c
> arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
> arch/arm/boards/karo-tx6x/board.c
> arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
> arch/arm/boards/phytec-phycore-pxa270/config.h
> arch/arm/boards/variscite-mx6/board.c
> arch/arm/boards/variscite-mx6/lowlevel.c
> arch/arm/boards/versatile/versatilepb.c
> arch/arm/boards/zylonite/zylonite.h

I didn't recheck them all, but my intention was to not modify files that
look like:

	Copyright (C) $year $someone

	based on path/to/another/file
	Copryright (C) $earlieryear $someoneelse

because I'm not 100% sure if the latter copyright line should be
included. So the plan was to first get the low-hanging fruit done and
then address the harder cases.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
