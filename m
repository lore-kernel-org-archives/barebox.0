Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VT7Zi-0006xE-0V
 for barebox@lists.infradead.org; Mon, 07 Oct 2013 09:58:03 +0000
Date: Mon, 7 Oct 2013 11:57:35 +0200
From: David Jander <david.jander@protonic.nl>
Message-ID: <20131007115735.7301cc65@archvile>
In-Reply-To: <20131007064111.GT30088@pengutronix.de>
References: <20131003171726.096b0daa@archvile>
 <20131003192349.GR32444@ns203013.ovh.net>
 <20131004091739.4debe909@archvile>
 <20131006103949.GL30088@pengutronix.de>
 <20131007083203.7aa17d5b@archvile>
 <20131007064111.GT30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 7 Oct 2013 08:41:11 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Oct 07, 2013 at 08:32:03AM +0200, David Jander wrote:
> > 
> > Dear Sascha,
> > 
> > On Sun, 6 Oct 2013 12:39:50 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > 
> > > It doesn't interfere with the kernel. The kernel currently ignores this
> > > aliases. There are patches floating to let the kernel honor this
> > > aliases, but then they should simply have the same effect as they have
> > > in barebox.
> > 
> > That doesn't _feel_ right. Changing standard device names in Linux via
> > aliases in the DT might be a fancy idea, but it'd have a different
> > reason/use-case than in the case of barebox. IMHO using the same DT for
> > both seems to be the Right Thing (tm) to do, but then the semantics must
> > be the same also. If I need aliases in the DT only to be able to tell
> > devices apart from each other in barebox, while in Linux the effect would
> > only be a rather inconvenient renaming of devices with no other added
> > value, I think we need a different way to differentiate devices in
> > barebox. Why not just use a simple driver-provided prefix (mci, mmc, usb,
> > sata, etc...) for now?
> 
> That's not enough. We also need a fixed numbering. Otherwise a
> nonremovable eMMC and a removable SD card change their device names
> depending on the detect order.

True. Can host->dev.id be used? Should be fixed AFAICS...

> Using aliases to provide a numbering is done in the Kernel aswell at
> least for gpios, uarts and i2c busses, so expanding this scheme to
> mmc/sd slots doesn't feel too wrong to me.

Yes, but we are doing it in barebox now only because there is no other way to
tell devices apart from each other. While the MMC device being called
"mmcblk0" or whatever in Linux is perfectly fine (no need for alias), in
barebox the device is now named "disk0", and there is no way of knowing what
"disk0" actually is. Using DT-aliases for that purpose seems wrong to me.
Why was this changed anyway? Introduction of some common "disk" layer (like
scsi-disk on Linux)? Or just for the sake of confusing it with other
"disk"-like devices?

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
