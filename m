Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCIdz-0001yc-Hw
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 06:15:53 +0000
Date: Tue, 16 Oct 2018 08:15:37 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20181016061537.p646gcknugzngezq@pengutronix.de>
References: <20181016003835.11165-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181016003835.11165-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] miitool: Fix inconsistent spacing
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 15, 2018 at 05:38:35PM -0700, Andrey Smirnov wrote:
> Make sure that there's a space between device name and it's status
> string regardless if if device is using "id" field or not.
> =

> Before:
> =

> barebox@ZII RDU2 Board:/ miitool
> mdio0-phy00: mdio:no link
> mdio1-phy15: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
> mdio1-phy16: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
> mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0:negotiated 100baseTx-=
FD, link ok
> mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0:no link
> mdio3-phy01: eth1: negotiated 1000baseT-FD flow-control, link ok
> =

> After:
> =

> barebox@ZII RDU2 Board:/ miitool
> mdio0-phy00: mdio: no link
> mdio1-phy15: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
> mdio1-phy16: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
> mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0: no link
> mdio3-phy01: eth1: no link

the patch seems to have some impact on the link status of mdio2-phy02
and mdio3-phy01. I wonder where this comes from :-)

Other than that:

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

because it makes the output better readable.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
