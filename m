Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwrKa-0007gY-Fm
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 13:54:57 +0000
Date: Wed, 19 Oct 2016 15:54:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161019135434.wmyenu5irgymn3ho@pengutronix.de>
References: <20161019102123.vibu2i6p3rlu7ye4@pengutronix.de>
 <20161019123229.11583-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161019123229.11583-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] pinctrl: mvebu: sync mpp names to Linux 4.9-rc1
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 19, 2016 at 02:32:29PM +0200, Uwe Kleine-K=F6nig wrote:
> Linux changed several mpp names in commits:
> =

> 	438881dfddb9 (pinctrl: mvebu: armada-370: fix spi0 pin description)
> 	bc99357f3690 (pinctrl: mvebu: armada-xp: remove non-existing NAND pins)
> 	80b3d04feab5 (pinctrl: mvebu: armada-xp: remove non-existing VDD cpu_pd =
functions)
> 	100dc5d84095 (pinctrl: mvebu: armada-{38x,39x,xp}: normalize naming of D=
RAM functions)
> 	7bd6a26db6f9 (pinctrl: mvebu: armada-{370,375,38x,39x}: normalize dev pi=
ns)
> 	dae5597f253a (pinctrl: mvebu: armada-{370,375,38x,39x,xp}: normalize TDM=
 pins)
> 	d4974c16ed22 (pinctrl: mvebu: armada-{370,375}: normalize PCIe pins)
> 	f32f01e1ba6b (pinctrl: mvebu: armada-{370,375}: normalize audio pins)
> 	a361cbc575d6 (pinctrl: mvebu: armada-{370,xp}: normalize ethernet txclko=
ut pins)
> 	bfacb5669474 (pinctrl: mvebu: armada-370: align VDD cpu-pd pin naming wi=
th datasheet)
> 	9e05db29e2ac (pinctrl: mvebu: armada-370: align spi1 clock pin naming)
> 	50a7d13d2410 (pinctrl: mvebu: armada-xp: rename spi to spi0)
> 	88b355f1e4e5 (pinctrl: mvebu: armada-xp: add spi1 function)
> 	fb53b61d7768 (pinctrl: mvebu: armada-xp: add nand rb function)
> 	b19bf3797679 (pinctrl: mvebu: armada-xp: add dram functions)
> =

> Adapt the barebox mvebu drivers accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since (implict) v1:
>  - rebase to master

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
