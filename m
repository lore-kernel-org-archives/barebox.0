Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx8hK-0003n7-36
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 11:08:55 +0000
Date: Fri, 22 Feb 2019 12:08:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222110850.mihkopunhulsabr7@pengutronix.de>
References: <20190221092848.4488-1-tomaz.solc@tablix.org>
 <20190221092848.4488-4-tomaz.solc@tablix.org>
 <20190222074922.smfgbcwqmd6uddgi@pengutronix.de>
 <c63c27fe-9e12-e3a2-16b1-279b047bf3a1@klevio.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c63c27fe-9e12-e3a2-16b1-279b047bf3a1@klevio.com>
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
Subject: Re: [PATCH 3/3] commands: add of_bootargs command.
To: =?iso-8859-15?Q?Toma=B8_=A6olc?= <tomaz.solc@klevio.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 22, 2019 at 11:38:58AM +0100, Toma=B8 =A6olc wrote:
> Hi Sascha,
> =

> On 22. 02. 19 08:49, Sascha Hauer wrote:
> > On Thu, Feb 21, 2019 at 10:28:48AM +0100, Tomaz Solc wrote:
> > > This commit adds an of_bootargs command that extracts a bootargs
> > > property from a device tree and saves it to a global variable.
> > > =

> > > For example, a bootloader environment can use this command to extract
> > > the bootargs to linux.bootargs.vc, which then gets included into the
> > > final bootargs for the kernel using CONFIG_FLEXIBLE_BOOTARGS.
> > =

> > Do we need an extra command for this? Can't you just unflatten the
> > VideoCore provided device tree in the board code you have added in 2/3
> > and set global.linux.bootargs.vc from there? It seems to be just the
> > right thing without further user intervention.
> =

> I wanted to keep things flexible. I thought having an explicit command to
> import the args into Barebox is better than doing this automatically in
> rpi-common.c.

You can still set nv.linux.bootargs.vc=3D"" if you want to drop the
vc provided bootargs later. Or other way round, set some other
variable, say global.vc.bootargs, to the vc provided bootargs, and
in some initscript set global.linux.bootargs.vc to $global.vc.bootargs.

> =

> As far as I know [1], upstream kernels use their own device tree and don't
> need bootargs and fdt from VideoCore. On the other hand, I'm using the
> Raspbian-supplied kernels that do depend on these two things. That's also
> why I liked the approach where the VideoCore fdt is saved into a file, wh=
ere
> it can be passed to boot or not, depending on the environment.

Yes, that's fine. Having the devicetree available is a good thing.

> =

> If you think of_bootargs is too specific for a command, I can make it more
> general and have it save an arbitrary property from a fdt into a global
> variable (something similar to readf). That might be useful for something
> else as well.

Could be integrated into of_property maybe.

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
