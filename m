Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XH-W1
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:55 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:45 +0100
Message-Id: <20190215125348.12851-6-ejo@pengutronix.de>
In-Reply-To: <20190215125348.12851-1-ejo@pengutronix.de>
References: <20190215125348.12851-1-ejo@pengutronix.de>
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
Subject: [PATCH 5/8] doc: bootchooser: note how to actually start the
 bootchooser
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 7d7564b552..0c5e56407a 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -16,6 +16,17 @@ and a storage backend for saving status information.
 Currently supported storage backends are either nv variables or the
 barebox *state* framework.
 
+The *Bootchooser* itself is executed as a normal barebox boot target, i.e. one
+can start it via::
+
+  boot bootchooser
+
+or by e.g. setting ``boot.default`` to ``bootchooser``.
+
+.. note:: As ``boot.default`` accepts multiple values, it can also be used to
+  specify a fallback boot target in case the bootchooser fails booting, e.g.
+  ``bootchooser recovery``.
+
 Bootchooser Targets
 -------------------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
