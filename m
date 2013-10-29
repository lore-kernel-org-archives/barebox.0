Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb5Wl-0003Qk-Ex
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 09:23:56 +0000
Date: Tue, 29 Oct 2013 10:23:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131029092333.GS30088@pengutronix.de>
References: <1382975421.40060558@f302.i.mail.ru>
 <20131029080819.GR30088@pengutronix.de>
 <1383037497.37165744@f327.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383037497.37165744@f327.i.mail.ru>
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
Subject: Re: DT && i.MX USB
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Oct 29, 2013 at 01:04:57PM +0400, Alexander Shiyan wrote:
> > On Mon, Oct 28, 2013 at 07:50:21PM +0400, Alexander Shiyan wrote:
> > > Hello.
> > > 
> > > I am trying to migrate i.MX51 ConnectCore board for use DT.
> > > Most stuff are done but I cannot understand how USB subsystem
> > > works with devicetree.
> > > 
> > > First, why barebox uses own "barebox,dr_mode" and "barebox,phy_type"
> > > properties instead of use kernel "dr_mode" and "phy_type"?
> > 
> > By the time I created this binding the binding for the kernel was not
> > mainline, so I decided to use barebox,x to not end up with an
> > incompatible binding. As the binding made it mainline now we can drop
> > the "barebox," now.
> 
> Understood.
> 
> > > Second, how specify flags for USB ports, for example MXC_EHCI_INTERNAL_PHY?
> > > In DT case we can not do it and as result desired port not functional...
> > 
> > Could it be that this flag should simply be dropped? According to the
> > Block diagram (Freescale i.MX53 ref manual v2.1, page 4700) the otg port
> > is hardwired to the internal utmi phy, so having this configurable makes
> > no sense.
> 
> I checked it for i.MX51. Everything works.
> Will it be the right solution for all i.MX CPUs?

At least for i.MX51/53 this is correct. For i.MX51 it seems to be
possible to use the internal UTMI phy or an external ULPI phy for the
OTG port.

> If so, I will write a patch for both issues. Or you?

Go ahead and write a patch. I'll give it a test on my i.MX51 efikasb
then.

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
