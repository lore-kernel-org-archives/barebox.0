Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9soo-0000cz-Sy
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:26:40 +0000
Received: by mail-wi0-f169.google.com with SMTP id n3so7197681wiv.2
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:26:15 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:26:03 +0200
Message-Id: <1406107568-8440-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RESEND 1/6] bus: mvebu: fix resource size handling
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

A resource_size is defined as res->end - res->start + 1. Marvell
MBUS driver gets some ranges from DT as start and size but mis-calculates
end of range. This fixes 4 occurences of those mistakes.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/bus/mvebu-mbus.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 11e3777a6094..c67646f61722 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -187,7 +187,7 @@ static int mvebu_mbus_window_conflicts(struct mvebu_mbus_state *mbus,
 				       phys_addr_t base, size_t size,
 				       u8 target, u8 attr)
 {
-	u64 end = (u64)base + size;
+	u64 end = (u64)base + size - 1;
 	int win;
 
 	for (win = 0; win < mbus->soc->num_wins; win++) {
@@ -203,7 +203,7 @@ static int mvebu_mbus_window_conflicts(struct mvebu_mbus_state *mbus,
 		if (!enabled)
 			continue;
 
-		wend = wbase + wsize;
+		wend = wbase + wsize - 1;
 
 		/*
 		 * Check if the current window overlaps with the
@@ -661,7 +661,7 @@ static void mvebu_mbus_get_pcie_resources(struct device_node *np,
 					 reg, ARRAY_SIZE(reg));
 	if (!ret) {
 		mem->start = reg[0];
-		mem->end = mem->start + reg[1];
+		mem->end = mem->start + reg[1] - 1;
 		mem->flags = IORESOURCE_MEM;
 	}
 
@@ -669,7 +669,7 @@ static void mvebu_mbus_get_pcie_resources(struct device_node *np,
 					 reg, ARRAY_SIZE(reg));
 	if (!ret) {
 		io->start = reg[0];
-		io->end = io->start + reg[1];
+		io->end = io->start + reg[1] - 1;
 		io->flags = IORESOURCE_IO;
 	}
 }
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
