Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR0HE-0000A2-P0
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 16:27:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aR0Gt-0005Pj-3N
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 17:27:11 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aR0Gs-0003fF-Rr
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 17:27:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Feb 2016 17:27:08 +0100
Message-Id: <1454516830-26387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add nvmem support
To: Barebox List <barebox@lists.infradead.org>

This ports over the nvmem framework from the kernel. I probably won't
apply it as is since it doesn't make me very happy. While it generally
works the very first test already reveals that it can't properly handle
the different layouts of nvmem cells. The MAC addresses for the i.MX
FEC are stored in different byte orders in the IIM/OCOTP units. There's
simply no proper place to encode these different byte orders, see patch
[2/2].

Sascha

----------------------------------------------------------------
Sascha Hauer (1):
      nvmem: Test it with fec/ocotp

Steffen Trumtrar (1):
      drivers: add nvmem framework from kernel

 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi |   9 +
 arch/arm/mach-imx/ocotp.c               |   8 +
 drivers/Kconfig                         |   1 +
 drivers/Makefile                        |   1 +
 drivers/net/fec_imx.c                   |  30 ++
 drivers/nvmem/Kconfig                   |   8 +
 drivers/nvmem/Makefile                  |   6 +
 drivers/nvmem/core.c                    | 749 ++++++++++++++++++++++++++++++++
 include/linux/nvmem-consumer.h          | 157 +++++++
 include/linux/nvmem-provider.h          |  49 +++
 10 files changed, 1018 insertions(+)
 create mode 100644 drivers/nvmem/Kconfig
 create mode 100644 drivers/nvmem/Makefile
 create mode 100644 drivers/nvmem/core.c
 create mode 100644 include/linux/nvmem-consumer.h
 create mode 100644 include/linux/nvmem-provider.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
