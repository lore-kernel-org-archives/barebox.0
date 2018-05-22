Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ib-0003Fm-UF
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:07 +0000
Received: by mail-wm0-x241.google.com with SMTP id t11-v6so981920wmt.0
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:33:55 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:30 +0300
Message-Id: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 00/12]  various fixes for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Hi,

This is a third revision of of the patchset which fixes various issues with 64 
bit barebox, primarily MIPS related.

Differences from v2:
 - add some comments to commits
 - move MIPS' IOMEM declarations to arch/mips/include/asm/io.h
 - skip `[PATCH v2 09/12] mips: fix warnings from CPHYSADDR() macro` for now
 - Kconfig' options are disabled by default
 - don't credit Andrey for trivial suggestions :)

Regards,
Peter

Peter Mamonov (12):
  resource: fix iomem_resource.end for 64 bit systems
  fs: fix memory access via /dev/mem for MIPS64
  mtd: cfi-flash: fix write_buff() for 64 bit systems
  i2c-mux-pca954x: fix out-of-bounds write for 64 bit systems
  MIPS: import 64-bit address conversion macros
  include/common.h: move IOMEM declaration for MIPS to
    arch/mips/include/asm/io.h
  MIPS: add proper IOMEM() declaration for MIPS64
  MIPS: fix copy_to_link_location for 64 bit mode
  MIPS: use CKSEG1 instead of KSEG1
  MIPS: add PHYS_ADDR_T_64BIT option
  MIPS: 64BIT selects PHYS_ADDR_T_64BIT
  MIPS: don't use optimized string functions for MIPS64

 arch/mips/Kconfig                   |  5 +++++
 arch/mips/boot/dtb.c                |  4 ++--
 arch/mips/include/asm/addrspace.h   | 20 ++++++++++++++++++++
 arch/mips/include/asm/io.h          |  6 ++++++
 arch/mips/include/asm/pbl_macros.h  | 21 +++++++++++----------
 arch/mips/lib/c-r4k.c               |  8 ++++----
 common/resource.c                   |  2 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c |  4 +++-
 drivers/mtd/nor/cfi_flash.c         |  2 +-
 fs/fs.c                             |  4 ++--
 include/common.h                    |  7 ++-----
 11 files changed, 57 insertions(+), 26 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
