Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VSll1-0005R2-21
 for barebox@lists.infradead.org; Sun, 06 Oct 2013 10:40:16 +0000
Date: Sun, 6 Oct 2013 12:39:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131006103949.GL30088@pengutronix.de>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
 <20131004091739.4debe909@archvile>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131004091739.4debe909@archvile>
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
Subject: Re: /dev/disk0 vs /dev/mmc0
To: David Jander <david.jander@protonic.nl>
Cc: barebox@lists.infradead.org

On Fri, Oct 04, 2013 at 09:17:39AM +0200, David Jander wrote:
> 
> Hi Jean-Christophe,
> 
> On Thu, 3 Oct 2013 21:23:49 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > On 17:17 Thu 03 Oct     , David Jander wrote:
> > > 
> > > Hi all,
> > > 
> > > I am following barebox git closely and noticed a change recently: Device
> > > names for MMC (MCI) and USB mass-storage devices have changed to the
> > > generic "/dev/diskX". Earlier an MMC device was named "/dev/mmc0".
> > > Unfortunately this change breaks my /env/bin/init script and I don't know
> > > how to fix it. I relied on the existence of certain devices to distinguish
> > > between USB mass-storage device presence and/or SD-card presence. How can
> > > I do this with this new device naming convention?
> > > 
> > > I used to have these kind of checks in /env/bin/init:
> > > 
> > > # Mount MMC (first partition) if available
> > > if [ -e "/dev/mmc0.0" ]; then
> > >         mkdir /mmc
> > >         mount /dev/mmc0.0 /mmc
> > >         if [ -e "/mmc/uImage" ]; then
> > >                 boot_target="mmc"
> > >         fi
> > > fi
> > > 
> > > Booting like this is only allowed from MMC and not from USB, and now it
> > > seems impossible to distinguish between them anymore.
> > > 
> > > Btw, why was this changed in the first place?
> > 
> > now you an use devname parameter to specify a specifc name for mmc
> 
> My board is fully device-tree based, but your suggestion pointed me in the
> right direction: the "alias" section seems to have a whole new meaning now ;-)
> I hope this won't interfere with Linux, since I intend to use a single DT for
> both Barebox _and_ Linux.

It doesn't interfere with the kernel. The kernel currently ignores this
aliases. There are patches floating to let the kernel honor this
aliases, but then they should simply have the same effect as they have
in barebox.

> 
> > not all the drivers have the platform_data update to support but it will be
> > easy enough to add it
> > 
> > I recently add this to atmel_mci and animeo_ip board
> 
> Didn't find that one... probably not in mainline yet? Never mind.
> 
> > and I recomment you to switch to defaultenv-2 for this
> > 
> > and use boot sequence this will simplify your env hugely
> 
> Although I agree defaultenv-2 looks pretty cool and will add a lot of
> convenience and flexibility for complex systems, IMHO it will not simplify the
> env of this board the least bit :-)
> In fact, on a simple embedded system that has to have a strictly predefined
> boot-behavior with a few simple rules, it is overly complex and if an
> "outsider" ever needs to understand how it works, that can be a bit of a
> problem (the default boot path probably going through some 5 different
> scripts with lots of compound config-variables).

At least I recently replaced the boot script with a command (not yet
mainline), so there are fewer scripts involved.

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
