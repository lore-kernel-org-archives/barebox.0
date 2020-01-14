Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irUTL-00023Q-OP
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 22:15:41 +0000
Received: by mail-ot1-x341.google.com with SMTP id a15so14266579otf.1
 for <barebox@lists.infradead.org>; Tue, 14 Jan 2020 14:15:39 -0800 (PST)
MIME-Version: 1.0
References: <CAG=Azd9mtQJuweJaeJNxRWq2-6r7Yu0L5oS9zFX1YNvvXHoo=A@mail.gmail.com>
 <5d1c6ffa63be590d5135dadf9200405cd5a28ba0.camel@lynxeye.de>
In-Reply-To: <5d1c6ffa63be590d5135dadf9200405cd5a28ba0.camel@lynxeye.de>
From: Wesley Chow <wes@cortico.ai>
Date: Tue, 14 Jan 2020 17:15:27 -0500
Message-ID: <CAG=Azd8MdL6C-bpHWHBO6wXscA-xYFj7yM-YrHFTHajxnu-aRQ@mail.gmail.com>
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
Subject: Re: qemu arm vexpress / virt32 support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

Thanks, -next works! Also since 2020.10.0 cut right after I wrote this
email, I just tested head (4cce60b7fe2798e81b04c5d9ad79dc9b443635a8)
and the 2020.10.0 release. Both work. I no longer know what githash I
was on at the time of my original email. FWIW, I think in my previous
testing 2019.12.0 and 2019.11.0 didn't work, but 2019.10.0 did. Though
that was via buildroot integration, and I'm honestly not sure if they
apply any patches. At any rate, I'll stick to 2020.10.0 and see how
that goes.

Wes


On Tue, Jan 14, 2020 at 3:06 PM Lucas Stach <dev@lynxeye.de> wrote:
>
> Hi Wesley,
>
> Am Dienstag, den 14.01.2020, 12:40 -0500 schrieb Wesley Chow:
> > I see here that vexpress is supposed to be the 32 bit arm config of choice:
> >
> > http://lists.infradead.org/pipermail/barebox/2017-November/031597.html
> >
> > Is this still the case, ie there's no interest in supporting the 32 bit virt?
>
> I wouldn't say there is no interest in supporting the virt platform in
> Barebox. It's true that none of the current developers have a strong
> interest in the virt platform.
>
> If someone from the community shows an interest and implements all the
> virtio infrastructure and related drivers, I see no reason why those
> patches wouldn't be considered for mainline inclusion.
>
> I guess that's an elaborate way to say: patches welcome!
>
> >
> > Using vexpress, I get this:
> >
> > ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- make vexpress_defconfig
> > ...
> > $ qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 256 -nographic
> > -kernel images/barebox-vexpress-ca9.img
> > pulseaudio: set_sink_input_volume() failed
> > pulseaudio: Reason: Invalid argument
> > pulseaudio: set_sink_input_mute() failed
> > pulseaudio: Reason: Invalid argument
> > PFLASH: Possible BUG - Write block confirm
> >
> > (then qemu exits)
> >
> > This is with barebox head, qemu 2.11, but same results with qemu 4.2.0
> > too. I'm new to barebox -- is this the correct invocation?
>
> I've just built barebox -next and using qemu 4.1.1 the documented
> (Documentation/boards/arm-qemu-vexpress.rst) commandline
> "qemu-system-arm -m 1024M -machine vexpress-a9 -cpu cortex-a9
> -nographic -no-reboot -kernel images/barebox-vexpress-ca9.img" yields a
> working Barebox for me.
>
> Regards,
> Lucas
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
