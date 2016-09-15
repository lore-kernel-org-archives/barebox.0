Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkPsd-0000ae-7K
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 06:10:40 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 15 Sep 2016 08:10:14 +0200
Message-Id: <20160915061014.16943-2-m.olbrich@pengutronix.de>
In-Reply-To: <20160915061014.16943-1-m.olbrich@pengutronix.de>
References: <20160915061014.16943-1-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/2] state: fix finding the correct parent node
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Looking for the parent node during fixup is broken. The path of the parent
node is not correctly terminated ('0' vs '\0'). Also, the new state node
should be added to the supplied device tree not the barebox device tree
used by of_find_node_by_path().

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 common/state/state.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 0c329cd67548..075618e5bb8f 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -307,8 +307,8 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		c = strrchr(of_path, '/');
 		if (!c)
 			return -ENODEV;
-		*c = '0';
-		parent = of_find_node_by_path(of_path);
+		*c = '\0';
+		parent = of_find_node_by_path_from(root, of_path);
 		if (!parent)
 			parent = root;
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
