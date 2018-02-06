Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiyCC-0003GH-Kh
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 08:01:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 09:01:26 +0100
Message-Id: <20180206080126.15775-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] boot: Make independent of command support
To: Barebox List <barebox@lists.infradead.org>

The boot code works with command support disabled if we skip
support for boot scripts. Bail out before parsing boot scripts
and allow to build with command support disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index cef3d5e514..41bf1ce64b 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -289,7 +289,7 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 			found += ret;
 	}
 
-	if (!found) {
+	if (IS_ENABLED(CONFIG_COMMAND_SUPPORT) && !found) {
 		char *path;
 
 		if (*name != '/')
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
