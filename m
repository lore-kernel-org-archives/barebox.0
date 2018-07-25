Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiKcW-0001fL-TN
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 14:18:36 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 16:18:10 +0200
Message-Id: <20180725141811.25588-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 1/2] Documentation: don't highlight literal blocks as shell
 script
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

There are multiple cases in the documentation where literal blocks are
used for literal, preformatted text. Although it is possible to use
`.. code-block: none` in these cases instead of literal `::` blocks,
follow the principle of least surprise and don't apply any syntax
highlighting at all for literal blocks.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 Documentation/conf.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index dbd4a80caa..ec6ec0470b 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -259,4 +259,4 @@ texinfo_documents = [
 # If true, do not generate a @detailmenu in the "Top" node's menu.
 #texinfo_no_detailmenu = False
 
-highlight_language = 'sh'
+highlight_language = 'none'
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
