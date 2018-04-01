Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f2Ra0-0006Wl-N1
 for barebox@lists.infradead.org; Sun, 01 Apr 2018 01:14:46 +0000
Received: by mail-pf0-x241.google.com with SMTP id h69so7644547pfe.13
 for <barebox@lists.infradead.org>; Sat, 31 Mar 2018 18:14:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Mar 2018 18:13:54 -0700
Message-Id: <20180401011358.11621-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] APBH DMA fixes for i.MX7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone:

The following two patches are to fix a case of broken boot I
discovered when I built a mult-image build for i.MX6 and i.MX7 and
tried to boot it on my i.MX7 SabreSD board.

Let me know if anything needs changing.

Thanks,
Andrey Smirnov

Andrey Smirnov (3):
  clk: i.MX7: Port NAND clock setup code from Linux
  clk: Forward declare struct of_device_id in linux/clk.h
  dma: apbh: Enable clock as a part of probing

 drivers/clk/imx/clk-imx7.c |  5 +++--
 drivers/clk/imx/clk.h      |  7 +++++++
 drivers/dma/apbh_dma.c     | 13 +++++++++++++
 include/linux/clk.h        |  1 +
 4 files changed, 24 insertions(+), 2 deletions(-)

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
