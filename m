Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irSi6-0000O8-R2
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 20:22:49 +0000
Message-ID: <0640b84370d284e080f3d771c84c6ecc9eeae797.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 14 Jan 2020 21:22:14 +0100
In-Reply-To: <CAG=Azd9zT6ahWf94hAVT3YYF6g=63K__6YoGeP9kDEqF-BSR9Q@mail.gmail.com>
References: <CAG=Azd9zT6ahWf94hAVT3YYF6g=63K__6YoGeP9kDEqF-BSR9Q@mail.gmail.com>
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
Subject: Re: qemu arm virt64 hangs
To: Wesley Chow <wes@cortico.ai>, barebox@lists.infradead.org

Hi Wesley,

Am Dienstag, den 14.01.2020, 12:36 -0500 schrieb Wesley Chow:
> hi all!
> 
> 64 bit virt doesn't appear to be working.
> 
> $ ARCH=arm CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- make
> qemu_virt64_defconfig
> ...
> $ qemu-system-aarch64 -M virt -cpu cortex-a57 -nographic -kernel
> barebox
> 
> (qemu hangs)
> 
> I see here that at some point aarch64 had issues, but do these remain
> unresolved? https://www.spinics.net/lists/u-boot-v2/msg33882.html

I've just sent a patch to at least solve the stack issues discussed in
this thread. Unfortunately this doesn't yield a completely working
Barebox for me. I get the following output before things go downhill in
a data abort:

barebox 2019.12.0-00296-g6b1cae953fba #370 Tue Jan 14 21:18:14 CET 2020
Board: ARM QEMU virt64

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
