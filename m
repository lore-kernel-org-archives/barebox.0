Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4UWu-0001HB-CJ
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:34:25 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:34:00 +0200
Message-Id: <1434375240-30543-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434375240-30543-1-git-send-email-mkl@pengutronix.de>
References: <1434375240-30543-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] state: Documentation: fix dts code example
To: barebox@lists.infradead.org

It's "uint32" not "u32" and we use integers for the "enum32" defaults.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Documentation/devicetree/bindings/barebox/barebox,state.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index fe8a3d5bc8e3..6e8b65012133 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -70,7 +70,7 @@ Example::
 
   	foo {
 		reg = <0x00 0x4>;
-  		type = "u32";
+  		type = "uint32";
   		default = <0x0>;
   	};
 
@@ -78,7 +78,7 @@ Example::
 		reg = <0x10 0x4>;
   		type = "enum32";
   		names = "baz", "qux";
-  		default ="qux";
+  		default = <1>;
   	};
   };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
