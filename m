Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYm6Q-0005re-Bu
 for barebox@lists.infradead.org; Thu, 06 Jun 2019 06:42:23 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu,  6 Jun 2019 08:42:11 +0200
Message-Id: <20190606064212.23238-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/2] images: ignore *.csfbin files
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The csfbin files are created during a HABV4 build, ignore them since they
are automatically generated.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 images/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/.gitignore b/images/.gitignore
index fcde7f3c42..2de98228a3 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -19,6 +19,7 @@
 *.mlospi
 *.mxsbs
 *.mxssd
+*.csfbin
 pbl.lds
 barebox.x
 barebox.z
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
