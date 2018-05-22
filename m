Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLGLb-0000F6-5S
 for barebox@lists.infradead.org; Tue, 22 May 2018 23:05:40 +0000
Received: by mail-pg0-x241.google.com with SMTP id 11-v6so6875511pge.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 16:05:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 May 2018 16:05:11 -0700
Message-Id: <20180522230518.9070-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/7] VF610 OCOTP MAC address layout change
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Everyone:

This patchset is as a result of dealing with VF610 U-Boot OCOTP/MAC
quirk.

	- Patch 1 and 2 are the actual patches dealing with U-Boot's
          idiosyncrasy (see individual commit messages for more
          details)

	- Patch 3 and 4 are trivial refactoring made possible with
          <linux/bitfield.h>

	- Patches 5, 6 and 7 are very much optional. IMHO,
          drivers/nvmem is a better place for OCOTP code, but if we
          want to keep the code as is, I am more than happy to drop
          these from the series.

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (7):
  i.MX: ocotp: Unify code paths for reading MAC address
  i.MX: ocotp: Change MAC address layout for VFxxx
  i.MX: ocotp: Simplify OCOTP field packing/unpacking
  i.MX: ocotp: Simplify BF macro
  i.MX: ocotp: Move OCOTP driver to drivers/nvmem
  nvmem: Use name from struct nvmem_config for cdev
  nvmem: ocotp: Convert to NVMEM device

 arch/arm/mach-imx/Kconfig                    |  23 +--
 arch/arm/mach-imx/Makefile                   |   1 -
 arch/arm/mach-imx/include/mach/ocotp.h       |  31 ++-
 drivers/nvmem/Kconfig                        |  21 ++
 drivers/nvmem/Makefile                       |   3 +
 drivers/nvmem/core.c                         |  18 +-
 {arch/arm/mach-imx => drivers/nvmem}/ocotp.c | 201 ++++++++++++-------
 7 files changed, 183 insertions(+), 115 deletions(-)
 rename {arch/arm/mach-imx => drivers/nvmem}/ocotp.c (79%)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
