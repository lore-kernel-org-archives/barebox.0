Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7Whn-0001Re-Ho
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 21:25:40 +0000
Received: by mail-la0-f44.google.com with SMTP id e16so1107860lan.3
 for <barebox@lists.infradead.org>; Wed, 16 Jul 2014 14:25:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 17 Jul 2014 01:25:08 +0400
Message-Id: <1405545909-9855-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2] i2c: add Marvell 64xxx driver
To: barebox@lists.infradead.org

Changes since PATCH v1 (http://lists.infradead.org/pipermail/barebox/2014-June/019471.html):

  * check for timeout during mv64xxx_i2c_wait_for_completion().

Antony Pavlov (1):
  i2c: add Marvell 64xxx driver

 drivers/i2c/busses/Kconfig       |   8 +
 drivers/i2c/busses/Makefile      |   1 +
 drivers/i2c/busses/i2c-mv64xxx.c | 687 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 696 insertions(+)
 create mode 100644 drivers/i2c/busses/i2c-mv64xxx.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
