Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQBH-0003tg-V1
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 17:40:48 +0000
Received: by mail-ot1-x32d.google.com with SMTP id p8so13403059oth.10
 for <barebox@lists.infradead.org>; Tue, 14 Jan 2020 09:40:43 -0800 (PST)
MIME-Version: 1.0
From: Wesley Chow <wes@cortico.ai>
Date: Tue, 14 Jan 2020 12:40:32 -0500
Message-ID: <CAG=Azd9mtQJuweJaeJNxRWq2-6r7Yu0L5oS9zFX1YNvvXHoo=A@mail.gmail.com>
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
Subject: qemu arm vexpress / virt32 support
To: barebox@lists.infradead.org

I see here that vexpress is supposed to be the 32 bit arm config of choice:

http://lists.infradead.org/pipermail/barebox/2017-November/031597.html

Is this still the case, ie there's no interest in supporting the 32 bit virt?

Using vexpress, I get this:

ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- make vexpress_defconfig
...
$ qemu-system-arm -M vexpress-a9 -cpu cortex-a9 -m 256 -nographic
-kernel images/barebox-vexpress-ca9.img
pulseaudio: set_sink_input_volume() failed
pulseaudio: Reason: Invalid argument
pulseaudio: set_sink_input_mute() failed
pulseaudio: Reason: Invalid argument
PFLASH: Possible BUG - Write block confirm

(then qemu exits)

This is with barebox head, qemu 2.11, but same results with qemu 4.2.0
too. I'm new to barebox -- is this the correct invocation?

Thanks,
Wes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
