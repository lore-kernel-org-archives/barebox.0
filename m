Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPB-0004TB-6s
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:22 +0000
Received: by mail-wm0-x232.google.com with SMTP id f6-v6so24846083wmc.4
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:54:57 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:26 +0300
Message-Id: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 00/12] various fixes for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Hi,

Here is a second revision of the patchset which fixes various issues with 64 bit 
barebox, primarily MIPS related. IMHO all of these patches are ready for 
application.

Regards,
Peter

Peter Mamonov (12):
  resource: fix iomem root resource for 64 bit
  fs: fix memory access for 64bit MIPS
  mtd: cfi-flash: fix write_buff() for 64BIT
  i2c/muxes/i2c-mux-pca954x: fix private data retrieval for 64bit mode
  MIPS: import 64-bit address conversion macros
  common.h: fix IOMEM() for MIPS64
  mips: fix copy_to_link_location for 64 bit mode
  MIPS: use CKSEG1 instead of KSEG1
  mips: fix warnings from CPHYSADDR() macro
  mips: add PHYS_ADDR_T_64BIT option
  mips: 64BIT selects PHYS_ADDR_T_64BIT
  fixup! MIPS: import optimized string functions from Linux

 arch/mips/Kconfig                   |  6 ++++++
 arch/mips/boot/dtb.c                |  4 ++--
 arch/mips/include/asm/addrspace.h   | 25 +++++++++++++++++++++++++
 arch/mips/include/asm/pbl_macros.h  | 21 +++++++++++----------
 arch/mips/lib/c-r4k.c               |  8 ++++----
 common/resource.c                   |  2 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c |  4 +++-
 drivers/mtd/nor/cfi_flash.c         |  2 +-
 fs/fs.c                             |  4 ++--
 include/common.h                    |  4 ++++
 10 files changed, 59 insertions(+), 21 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
