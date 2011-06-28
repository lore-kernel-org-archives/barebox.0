Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 28.98.mail-out.ovh.net ([87.98.167.241]
	helo=98.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QbQoi-0001Vt-RO
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 05:26:34 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by 98.mail-out.ovh.net (Postfix) with SMTP id E21E74B3B7A
	for <barebox@lists.infradead.org>;
	Tue, 28 Jun 2011 07:26:09 +0200 (CEST)
Date: Tue, 28 Jun 2011 07:11:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110628051134.GN17355@game.jcrosoft.org>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
	<1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309194834-2292-2-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] Add MIPS arch support to barebox
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 21:13 Mon 27 Jun     , Antony Pavlov wrote:
> Only supported board is qemu malta:
>   * barebox works in uncached memory;
>   * no peripherals support, but serial port.
Hi

I try to compile but does not work on mipsel toolchains

please take a look on here
http://git.jcrosoft.org/git?p=barebox.git;a=shortlog;h=refs/heads/mips

the work start by Shinya Kuribayashi to support mips and barebox

maybe you can merge both

# make O=build/malta -j9 -s
  GEN     /opt/work/barebox/build/malta/Makefile
common/Kconfig:91:warning: 'TEXT_BASE': number is invalid
  GEN     /opt/work/barebox/build/malta/Makefile
  CHK     include/generated/version.h
  UPD     include/generated/version.h
  CHK     include/generated/utsrelease.h
  SYMLINK include/config.h -> arch/mips/boards/malta//config.h
  SYMLINK include/asm -> include/asm-mips
  UPD     include/generated/utsrelease.h
  Using /opt/work/barebox as source for kernel
/opt/work/barebox/common/memory.c:33: warning: no previous prototype for 'mem_malloc_start'
/opt/work/barebox/common/memory.c:38: warning: no previous prototype for 'mem_malloc_end'
/opt/work/barebox/common/memory.c:43: warning: no previous prototype for 'mem_malloc_init'
/opt/work/barebox/common/memory.c:63: warning: no previous prototype for 'sbrk'
/opt/work/barebox/lib/string.c:437: warning: no previous prototype for 'bcopy'
mipsel-unknown-linux-gnu-ld: drivers/serial/serial_ns16550.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: drivers/serial/serial_ns16550.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file drivers/serial/serial_ns16550.o
make[3]: *** [drivers/serial/built-in.o] Error 1
make[2]: *** [drivers/serial] Error 2
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [drivers] Error 2
make[1]: *** Waiting for unfinished jobs....
mipsel-unknown-linux-gnu-ld: net/dhcp.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/dhcp.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/dhcp.o
mipsel-unknown-linux-gnu-ld: net/eth.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/eth.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/eth.o
mipsel-unknown-linux-gnu-ld: net/net.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/net.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/net.o
mipsel-unknown-linux-gnu-ld: net/tftp.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/tftp.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/tftp.o
mipsel-unknown-linux-gnu-ld: net/ping.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/ping.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/ping.o
mipsel-unknown-linux-gnu-ld: net/netconsole.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: net/netconsole.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file net/netconsole.o
make[2]: *** [net/built-in.o] Error 1
make[1]: *** [net] Error 2
mipsel-unknown-linux-gnu-ld: common/hush.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/hush.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/hush.o
mipsel-unknown-linux-gnu-ld: common/date.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/date.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/date.o
mipsel-unknown-linux-gnu-ld: common/environment.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/environment.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/environment.o
mipsel-unknown-linux-gnu-ld: common/complete.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/complete.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/complete.o
mipsel-unknown-linux-gnu-ld: common/poller.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/poller.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/poller.o
mipsel-unknown-linux-gnu-ld: common/memory.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/memory.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/memory.o
mipsel-unknown-linux-gnu-ld: common/dlmalloc.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/dlmalloc.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/dlmalloc.o
mipsel-unknown-linux-gnu-ld: common/clock.o: compiled for a big endian system and target is little endian
mipsel-unknown-linux-gnu-ld: common/clock.o: endianness incompatible with that of the selected emulation
mipsel-unknown-linux-gnu-ld: failed to merge target specific data of file common/clock.o

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
