Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f45.google.com ([209.85.215.45])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlRDL-0006OF-A0
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:30:09 +0000
Received: by mail-la0-f45.google.com with SMTP id p9so1914961laa.18
 for <barebox@lists.infradead.org>; Wed, 19 Dec 2012 13:30:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Dec 2012 01:29:50 +0400
Message-Id: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/5] add ELF support
To: barebox@lists.infradead.org

This __PRELIMINARY__ patch series introduces ELF files support in barebox
for MIPS architecture, but there is no barriers to adapt it for other
architectures.
The two last patches make possible to start linux from barebox
on qemu's mips malta board.

ELF support uses a relocator and makes possible to load ELF files,
that use the same address ranges that uses barebox,
e.g. it make possible to start barebox from barebox.

ELF support is based on kexec (git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git),
but I have discovered some problems with it:
* kexec tryes to duplicate the functions of the existing
barebox image handling framework so IMHO there is no reasons to import
kexec to barebox "as is".
* kexec introduces own data structures for memory regions handling,
but we already have 'struct resource'. So we have no need to import
this part either.
* kexec has coding style errors.

ELF-loader use the following algorithm:
1. it loads entire ELF-file to RAM;
2. it parses the ELF header and choose the loadable segments; (from kexec);
3. it traverses the available memory banks and checks that ELF
segments can be loaded;
4. it collects all used by barebox memory ranges (thanks to
request_sdram_region() we can do it), in addition it collects all
memory ranges that WILL be used after ELF segments relocation. So we
can determine all unused in any case memory ranges.
5. The relocation code copy all ELF segments to the unused memory.
Also it copy to the unsed memory the table of ELF segments. At last it
copy the relocatable "reboot code" to the unused memory. The "reboot
code" is written in ASM it can be started from any address.
It takes the address of the table of ELF segments and ELF entry point.
The "reboot code" use table to relocate segments and transfer
the control to the ELF entry point. (this part is based on mips linux
kernel kexec part).

ISSUES

* the relocator is always used;
* some checks from original kexec are skipped;
* just now there is no cache support for MIPS, so there are many conversions to KSEG1;
* check_room_for_elf() uses virt_to_phys();
* unused memory region for storing relocated data segments is selected trivialy: it is the biggest unused region; but we must check the size of the region, and, if necesssary try to find next region;
* some naming cleenup is needed;
* MIPS: linux cmdline handling is missing.

USAGE

barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x1e000000 - 0x1e3fffff (size 0x00400000) cfi_flash0
  0xa0000000 - 0xafffffff (size 0x10000000) ram0
    0xa17f9000 - 0xa17fffff (size 0x00007000) stack
    0xa1800000 - 0xa27fffff (size 0x01000000) malloc space
    0xa2800000 - 0xa2d4e464 (size 0x0054e465) barebox
    0xa2d50114 - 0xa2d56bb0 (size 0x00006a9d) bss
  0xb80003f8 - 0xb80003ff (size 0x00000008) ns16550_serial0
barebox:/ bootm env/vmlinux.qemu-malta-be
handler failed with No error
barebox:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x1e000000 - 0x1e3fffff (size 0x00400000) cfi_flash0
  0xa0000000 - 0xafffffff (size 0x10000000) ram0
    0xa17f9000 - 0xa17fffff (size 0x00007000) stack
    0xa1800000 - 0xa27fffff (size 0x01000000) malloc space
    0xa2800000 - 0xa2d4e464 (size 0x0054e465) barebox
    0xa2d50114 - 0xa2d56bb0 (size 0x00006a9d) bss
    0xa2d56bc0 - 0xa316f29b (size 0x004186dc) kexec relocatable segments
    0xa316f2a0 - 0xa316f307 (size 0x00000068) kexec relocator
    0xa316f310 - 0xa316f31f (size 0x00000010) kexec control segments
  0xb80003f8 - 0xb80003ff (size 0x00000008) ns16550_serial0
barebox:/ go 0xa316f2a0
## Starting application at 0xa316f2a0 ...
Linux version 2.6.38.8-malta (antony@luz) (gcc version 4.4.6 (crosstool-NG 1.13.0) ) #1 Fri Oct 28 14:45:36 MSK 2011
memsize not set in boot prom, set to default (32Mb)
Config serial console: console=ttyS0,38400n8r
bootconsole [early0] enabled
CPU revision is: 00019300 (MIPS 24Kc)
FPU revision is: 00000000
...


[RFC 1/5] resource: add create_resource() helper function
[RFC 2/5] bootm: add very basic ELF support (stolen from kexec)
[RFC 3/5] MIPS: add ELF support
[RFC 4/5] MIPS: qemu-malta: add board label
[RFC 5/5] MIPS: qemu-malta: add YAMON-style GT64120 memory map

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
