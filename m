Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui0M9-0004Hp-B3
 for barebox@lists.infradead.org; Thu, 30 May 2013 10:45:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 May 2013 12:44:52 +0200
Message-Id: <1369910694-20991-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
References: <1369910694-20991-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] of: remove unused define
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/common/oftree.c b/common/oftree.c
index 776d301..19fed6b 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -161,12 +161,6 @@ int of_fix_tree(struct device_node *node)
 }
 
 /*
- * The size by which we increase the dtb to have space for additional
- * fixups. Ideally this would be done by libfdt automatically
- */
-#define OFTREE_SIZE_INCREASE 0x8000
-
-/*
  * Get the fixed fdt. This function uses the fdt input pointer
  * if provided or the barebox internal devicetree if not.
  * It increases the size of the tree and applies the registered
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
