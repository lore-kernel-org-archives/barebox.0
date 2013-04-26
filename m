Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVli8-0008Sg-5X
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 16:41:27 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 26 Apr 2013 20:41:11 +0400
Message-Id: <1366994474-21325-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
References: <1366994474-21325-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/9] MCI: imx: Fix possible null pointer dereference
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mci/imx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 3d9bd0d..c985964 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -225,12 +225,13 @@ static int mxcmci_read_response(struct mxcmci_host *host, unsigned int stat)
 {
 	struct mci_cmd *cmd = host->cmd;
 	int i;
-	u32 a, b, c;
-	u32 *resp = (u32 *)cmd->response;
+	u32 a, b, c, *resp;
 
 	if (!cmd)
 		return 0;
 
+	resp = (u32 *)cmd->response;
+
 	if (stat & STATUS_TIME_OUT_RESP) {
 		printf("CMD TIMEOUT\n");
 		return -ETIMEDOUT;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
