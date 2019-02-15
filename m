Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XA-Ua
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:55 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:46 +0100
Message-Id: <20190215125348.12851-7-ejo@pengutronix.de>
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
Subject: [PATCH 6/8] doc: bootchooser: be more explicit about when the
 bootchooser terminates
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 0c5e56407a..00ce896e37 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -79,6 +79,9 @@ booting a fallback in case of a permanent failure.
 To indicate a successful boot, one must explicitly reset the remaining
 attempts counter. See `Marking a Boot as Successful`_.
 
+The bootchooser algorithm aborts when all enabled targets (priority > 0) have
+no remaining attempts left.
+
 To prevent ending up in an unbootable system after a number of failed boot
 attempts, there is a also a built-in mechanism to reset the counters to their defaults,
 controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
