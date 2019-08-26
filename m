Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i26oT-00079E-7V
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 04:41:06 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 26 Aug 2019 06:40:52 +0200
Message-Id: <20190826044051.12627-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] images/.gitignore: ignore i.MX8MQ HAB files
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Ignore the new image files with .pimximg and .psimximg extensions and
the sha256 sum files.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 images/.gitignore | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/images/.gitignore b/images/.gitignore
index 2de98228a3..949f534d9a 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -23,3 +23,7 @@
 pbl.lds
 barebox.x
 barebox.z
+barebox.sha.bin
+barebox.sum
+*.pimximg
+*.psimximg
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
