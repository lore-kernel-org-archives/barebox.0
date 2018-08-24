Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Pj-0006GN-6v
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 03:05:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id z25-v6so3610840pgu.7
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 20:05:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 20:05:08 -0700
Message-Id: <20180824030511.23021-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] i.MX8 malloc pool position and 32-bit only DMA
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a result of debugging FEC and uSDHC failures on
i.MX8MQ. Patches 1 and 2 are pretty straightforward and shouldn't be
controversial. Patch 3, OTOH, may or may not be a good way to solve
this problem, but it's a good way to start a discussion on the subject
which is my main goal here.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (3):
  mci: imx-esdhc: Bail out if DMA address is larger than 32-bits
  net: fec: Bail out if DMA address is larger than 32-bits
  ARM: start: Place malloc pool within 32-bit address space

 arch/arm/cpu/Kconfig    |  3 +++
 arch/arm/cpu/start.c    | 23 +++++++++++++++++++++++
 drivers/mci/Kconfig     |  1 +
 drivers/mci/imx-esdhc.c |  3 +++
 drivers/net/Kconfig     |  1 +
 drivers/net/fec_imx.c   | 10 +++++++++-
 6 files changed, 40 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
