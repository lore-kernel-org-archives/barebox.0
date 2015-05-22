Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YvgBD-0003Gb-QI
 for barebox@lists.infradead.org; Fri, 22 May 2015 06:11:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1YvgAr-0004rM-4O
 for barebox@lists.infradead.org; Fri, 22 May 2015 08:11:13 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YvgAq-0005fj-Sj
 for barebox@lists.infradead.org; Fri, 22 May 2015 08:11:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 May 2015 08:10:57 +0200
Message-Id: <1432275071-28554-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Introduce asm-generic/posix_types.h
To: Barebox List <barebox@lists.infradead.org>

asm/posix_types.h adds several posix variable types for each architecture.
This is unnecessary code duplication. Since the files are derived from
Linux they have some real differences, but they are irrelevant to barebox.
For example __kernel_mode_t is unsigned int on some architectures and
unsigned short on others. Since we have no userspace we have to stay
compatible to we can use the same type for all architectures. Some
32bit architectures use unsigned long where others use unsigned int, but
since both are 32bit types we can use the same type for all architectures.
Finally there are types which are different between 32bit and 64bit
architectures, these are handled by the BITS_PER_LONG macro defined
in asm/bitsperlong.h which is added for the architectures that do not
have this file already.

----------------------------------------------------------------
Sascha Hauer (14):
      dma: Use generic place for dma_addr_t typedef
      drop __BITS_PER_LONG
      introduce bitsperlong.h for remaining architectures
      introduce generic posix_types.h
      remove unused nlink_t
      ARM: use generic posix_types.h
      blackfin: use generic posix_types.h
      x86: use generic posix_types.h
      openrisc: use generic posix_types.h
      mips: use generic posix_types.h
      ppc: use generic posix_types.h
      sandbox: use generic posix_types.h
      efi: use generic posix_types.h
      nios2: use generic posix_types.h

 arch/arm/include/asm/bitsperlong.h      |   1 +
 arch/arm/include/asm/posix_types.h      |  79 +------------------
 arch/arm/include/asm/types.h            |   7 +-
 arch/blackfin/include/asm/posix_types.h |  86 +--------------------
 arch/blackfin/include/asm/types.h       |   6 +-
 arch/efi/include/asm/bitsperlong.h      |  10 +++
 arch/efi/include/asm/posix_types.h      |  94 +----------------------
 arch/efi/include/asm/types.h            |  10 +--
 arch/mips/Kconfig                       |   1 +
 arch/mips/include/asm/bitsperlong.h     |   4 +-
 arch/mips/include/asm/posix_types.h     | 130 +-------------------------------
 arch/mips/include/asm/types.h           |  12 ---
 arch/nios2/include/asm/posix_types.h    |  78 +------------------
 arch/nios2/include/asm/types.h          |   3 -
 arch/openrisc/include/asm/bitsperlong.h |   1 +
 arch/openrisc/include/asm/posix_types.h |  72 +-----------------
 arch/openrisc/include/asm/types.h       |   6 +-
 arch/ppc/include/asm/bitsperlong.h      |   1 +
 arch/ppc/include/asm/posix_types.h      | 109 +-------------------------
 arch/ppc/include/asm/types.h            |   5 +-
 arch/sandbox/include/asm/bitsperlong.h  |  10 +++
 arch/sandbox/include/asm/posix_types.h  |  94 +----------------------
 arch/sandbox/include/asm/types.h        |   6 +-
 arch/x86/include/asm/bitsperlong.h      |   1 +
 arch/x86/include/asm/posix_types.h      |  45 +----------
 arch/x86/include/asm/types.h            |   2 +-
 common/Kconfig                          |   3 +
 include/asm-generic/bitsperlong.h       |  22 ------
 include/asm-generic/posix_types.h       |  90 ++++++++++++++++++++++
 include/asm-generic/swab.h              |   2 +-
 include/linux/types.h                   |   8 +-
 31 files changed, 143 insertions(+), 855 deletions(-)
 create mode 100644 arch/arm/include/asm/bitsperlong.h
 create mode 100644 arch/efi/include/asm/bitsperlong.h
 create mode 100644 arch/openrisc/include/asm/bitsperlong.h
 create mode 100644 arch/ppc/include/asm/bitsperlong.h
 create mode 100644 arch/sandbox/include/asm/bitsperlong.h
 create mode 100644 arch/x86/include/asm/bitsperlong.h
 create mode 100644 include/asm-generic/posix_types.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
