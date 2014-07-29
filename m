Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC6ol-0002hf-2l
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 12:47:47 +0000
Received: by mail-la0-f41.google.com with SMTP id s18so6607413lam.14
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 05:47:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 16:47:15 +0400
Message-Id: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 0/2] i2c: add Marvell 64xxx driver; fix Makefile indentation
To: barebox@lists.infradead.org

Changes since v2:

  * drop "allwinner,sun*" stuff;
  * make macros shorter (drop MV64XXX_I2C_ prefix);
  * rework mv64xxx_write/mv64xxx_read stuff;
  * drop mv64xxx_i2c_execute_msg().
  * drop unused variables.

Antony Pavlov (2):
  i2c: add Marvell 64xxx driver
  i2c: busses/Makefile: fix indentation

 drivers/i2c/busses/Kconfig       |   8 +
 drivers/i2c/busses/Makefile      |   5 +-
 drivers/i2c/busses/i2c-mv64xxx.c | 647 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 658 insertions(+), 2 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
