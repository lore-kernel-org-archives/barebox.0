Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVz8e-0008IW-KA
 for barebox@lists.infradead.org; Sat, 16 Nov 2019 14:33:26 +0000
Received: from astat.fritz.box (a89-183-55-231.net-htp.de [89.183.55.231])
 by lynxeye.de (Postfix) with ESMTPA id 9C84FE74217
 for <barebox@lists.infradead.org>; Sat, 16 Nov 2019 15:32:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat, 16 Nov 2019 15:32:43 +0100
Message-Id: <20191116143243.143653-1-dev@lynxeye.de>
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
Subject: [PATCH] image: add zynqimg to gitignore
To: barebox@lists.infradead.org

Those are results of the Zynq image build, don't clobber the
git status output.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index 949f534d9a38..b673c9819455 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -27,3 +27,4 @@ barebox.sha.bin
 barebox.sum
 *.pimximg
 *.psimximg
+*.zynqimg
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
