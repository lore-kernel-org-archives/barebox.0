Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUvt-0006U5-93
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:45:58 +0000
Received: by mail-pl1-x62b.google.com with SMTP id f97so7857593plb.5
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:45:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:45:09 -0700
Message-Id: <20190528054513.21313-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/4] ZII boards documentation update
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series contains patches adding various bit of documentation
covering ZII boards as well as OpenOCD configuration files I've been
using to updload Barebox. Each patch should be self explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (4):
  Documentation: Add zii-vf610-dev board documentation
  Documentation: Add zii-imx7d-rpu2 board documentation
  Documentation: Add zii-imx6-rdu2 board documentation
  Documentation: zii-imx8mq-dev: Update OpenOCD usage documentation

 .../boards/imx/zii-imx6-rdu2/bootstrap.sh     |   6 +
 .../boards/imx/zii-imx6-rdu2/openocd.cfg      | 282 ++++++++++++++++++
 .../boards/imx/zii-imx6-rdu2/readme.rst       |  30 ++
 .../boards/imx/zii-imx7d-rpu2/bootstrap.sh    |   6 +
 .../boards/imx/zii-imx7d-rpu2/openocd.cfg     | 143 +++++++++
 .../boards/imx/zii-imx7d-rpu2/readme.rst      |  46 +++
 .../boards/imx/zii-imx8mq-dev/bootstrap.sh    |   6 +
 .../boards/imx/zii-imx8mq-dev/openocd.cfg     |  99 +++---
 .../boards/imx/zii-imx8mq-dev/readme.rst      |   4 +-
 .../boards/imx/zii-vf610-dev/bootstrap.sh     |   6 +
 .../boards/imx/zii-vf610-dev/openocd.cfg      | 259 ++++++++++++++++
 .../boards/imx/zii-vf610-dev/readme.rst       |  52 ++++
 12 files changed, 889 insertions(+), 50 deletions(-)
 create mode 100755 Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
 create mode 100644 Documentation/boards/imx/zii-imx6-rdu2/openocd.cfg
 create mode 100644 Documentation/boards/imx/zii-imx6-rdu2/readme.rst
 create mode 100755 Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
 create mode 100644 Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
 create mode 100644 Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
 create mode 100755 Documentation/boards/imx/zii-imx8mq-dev/bootstrap.sh
 create mode 100755 Documentation/boards/imx/zii-vf610-dev/bootstrap.sh
 create mode 100644 Documentation/boards/imx/zii-vf610-dev/openocd.cfg
 create mode 100644 Documentation/boards/imx/zii-vf610-dev/readme.rst

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
