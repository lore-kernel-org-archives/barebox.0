Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XE-VU
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:57 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:47 +0100
Message-Id: <20190215125348.12851-8-ejo@pengutronix.de>
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
Subject: [PATCH 7/8] doc: bootchooser: add details about
 bootchooser.reset_attempts handling
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

For understanding and correctly using the algorith it is useful to know
when the values are evaluated.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 Documentation/user/bootchooser.rst | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
index 00ce896e37..ad809751dd 100644
--- a/Documentation/user/bootchooser.rst
+++ b/Documentation/user/bootchooser.rst
@@ -88,11 +88,13 @@ controlled by the ``global.bootchooser.reset_attempts`` variable. It holds a
 list of space-separated flags. Possible values are:
 
 - empty: counters will never be reset
-- ``power-on``: The ``remaining_attempts`` counters of all enabled boot targets are reset
-  after a ``power-on`` reset (``$global.system.reset="POR"``). This means after a power
-  cycle all boot targets will be tried again for the configured number of retries.
-- ``all-zero``: The ``remaining_attempts`` counters of all enabled boot targets are
-  reset when none of them has any ``remaining_attempts`` left.
+- ``power-on``: When the bootchooser starts and a power-on reset
+  (``$global.system.reset="POR"``) is detected, the ``remaining_attempts``
+  counters of all enabled targets are reset to their defaults.
+  This means after a power cycle all boot targets will be tried again for the configured number of retries.
+- ``all-zero``: When the bootchooser starts and the ``remaining_attempts``
+  counters of all enabled targets are zero, the ``remaining_attempts``
+  counters of all enabled targets are reset to their defaults.
 
 Marking a Boot as Successful
 ############################
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
