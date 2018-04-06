Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4UGy-0002dn-8Z
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 16:31:33 +0000
Received: by mail-lf0-x244.google.com with SMTP id x70-v6so1360550lfa.0
 for <barebox@lists.infradead.org>; Fri, 06 Apr 2018 09:31:18 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri,  6 Apr 2018 19:33:22 +0300
Message-Id: <1523032404-7416-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH 0/2] mfd: mc13xxx: ADC support
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, cphealy@gmail.com

This set of pathces adds ADC support for MC13783 and MC13892 PMICs.

Andrey Gusakov (2):
  mfd: mc13xxx: add function returning mc13xxx type
  aiodev: mc13xxx: add adc support

 drivers/aiodev/Kconfig       |   6 ++
 drivers/aiodev/Makefile      |   1 +
 drivers/aiodev/mc13xxx_adc.c | 234 +++++++++++++++++++++++++++++++++++++++++++
 drivers/mfd/mc13xxx.c        |  15 +++
 include/mfd/mc13xxx.h        |  19 ++++
 5 files changed, 275 insertions(+)
 create mode 100644 drivers/aiodev/mc13xxx_adc.c

-- 
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
