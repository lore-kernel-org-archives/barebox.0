Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewqnA-0002sD-4a
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 14:57:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ewqmw-0003vk-NN
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 15:56:58 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 16 Mar 2018 15:56:58 +0100
Message-Id: <20180316145658.14996-1-l.stach@pengutronix.de>
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
Subject: [PATCH] of: demote "no ranges" message to debug level
To: barebox@lists.infradead.org

There are valid cases where there is no way to translate a OF node to
a MMIO address via ranges, so do the same as the Linux kernel and don't
print an error message in that case, but make it available as a debug
message.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/address.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 8018d78bcbd8..14db08041725 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -314,7 +314,7 @@ static int of_translate_one(struct device_node *parent, struct of_bus *bus,
 	ranges = of_get_property(parent, rprop, &rlen);
 #if !defined(CONFIG_PPC)
 	if (ranges == NULL) {
-		pr_err("OF: no ranges; cannot translate\n");
+		pr_debug("OF: no ranges; cannot translate\n");
 		return 1;
 	}
 #endif /* !defined(CONFIG_PPC) */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
