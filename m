Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYXH-0004h3-VG
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:31:06 +0000
Date: Wed, 20 Sep 2017 08:30:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920063039.6gzaiwbqr3oaokn4@pengutronix.de>
References: <20170914082509.23583-1-linux@rempel-privat.de>
 <20170918064103.vnbr2lctmzo335mt@pengutronix.de>
 <20170918113648.060d621526d832c3b8c03466@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170918113648.060d621526d832c3b8c03466@gmail.com>
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
Subject: Re: [PATCH v3 00/10] provide ethernet support for ar9344 and ar9331
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Mon, Sep 18, 2017 at 11:36:48AM +0300, Antony Pavlov wrote:
> On Mon, 18 Sep 2017 08:41:03 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Thu, Sep 14, 2017 at 10:24:59AM +0200, Oleksij Rempel wrote:
> > > changes v3:
> > >  - ag71xx_ether_halt had wrong timeout test.
> > >  - ag71xx_ether_init should return 0
> > > 
> > > changes v2:
> > >  - merge all ag71xx in to one patch
> > >  - make sere all new driver use dev_* instead of printk
> > >  - rework miibus functions.
> > >  - use it_timedout instead of own implementation
> > >  - add comments to the patches.
> > > 
> > > Oleksij Rempel (9):
> > >   add ar9331.dtsi and enable mac0
> > >   MIPS: dts: ar9344: add mac0 node
> > >   MIPS: dts: tl_wdr4300: enable mac0
> > >   MIPS: dts: tl_wdr4300: add alias for spiflash
> > >   MIPS: dts: tl_wdr4300: remove RO flag from barebox partition
> > >   add phy: ar8327 driver
> 
> 
> 'add phy: ar8327 driver' -> 'phy: add ar8327 driver' ?

Yes, changed that.

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
