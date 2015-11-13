Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx8RC-0000Hd-UT
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 07:06:23 +0000
Date: Fri, 13 Nov 2015 08:06:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113070600.GX8526@pengutronix.de>
References: <1447195492.4553.95.camel@rtred1test09.kymeta.local>
 <20151111080300.GO8526@pengutronix.de>
 <1447270216.4553.116.camel@rtred1test09.kymeta.local>
 <1447275243.4553.119.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447275243.4553.119.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH v3] net: designware: Don't hang in reset with powered
 down phy
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Nov 11, 2015 at 08:54:01PM +0000, Trent Piepho wrote:
> The dw MAC requires that all clock domains to be running for it to
> finish a MAC reset.  This include the clock provided by the PHY.
> 
> If the PHY is powered down, bit BMCR_PDOWN set, then it won't be
> generating a clock.  And so the MAC never comes out of reset.  On
> shutdown, Linux will put the PHY in powerdown mode, so it can easily
> be the case that the PHY is powered down on boot.
> 
> See Linux kernel commit 2d871aa07136fe6e576bde63072cf33e2c664e95.
> 
> Currently the MAC reset is done before the phy is probed.  We can't
> power up the phy until it's probed, so the resets must be in the
> opposite order.  The MAC reset is in device init but the PHY probe is
> in device open.  Device init is done first, always, while open is done
> later, and only if the device is used.
> 
> Rather than move the phy probe to init, this moves the MAC reset to
> open.  It seems better to speed up boots that doesn't use ethernet by
> skipping MAC reset than to slow them down by adding PHY probe.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
> 
> Ignore v2, I missed a bunch of compiler warnings that scrolled off the
> screen and barebox doesn't seem to be using -Werror.

Newer compilers tend to introduce more warnings, so using -Werror would
mean that an older barebox will likely not build with recent compiler
versions. I had this problem with other projects sometimes, so I don't
think that using -Werror is a good idea.

Anyway, applied, thanks

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
