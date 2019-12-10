Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej4q-0001fT-DN
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:13:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so4085314wma.1
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:13:34 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:13:02 +0100
Message-Id: <20191210171305.24276-2-h.feurstein@gmail.com>
In-Reply-To: <20191210171305.24276-1-h.feurstein@gmail.com>
References: <20191210171305.24276-1-h.feurstein@gmail.com>
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
Subject: [PATCH 2/4] led: add documentation for net-tx and net-rx triggers
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.rst | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
index 1f5ae42ca..5a592d67d 100644
--- a/Documentation/devicetree/bindings/leds/common.rst
+++ b/Documentation/devicetree/bindings/leds/common.rst
@@ -6,7 +6,9 @@ Common leds properties
 
     * ``heartbeat`` - LED flashes at a constant rate
     * ``panic`` - LED turns on when barebox panics
-    * ``net`` - LED indicates network activity
+    * ``net`` - LED indicates network activity (tx and rx)
+    * ``net-rx`` - LED indicates network activity (rx only)
+    * ``net-tx`` - LED indicates network activity (tx only)
 
 * ``label``: The label for this LED. If omitted, the label is taken
   from the node name (excluding the unit address).
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
