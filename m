Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSSn-0002p4-1d
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 20:07:01 +0000
Message-ID: <5d1c6ffa63be590d5135dadf9200405cd5a28ba0.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 14 Jan 2020 21:06:22 +0100
In-Reply-To: <CAG=Azd9mtQJuweJaeJNxRWq2-6r7Yu0L5oS9zFX1YNvvXHoo=A@mail.gmail.com>
References: <CAG=Azd9mtQJuweJaeJNxRWq2-6r7Yu0L5oS9zFX1YNvvXHoo=A@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: qemu arm vexpress / virt32 support
To: Wesley Chow <wes@cortico.ai>, barebox@lists.infradead.org

Hi Wesley,

Am Dienstag, den 14.01.2020, 12:40 -0500 schrieb Wesley Chow:
> I see here that vexpress is supposed to be the 32 bit arm config of choice:
> 
> http://lists.infradead.org/pipermail/barebox/2017-November/031597.html
> 
> Is this still the case, ie there's no interest in supporting the 32 bit virt?

I wouldn't say there is no interest in supporting the virt platform in
Barebox. It's true that none of the current developers have a strong
interest in the virt platform.

If someone from the community shows an interest and implements all the
virtio infrastructure and related drivers, I see no reason why those
patches wouldn't be considered for mainline inclusion.

I guess that's an elaborate way to say: patches welcome!

> 
> Using vexpress, I get this:
> 
> ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- make vexpress_defconfig
> ...
> $ qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 256 -nographic
> -kernel images/barebox-vexpress-ca9.img
> pulseaudio: set_sink_input_volume() failed
> pulseaudio: Reason: Invalid argument
> pulseaudio: set_sink_input_mute() failed
> pulseaudio: Reason: Invalid argument
> PFLASH: Possible BUG - Write block confirm
> 
> (then qemu exits)
> 
> This is with barebox head, qemu 2.11, but same results with qemu 4.2.0
> too. I'm new to barebox -- is this the correct invocation?

I've just built barebox -next and using qemu 4.1.1 the documented
(Documentation/boards/arm-qemu-vexpress.rst) commandline
"qemu-system-arm -m 1024M -machine vexpress-a9 -cpu cortex-a9
-nographic -no-reboot -kernel images/barebox-vexpress-ca9.img" yields a
working Barebox for me.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
