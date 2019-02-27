Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypia-0002au-5F
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:13 +0000
Received: by mail-pg1-x533.google.com with SMTP id h11so7229746pgl.0
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:50 -0800
Message-Id: <20190227031657.19896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/7] i.MX8MQ PCIe/USB DT changes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series contains the last set of patches needed to enable both
PCIe and USB on i.MX8MQ in general and ZII boards in
particular. Hopefully each patch is self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (7):
  PCI: imx6: Add code to request/control "pcie_aux" clock for i.MX8MQ
  ARM: imx8mq: Add node for SRC IP block
  ARM: imx8mq: Add node for GPC IP block
  ARM: imx8mq: Add nodes for PCIE1 and PCIE2 IP blocks
  ARM: imx8mq-zii-ultra: Enable PCIE1 and PCIE2
  ARM: dts: imx8mq: Add nodes for USB IP blocks
  ARM: imx8mq-zii-ultra: Add USB related nodes

 arch/arm/dts/imx8mq-zii-ultra-rmb3.dts |   4 +
 arch/arm/dts/imx8mq-zii-ultra.dtsi     |  96 +++++++++++++
 arch/arm/dts/imx8mq.dtsi               | 184 +++++++++++++++++++++++++
 drivers/pci/pci-imx6.c                 |  16 +++
 4 files changed, 300 insertions(+)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
