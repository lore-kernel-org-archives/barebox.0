Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAE6b-00023W-GJ
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 14:37:40 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Mar 2020 15:37:32 +0100
Message-Id: <20200306143732.24239-3-m.tretter@pengutronix.de>
In-Reply-To: <20200306143732.24239-1-m.tretter@pengutronix.de>
References: <20200306143732.24239-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: blspec: drop documentation of
 devicetree-overlay
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The devicetree-overlay key is part of the official Boot Loader
Specification. There is no need to document it in Barebox, again.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 4b0ead1db5a5..983b56deefb6 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -232,10 +232,6 @@ device where the entry is found on. This makes it possible to use the same rootf
 image on different devices without having to specify a different root= option each
 time.
 
-Additionally to the options defined in the original spec, Barebox has the
-``devicetree-overlay`` option. This is a string value that refer to overlays
-that will be applied to the device tree before passing it to Linux.
-
 Network boot
 ------------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
