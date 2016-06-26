Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHAuC-0005Vk-GG
 for barebox@lists.infradead.org; Sun, 26 Jun 2016 14:19:25 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Jun 2016 16:17:17 +0200
Message-Id: <1466950637-16734-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] Documentation: imx: external boot capable SOC list complete
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The iMX35 SOC supports both internal and external boot mode, and both modes
are supported by barebox.
The iMX35 is the latest SOC with support for this mode, none of the later
iMX series iMX50, 51, 53, 6SL, 6SDL, 6DQ, 7S or 7D does support it.
Let's complete the list.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx.rst | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 837bf5c..6912ed9 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -95,8 +95,7 @@ The External Boot Mode is supported by the older i.MX SoCs:
 * i.MX21
 * i.MX27
 * i.MX31
-
-(It may be supported on newer SoCs as well, but it is not widely used there.)
+* i.MX35
 
 The External Boot Mode supports booting only from NOR and NAND flash. On NOR
 flash, the binary is started directly on its physical address in memory. Booting
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
