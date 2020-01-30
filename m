Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDFU-0007z8-A8
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 17:05:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jan 2020 18:04:44 +0100
Message-Id: <20200130170449.9761-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/4] mci: stm32_sdmmc2: timeout and bus-width bug fixes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi,

would be great if the first 4 patches could go into master.

Cheers,
Ahmad

Ahmad Fatoum (5):
  mci: stm32_sdmmc2: use correct card power cycle sequence
  mci: stm32_sdmmc2: don't reset before retrying failed operations
  mci: core: don't test 4-bit-buswidth support if MMC host lacks
    capability
  mci: stm32_sdmmc2: compare ios ->bus_width with correct constants
  mci: stm32_sdmmc2: fix typo in debug string

 drivers/mci/mci-core.c     |  3 +++
 drivers/mci/stm32_sdmmc2.c | 42 +++++++++++++++-----------------------
 2 files changed, 20 insertions(+), 25 deletions(-)

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
