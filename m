Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQTfC-0004ki-Sk
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 06:42:41 +0000
Date: Mon, 9 Jan 2017 07:42:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109064214.hsoybdaaq63jiqa6@pengutronix.de>
References: <20161208101551.32119-1-p.zabel@pengutronix.de>
 <20161212054728.7huafvpweafhbnzg@pengutronix.de>
 <1481534412.2574.9.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1481534412.2574.9.camel@pengutronix.de>
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
Subject: Re: [PATCH] of: base: add chosen node if it does not exist when
 adding initrd
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 12, 2016 at 10:20:12AM +0100, Jan L=FCbbe wrote:
> On Mo, 2016-12-12 at 06:47 +0100, Sascha Hauer wrote:
> > On Thu, Dec 08, 2016 at 11:15:51AM +0100, Philipp Zabel wrote:
> > > If the chosen node does not exist, of_add_initrd fails to pass the
> > > initrd to the kernel. Instead it should create the chosen node, just
> > > like of_fixup_bootargs does.
> > > =

> > > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > ---
> > >  drivers/of/base.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > Applied, thanks
> =

> This is actually a fix for booting linux-next with initramfs on barebox
> and is the cause of some boot failures in our kernel-ci lab:
> https://storage.kernelci.org/next/next-20161206/arm-imx_v6_v7_defconfig/l=
ab-pengutronix/boot-imx6dl-riotboard.html
> =

> Maybe this should be merged to master instead of next?

Ok, did that.

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
