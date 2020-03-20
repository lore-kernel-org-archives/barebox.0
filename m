Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFD2N-0000Ln-O4
 for barebox@lists.infradead.org; Fri, 20 Mar 2020 08:29:53 +0000
Received: by mail-ua1-x92a.google.com with SMTP id h35so1870144uae.5
 for <barebox@lists.infradead.org>; Fri, 20 Mar 2020 01:29:50 -0700 (PDT)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 20 Mar 2020 09:29:04 +0100
Message-ID: <CAGm1_kssX7T6KHNp7pp2dbfSUXSH4_RtOB3jo+6Ldwi11rB5YA@mail.gmail.com>
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
Subject: am335x: load a kernel with integrated initramfs
To: barebox <barebox@lists.infradead.org>

I get an "handler failed with: Out of memory" message when trying to
load my 22MB large kernel-fit.itb. Below you can see the related log:

mounted /dev/nand0.UBI.ubi.kernel on /mnt/nand0.UBI.ubi.kernel
YY: bootm_boot
YY: read file 0, size 22661672, PAGE_SIZE 4096
YY: fit_open
FIT: Opened FIT image: Simple image with single Linux kernel and FDT blob
FIT: configuration 'conf221@1': Boot Linux kernel with FDT blob (221)
FIT: image 'kernel@1': 'Vanilla Linux kernel'
FIT: /images/kernel@1/hash@1: hash OK

Loading open firmware Device Tree flattened Binary
'/mnt/nand0.UBI.ubi.kernel/kernel-fit.itb'
OS image not yet relocated
Passing control to FIT image handler
YY: do_bootm_linux
YY: before bootm_load_os
YY: bootm_load_os
YY: kernel size 22484352
YY: for each memory bank: size 22484352
__request_region: 0x86b37000:0x880a857f conflicts with 0x87efe860:0x8fdfd0bf
YY: almost at the end
handler failed with: Out of memory

System information:

barebox> / meminfo
used: 1057928
free: 132057980

barebox> / iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x44e07000 - 0x44e07fff (size 0x00001000) 44e07000.gpio@0.of
  0x44e09000 - 0x44e09fff (size 0x00001000) 44e09000.serial@0.of
  0x44e10620 - 0x44e1062f (size 0x00000010) 44e10620.control@620.of
  0x44e10648 - 0x44e1064b (size 0x00000004) 44e10620.control@620.of
  0x44e10800 - 0x44e10a37 (size 0x00000238) 44e10800.pinmux@800.of
  0x47401000 - 0x474011ff (size 0x00000200) 47401400.usb@1400.of
  0x47401300 - 0x474013ff (size 0x00000100) 47401300.usb-phy@1300.of
  0x47401400 - 0x474017ff (size 0x00000400) 47401400.usb@1400.of
  0x47401800 - 0x474019ff (size 0x00000200) 47401c00.usb@1800.of
  0x47401b00 - 0x47401bff (size 0x00000100) 47401b00.usb-phy@1b00.of
  0x47401c00 - 0x47401fff (size 0x00000400) 47401c00.usb@1800.of
  0x47810000 - 0x47810fff (size 0x00001000) 47810000.mmc@0.of
  0x4802a000 - 0x4802afff (size 0x00001000) 4802a000.i2c@0.of
  0x48040000 - 0x480403ff (size 0x00000400) 48040000.timer@0.of
  0x4804c000 - 0x4804cfff (size 0x00001000) 4804c000.gpio@0.of
  0x48060000 - 0x48060fff (size 0x00001000) 48060000.mmc@0.of
  0x481ac000 - 0x481acfff (size 0x00001000) 481ac000.gpio@0.of
  0x481ae000 - 0x481aefff (size 0x00001000) 481ae000.gpio@0.of
  0x4a100000 - 0x4a1007ff (size 0x00000800) 4a100000.ethernet@0.of
  0x4a101000 - 0x4a1010ff (size 0x00000100) 4a101000.mdio@1000.of
  0x50000000 - 0x50000fff (size 0x00001000) gpmc_nand0
  0x80000000 - 0x8fffffff (size 0x10000000) ram0
    0x87efe860 - 0x8fdfd0bf (size 0x07efe860) malloc space
    0x8fdfd0c0 - 0x8fdffffa (size 0x00002f3b) board data
    0x8fe00000 - 0x8fe8a6af (size 0x0008a6b0) barebox
    0x8fe8a6b0 - 0x8fea3427 (size 0x00018d78) barebox data
    0x8fea3428 - 0x8fea97d3 (size 0x000063ac) bss
    0x8ffe4000 - 0x8ffe7fff (size 0x00004000) ttb
    0x8ffe8000 - 0x8ffeffff (size 0x00008000) stack

My defconfig [1].

What can I tweak? In the future I'll need to load even bigger images.

[1] https://github.com/visionsystemsgmbh/onrisc_br_bsp/blob/master/board/vscom/baltos/barebox/am335x_baltos_defconfig

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
