Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JUf-0005w5-3y
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:38:50 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 70AEE240005
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:38:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:38:43 +0100
Message-Id: <20210131203843.3459595-1-ahmad@a3f.at>
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
Subject: [PATCH] of: overlay: fix warning about format specifier in debug
 message
To: barebox@lists.infradead.org

GCC catches a -Wformat-extra-args. Fix it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index e2a68b0ae8bd..8f4ee3f0a245 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -223,7 +223,7 @@ int of_process_overlay(struct device_node *root,
 
 		target = find_target(root, fragment);
 		if (!target)
-			pr_debug("cannot find target for fragment",
+			pr_debug("cannot find target for fragment %s\n",
 				 fragment->name);
 
 		err = process(target, ovl, data);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
