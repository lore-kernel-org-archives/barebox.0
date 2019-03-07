Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nma-0004tQ-1W
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:37 +0000
Received: by mail-pg1-x529.google.com with SMTP id h11so10627227pgl.0
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:09 -0800
Message-Id: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/17] lseek related fixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

As a follow up to lseek() related fixes that went in recently, I went
throught all of the calls to it in the codebase I could find and fixed
a number of type problems as well as some other minor issue. This
series is the result. Hopefuly all of the patches are
self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (17):
  libfile: Make failure path of open_and_lseek() consistent
  common: Always return enum filetype in file_name_detect_type_offset()
  MIPS: ath79: Use errno to get error code from open_and_lseek()
  ARM: i.MX: bbu: Fix variable type in imx_bbu_external_nand_update()
  ARM: i.MX: bbu: Fix lseek error check in
    imx_bbu_external_nand_update()
  ARM: i.MX: bbu: Fix lseek error check in
    imx_bbu_internal_v2_write_nand_dbbt()
  ARM: i.MX: bbu: Fix variable type in
    imx_bbu_internal_v2_write_nand_dbbt()
  bpkfs: Fix lseek error check in bpkfs_probe()
  uimage: Fix lseek error check in uimage_verify()
  uimage: Fix lseek error check in uimage_load()
  uimage: Fix lseek error check in uimage_load_to_buf()
  state: Fix lseek error check in state_backend_bucket_direct_read()
  state: Fix lseek error check in state_backend_bucket_direct_write()
  state: Fix lseek error check in state_mtd_peb_read()
  state: Fix lseek error check in state_mtd_peb_write()
  commands: loadxy: Make use of open_and_lseek()
  commands: loadb: Make use of open_and_lseek()

 arch/arm/mach-imx/imx-bbu-external-nand.c | 10 ++++---
 arch/arm/mach-imx/imx-bbu-internal.c      | 10 ++++---
 arch/mips/mach-ath79/art.c                |  4 +--
 commands/loadb.c                          | 12 +--------
 commands/loadxy.c                         | 13 ++-------
 common/filetype.c                         |  4 +--
 common/state/backend_bucket_circular.c    | 14 +++++-----
 common/state/backend_bucket_direct.c      | 23 ++++++++--------
 common/uimage.c                           | 32 +++++++++++------------
 fs/bpkfs.c                                |  4 +--
 lib/libfile.c                             | 26 +++++++++---------
 11 files changed, 65 insertions(+), 87 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
