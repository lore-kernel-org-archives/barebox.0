Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bXMnC-0002ux-T9
 for barebox@lists.infradead.org; Wed, 10 Aug 2016 06:15:07 +0000
Date: Wed, 10 Aug 2016 08:14:43 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20160810061443.GA27053@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
 <1470746252-3146-2-git-send-email-s.trumtrar@pengutronix.de>
 <1470764894.30803.196.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1470764894.30803.196.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/7] ARM: socfpga: defconfig: add bootstrap_devfs
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Aug 09, 2016 at 05:48:13PM +0000, Trent Piepho wrote:
> On Tue, 2016-08-09 at 14:37 +0200, Steffen Trumtrar wrote:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  arch/arm/configs/socfpga-xload_defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
> > index 521f3f1c1f43..e7b84dacaeaa 100644
> > --- a/arch/arm/configs/socfpga-xload_defconfig
> > +++ b/arch/arm/configs/socfpga-xload_defconfig
> > @@ -25,4 +25,5 @@ CONFIG_EEPROM_AT25=y
> >  # CONFIG_FS_DEVFS is not set
> >  CONFIG_FS_FAT=y
> >  CONFIG_BOOTSTRAP=y
> > +CONFIG_BOOTSTRAP_DEVFS=y
> >  CONFIG_BOOTSTRAP_DISK=y
> 
> What's this used for?  I'm not using devfs in my socfpga based device's
> xload config.  Does the xload still fit in 64kB with these extra
> features?
> 

Ah, mixed it up. The defconfig assumes MMC is used, devfs is only needed for
QSPI. So, this patch can be dropped.

But, yeah, it still fits ;-)

Thanks,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
