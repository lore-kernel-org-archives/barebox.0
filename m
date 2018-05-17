Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRX-0002gM-6I
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:44 +0000
Received: by mail-wm0-x243.google.com with SMTP id a67-v6so8564127wmf.3
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:32 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:43 +0300
Message-Id: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 00/15] MIPS64 support
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Hi,

Recently I've resolved a couple of issues that prevented 64bit Barebox from 
running on MIPS64 CPUs. By the way, 32bit Barebox runs on MIPS64 without any 
issues, since MIPS64 supports 32 bit addressing mode. Here is a relevant patch 
series.  This is mostly for discussion, yet some patches can be applied as is.  
Please, give your comments.

Regards,
Peter

Peter Mamonov (15):
  FIXME: add t4..t7 definitions for MIPS64
  MIPS: use CKSEG1 instead of KSEG1
  FIXME: mips: fix copy_to_link_location for 64 bit mode
  mips: fix warnings from CPHYSADDR() macro
  mips: fix dma_sync_* stuff for MIPS64
  common/Kconfig: add PHYS_ADDR_T_64BIT option
  mips: 64BIT selects PHYS_ADDR_T_64BIT
  fixup! MIPS: import optimized string functions from Linux
  MIPS: import 64-bit address conversion macros
  common.h: fix IOMEM() for MIPS64
  resource: fix iomem root resource for 64 bit
  FIXME: commands/mem: fix /dev/mem size
  FIXME: fs: fix memory access for 64bit MIPS
  mtd: cfi-flash: fix write_buff() for 64BIT
  i2c/muxes/i2c-mux-pca954x: fix private data retrieval for 64bit mode

 arch/mips/Kconfig                   |  2 ++
 arch/mips/boot/dtb.c                |  4 ++--
 arch/mips/include/asm/addrspace.h   | 25 +++++++++++++++++++++++++
 arch/mips/include/asm/dma-mapping.h |  2 +-
 arch/mips/include/asm/io.h          |  4 ++--
 arch/mips/include/asm/pbl_macros.h  | 24 ++++++++++++++++--------
 arch/mips/include/asm/regdef.h      |  4 ++++
 arch/mips/lib/c-r4k.c               | 26 +++++++++++++-------------
 arch/mips/lib/dma-default.c         |  6 ++++--
 commands/mem.c                      |  2 +-
 common/Kconfig                      |  3 +++
 common/resource.c                   |  4 ++++
 drivers/i2c/muxes/i2c-mux-pca954x.c |  4 +++-
 drivers/mtd/nor/cfi_flash.c         |  2 +-
 fs/fs.c                             |  6 ------
 include/common.h                    |  4 ++++
 16 files changed, 85 insertions(+), 37 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
