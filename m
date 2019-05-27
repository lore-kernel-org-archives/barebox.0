Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5M-0000OZ-31
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so10099030pfa.1
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:46 -0700
Message-Id: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/7] U-Boot environment data as a filesystem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series adds code needed to expose U-Boot environemnt variable
data partition as a regular filesystem in Barebox. It currently only
supports the use-case where environment is stored on SD/MMC device,
since that is the only use-case I have access to for testing, however
adding support for other cases should be relatively
straightforward. The series is currently lacking documentation for
Barebox specific DT bindings it introduces, however an example of
usage can be seen in

ARM: rdu2: Add U-Boot environment partitions
ARM: rdu1: Add U-Boot environment partition

I'll add the appropriate documentation in v2 once all of the details
are hashed out.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  filetype: Add "U-Boot environmemnt variable data" filetype
  filetype: Allow specifying cdev's filetype explicitly
  drivers: Introduce late_platform_driver()
  misc: Add a driver to expose U-Boot environment variable data
  fs: Add a driver to access U-Boot environment variables
  ARM: rdu2: Add U-Boot environment partitions

Cory Tusar (1):
  ARM: rdu1: Add U-Boot environment partition

 arch/arm/dts/imx51-zii-rdu1.dts    |  21 ++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi |  27 ++
 common/filetype.c                  |   8 +
 drivers/misc/Kconfig               |  12 +
 drivers/misc/Makefile              |   1 +
 drivers/misc/ubootvar.c            | 322 +++++++++++++++++++
 fs/Kconfig                         |   8 +
 fs/Makefile                        |   1 +
 fs/ubootvarfs.c                    | 499 +++++++++++++++++++++++++++++
 include/driver.h                   |   4 +
 include/filetype.h                 |   1 +
 11 files changed, 904 insertions(+)
 create mode 100644 drivers/misc/ubootvar.c
 create mode 100644 fs/ubootvarfs.c

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
