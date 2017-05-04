Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6EWx-0007ys-NM
 for barebox@lists.infradead.org; Thu, 04 May 2017 11:02:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 May 2017 13:02:16 +0200
Message-Id: <20170504110219.17929-2-s.hauer@pengutronix.de>
In-Reply-To: <20170504110219.17929-1-s.hauer@pengutronix.de>
References: <20170504110219.17929-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] state: Binding: remove @0 from node name
To: Barebox List <barebox@lists.infradead.org>

The '@0' suffix is for nodes which have a reg property, so
do not use this suffix in the state example node which does
not have a reg property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 00fb592614..51b874a8be 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -74,7 +74,7 @@ Optional properties:
 
 Example::
 
-  state: state@0 {
+  state: state {
   	magic = <0x27031977>;
   	compatible = "barebox,state";
   	backend-type = "raw";
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
