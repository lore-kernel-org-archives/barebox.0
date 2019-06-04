Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY1s1-0002Wp-3c
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 05:20:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so2231418pgb.3
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 22:20:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Jun 2019 22:19:56 -0700
Message-Id: <20190604052003.3189-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/7] U-Boot environment data as a filesystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series adds code needed to expose U-Boot environemnt variable
data partition as a regular filesystem in Barebox. It currently only
supports the use-case where environment is stored on SD/MMC device,
since that is the only use-case I have access to for testing, however
adding support for other cases should be relatively
straightforward.

Feedback is welcome!

Changes since [v1]:

    - ubootvar changed to not rely on struct resource
    */mem_write/mem_read etc. and use a private pointer instead

    - ubootvar changed to handle the case of no valid environment data
      by allocation parition 0 as empty/new
      
    - Added documentation for ubootvarfs as well as ubootvar DT
      bindings

Thanks,
Andrey Smirnov

[v1] http://lists.infradead.org/pipermail/barebox/2019-May/038223.html

Andrey Smirnov (6):
  filetype: Add "U-Boot environmemnt variable data" filetype
  filetype: Allow specifying cdev's filetype explicitly
  drivers: Introduce late_platform_driver()
  misc: Add a driver to expose U-Boot environment variable data
  fs: Add a driver to access U-Boot environment variables
  ARM: rdu2: Add U-Boot environment partitions

Cory Tusar (1):
  ARM: rdu1: Add U-Boot environment partition

 .../barebox/barebox,uboot-environment.rst     |  43 ++
 Documentation/filesystems/ubootvarfs.rst      |  28 +
 arch/arm/dts/imx51-zii-rdu1.dts               |  21 +
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi            |  27 +
 common/filetype.c                             |   8 +
 drivers/misc/Kconfig                          |  12 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/ubootvar.c                       | 360 +++++++++++++
 fs/Kconfig                                    |   8 +
 fs/Makefile                                   |   1 +
 fs/ubootvarfs.c                               | 499 ++++++++++++++++++
 include/driver.h                              |   4 +
 include/filetype.h                            |   1 +
 13 files changed, 1013 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,uboot-environment.rst
 create mode 100644 Documentation/filesystems/ubootvarfs.rst
 create mode 100644 drivers/misc/ubootvar.c
 create mode 100644 fs/ubootvarfs.c

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
