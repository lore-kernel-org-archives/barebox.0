Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecUPv-0002Ym-M8
 for barebox@lists.infradead.org; Fri, 19 Jan 2018 11:01:06 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 19 Jan 2018 12:00:43 +0100
Message-Id: <20180119110043.9910-1-bst@pengutronix.de>
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
Subject: [PATCH] Documentation: Bootchooser: fix typo
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 3d473b5969..9a75afbf5e 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -353,7 +353,7 @@ node. It then looks like:
 It could makes sense to store the result of the last *bootchooser* operation
 in the *state* variable set as well. In order to do so, add a node with the name
 ``last_chosen`` to the *state* variable set. *bootchooser* will use it if present.
-The *state' variable set definition then looks like:
+The *state* variable set definition then looks like:
 
 .. code-block:: text
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
