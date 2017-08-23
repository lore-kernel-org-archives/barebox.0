Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dkSV7-0004J4-Ga
 for barebox@lists.infradead.org; Wed, 23 Aug 2017 10:03:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dkSUj-00043e-Mt
 for barebox@lists.infradead.org; Wed, 23 Aug 2017 12:02:41 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dkSUj-0001Qu-Fh
 for barebox@lists.infradead.org; Wed, 23 Aug 2017 12:02:41 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Aug 2017 12:02:41 +0200
Message-Id: <20170823100241.5347-1-jbe@pengutronix.de>
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
Subject: [PATCH] docs: mention the correct default values for the
 'backend-storage-type'
To: barebox@lists.infradead.org

Different memory types defaults to different backend storage types.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 4b1aade66..41ae5c0bc 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -49,7 +49,8 @@ Optional Properties
 
 * ``backend-stridesize``: stride counted in bytes. See note below.
 * ``backend-storage-type``: Defines the backend storage type to ``direct`` or
-  ``circular``. Defaults to ``circular`` for media which requires erase cycles.
+  ``circular``. Defaults to ``direct`` for media which don't requires erase cycles,
+  and to ``circular`` for media which requires erase cycles.
 * ``algo``: A HMAC algorithm used to detect manipulation of the data
   or header, sensible values follow this pattern ``hmac(<HASH>)``,
   e.g. ``hmac(sha256)``. Only available for the ``backend-type`` ``raw``.
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
