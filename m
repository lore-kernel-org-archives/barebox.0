Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDGBT-00022K-5g
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 17:00:08 +0000
Date: Fri, 1 Aug 2014 18:59:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140801165929.GB23235@pengutronix.de>
References: <1406900538-29656-1-git-send-email-raphael.poggi@erocca.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406900538-29656-1-git-send-email-raphael.poggi@erocca.com>
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
Subject: Re: [PATCH 0/2] Add initial support of at91sam9m10g45ek device tree
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 01, 2014 at 03:42:16PM +0200, Raphael Poggi wrote:
> This patchset add the initial support of the at91sam9m10g45ek device tree=
, and
> add the pinctrl device tree binding file.
> =

> Rapha=EBl Poggi (2) :
>         (1) dt-bindings: pinctrl: add at91 file
>         (2) dts: at91: initial support of at91sam9m10g45ek dts
> =

> =

> arch/arm/dts/Makefile              |    1 +
> arch/arm/dts/at91sam9g45.dtsi      |  105 +++++++++++++++++++++++++++++++=
+++++
> arch/arm/dts/at91sam9m10g45ek.dts  |   22 ++++++++
> include/dt-bindings/pinctrl/at91.h |   35 ++++++++++++

We already have all these files in the tree. You shouldn't have to
duplicate them. Just create a stub under arch/arm/dts/ including the
real files.

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
