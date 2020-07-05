Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5ZJ-0007uc-VD
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:24:34 +0000
Date: Sun, 5 Jul 2020 16:24:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705142432.GW15485@pengutronix.de>
References: <20200630110603.21577-1-m.grzeschik@pengutronix.de>
 <20200630110603.21577-2-m.grzeschik@pengutronix.de>
 <c0249670-65ee-eb90-0f6f-49441f850d21@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0249670-65ee-eb90-0f6f-49441f850d21@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] net: phy: add uapi/linux/mdio.h from kernel for
 MDIO MMD access
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

On Thu, Jul 02, 2020 at 01:58:10PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 6/30/20 1:06 PM, Michael Grzeschik wrote:
> > The headerfile is used in the kernel for access of MDIO Managed Devices
> > (MMD) indirect access. Some drivers already use those device addresses.
> > We add the headerfile from the kernel and change the current users to
> > use the defines instead
> > 
> > Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > 
> > ---
> > v1 -> v2: - moved the header file from uapi one to include/linux
> > 
> >  drivers/net/phy/dp83867.c |   3 +-
> >  drivers/net/phy/micrel.c  |   5 +-
> >  include/linux/mdio.h      | 327 ++++++++++++++++++++++++++++++++++++++
> 
> a626211f3d36a in upstream/next lacks the <linux/mdio.h> header.
> Can you take a look?

One of my classic mistakes. The patch didn't apply cleanly, I then
applied it manually and only git added the changed files, but not the
new ones.

Fixed, thanks for noting.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
