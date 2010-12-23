Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVbu0-0005ha-L0
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 03:31:41 +0000
Date: Thu, 23 Dec 2010 04:26:31 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101223032631.GI19266@game.jcrosoft.org>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101222005722.GD19266@game.jcrosoft.org>
	<20101222124635.GC6017@pengutronix.de>
	<m3bp4d61mp.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3bp4d61mp.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On 20:36 Wed 22 Dec     , Krzysztof Halasa wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >> why not put the NPE firmware in the env?
> >
> > That's a good idea. This way we can tell the users to put the firmware
> > to arch/arm/boards/.../env/firmware before compilation and avoid
> > redistribution problems if there are any. Another plus is that the
> > barebox binary is not larger than it has to be.
> > The only downside is that the environment gets bigger as it duplicates
> > the firmware, but even this could be avoided if we add a second (non
> > environment) filesystem image.
> 
> Actually, there is more. There is plenty of free space in Barebox'
> region (2 pages 128 KB each), and the microcode isn't likely to ever
> change (unless Intel releases docs/sources, of course).
> 
> I don't want it in user-writable area since it could be incidentally
> erased. Without the microcode Ethernet interfaces are not functional,
> and I'm not sure all users would appreciate it if they had to download
> it back with [XY]-modem (or another C-kermit) :-) Even TFTP is sometimes
> black magic for some of them.
> 
> Obviously, the microcode is optional, and especially NPE-A one isn't at
> all used by Barebox (Linux uses it for driving sync serial interfaces).
> I don't consider the microcode a part of Barebox, like the
> /lib/firmware/* blobs aren't part of Linux.
> 
> Also it's simpler to export the microcode to Linux when it's in fixed
> well-aligned locations.
I'm working on a fs support in linux of the barebox env

so linux could get it easly also

but I prefer to be able to change my micro code as some of the people who work
on IXP have acess to it to modify it. So I think its a good option

so as linux it will be better to put it in a fs like /lib/firmware

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
