Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQ7r-0001Wn-IQ
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 17:37:16 +0000
Received: by mail-ot1-x336.google.com with SMTP id 77so13422069oty.6
 for <barebox@lists.infradead.org>; Tue, 14 Jan 2020 09:37:10 -0800 (PST)
MIME-Version: 1.0
From: Wesley Chow <wes@cortico.ai>
Date: Tue, 14 Jan 2020 12:36:59 -0500
Message-ID: <CAG=Azd9zT6ahWf94hAVT3YYF6g=63K__6YoGeP9kDEqF-BSR9Q@mail.gmail.com>
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
Subject: qemu arm virt64 hangs
To: barebox@lists.infradead.org

hi all!

64 bit virt doesn't appear to be working.

$ ARCH=arm CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- make qemu_virt64_defconfig
...
$ qemu-system-aarch64 -M virt -cpu cortex-a57 -nographic -kernel barebox

(qemu hangs)

I see here that at some point aarch64 had issues, but do these remain
unresolved? https://www.spinics.net/lists/u-boot-v2/msg33882.html

I'm new to barebox, so apologies if I did something boneheaded.

Thanks,
Wes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
