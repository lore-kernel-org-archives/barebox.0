Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ0AC-0007UT-Di
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 14:11:29 +0000
Date: Thu, 15 Nov 2012 15:11:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115141126.GH10369@pengutronix.de>
References: <1352980562-25383-1-git-send-email-plagnioj@jcrosoft.com>
 <20121115134019.GE10369@pengutronix.de>
 <20121115134823.GH31820@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115134823.GH31820@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] mx53 loco: enable smsc phy driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 15, 2012 at 02:48:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:40 Thu 15 Nov     , Sascha Hauer wrote:
> > On Thu, Nov 15, 2012 at 12:56:02PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  arch/arm/configs/freescale_mx53_loco_defconfig |    1 +
> > >  1 file changed, 1 insertion(+)
> > 
> > We're getting closer \o/
> > 
> > With this the LOCO correctly waits for a link, unfortunately during
> > board init time. This is due to:
> > 
> > commit 3a17af33c01fd066ab3939c8218037c87ba26eed
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Fri Oct 26 16:16:54 2012 +0200
> > 
> >     net fec: connect phy at probe time
> >     
> >     Several i.MX boards (all i.MX6 boards) need to do some adjustments
> >     to phy registers. If barebox itself does not use network, networking
> >     won't work in the kernel if the kernel does not have the fixups. Connect
> >     the phy at probe time so that these tweaks are done during probe so that
> >     the kernel works without phy register tweaks. Also this has the effect
> >     that the phy device is present and introspectable without doing fake
> >     network transfers beforehand.
> > 
> > We could revert it which fixes things for the LOCO, but then we also
> > lose the phy fixups which this commit intentionally pushed to probe
> > time.
> > 
> > It would be nice to separate phy registration from actually waiting for
> > a link. I find it rather inconvenient anyway that the phy device pops
> > up during the first network transfer.
> 
> so we need to introduce a phy_start
> 
> that start the check of the link
> 
> but I think the kernel need to its own fixup and do not relay on the booloader
> to do it for him

I agree, the kernel should not depend on the bootloader, still it's
convenient that kernels without support for this specific board will
just work. I can live with reverting the patch for this release though.

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
