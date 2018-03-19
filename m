Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exs45-00034Q-T4
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 10:30:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 11:30:41 +0100
Message-Id: <20180319103041.19815-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Pass barebox version to kernel
To: Barebox List <barebox@lists.infradead.org>

Pass the barebox version to Linux in case somebody is interested in it
under Linux. We use put the version under /chosen/barebox-version and
it can be read under Linux in /sys/firmware/devicetree/base/chosen/barebox-version.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/oftree.c b/common/oftree.c
index 40eb35f188..8a2ede4c60 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -128,6 +128,7 @@ static int of_fixup_bootargs(struct device_node *root, void *unused)
 	if (!node)
 		return -ENOMEM;
 
+	of_property_write_string(node, "barebox-version", release_string);
 
 	err = of_property_write_string(node, "bootargs", str);
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
