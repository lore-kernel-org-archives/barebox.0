Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e3zn4-0007P7-LJ
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:26:24 +0000
Date: Mon, 16 Oct 2017 09:26:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016072600.j4dkifbwu4xiqt5y@pengutronix.de>
References: <20170426141734.18670-1-antonynpavlov@gmail.com>
 <20170428081848.bvfttqhjhfpewjqi@pengutronix.de>
 <20170428135727.22c87f114377fac81b1c7a66@gmail.com>
 <20171012200133.e29635ee3fb961c12a6650b5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171012200133.e29635ee3fb961c12a6650b5@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: m25p80: make it possible to use 4K erase block
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 12, 2017 at 08:01:33PM +0300, Antony Pavlov wrote:
> On Fri, 28 Apr 2017 13:57:27 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> > On Fri, 28 Apr 2017 10:18:48 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > On Wed, Apr 26, 2017 at 05:17:34PM +0300, Antony Pavlov wrote:
> > > > We already have the MTD_SPI_NOR_USE_4K_SECTORS option handling in C code
> > > > for 4K erase block support. Alas this 4K erase block support code
> > > > can't be used because the MTD_SPI_NOR_USE_4K_SECTORS option support
> > > > is missed in Kconfig.
> > > > 
> > > > This patch imports necessary Kconfig MTD_SPI_NOR_USE_4K_SECTORS option
> > > > declaration from linux v4.11-rc8.
> > > > 
> > > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > > ---
> > > >  drivers/mtd/spi-nor/Kconfig | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > > 
> > > > diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
> > > > index a84591fdd1..8ede3c90be 100644
> > > > --- a/drivers/mtd/spi-nor/Kconfig
> > > > +++ b/drivers/mtd/spi-nor/Kconfig
> > > > @@ -7,6 +7,20 @@ menuconfig MTD_SPI_NOR
> > > >  
> > > >  if MTD_SPI_NOR
> > > >  
> > > > +config MTD_SPI_NOR_USE_4K_SECTORS
> > > > +	bool "Use small 4096 B erase sectors"
> > > > +	default y
> > > 
> > > This changes the default which breaks existing UBI users. Can you drop
> > > this?
> > 
> > Yes, we can drop this 'default y'.
> 
> ping

ping? I expected to see a new version of the patch. Well, I fixed this
up and applied for now, to get this topic done.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
