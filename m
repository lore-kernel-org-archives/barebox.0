Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzB9L-0003G9-LV
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 22:24:25 +0000
Received: by lfs39 with SMTP id 39so36297212lfs.3
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 14:24:01 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 19 Nov 2015 01:23:54 +0300
Message-Id: <1447885436-30683-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] add multiplexed I2C bus support
To: barebox@lists.infradead.org

This patchseries adds multiplexed I2C bus support to barebox
and a driver for pca954x bus multiplexer.

Changes since RFC version:

  * rename drivers/i2c/muxes/pca954x.c -> drivers/i2c/muxes/i2c-mux-pca954x.c;
  * remove adapter numbering hack in drivers/i2c/i2c-mux.c;
  * add copyright comments;
  * sync with linux-v4.4-rc1.


Antony Pavlov (2):
  i2c: import multiplexed I2C bus core support from linux kernel
  i2c: add pca954x bus multiplexer driver

 drivers/i2c/Kconfig                 |   9 ++
 drivers/i2c/Makefile                |   3 +-
 drivers/i2c/i2c-mux.c               | 148 +++++++++++++++++++++
 drivers/i2c/muxes/Kconfig           |  14 ++
 drivers/i2c/muxes/Makefile          |   4 +
 drivers/i2c/muxes/i2c-mux-pca954x.c | 251 ++++++++++++++++++++++++++++++++++++
 include/i2c/i2c-mux.h               |  40 ++++++
 include/i2c/i2c.h                   |  19 ++-
 8 files changed, 486 insertions(+), 2 deletions(-)
 create mode 100644 drivers/i2c/i2c-mux.c
 create mode 100644 drivers/i2c/muxes/Kconfig
 create mode 100644 drivers/i2c/muxes/Makefile
 create mode 100644 drivers/i2c/muxes/i2c-mux-pca954x.c
 create mode 100644 include/i2c/i2c-mux.h

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
