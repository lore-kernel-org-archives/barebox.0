Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJrtx-0001sm-QE
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:54 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:16 +0200
Message-Id: <1334605638-23095-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
References: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] mci: pxamci fix CMD12 handling
To: barebox@lists.infradead.org

The pxamci requires a bit to be set in the command control
register when a CMD12 is sent. Set it, as required in the
PXA Developer Manuel, chapter "Stop Data Transmission
Command (CMD12 or IO/Abort with CMD52)".

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |    3 +++
 drivers/mci/pxamci.h |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index f251d75..c51fb77 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -188,6 +188,9 @@ static void pxamci_start_cmd(struct pxamci_host *host, struct mci_cmd *cmd,
 		break;
 	}
 
+	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		cmdat |= CMDAT_STOP_TRAN;
+
 	mmc_writel(cmd->cmdidx, MMC_CMD);
 	mmc_writel(cmd->cmdarg >> 16, MMC_ARGH);
 	mmc_writel(cmd->cmdarg & 0xffff, MMC_ARGL);
diff --git a/drivers/mci/pxamci.h b/drivers/mci/pxamci.h
index 18d12a3..07dea45 100644
--- a/drivers/mci/pxamci.h
+++ b/drivers/mci/pxamci.h
@@ -40,6 +40,7 @@
 
 #define MMC_CMDAT			0x0010
 #define CMDAT_SDIO_INT_EN		(1 << 11)
+#define CMDAT_STOP_TRAN			(1 << 10)
 #define CMDAT_SD_4DAT			(1 << 8)
 #define CMDAT_DMAEN			(1 << 7)
 #define CMDAT_INIT			(1 << 6)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
