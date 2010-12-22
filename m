Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVUUY-0001EZ-K7
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 19:36:56 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
	<20101222005722.GD19266@game.jcrosoft.org>
	<20101222124635.GC6017@pengutronix.de>
Date: Wed, 22 Dec 2010 20:36:30 +0100
In-Reply-To: <20101222124635.GC6017@pengutronix.de> (Sascha Hauer's message of
	"Wed, 22 Dec 2010 13:46:35 +0100")
Message-ID: <m3bp4d61mp.fsf@intrepid.localdomain>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> why not put the NPE firmware in the env?
>
> That's a good idea. This way we can tell the users to put the firmware
> to arch/arm/boards/.../env/firmware before compilation and avoid
> redistribution problems if there are any. Another plus is that the
> barebox binary is not larger than it has to be.
> The only downside is that the environment gets bigger as it duplicates
> the firmware, but even this could be avoided if we add a second (non
> environment) filesystem image.

Actually, there is more. There is plenty of free space in Barebox'
region (2 pages 128 KB each), and the microcode isn't likely to ever
change (unless Intel releases docs/sources, of course).

I don't want it in user-writable area since it could be incidentally
erased. Without the microcode Ethernet interfaces are not functional,
and I'm not sure all users would appreciate it if they had to download
it back with [XY]-modem (or another C-kermit) :-) Even TFTP is sometimes
black magic for some of them.

Obviously, the microcode is optional, and especially NPE-A one isn't at
all used by Barebox (Linux uses it for driving sync serial interfaces).
I don't consider the microcode a part of Barebox, like the
/lib/firmware/* blobs aren't part of Linux.

Also it's simpler to export the microcode to Linux when it's in fixed
well-aligned locations.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
