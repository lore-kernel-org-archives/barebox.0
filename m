Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kShTX-00020P-8L
 for barebox@lists.infradead.org; Wed, 14 Oct 2020 14:09:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Oct 2020 16:09:50 +0200
Message-Id: <20201014140951.5184-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] doc: at91: delete done TODOs
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

e52a250d2381 ("ARM: boards: Harmonize barebox_arm_reset_vector() prototype")
has unified the prototype, so we can drop this TODO item.

Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/at91.rst | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Documentation/boards/at91.rst b/Documentation/boards/at91.rst
index f25cb01bb1e1..3ac4b6a24451 100644
--- a/Documentation/boards/at91.rst
+++ b/Documentation/boards/at91.rst
@@ -35,15 +35,6 @@ TODO
 ----
 This is a list of AT91 specific TODO items, listed in no particular order.
 
-* fix prototype for barebox_arm_reset_vector. Introduce the prototype:
-
-.. code-block:: c
-
-  void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-
-
-This will unify the prototype for the reset vector for multi image and standalone images
-
 * Update remaining boards to DT
 * Update remaing boards to support multi image boot
 * Get bootstrap working in combination with multi image
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
