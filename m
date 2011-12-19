Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZLs-0008Fa-8N
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:17:45 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 10:17:18 +0100
Message-Id: <1324286241-23083-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
References: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mci: pxa writedata timeout
To: barebox@lists.infradead.org

The write data timeout is too small for old cards,
especially the Transcend 256MBytes SD card. Increase it from
10ms to 100ms.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 558116f..a3f8f22 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -123,7 +123,7 @@ static int pxamci_write_data(struct pxamci_host *host, const unsigned char *src,
 
 	if (!ret)
 		for (start = get_time_ns(), ret = -ETIMEDOUT;
-		     ret && !is_timeout(start, 10 * MSECOND);)  {
+		     ret && !is_timeout(start, 100 * MSECOND);)  {
 			stat = mmc_readl(MMC_STAT);
 			stat &= STAT_DATA_TRAN_DONE | STAT_PRG_DONE;
 			if (stat == (STAT_DATA_TRAN_DONE | STAT_PRG_DONE))
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
