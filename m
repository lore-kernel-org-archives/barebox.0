Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTY4Q-0000tR-T4
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 14:15:34 +0000
Message-ID: <1381241476.4093.114.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 08 Oct 2013 16:11:16 +0200
In-Reply-To: <20131008154748.7d9d6752@archvile>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
 <20131004091739.4debe909@archvile> <20131006103949.GL30088@pengutronix.de>
 <20131007083203.7aa17d5b@archvile> <20131007064111.GT30088@pengutronix.de>
 <20131007115735.7301cc65@archvile> <20131007201936.GW30088@pengutronix.de>
 <20131008090229.051cd853@archvile>
 <1381218305.4093.54.camel@weser.hi.pengutronix.de>
 <20131008111327.681f1149@archvile>
 <1381225164.4093.77.camel@weser.hi.pengutronix.de>
 <20131008154748.7d9d6752@archvile>
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
To: David Jander <david.jander@protonic.nl>
Cc: barebox@lists.infradead.org

Am Dienstag, den 08.10.2013, 15:47 +0200 schrieb David Jander:
> Dear Lucas,
> 
> On Tue, 08 Oct 2013 11:39:24 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > Am Dienstag, den 08.10.2013, 11:13 +0200 schrieb David Jander:
> > [...]
> > > > > You are right. Sorry for the confusion. There were aliases in barebox's
> > > > > version of imx53.dtsi which went missing somehow in my tree. I have
> > > > > been merging stuff from mainline Linux....
> > > > > That leads me to the question: What is the intended relationship
> > > > > between barebox and Linux kernel DTS files? Which one is supposed to
> > > > > be the "master" or "upstream" version? Aren't they supposed to be kept
> > > > > in sync somehow? At least the basic SoC-specific .dtsi files?
> > > > > 
> > > > Missing other options we regard the Linux DTs as the upstream. Ideally
> > > > DTs should be stored in a separate repo, so they don't get broken
> > > > unnecessarily.
> > > > 
> > > > We will try to keep the Barebox DTs in sync with Linux as much as
> > > > possible. But even then there is no guarantee that Barebox and Linux DTs
> > > > don't drift away from each other over time.
> > > > If a binding gets broken (let's hope that everyone gets their act
> > > > together and don't do this anymore), it will require code changes and
> > > > maintenance work to get things in sync again.
> > > > 
> > > > Another real-life use-case where you might end up with different DTs is
> > > > if you update your Linux kernel more regularly than the Barebox on your
> > > > device. So please if ever possible don't boot the Linux kernel with the
> > > > builtin Barebox DT, but design your boot concept in a way that you
> > > > always deliver a DTB fitting your kernel.
> > > 
> > > Our boot-scheme checks for a DTB on the boot-medium. If it finds one
> > > matching the board, it is used, otherwise it boots with barebox's built-in
> > > DTB, and that should be the default situation, unless it becomes necessary
> > > to overrule the internal DTB for whatever regrettable reason.
> > > 
> > Yeah that's the conclusion you may be inclined to take if you try to
> > live in an ideal world. (Including a dot-shaped earth in a vacuum.)
> 
> Aren't we living on a dot-shaped earth in a vacuum?
> 
> > Experience with the device tree shows that there are a lot more of those
> > regrettable reasons than one might imagine. So in order to get around
> > all those real world problems always boot your kernel with a devicetree
> > matching exactly that kernel version. Take this as a well-meaning advise
> > from someone who hit the hard wall of the real-world device tree more
> > than one.
> 
> Don't get me wrong, I have had enough cases of device-trees changing and
> kernels being incompatible with them. I have hit the hard wall enough times
> already, but that doesn't mean it hasn't always been for pretty regrettable
> reasons. Open Firmware and Device-Trees are both good ideas and we are not
> using them (yet) as they are supposed to be used. Saying that we shouldn't just
> because we haven't been able to make it work as intended sounds more like an
> excuse to me than a hard fact.... ;-)
> Make the problem be the exception, not the rule.

Without doubt we all should always treat DTs the way we would like them
to be used in the ideal case, but don't depend on those assumptions for
your real products.

Using the builtin DTB normally, but having a way to override it when
needed sounds like a reasonable compromise to make.

> > > I have had strong discussions (almost flame-war) long time ago on alkml
> > > about the issue of hardware initialization. IMNSHO, hardware
> > > initialization that has to do with the electrical layout of the board (PAD
> > > settings, drive-strength, etc...) must always be done in the boot-loader.
> > > Back in the time where there was no DT for ARM, Linux kernel board support
> > > code was a bloody mess with this sort of HW initialization everywhere, and
> > > everywhere done differently. Only the hardware designer know what
> > > drive-strength and other PAD settings need to be chosen for each PAD. That
> > > is where your design is based on. Kernel (-developers) do not know, and
> > > should not need to care. Now there is this "invention" of putting all this
> > > information in the DT. This actually seems like a good compromise between
> > > what I said above and the fact that the kernel sometimes needs to
> > > reconfigure PADs due to PM, pluggable devices and such. But still the
> > > knowledge about PAD settings (and what hardware the board happens to have
> > > for that matter) belongs to the boot-loader. Having more than one source
> > > for this is dangerous.
> > > 
> > No, that is utterly wrong. Linux should always know everything about
> > your hardware and _not_ expect anything to be set up by the bootloader.
> 
> Huh? AFAIK, it has never been like that. PC's have BIOS (or UEFI firmware for
> that matter) that takes care of signal integrity setup of the PC's chipset,
> motherboard, CPU and RAM. Next, do you want to leave DDR timing setup to the
> Linux kernel?? You are kidding, right?
> 
And those BIOS settings are so regularly wrong that the kernel has to
ship a lot of cludge just to work around or correct that bootloader
setup.

I agree that the bootloader should set up things needed for the boot,
but in many cases the kernel needs the same knowledge anyway. Your DDR
timing is a pretty prime example for this. The bootloader has to set it
up initially, but the Linux kernel has to change timings dynamically
(including calibration in some situations) when doing dynamic memory
clock scaling.
CPU bringup is the same matter, Linux needs to know how to do it anyway
as we need it for CPU hotplug when saving power.

Just because there is a real small amount of static setup that could be
done exclusively in the bootloader, doesn't mean we should always force
it down into the bootloader and tell Linux to depend on it.

> > There are some corner cases like chip errata fixes here, but generally
> > don't assume the bootloader to set things up for you.
> 
> Another case of making the problem the rule instead of the exception....
> The fact that board manufacturers don't get their act together to make decent
> firmware (bootloader) is no excuse for saying it shouldn't be done like that.
> 
> > The bootloader
> > should only do the minimal needed init for loading the kernel and
> > booting. The kernel is your hardware abstraction for your running
> > system, not the bootloader.
> 
> That is ok. What I am saying is that settings that have strictly to do with
> _hardware_ constraints should never be bothered by the Linux kernel. Otherwise
> you would need to recompile the kernel (or change the device-tree) for
> potentially every single hardware revision of one board model.
> If I place other RAM chips on the board for instance, or if there is a layout
> revision, or a peripheral chip that has had a die revision requiring different
> drive-strength and such changes.... that information should be taken care of
> by the boot-loader.
> 
> Configuring peripherals, setting MUX registers and such is a different story.
> That should (and many times must) be done in the kernel.
> 
> > Ideally both the bootloader and kernel would source their needed
> > information from a shared DT that's decoupled from kernel development
> > and stable, once again reality strikes in here. I agree with you that
> > not a kernel developer, but board designer should write the DT and we
> > might actually get this separation in a clean way, if we manage to split
> > out the DTs from the kernel some day.
> 
> Well, I am a board designer, and I am trying to do just that. Pardon me for
> being an idealist sometimes ;-)
> 
We can all do our share to better the overall situation by being
idealist, but avoid basing your decision for real-world products on
assumptions that are only true for an ideal world. :)

> Funny enough, some of my gripes about the state of ARM-Linux initially were
> echoed years later by Linus himself in his famous e-mail about the mess that
> was ARM-Linux board support before DT came along. Back then, when I asked why
> ARM wouldn't benefit from OF-device-trees just like PowerPC and Sparc did, I
> was being laughed at. Unfortunately a few conceptual things have been
> implemented the wrong way (like PAD setup), but hey! Not bad ;-)

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
