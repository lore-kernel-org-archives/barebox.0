Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRze8-00030S-MD
 for barebox@lists.infradead.org; Fri, 04 Oct 2013 07:17:58 +0000
Date: Fri, 4 Oct 2013 09:17:39 +0200
From: David Jander <david.jander@protonic.nl>
Message-ID: <20131004091739.4debe909@archvile>
In-Reply-To: <20131003192349.GR32444@ns203013.ovh.net>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
Mime-Version: 1.0
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


Hi Jean-Christophe,

On Thu, 3 Oct 2013 21:23:49 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 17:17 Thu 03 Oct     , David Jander wrote:
> > 
> > Hi all,
> > 
> > I am following barebox git closely and noticed a change recently: Device
> > names for MMC (MCI) and USB mass-storage devices have changed to the
> > generic "/dev/diskX". Earlier an MMC device was named "/dev/mmc0".
> > Unfortunately this change breaks my /env/bin/init script and I don't know
> > how to fix it. I relied on the existence of certain devices to distinguish
> > between USB mass-storage device presence and/or SD-card presence. How can
> > I do this with this new device naming convention?
> > 
> > I used to have these kind of checks in /env/bin/init:
> > 
> > # Mount MMC (first partition) if available
> > if [ -e "/dev/mmc0.0" ]; then
> >         mkdir /mmc
> >         mount /dev/mmc0.0 /mmc
> >         if [ -e "/mmc/uImage" ]; then
> >                 boot_target="mmc"
> >         fi
> > fi
> > 
> > Booting like this is only allowed from MMC and not from USB, and now it
> > seems impossible to distinguish between them anymore.
> > 
> > Btw, why was this changed in the first place?
> 
> now you an use devname parameter to specify a specifc name for mmc

My board is fully device-tree based, but your suggestion pointed me in the
right direction: the "alias" section seems to have a whole new meaning now ;-)
I hope this won't interfere with Linux, since I intend to use a single DT for
both Barebox _and_ Linux.

> not all the drivers have the platform_data update to support but it will be
> easy enough to add it
> 
> I recently add this to atmel_mci and animeo_ip board

Didn't find that one... probably not in mainline yet? Never mind.

> and I recomment you to switch to defaultenv-2 for this
> 
> and use boot sequence this will simplify your env hugely

Although I agree defaultenv-2 looks pretty cool and will add a lot of
convenience and flexibility for complex systems, IMHO it will not simplify the
env of this board the least bit :-)
In fact, on a simple embedded system that has to have a strictly predefined
boot-behavior with a few simple rules, it is overly complex and if an
"outsider" ever needs to understand how it works, that can be a bit of a
problem (the default boot path probably going through some 5 different
scripts with lots of compound config-variables).

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
