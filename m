Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sg-0001Z9-Gd
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:15 +0000
Received: by lbbgg6 with SMTP id gg6so4936568lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:32 +0400
Message-Id: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [WIP] add very basic ELF support on MIPS
To: barebox@lists.infradead.org

This patch series introduces the basic ELF files support
for bootm command on MIPS based on kexec.

The goal of this work is ELF linux kernel loading for MIPS.

The patches 1-3 used to introduce per-arch low-level init for MIPS.

The patch 4 adds the nessesary low-level initialisation for
qemu-malta suitable for Linux kernel.

Just now barebox for MIPS32 has no support for cache, so
this patch series tries to overcome this disadvantage in
patch 5.

The patch 6 introduce memory region for loading ELFs on qemu-malta.

At last the patch 7 introduces kexec infrastructure for ELF loading.

Current problems:
 * there is no Linux kernel cmdline support;
 * the code is not clean (e.g. there are some '#if 0' and
   some unused declarations);
 * barebox already has ELF support for modules, but
   this patch series just has no integration with it.

This patch series and one additional huge patch with sample
Linux ELF image for malta can be found at
 https://github.com/frantony/barebox/tree/next.mips-malta-elf-linux.20120720

[RFC 1/7] MIPS: move start.S code to .text_entry section
[RFC 2/7] MIPS: add the initial support for lowlevel init
[RFC 3/7] MIPS: malta: add bogus lowlevel init
[RFC 4/7] MIPS: malta: add YAMON-style GT64120 memory map
[RFC 5/7] MIPS: malta: make KSEG0 uncached
[RFC 6/7] MIPS: qemu-malta: add KSEG0 memory region
[RFC 7/7] bootm: add very basic ELF support on MIPS (stealed from

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
