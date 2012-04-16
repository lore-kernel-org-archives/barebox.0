Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJrtu-0001sC-9z
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:15 +0200
Message-Id: <1334605638-23095-4-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 3/6] mci: pxamci fix response type
To: barebox@lists.infradead.org

When preparing a command, apply a mask so that only the command part
will be used for the switch case. This will be more robust
for future command response types.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 2d49187..f251d75 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -163,18 +163,19 @@ static int pxamci_transfer_data(struct pxamci_host *host,
 	return ret;
 }
 
+#define MMC_RSP_MASK (MMC_RSP_PRESENT | MMC_RSP_136 | MMC_RSP_CRC | \
+		      MMC_RSP_BUSY | MMC_RSP_OPCODE)
 static void pxamci_start_cmd(struct pxamci_host *host, struct mci_cmd *cmd,
 			     unsigned int cmdat)
 {
 	mci_dbg("cmd=(idx=%d,type=%d,clkrt=%d)\n", cmd->cmdidx, cmd->resp_type,
 		host->clkrt);
-	if (cmd->resp_type & MMC_RSP_BUSY)
-		cmdat |= CMDAT_BUSY;
 
-	switch (cmd->resp_type) {
+	switch (cmd->resp_type & MMC_RSP_MASK) {
 	/* r1, r1b, r6, r7 */
-	case MMC_RSP_R1:
 	case MMC_RSP_R1b:
+		cmdat |= CMDAT_BUSY;
+	case MMC_RSP_R1:
 		cmdat |= CMDAT_RESP_SHORT;
 		break;
 	case MMC_RSP_R2:
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
