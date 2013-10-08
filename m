Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VTTMT-0007kN-E5
 for barebox@lists.infradead.org; Tue, 08 Oct 2013 09:13:50 +0000
Date: Tue, 8 Oct 2013 11:13:27 +0200
From: David Jander <david.jander@protonic.nl>
Message-ID: <20131008111327.681f1149@archvile>
In-Reply-To: <1381218305.4093.54.camel@weser.hi.pengutronix.de>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
 <20131004091739.4debe909@archvile>
 <20131006103949.GL30088@pengutronix.de>
 <20131007083203.7aa17d5b@archvile>
 <20131007064111.GT30088@pengutronix.de>
 <20131007115735.7301cc65@archvile>
 <20131007201936.GW30088@pengutronix.de>
 <20131008090229.051cd853@archvile>
 <1381218305.4093.54.camel@weser.hi.pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 08 Oct 2013 09:45:05 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Am Dienstag, den 08.10.2013, 09:02 +0200 schrieb David Jander:
> > On Mon, 7 Oct 2013 22:19:36 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > On Mon, Oct 07, 2013 at 11:57:35AM +0200, David Jander wrote:
> > > > On Mon, 7 Oct 2013 08:41:11 +0200
> > > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > > 
> > > > > On Mon, Oct 07, 2013 at 08:32:03AM +0200, David Jander wrote:
> > > > > > 
> > > > > > Dear Sascha,
> > > > > > 
> > > > > > On Sun, 6 Oct 2013 12:39:50 +0200
> > > > > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > > > > > 
> > > > > > > It doesn't interfere with the kernel. The kernel currently
> > > > > > > ignores this aliases. There are patches floating to let the
> > > > > > > kernel honor this aliases, but then they should simply have the
> > > > > > > same effect as they have in barebox.
> > > > > > 
> > > > > > That doesn't _feel_ right. Changing standard device names in Linux
> > > > > > via aliases in the DT might be a fancy idea, but it'd have a
> > > > > > different reason/use-case than in the case of barebox. IMHO using
> > > > > > the same DT for both seems to be the Right Thing (tm) to do, but
> > > > > > then the semantics must be the same also. If I need aliases in the
> > > > > > DT only to be able to tell devices apart from each other in
> > > > > > barebox, while in Linux the effect would only be a rather
> > > > > > inconvenient renaming of devices with no other added value, I
> > > > > > think we need a different way to differentiate devices in barebox.
> > > > > > Why not just use a simple driver-provided prefix (mci, mmc, usb,
> > > > > > sata, etc...) for now?
> > > > > 
> > > > > That's not enough. We also need a fixed numbering. Otherwise a
> > > > > nonremovable eMMC and a removable SD card change their device names
> > > > > depending on the detect order.
> > > > 
> > > > True. Can host->dev.id be used? Should be fixed AFAICS...
> > > 
> > > host->dev.id depends on the probe order.
> > 
> > :-(
> > 
> > > > > Using aliases to provide a numbering is done in the Kernel aswell at
> > > > > least for gpios, uarts and i2c busses, so expanding this scheme to
> > > > > mmc/sd slots doesn't feel too wrong to me.
> > > > 
> > > > Yes, but we are doing it in barebox now only because there is no other
> > > > way to tell devices apart from each other. While the MMC device being
> > > > called "mmcblk0" or whatever in Linux is perfectly fine (no need for
> > > > alias),
> > > 
> > > Linux has exactly the same problem. There are enough systems on which
> > > the eMMC changes its name depending on a SD card being plugged in or
> > > not.
> > 
> > Yes, but you have udev/mdev hotplugging and the sysfs interface to figure
> > out what you need to know. Barebox has nothing like that AFAICS.
> > 
> > > > in
> > > > barebox the device is now named "disk0", and there is no way of knowing
> > > > what "disk0" actually is. Using DT-aliases for that purpose seems
> > > > wrong to me. Why was this changed anyway? Introduction of some common
> > > > "disk" layer (like scsi-disk on Linux)? Or just for the sake of
> > > > confusing it with other "disk"-like devices?
> > > 
> > > It has always been diskx on barebox, this behaviour hasn't changed.
> > 
> > You are right. Sorry for the confusion. There were aliases in barebox's
> > version of imx53.dtsi which went missing somehow in my tree. I have been
> > merging stuff from mainline Linux....
> > That leads me to the question: What is the intended relationship between
> > barebox and Linux kernel DTS files? Which one is supposed to be the
> > "master" or "upstream" version? Aren't they supposed to be kept in sync
> > somehow? At least the basic SoC-specific .dtsi files?
> > 
> Missing other options we regard the Linux DTs as the upstream. Ideally
> DTs should be stored in a separate repo, so they don't get broken
> unnecessarily.
> 
> We will try to keep the Barebox DTs in sync with Linux as much as
> possible. But even then there is no guarantee that Barebox and Linux DTs
> don't drift away from each other over time.
> If a binding gets broken (let's hope that everyone gets their act
> together and don't do this anymore), it will require code changes and
> maintenance work to get things in sync again.
> 
> Another real-life use-case where you might end up with different DTs is
> if you update your Linux kernel more regularly than the Barebox on your
> device. So please if ever possible don't boot the Linux kernel with the
> builtin Barebox DT, but design your boot concept in a way that you
> always deliver a DTB fitting your kernel.

Our boot-scheme checks for a DTB on the boot-medium. If it finds one matching
the board, it is used, otherwise it boots with barebox's built-in DTB, and
that should be the default situation, unless it becomes necessary to overrule
the internal DTB for whatever regrettable reason.

I have had strong discussions (almost flame-war) long time ago on alkml about
the issue of hardware initialization. IMNSHO, hardware initialization that has
to do with the electrical layout of the board (PAD settings, drive-strength,
etc...) must always be done in the boot-loader. Back in the time where there
was no DT for ARM, Linux kernel board support code was a bloody mess with this
sort of HW initialization everywhere, and everywhere done differently. Only
the hardware designer know what drive-strength and other PAD settings need to
be chosen for each PAD. That is where your design is based on. Kernel
(-developers) do not know, and should not need to care.
Now there is this "invention" of putting all this information in the DT. This
actually seems like a good compromise between what I said above and the fact
that the kernel sometimes needs to reconfigure PADs due to PM, pluggable
devices and such. But still the knowledge about PAD settings (and what
hardware the board happens to have for that matter) belongs to the
boot-loader. Having more than one source for this is dangerous.

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
