Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0V-0002yG-5L
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:38 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:10 +0200
Message-Id: <20190822055114.931-8-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 07/11] nvme: use 64 bit types for timeouts even on 32 bit
 systems
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

The SHUTDOWN_TIMEOUT value of 5e9 would already exceed the range of
unsigned long on a 32-bit system. Fix this by using uint64_t for
all time-holding variables.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e0984708b4d2..d2c2b6f30630 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -94,7 +94,7 @@ EXPORT_SYMBOL_GPL(nvme_set_queue_count);
 static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
 {
 	uint64_t start = get_time_ns();
-	unsigned long timeout =
+	uint64_t timeout =
 		((NVME_CAP_TIMEOUT(cap) + 1) * HZ / 2);
 	u32 csts, bit = enabled ? NVME_CSTS_RDY : 0;
 	int ret;
@@ -496,7 +496,7 @@ EXPORT_SYMBOL_GPL(nvme_enable_ctrl);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl)
 {
 	uint64_t start = get_time_ns();
-	unsigned long timeout = SHUTDOWN_TIMEOUT;
+	uint64_t timeout = SHUTDOWN_TIMEOUT;
 	u32 csts;
 	int ret;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
