Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ve76Y-0007He-4F
 for barebox@lists.infradead.org; Wed, 06 Nov 2013 17:41:23 +0000
Received: by mail-ee0-f52.google.com with SMTP id e49so2739118eek.11
 for <barebox@lists.infradead.org>; Wed, 06 Nov 2013 09:40:58 -0800 (PST)
Date: Wed, 6 Nov 2013 18:40:49 +0100
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131106174049.GA83992@localhost>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131106094628.GH24559@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Wed, Nov 06, 2013 at 10:46:28AM +0100, Sascha Hauer wrote:
> Hi Andre,
> 
> On Tue, Nov 05, 2013 at 12:00:58AM +0100, Andre Heider wrote:
> > This is v2 of my patch set posted on 10/24.
> > It adds framebuffer support for the RPi and provides an additional config
> > knob to set up the kernel's simplefb driver. The active barebox framebuffer
> > is basis for that feature, so that other platforms can make use of it.
> > 
> > This simplefb option depends on the bcm2835 fb driver since drivers need
> > to be aware of simplefb: framebuffers need to stay configured and cannot be
> > teared down.
> > 
> > The RPi case is rather simple in this regard. The allocated framebuffer lies
> > within the memory range of the VideoCore of the ARM/VC memory split. Hence,
> > there is no memory range that needs to be reserved as far as the ARM side
> > of things is concerned.
> > This likely needs to be added once other fb driver want to use simplefb.
> > 
> > Changes since v1:
> > * renamed "pitch" to "line_length" to match the kernel
> > * the bcm2835 framebuffer driver is now standalone
> > * configuring simplefb for the kernel is based on the active barebox
> >   framebuffer
> 
> I applied this series without the simplefb patch.

thanks!

> 
> For the simplefb I'd like to use the following patch instead. It's your
> patch with some adjustments:
> 
> - add a register_simplefb device parameter to make it configurable
>   whether a simplefb node should be created or not.
> - register the OF fixup in register_framebuffer(). This way we always
>   have a simplefb node once a framebuffer is registered without getting
>   spurious warnings when there is no framebuffer present.
> - check if the framebuffer is actually enabled. If it's not, we
>   shouldn't register a simplefb node.
> 
> Are you fine with this and if yes, could you give the patch a test?
> It depends on the add-context-pointer-to-of_register_fixup patch I just
> posted. Just try the current -next branch, it should contain all you
> need for testing.

Neat, that looks nicer, so no objection here ;)

And yes, it works if I set fb0.enable=1 and fb0.register_simplefb=1,
both are 0 per default.

Now I wonder who/where those are supposed to get set? Is that a job for
the runtime environment?

I didn't really care about the enabled parameter until now, there isn't
anything to do in the fb_enable callback for this fb driver and `splash`
doesn't seem to care either.

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
