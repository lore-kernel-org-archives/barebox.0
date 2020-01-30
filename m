Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDFO-0007vj-7c
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 17:04:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 30 Jan 2020 18:04:47 +0100
Message-Id: <20200130170449.9761-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200130170449.9761-1-a.fatoum@pengutronix.de>
References: <20200130170449.9761-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] mci: core: don't test 4-bit-buswidth support if MMC host
 lacks capability
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already check for MMC_CAP_8_BIT_DATA before trying if buswidth=8
yields legible data. For consistency, don't test whether buswidth=4
works if the MMC host doesn't indicated MMC_CAP_4_BIT_DATA.

Fixes: 68db956d ("mci: Fix 8 bit mmc cards")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 67257bcd186c..dd163c3d1652 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1025,6 +1025,9 @@ static int mci_startup_mmc(struct mci *mci)
 
 	mci_set_clock(mci, mci->tran_speed);
 
+	if (!(host->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)))
+		return 0;
+
 	/*
 	 * Unlike SD, MMC cards dont have a configuration register to notify
 	 * supported bus width. So bus test command should be run to identify
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
